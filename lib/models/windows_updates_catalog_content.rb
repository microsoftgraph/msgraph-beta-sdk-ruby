require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesCatalogContent < MicrosoftGraphBeta::Models::WindowsUpdatesDeployableContent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The catalogEntry property
            @catalog_entry
            ## 
            ## Gets the catalogEntry property value. The catalogEntry property
            ## @return a windows_updates_catalog_entry
            ## 
            def catalog_entry
                return @catalog_entry
            end
            ## 
            ## Sets the catalogEntry property value. The catalogEntry property
            ## @param value Value to set for the catalogEntry property.
            ## @return a void
            ## 
            def catalog_entry=(value)
                @catalog_entry = value
            end
            ## 
            ## Instantiates a new WindowsUpdatesCatalogContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.catalogContent"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_catalog_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesCatalogContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "catalogEntry" => lambda {|n| @catalog_entry = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesCatalogEntry.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("catalogEntry", @catalog_entry)
            end
        end
    end
end
