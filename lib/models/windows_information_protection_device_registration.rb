require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents device registration records for Bring-Your-Own-Device(BYOD) Windows devices.
        class WindowsInformationProtectionDeviceRegistration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device Mac address.
            @device_mac_address
            ## 
            # Device name.
            @device_name
            ## 
            # Device identifier for this device registration record.
            @device_registration_id
            ## 
            # Device type, for example, Windows laptop VS Windows phone.
            @device_type
            ## 
            # Last checkin time of the device.
            @last_check_in_date_time
            ## 
            # UserId associated with this device registration record.
            @user_id
            ## 
            ## Instantiates a new windowsInformationProtectionDeviceRegistration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_information_protection_device_registration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsInformationProtectionDeviceRegistration.new
            end
            ## 
            ## Gets the deviceMacAddress property value. Device Mac address.
            ## @return a string
            ## 
            def device_mac_address
                return @device_mac_address
            end
            ## 
            ## Sets the deviceMacAddress property value. Device Mac address.
            ## @param value Value to set for the device_mac_address property.
            ## @return a void
            ## 
            def device_mac_address=(value)
                @device_mac_address = value
            end
            ## 
            ## Gets the deviceName property value. Device name.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device name.
            ## @param value Value to set for the device_name property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceRegistrationId property value. Device identifier for this device registration record.
            ## @return a string
            ## 
            def device_registration_id
                return @device_registration_id
            end
            ## 
            ## Sets the deviceRegistrationId property value. Device identifier for this device registration record.
            ## @param value Value to set for the device_registration_id property.
            ## @return a void
            ## 
            def device_registration_id=(value)
                @device_registration_id = value
            end
            ## 
            ## Gets the deviceType property value. Device type, for example, Windows laptop VS Windows phone.
            ## @return a string
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. Device type, for example, Windows laptop VS Windows phone.
            ## @param value Value to set for the device_type property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceMacAddress" => lambda {|n| @device_mac_address = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceRegistrationId" => lambda {|n| @device_registration_id = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_string_value() },
                    "lastCheckInDateTime" => lambda {|n| @last_check_in_date_time = n.get_date_time_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastCheckInDateTime property value. Last checkin time of the device.
            ## @return a date_time
            ## 
            def last_check_in_date_time
                return @last_check_in_date_time
            end
            ## 
            ## Sets the lastCheckInDateTime property value. Last checkin time of the device.
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
                writer.write_string_value("deviceMacAddress", @device_mac_address)
                writer.write_string_value("deviceName", @device_name)
                writer.write_string_value("deviceRegistrationId", @device_registration_id)
                writer.write_string_value("deviceType", @device_type)
                writer.write_date_time_value("lastCheckInDateTime", @last_check_in_date_time)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. UserId associated with this device registration record.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. UserId associated with this device registration record.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
