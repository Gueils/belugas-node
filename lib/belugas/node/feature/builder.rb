module Belugas
  module Node
    module Feature
      class Builder
        attr_reader :name

        def initialize(dependency)
          @dependency = dependency
          @name = dependency.name
        end

        def attributes
          {
            "type" => "feature",
            "name" => @dependency.standard_name,
            "version" => @dependency.version,
            "description" => "The application uses #{@dependency.standard_name}",
            "content" => "",
            "categories" => @dependency.categories,
            "cue_locations" => [""],
            "engines" => ["belugas", "belugas-node"]
          }
        end
      end
    end
  end
end
