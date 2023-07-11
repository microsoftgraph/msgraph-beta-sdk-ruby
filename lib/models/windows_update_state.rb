require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdateState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Device display name.
            @device_display_name
            ## 
            # The id of the device.
            @device_id
            ## 
            # The current feature update version of the device.
            @feature_update_version
            ## 
            # The date time that the Windows Update Agent did a successful scan.
            @last_scan_date_time
            ## 
            # Last date time that the device sync with with Microsoft Intune.
            @last_sync_date_time
            ## 
            # The Quality Update Version of the device.
            @quality_update_version
            ## 
            # Windows update for business configuration device states
            @status
            ## 
            # The id of the user.
            @user_id
            ## 
            # User principal name.
            @user_principal_name
            ## 
            ## Instantiates a new windowsUpdateState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_update_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdateState.new
            end
            ## 
            ## Gets the deviceDisplayName property value. Device display name.
            ## @return a string
            ## 
            def device_display_name
                return @device_display_name
            end
            ## 
            ## Sets the deviceDisplayName property value. Device display name.
            ## @param value Value to set for the device_display_name property.
            ## @return a void
            ## 
            def device_display_name=(value)
                @device_display_name = value
            end
            ## 
            ## Gets the deviceId property value. The id of the device.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The id of the device.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the featureUpdateVersion property value. The current feature update version of the device.
            ## @return a string
            ## 
            def feature_update_version
                return @feature_update_version
            end
            ## 
            ## Sets the featureUpdateVersion property value. The current feature update version of the device.
            ## @param value Value to set for the feature_update_version property.
            ## @return a void
            ## 
            def feature_update_version=(value)
                @feature_update_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceDisplayName" => lambda {|n| @device_display_name = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "featureUpdateVersion" => lambda {|n| @feature_update_version = n.get_string_value() },
                    "lastScanDateTime" => lambda {|n| @last_scan_date_time = n.get_date_time_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "qualityUpdateVersion" => lambda {|n| @quality_update_version = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdateStatus) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastScanDateTime property value. The date time that the Windows Update Agent did a successful scan.
            ## @return a date_time
            ## 
            def last_scan_date_time
                return @last_scan_date_time
            end
            ## 
            ## Sets the lastScanDateTime property value. The date time that the Windows Update Agent did a successful scan.
            ## @param value Value to set for the last_scan_date_time property.
            ## @return a void
            ## 
            def last_scan_date_time=(value)
                @last_scan_date_time = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. Last date time that the device sync with with Microsoft Intune.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Last date time that the device sync with with Microsoft Intune.
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the qualityUpdateVersion property value. The Quality Update Version of the device.
            ## @return a string
            ## 
            def quality_update_version
                return @quality_update_version
            end
            ## 
            ## Sets the qualityUpdateVersion property value. The Quality Update Version of the device.
            ## @param value Value to set for the quality_update_version property.
            ## @return a void
            ## 
            def quality_update_version=(value)
                @quality_update_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("deviceDisplayName", @device_display_name)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("featureUpdateVersion", @feature_update_version)
                writer.write_date_time_value("lastScanDateTime", @last_scan_date_time)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("qualityUpdateVersion", @quality_update_version)
                writer.write_enum_value("status", @status)
                writer.write_string_value("userId", @user_id)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the status property value. Windows update for business configuration device states
            ## @return a windows_update_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Windows update for business configuration device states
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
            ## 
            ## Gets the userId property value. The id of the user.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The id of the user.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
            ## 
            ## Gets the userPrincipalName property value. User principal name.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User principal name.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
