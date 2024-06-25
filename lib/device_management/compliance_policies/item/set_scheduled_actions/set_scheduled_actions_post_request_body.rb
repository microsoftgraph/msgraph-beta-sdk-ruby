require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_management_compliance_scheduled_action_for_rule'
require_relative '../../../device_management'
require_relative '../../compliance_policies'
require_relative '../item'
require_relative './set_scheduled_actions'

module MicrosoftGraphBeta
    module DeviceManagement
        module CompliancePolicies
            module Item
                module SetScheduledActions
                    class SetScheduledActionsPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The scheduledActions property
                        @scheduled_actions
                        ## 
                        ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new SetScheduledActionsPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a set_scheduled_actions_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return SetScheduledActionsPostRequestBody.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "scheduledActions" => lambda {|n| @scheduled_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementComplianceScheduledActionForRule.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the scheduledActions property value. The scheduledActions property
                        ## @return a device_management_compliance_scheduled_action_for_rule
                        ## 
                        def scheduled_actions
                            return @scheduled_actions
                        end
                        ## 
                        ## Sets the scheduledActions property value. The scheduledActions property
                        ## @param value Value to set for the scheduledActions property.
                        ## @return a void
                        ## 
                        def scheduled_actions=(value)
                            @scheduled_actions = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_collection_of_object_values("scheduledActions", @scheduled_actions)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
