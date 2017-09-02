require 'bundler'
require 'belugas/node/dependency'
# Class responsible for parsing the package.json dependencies
module Belugas
  module Node
    module Parser
      class Package
        FALLBACK_NODE_VERSION = '6.11.2'.freeze
        FALLBACK_NPM_VERSION = '3.10.10'.freeze

        attr_reader :content
        attr_writer :runtime_groups

        def initialize(path)
          @content = JSON.parse(File.read(path))
        end

        def dependencies
          @npm_dependencies ||= [].tap do |deps|
          (@content['dependencies'] || []).each do |npm_dep|
              dependency = Belugas::Node::Dependency.new dependency(npm_dep)
              deps << dependency if dependency
            end
          end
        end

        def node_version
          engines = @content['engines'] || { }
          engines['node'] || ENV['FALLBACK_NODE_VERSION'] || FALLBACK_NODE_VERSION
        end


        private

        def dependency(npm_dependency)
          OpenStruct.new(
            name: npm_dependency.first,
            version: npm_dependency.last
          )
        end
      end
    end
  end
end