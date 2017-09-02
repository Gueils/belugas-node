require "thor"
require "json"
require 'belugas/node/parser/package'
require 'belugas/node/dispatcher'

module Belugas
  module Node
    class Sonar < Thor
      package_name "belugas-node"

      desc "analyze --package-path=/app/code", "Node js feature detection JSON"
      method_option "package-path", type: :string, default: "/code/package.json", required: false, aliases: "-p"
      def analyze
        dispatcher = Belugas::Node::Dispatcher.new(options["package-path"])
        dispatcher.render
      end
    end
  end
end

require "belugas/node/version"
