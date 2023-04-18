require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsInformationProtectionWipeAction < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Last checkin time of the device that was targeted by this wipe action.
            @last_check_in_date_time
            ## 
            # The status property
            @status
            ## 
            # Targeted device Mac address.
            @targeted_device_mac_address
            ## 
            # Targeted device name.
            @targeted_device_name
            ## 
            # The DeviceRegistrationId being targeted by this wipe action.
            @targeted_device_registration_id
            ## 
            # The UserId being targeted by this wipe action.
            @targeted_user_id
            ## 
            ## Instantiates a new WindowsInformationProtectionWipeAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_wipe_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionWipeAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastCheckInDateTime" => lambda {|n| @last_check_in_date_time = n.get_date_time_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ActionState) },
                    "targetedDeviceMacAddress" => lambda {|n| @targeted_device_mac_address = n.get_string_value() },
                    "targetedDeviceName" => lambda {|n| @targeted_device_name = n.get_string_value() },
                    "targetedDeviceRegistrationId" => lambda {|n| @targeted_device_registration_id = n.get_string_value() },
                    "targetedUserId" => lambda {|n| @targeted_user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastCheckInDateTime property value. Last checkin time of the device that was targeted by this wipe action.
            ## @return a date_time
            ## 
            def last_check_in_date_time
                return @last_check_in_date_time
            end
            ## 
            ## Sets the lastCheckInDateTime property value. Last checkin time of the device that was targeted by this wipe action.
            ## @param value Value to set for the last_check_in_date_time property.
            ## @return a void
            ## 
            def last_check_in_date_time=(value)
                @last_check_in_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastCheckInDateTime", @last_check_in_date_time)
                writer.write_enum_value("status", @status)
                writer.write_string_value("targetedDeviceMacAddress", @targeted_device_mac_address)
                writer.write_string_value("targetedDeviceName", @targeted_device_name)
                writer.write_string_value("targetedDeviceRegistrationId", @targeted_device_registration_id)
                writer.write_string_value("targetedUserId", @targeted_user_id)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a action_state
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the targetedDeviceMacAddress property value. Targeted device Mac address.
            ## @return a string
            ## 
            def targeted_device_mac_address
                return @targeted_device_mac_address
            end
            ## 
            ## Sets the targetedDeviceMacAddress property value. Targeted device Mac address.
            ## @param value Value to set for the targeted_device_mac_address property.
            ## @return a void
            ## 
            def targeted_device_mac_address=(value)
                @targeted_device_mac_address = value
            end
            ## 
            ## Gets the targetedDeviceName property value. Targeted device name.
            ## @return a string
            ## 
            def targeted_device_name
                return @targeted_device_name
            end
            ## 
            ## Sets the targetedDeviceName property value. Targeted device name.
            ## @param value Value to set for the targeted_device_name property.
            ## @return a void
            ## 
            def targeted_device_name=(value)
                @targeted_device_name = value
            end
            ## 
            ## Gets the targetedDeviceRegistrationId property value. The DeviceRegistrationId being targeted by this wipe action.
            ## @return a string
            ## 
            def targeted_device_registration_id
                return @targeted_device_registration_id
            end
            ## 
            ## Sets the targetedDeviceRegistrationId property value. The DeviceRegistrationId being targeted by this wipe action.
            ## @param value Value to set for the targeted_device_registration_id property.
            ## @return a void
            ## 
            def targeted_device_registration_id=(value)
                @targeted_device_registration_id = value
            end
            ## 
            ## Gets the targetedUserId property value. The UserId being targeted by this wipe action.
            ## @return a string
            ## 
            def targeted_user_id
                return @targeted_user_id
            end
            ## 
            ## Sets the targetedUserId property value. The UserId being targeted by this wipe action.
            ## @param value Value to set for the targeted_user_id property.
            ## @return a void
            ## 
            def targeted_user_id=(value)
                @targeted_user_id = value
            end
        end
    end
end
