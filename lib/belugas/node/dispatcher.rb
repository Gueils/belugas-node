require 'belugas/node/feature/handler'
require 'belugas/node/feature/builder'
require 'belugas/node/parser/package'
require 'belugas/node/standard_names/base'
# require 'belugas/node/libraries_collection'

module Belugas
  module Node
    class Dispatcher
      def initialize(path)
        @package = Belugas::Node::Parser::Package.new(path)
        @feature_handler = Belugas::Node::Feature::Handler.new(node_feature)
      end

      def render
        append_features
        @feature_handler.encode.each do |feature|
          STDOUT.print feature.to_json
          STDOUT.print "\0"
        end
      end

      private

      def node_feature
        @node_feature ||= [{
          "type" => "feature",
          "name" => "Node",
          "version" => @package.node_version,
          "description" => "The application uses Node js code",
          "categories" => ["Language"],
          "engines" => ["belugas", "belugas-node"]
        }]
      end

      def dependencies
        @dependencies ||= Belugas::Node::LibrariesCollection.new(@package.dependencies).dependencies
      end

      def features
        @features ||= dependencies.map do |dependency|
          Belugas::Node::Feature::Builder.new(dependency)
        end
      end

      def append_features
        features.each do |feature|
          transcoded[feature.name] = feature.attributes
        end
      end

      def transcoded
        @transcoded ||= @feature_handler.transcode
      end
    end
  end
end