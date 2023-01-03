require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The result of the triggered device scope action.
    class DeviceScopeActionResult
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
        @device_scope_action
        ## 
        # The unique identifier of the device scope the action was triggered on.
        @device_scope_id
        ## 
        # The message indicates the reason the device scope action failed to trigger.
        @failed_message
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Indicates the status of the attempted device scope action
        @status
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
        ## Instantiates a new deviceScopeActionResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_scope_action_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceScopeActionResult.new
        end
        ## 
        ## Gets the deviceScopeAction property value. Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
        ## @return a string
        ## 
        def device_scope_action
            return @device_scope_action
        end
        ## 
        ## Sets the deviceScopeAction property value. Trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
        ## @param value Value to set for the deviceScopeAction property.
        ## @return a void
        ## 
        def device_scope_action=(value)
            @device_scope_action = value
        end
        ## 
        ## Gets the deviceScopeId property value. The unique identifier of the device scope the action was triggered on.
        ## @return a string
        ## 
        def device_scope_id
            return @device_scope_id
        end
        ## 
        ## Sets the deviceScopeId property value. The unique identifier of the device scope the action was triggered on.
        ## @param value Value to set for the deviceScopeId property.
        ## @return a void
        ## 
        def device_scope_id=(value)
            @device_scope_id = value
        end
        ## 
        ## Gets the failedMessage property value. The message indicates the reason the device scope action failed to trigger.
        ## @return a string
        ## 
        def failed_message
            return @failed_message
        end
        ## 
        ## Sets the failedMessage property value. The message indicates the reason the device scope action failed to trigger.
        ## @param value Value to set for the failedMessage property.
        ## @return a void
        ## 
        def failed_message=(value)
            @failed_message = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "deviceScopeAction" => lambda {|n| @device_scope_action = n.get_string_value() },
                "deviceScopeId" => lambda {|n| @device_scope_id = n.get_string_value() },
                "failedMessage" => lambda {|n| @failed_message = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceScopeActionStatus) },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("deviceScopeAction", @device_scope_action)
            writer.write_string_value("deviceScopeId", @device_scope_id)
            writer.write_string_value("failedMessage", @failed_message)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the status property value. Indicates the status of the attempted device scope action
        ## @return a device_scope_action_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Indicates the status of the attempted device scope action
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
