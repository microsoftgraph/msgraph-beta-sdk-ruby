require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The user experience analytics Device not windows autopilot ready.
        class UserExperienceAnalyticsNotAutopilotReadyDevice < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The intune device's autopilotProfileAssigned.
            @auto_pilot_profile_assigned
            ## 
            # The intune device's autopilotRegistered.
            @auto_pilot_registered
            ## 
            # The intune device's azure Ad joinType.
            @azure_ad_join_type
            ## 
            # The intune device's azureAdRegistered.
            @azure_ad_registered
            ## 
            # The intune device's name.
            @device_name
            ## 
            # The intune device's managed by.
            @managed_by
            ## 
            # The intune device's manufacturer.
            @manufacturer
            ## 
            # The intune device's model.
            @model
            ## 
            # The intune device's serial number.
            @serial_number
            ## 
            ## Gets the autoPilotProfileAssigned property value. The intune device's autopilotProfileAssigned.
            ## @return a boolean
            ## 
            def auto_pilot_profile_assigned
                return @auto_pilot_profile_assigned
            end
            ## 
            ## Sets the autoPilotProfileAssigned property value. The intune device's autopilotProfileAssigned.
            ## @param value Value to set for the auto_pilot_profile_assigned property.
            ## @return a void
            ## 
            def auto_pilot_profile_assigned=(value)
                @auto_pilot_profile_assigned = value
            end
            ## 
            ## Gets the autoPilotRegistered property value. The intune device's autopilotRegistered.
            ## @return a boolean
            ## 
            def auto_pilot_registered
                return @auto_pilot_registered
            end
            ## 
            ## Sets the autoPilotRegistered property value. The intune device's autopilotRegistered.
            ## @param value Value to set for the auto_pilot_registered property.
            ## @return a void
            ## 
            def auto_pilot_registered=(value)
                @auto_pilot_registered = value
            end
            ## 
            ## Gets the azureAdJoinType property value. The intune device's azure Ad joinType.
            ## @return a string
            ## 
            def azure_ad_join_type
                return @azure_ad_join_type
            end
            ## 
            ## Sets the azureAdJoinType property value. The intune device's azure Ad joinType.
            ## @param value Value to set for the azure_ad_join_type property.
            ## @return a void
            ## 
            def azure_ad_join_type=(value)
                @azure_ad_join_type = value
            end
            ## 
            ## Gets the azureAdRegistered property value. The intune device's azureAdRegistered.
            ## @return a boolean
            ## 
            def azure_ad_registered
                return @azure_ad_registered
            end
            ## 
            ## Sets the azureAdRegistered property value. The intune device's azureAdRegistered.
            ## @param value Value to set for the azure_ad_registered property.
            ## @return a void
            ## 
            def azure_ad_registered=(value)
                @azure_ad_registered = value
            end
            ## 
            ## Instantiates a new userExperienceAnalyticsNotAutopilotReadyDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_experience_analytics_not_autopilot_ready_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserExperienceAnalyticsNotAutopilotReadyDevice.new
            end
            ## 
            ## Gets the deviceName property value. The intune device's name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The intune device's name.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "autoPilotProfileAssigned" => lambda {|n| @auto_pilot_profile_assigned = n.get_boolean_value() },
                    "autoPilotRegistered" => lambda {|n| @auto_pilot_registered = n.get_boolean_value() },
                    "azureAdJoinType" => lambda {|n| @azure_ad_join_type = n.get_string_value() },
                    "azureAdRegistered" => lambda {|n| @azure_ad_registered = n.get_boolean_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "managedBy" => lambda {|n| @managed_by = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedBy property value. The intune device's managed by.
            ## @return a string
            ## 
            def managed_by
                return @managed_by
            end
            ## 
            ## Sets the managedBy property value. The intune device's managed by.
            ## @param value Value to set for the managed_by property.
            ## @return a void
            ## 
            def managed_by=(value)
                @managed_by = value
            end
            ## 
            ## Gets the manufacturer property value. The intune device's manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. The intune device's manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. The intune device's model.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The intune device's model.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the serialNumber property value. The intune device's serial number.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. The intune device's serial number.
            ## @param value Value to set for the serial_number property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("autoPilotProfileAssigned", @auto_pilot_profile_assigned)
                writer.write_boolean_value("autoPilotRegistered", @auto_pilot_registered)
                writer.write_string_value("azureAdJoinType", @azure_ad_join_type)
                writer.write_boolean_value("azureAdRegistered", @azure_ad_registered)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("managedBy", @managed_by)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("serialNumber", @serial_number)
            end
        end
    end
end
