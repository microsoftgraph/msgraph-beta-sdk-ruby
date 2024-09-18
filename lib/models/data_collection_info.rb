require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DataCollectionInfo < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The entitlements property
            @entitlements
            ## 
            ## Instantiates a new DataCollectionInfo and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a data_collection_info
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DataCollectionInfo.new
            end
            ## 
            ## Gets the entitlements property value. The entitlements property
            ## @return a entitlements_data_collection_info
            ## 
            def entitlements
                return @entitlements
            end
            ## 
            ## Sets the entitlements property value. The entitlements property
            ## @param value Value to set for the entitlements property.
            ## @return a void
            ## 
            def entitlements=(value)
                @entitlements = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "entitlements" => lambda {|n| @entitlements = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EntitlementsDataCollectionInfo.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("entitlements", @entitlements)
            end
        end
    end
end
