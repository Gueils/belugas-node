require "thor"
require "json"


module Belugas
  module Node
    class Sonar < Thor
      package_name "belugas-node"

      desc "analyze --package-path=/app/code", "Ruby feature detection JSON"
      method_option "package-path", type: :string, default: "/code/package.json", required: false, aliases: "-p"
      def analyze
        # Do something
      end
    end
  end
end

require "belugas/node/version"
