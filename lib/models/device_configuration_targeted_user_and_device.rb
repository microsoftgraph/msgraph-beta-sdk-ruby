require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Conflict summary for a set of device configuration policies.
        class DeviceConfigurationTargetedUserAndDevice
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The id of the device in the checkin.
            @device_id
            ## 
            # The name of the device in the checkin.
            @device_name
            ## 
            # Last checkin time for this user/device pair.
            @last_checkin_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The display name of the user in the checkin
            @user_display_name
            ## 
            # The id of the user in the checkin.
            @user_id
            ## 
            # The UPN of the user in the checkin.
            @user_principal_name
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
            ## Instantiates a new deviceConfigurationTargetedUserAndDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_targeted_user_and_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationTargetedUserAndDevice.new
            end
            ## 
            ## Gets the deviceId property value. The id of the device in the checkin.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The id of the device in the checkin.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. The name of the device in the checkin.
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device in the checkin.
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
                return {
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "lastCheckinDateTime" => lambda {|n| @last_checkin_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastCheckinDateTime property value. Last checkin time for this user/device pair.
            ## @return a date_time
            ## 
            def last_checkin_date_time
                return @last_checkin_date_time
            end
            ## 
            ## Sets the lastCheckinDateTime property value. Last checkin time for this user/device pair.
            ## @param value Value to set for the last_checkin_date_time property.
            ## @return a void
            ## 
            def last_checkin_date_time=(value)
                @last_checkin_date_time = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_date_time_value("lastCheckinDateTime", @last_checkin_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userDisplayName property value. The display name of the user in the checkin
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. The display name of the user in the checkin
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userId property value. The id of the user in the checkin.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The id of the user in the checkin.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. The UPN of the user in the checkin.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. The UPN of the user in the checkin.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
