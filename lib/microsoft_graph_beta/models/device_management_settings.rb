require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementSettings
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The property to determine if Android device administrator enrollment is enabled for this account.
        @android_device_administrator_enrollment_enabled
        ## 
        # Provider type for Derived Credentials.
        @derived_credential_provider
        ## 
        # The Derived Credential Provider self-service URI.
        @derived_credential_url
        ## 
        # The number of days a device is allowed to go without checking in to remain compliant.
        @device_compliance_checkin_threshold_days
        ## 
        # When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270
        @device_inactivity_before_retirement_in_day
        ## 
        # Determines whether the autopilot diagnostic feature is enabled or not.
        @enable_autopilot_diagnostics
        ## 
        # Determines whether the device group membership report feature is enabled or not.
        @enable_device_group_membership_report
        ## 
        # Determines whether the enhanced troubleshooting UX is enabled or not.
        @enable_enhanced_troubleshooting_experience
        ## 
        # Determines whether the log collection feature should be available for use.
        @enable_log_collection
        ## 
        # Is feature enabled or not for enhanced jailbreak detection.
        @enhanced_jail_break
        ## 
        # The property to determine whether to ignore unsupported compliance settings on certian models of devices.
        @ignore_devices_for_unsupported_settings_enabled
        ## 
        # Is feature enabled or not for scheduled action for rule.
        @is_scheduled_action_enabled
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Device should be noncompliant when there is no compliance policy targeted when this is true
        @secure_by_default
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
        ## Gets the androidDeviceAdministratorEnrollmentEnabled property value. The property to determine if Android device administrator enrollment is enabled for this account.
        ## @return a boolean
        ## 
        def android_device_administrator_enrollment_enabled
            return @android_device_administrator_enrollment_enabled
        end
        ## 
        ## Sets the androidDeviceAdministratorEnrollmentEnabled property value. The property to determine if Android device administrator enrollment is enabled for this account.
        ## @param value Value to set for the androidDeviceAdministratorEnrollmentEnabled property.
        ## @return a void
        ## 
        def android_device_administrator_enrollment_enabled=(value)
            @android_device_administrator_enrollment_enabled = value
        end
        ## 
        ## Instantiates a new deviceManagementSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementSettings.new
        end
        ## 
        ## Gets the derivedCredentialProvider property value. Provider type for Derived Credentials.
        ## @return a derived_credential_provider_type
        ## 
        def derived_credential_provider
            return @derived_credential_provider
        end
        ## 
        ## Sets the derivedCredentialProvider property value. Provider type for Derived Credentials.
        ## @param value Value to set for the derivedCredentialProvider property.
        ## @return a void
        ## 
        def derived_credential_provider=(value)
            @derived_credential_provider = value
        end
        ## 
        ## Gets the derivedCredentialUrl property value. The Derived Credential Provider self-service URI.
        ## @return a string
        ## 
        def derived_credential_url
            return @derived_credential_url
        end
        ## 
        ## Sets the derivedCredentialUrl property value. The Derived Credential Provider self-service URI.
        ## @param value Value to set for the derivedCredentialUrl property.
        ## @return a void
        ## 
        def derived_credential_url=(value)
            @derived_credential_url = value
        end
        ## 
        ## Gets the deviceComplianceCheckinThresholdDays property value. The number of days a device is allowed to go without checking in to remain compliant.
        ## @return a integer
        ## 
        def device_compliance_checkin_threshold_days
            return @device_compliance_checkin_threshold_days
        end
        ## 
        ## Sets the deviceComplianceCheckinThresholdDays property value. The number of days a device is allowed to go without checking in to remain compliant.
        ## @param value Value to set for the deviceComplianceCheckinThresholdDays property.
        ## @return a void
        ## 
        def device_compliance_checkin_threshold_days=(value)
            @device_compliance_checkin_threshold_days = value
        end
        ## 
        ## Gets the deviceInactivityBeforeRetirementInDay property value. When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270
        ## @return a integer
        ## 
        def device_inactivity_before_retirement_in_day
            return @device_inactivity_before_retirement_in_day
        end
        ## 
        ## Sets the deviceInactivityBeforeRetirementInDay property value. When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270
        ## @param value Value to set for the deviceInactivityBeforeRetirementInDay property.
        ## @return a void
        ## 
        def device_inactivity_before_retirement_in_day=(value)
            @device_inactivity_before_retirement_in_day = value
        end
        ## 
        ## Gets the enableAutopilotDiagnostics property value. Determines whether the autopilot diagnostic feature is enabled or not.
        ## @return a boolean
        ## 
        def enable_autopilot_diagnostics
            return @enable_autopilot_diagnostics
        end
        ## 
        ## Sets the enableAutopilotDiagnostics property value. Determines whether the autopilot diagnostic feature is enabled or not.
        ## @param value Value to set for the enableAutopilotDiagnostics property.
        ## @return a void
        ## 
        def enable_autopilot_diagnostics=(value)
            @enable_autopilot_diagnostics = value
        end
        ## 
        ## Gets the enableDeviceGroupMembershipReport property value. Determines whether the device group membership report feature is enabled or not.
        ## @return a boolean
        ## 
        def enable_device_group_membership_report
            return @enable_device_group_membership_report
        end
        ## 
        ## Sets the enableDeviceGroupMembershipReport property value. Determines whether the device group membership report feature is enabled or not.
        ## @param value Value to set for the enableDeviceGroupMembershipReport property.
        ## @return a void
        ## 
        def enable_device_group_membership_report=(value)
            @enable_device_group_membership_report = value
        end
        ## 
        ## Gets the enableEnhancedTroubleshootingExperience property value. Determines whether the enhanced troubleshooting UX is enabled or not.
        ## @return a boolean
        ## 
        def enable_enhanced_troubleshooting_experience
            return @enable_enhanced_troubleshooting_experience
        end
        ## 
        ## Sets the enableEnhancedTroubleshootingExperience property value. Determines whether the enhanced troubleshooting UX is enabled or not.
        ## @param value Value to set for the enableEnhancedTroubleshootingExperience property.
        ## @return a void
        ## 
        def enable_enhanced_troubleshooting_experience=(value)
            @enable_enhanced_troubleshooting_experience = value
        end
        ## 
        ## Gets the enableLogCollection property value. Determines whether the log collection feature should be available for use.
        ## @return a boolean
        ## 
        def enable_log_collection
            return @enable_log_collection
        end
        ## 
        ## Sets the enableLogCollection property value. Determines whether the log collection feature should be available for use.
        ## @param value Value to set for the enableLogCollection property.
        ## @return a void
        ## 
        def enable_log_collection=(value)
            @enable_log_collection = value
        end
        ## 
        ## Gets the enhancedJailBreak property value. Is feature enabled or not for enhanced jailbreak detection.
        ## @return a boolean
        ## 
        def enhanced_jail_break
            return @enhanced_jail_break
        end
        ## 
        ## Sets the enhancedJailBreak property value. Is feature enabled or not for enhanced jailbreak detection.
        ## @param value Value to set for the enhancedJailBreak property.
        ## @return a void
        ## 
        def enhanced_jail_break=(value)
            @enhanced_jail_break = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "androidDeviceAdministratorEnrollmentEnabled" => lambda {|n| @android_device_administrator_enrollment_enabled = n.get_boolean_value() },
                "derivedCredentialProvider" => lambda {|n| @derived_credential_provider = n.get_enum_value(MicrosoftGraphBeta::Models::DerivedCredentialProviderType) },
                "derivedCredentialUrl" => lambda {|n| @derived_credential_url = n.get_string_value() },
                "deviceComplianceCheckinThresholdDays" => lambda {|n| @device_compliance_checkin_threshold_days = n.get_number_value() },
                "deviceInactivityBeforeRetirementInDay" => lambda {|n| @device_inactivity_before_retirement_in_day = n.get_number_value() },
                "enableAutopilotDiagnostics" => lambda {|n| @enable_autopilot_diagnostics = n.get_boolean_value() },
                "enableDeviceGroupMembershipReport" => lambda {|n| @enable_device_group_membership_report = n.get_boolean_value() },
                "enableEnhancedTroubleshootingExperience" => lambda {|n| @enable_enhanced_troubleshooting_experience = n.get_boolean_value() },
                "enableLogCollection" => lambda {|n| @enable_log_collection = n.get_boolean_value() },
                "enhancedJailBreak" => lambda {|n| @enhanced_jail_break = n.get_boolean_value() },
                "ignoreDevicesForUnsupportedSettingsEnabled" => lambda {|n| @ignore_devices_for_unsupported_settings_enabled = n.get_boolean_value() },
                "isScheduledActionEnabled" => lambda {|n| @is_scheduled_action_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "secureByDefault" => lambda {|n| @secure_by_default = n.get_boolean_value() },
            }
        end
        ## 
        ## Gets the ignoreDevicesForUnsupportedSettingsEnabled property value. The property to determine whether to ignore unsupported compliance settings on certian models of devices.
        ## @return a boolean
        ## 
        def ignore_devices_for_unsupported_settings_enabled
            return @ignore_devices_for_unsupported_settings_enabled
        end
        ## 
        ## Sets the ignoreDevicesForUnsupportedSettingsEnabled property value. The property to determine whether to ignore unsupported compliance settings on certian models of devices.
        ## @param value Value to set for the ignoreDevicesForUnsupportedSettingsEnabled property.
        ## @return a void
        ## 
        def ignore_devices_for_unsupported_settings_enabled=(value)
            @ignore_devices_for_unsupported_settings_enabled = value
        end
        ## 
        ## Gets the isScheduledActionEnabled property value. Is feature enabled or not for scheduled action for rule.
        ## @return a boolean
        ## 
        def is_scheduled_action_enabled
            return @is_scheduled_action_enabled
        end
        ## 
        ## Sets the isScheduledActionEnabled property value. Is feature enabled or not for scheduled action for rule.
        ## @param value Value to set for the isScheduledActionEnabled property.
        ## @return a void
        ## 
        def is_scheduled_action_enabled=(value)
            @is_scheduled_action_enabled = value
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
        ## Gets the secureByDefault property value. Device should be noncompliant when there is no compliance policy targeted when this is true
        ## @return a boolean
        ## 
        def secure_by_default
            return @secure_by_default
        end
        ## 
        ## Sets the secureByDefault property value. Device should be noncompliant when there is no compliance policy targeted when this is true
        ## @param value Value to set for the secureByDefault property.
        ## @return a void
        ## 
        def secure_by_default=(value)
            @secure_by_default = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_boolean_value("androidDeviceAdministratorEnrollmentEnabled", @android_device_administrator_enrollment_enabled)
            writer.write_enum_value("derivedCredentialProvider", @derived_credential_provider)
            writer.write_string_value("derivedCredentialUrl", @derived_credential_url)
            writer.write_number_value("deviceComplianceCheckinThresholdDays", @device_compliance_checkin_threshold_days)
            writer.write_number_value("deviceInactivityBeforeRetirementInDay", @device_inactivity_before_retirement_in_day)
            writer.write_boolean_value("enableAutopilotDiagnostics", @enable_autopilot_diagnostics)
            writer.write_boolean_value("enableDeviceGroupMembershipReport", @enable_device_group_membership_report)
            writer.write_boolean_value("enableEnhancedTroubleshootingExperience", @enable_enhanced_troubleshooting_experience)
            writer.write_boolean_value("enableLogCollection", @enable_log_collection)
            writer.write_boolean_value("enhancedJailBreak", @enhanced_jail_break)
            writer.write_boolean_value("ignoreDevicesForUnsupportedSettingsEnabled", @ignore_devices_for_unsupported_settings_enabled)
            writer.write_boolean_value("isScheduledActionEnabled", @is_scheduled_action_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_boolean_value("secureByDefault", @secure_by_default)
            writer.write_additional_data(@additional_data)
        end
    end
end
