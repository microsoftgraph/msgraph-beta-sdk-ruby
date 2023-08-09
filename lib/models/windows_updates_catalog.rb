require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './windows_updates/windows_updates'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesCatalog < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Lists the content that you can approve for deployment. Read-only.
            @entries
            ## 
            ## Instantiates a new catalog and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_catalog
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesCatalog.new
            end
            ## 
            ## Gets the entries property value. Lists the content that you can approve for deployment. Read-only.
            ## @return a windows_updates_catalog_entry
            ## 
            def entries
                return @entries
            end
            ## 
            ## Sets the entries property value. Lists the content that you can approve for deployment. Read-only.
            ## @param value Value to set for the entries property.
            ## @return a void
            ## 
            def entries=(value)
                @entries = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "entries" => lambda {|n| @entries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdatesCatalogEntry.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("entries", @entries)
            end
        end
    end
end
