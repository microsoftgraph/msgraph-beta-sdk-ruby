require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/group_policy_definition_value'
require_relative '../../../device_management'
require_relative '../../group_policy_configurations'
require_relative '../item'
require_relative './update_definition_values'

module MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::Item::UpdateDefinitionValues
    class UpdateDefinitionValuesPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # The added property
        @added
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The deletedIds property
        @deleted_ids
        ## 
        # The updated property
        @updated
        ## 
        ## Gets the added property value. The added property
        ## @return a group_policy_definition_value
        ## 
        def added
            return @added
        end
        ## 
        ## Sets the added property value. The added property
        ## @param value Value to set for the added property.
        ## @return a void
        ## 
        def added=(value)
            @added = value
        end
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new updateDefinitionValuesPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a update_definition_values_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdateDefinitionValuesPostRequestBody.new
        end
        ## 
        ## Gets the deletedIds property value. The deletedIds property
        ## @return a string
        ## 
        def deleted_ids
            return @deleted_ids
        end
        ## 
        ## Sets the deletedIds property value. The deletedIds property
        ## @param value Value to set for the deletedIds property.
        ## @return a void
        ## 
        def deleted_ids=(value)
            @deleted_ids = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "added" => lambda {|n| @added = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionValue.create_from_discriminator_value(pn) }) },
                "deletedIds" => lambda {|n| @deleted_ids = n.get_collection_of_primitive_values(String) },
                "updated" => lambda {|n| @updated = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionValue.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_object_values("added", @added)
            writer.write_collection_of_primitive_values("deletedIds", @deleted_ids)
            writer.write_collection_of_object_values("updated", @updated)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the updated property value. The updated property
        ## @return a group_policy_definition_value
        ## 
        def updated
            return @updated
        end
        ## 
        ## Sets the updated property value. The updated property
        ## @param value Value to set for the updated property.
        ## @return a void
        ## 
        def updated=(value)
            @updated = value
        end
    end
end
