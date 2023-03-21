require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../user_experience_analytics_device_scope'
require_relative './trigger_device_scope_action'

module MicrosoftGraphBeta
    module DeviceManagement
        module UserExperienceAnalyticsDeviceScope
            module TriggerDeviceScopeAction
                class TriggerDeviceScopeActionPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
                    @action_name
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The deviceScopeId property
                    @device_scope_id
                    ## 
                    ## Gets the actionName property value. Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
                    ## @return a string
                    ## 
                    def action_name
                        return @action_name
                    end
                    ## 
                    ## Sets the actionName property value. Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
                    ## @param value Value to set for the action_name property.
                    ## @return a void
                    ## 
                    def action_name=(value)
                        @action_name = value
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
                    ## Instantiates a new triggerDeviceScopeActionPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parseNode The parse node to use to read the discriminator value and create the object
                    ## @return a trigger_device_scope_action_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TriggerDeviceScopeActionPostRequestBody.new
                    end
                    ## 
                    ## Gets the deviceScopeId property value. The deviceScopeId property
                    ## @return a string
                    ## 
                    def device_scope_id
                        return @device_scope_id
                    end
                    ## 
                    ## Sets the deviceScopeId property value. The deviceScopeId property
                    ## @param value Value to set for the device_scope_id property.
                    ## @return a void
                    ## 
                    def device_scope_id=(value)
                        @device_scope_id = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "actionName" => lambda {|n| @action_name = n.get_string_value() },
                            "deviceScopeId" => lambda {|n| @device_scope_id = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("actionName", @action_name)
                        writer.write_string_value("deviceScopeId", @device_scope_id)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
