require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/policy_set_assignment'
require_relative '../../../../models/policy_set_item'
require_relative '../../../device_app_management'
require_relative '../../policy_sets'
require_relative '../item'
require_relative './update'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module PolicySets
            module Item
                module Update
                    class UpdatePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The addedPolicySetItems property
                        @added_policy_set_items
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The assignments property
                        @assignments
                        ## 
                        # The deletedPolicySetItems property
                        @deleted_policy_set_items
                        ## 
                        # The updatedPolicySetItems property
                        @updated_policy_set_items
                        ## 
                        ## Gets the addedPolicySetItems property value. The addedPolicySetItems property
                        ## @return a policy_set_item
                        ## 
                        def added_policy_set_items
                            return @added_policy_set_items
                        end
                        ## 
                        ## Sets the addedPolicySetItems property value. The addedPolicySetItems property
                        ## @param value Value to set for the added_policy_set_items property.
                        ## @return a void
                        ## 
                        def added_policy_set_items=(value)
                            @added_policy_set_items = value
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
                        ## Gets the assignments property value. The assignments property
                        ## @return a policy_set_assignment
                        ## 
                        def assignments
                            return @assignments
                        end
                        ## 
                        ## Sets the assignments property value. The assignments property
                        ## @param value Value to set for the assignments property.
                        ## @return a void
                        ## 
                        def assignments=(value)
                            @assignments = value
                        end
                        ## 
                        ## Instantiates a new updatePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a update_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return UpdatePostRequestBody.new
                        end
                        ## 
                        ## Gets the deletedPolicySetItems property value. The deletedPolicySetItems property
                        ## @return a string
                        ## 
                        def deleted_policy_set_items
                            return @deleted_policy_set_items
                        end
                        ## 
                        ## Sets the deletedPolicySetItems property value. The deletedPolicySetItems property
                        ## @param value Value to set for the deleted_policy_set_items property.
                        ## @return a void
                        ## 
                        def deleted_policy_set_items=(value)
                            @deleted_policy_set_items = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "addedPolicySetItems" => lambda {|n| @added_policy_set_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySetItem.create_from_discriminator_value(pn) }) },
                                "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySetAssignment.create_from_discriminator_value(pn) }) },
                                "deletedPolicySetItems" => lambda {|n| @deleted_policy_set_items = n.get_collection_of_primitive_values(String) },
                                "updatedPolicySetItems" => lambda {|n| @updated_policy_set_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySetItem.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("addedPolicySetItems", @added_policy_set_items)
                            writer.write_collection_of_object_values("assignments", @assignments)
                            writer.write_collection_of_primitive_values("deletedPolicySetItems", @deleted_policy_set_items)
                            writer.write_collection_of_object_values("updatedPolicySetItems", @updated_policy_set_items)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the updatedPolicySetItems property value. The updatedPolicySetItems property
                        ## @return a policy_set_item
                        ## 
                        def updated_policy_set_items
                            return @updated_policy_set_items
                        end
                        ## 
                        ## Sets the updatedPolicySetItems property value. The updatedPolicySetItems property
                        ## @param value Value to set for the updated_policy_set_items property.
                        ## @return a void
                        ## 
                        def updated_policy_set_items=(value)
                            @updated_policy_set_items = value
                        end
                    end
                end
            end
        end
    end
end
