require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsFeatureUpdateCatalogItem < MicrosoftGraphBeta::Models::WindowsUpdateCatalogItem
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The feature update version
        @version
        ## 
        ## Instantiates a new WindowsFeatureUpdateCatalogItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsFeatureUpdateCatalogItem"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_feature_update_catalog_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsFeatureUpdateCatalogItem.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
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
            writer.write_string_value("version", @version)
        end
        ## 
        ## Gets the version property value. The feature update version
        ## @return a string
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. The feature update version
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
    end
end
