require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesFeatureUpdateCatalogEntry < MicrosoftGraphBeta::Models::WindowsUpdatesSoftwareUpdateCatalogEntry
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The build number of the feature update. Read-only.
            @build_number
            ## 
            # The version of the feature update. Read-only.
            @version
            ## 
            ## Gets the buildNumber property value. The build number of the feature update. Read-only.
            ## @return a string
            ## 
            def build_number
                return @build_number
            end
            ## 
            ## Sets the buildNumber property value. The build number of the feature update. Read-only.
            ## @param value Value to set for the buildNumber property.
            ## @return a void
            ## 
            def build_number=(value)
                @build_number = value
            end
            ## 
            ## Instantiates a new WindowsUpdatesFeatureUpdateCatalogEntry and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.featureUpdateCatalogEntry"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_feature_update_catalog_entry
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesFeatureUpdateCatalogEntry.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buildNumber" => lambda {|n| @build_number = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("buildNumber", @build_number)
                writer.write_string_value("version", @version)
            end
            ## 
            ## Gets the version property value. The version of the feature update. Read-only.
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the feature update. Read-only.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
