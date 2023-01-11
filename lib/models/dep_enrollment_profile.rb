require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DepEnrollmentProfile < MicrosoftGraphBeta::Models::EnrollmentProfile
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates if Apple id setup pane is disabled
        @apple_id_disabled
        ## 
        # Indicates if Apple pay setup pane is disabled
        @apple_pay_disabled
        ## 
        # Indicates if the device will need to wait for configured confirmation
        @await_device_configured_confirmation
        ## 
        # Indicates if diagnostics setup pane is disabled
        @diagnostics_disabled
        ## 
        # This indicates whether the device is to be enrolled in a mode which enables multi user scenarios. Only applicable in shared iPads.
        @enable_shared_i_pad
        ## 
        # Indicates if this is the default profile
        @is_default
        ## 
        # Indicates if the profile is mandatory
        @is_mandatory
        ## 
        # The iTunesPairingMode property
        @i_tunes_pairing_mode
        ## 
        # Indicates if Location service setup pane is disabled
        @location_disabled
        ## 
        # Indicates if Mac OS file vault is disabled
        @mac_o_s_file_vault_disabled
        ## 
        # Indicates if Mac OS registration is disabled
        @mac_o_s_registration_disabled
        ## 
        # Management certificates for Apple Configurator
        @management_certificates
        ## 
        # Indicates if Passcode setup pane is disabled
        @pass_code_disabled
        ## 
        # Indicates if the profile removal option is disabled
        @profile_removal_disabled
        ## 
        # Indicates if Restore setup pane is blocked
        @restore_blocked
        ## 
        # Indicates if Restore from Android is disabled
        @restore_from_android_disabled
        ## 
        # This specifies the maximum number of users that can use a shared iPad. Only applicable in shared iPad mode.
        @shared_i_pad_maximum_user_count
        ## 
        # Indicates if siri setup pane is disabled
        @siri_disabled
        ## 
        # Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
        @supervised_mode_enabled
        ## 
        # Support department information
        @support_department
        ## 
        # Support phone number
        @support_phone_number
        ## 
        # Indicates if 'Terms and Conditions' setup pane is disabled
        @terms_and_conditions_disabled
        ## 
        # Indicates if touch id setup pane is disabled
        @touch_id_disabled
        ## 
        # Indicates if zoom setup pane is disabled
        @zoom_disabled
        ## 
        ## Gets the appleIdDisabled property value. Indicates if Apple id setup pane is disabled
        ## @return a boolean
        ## 
        def apple_id_disabled
            return @apple_id_disabled
        end
        ## 
        ## Sets the appleIdDisabled property value. Indicates if Apple id setup pane is disabled
        ## @param value Value to set for the appleIdDisabled property.
        ## @return a void
        ## 
        def apple_id_disabled=(value)
            @apple_id_disabled = value
        end
        ## 
        ## Gets the applePayDisabled property value. Indicates if Apple pay setup pane is disabled
        ## @return a boolean
        ## 
        def apple_pay_disabled
            return @apple_pay_disabled
        end
        ## 
        ## Sets the applePayDisabled property value. Indicates if Apple pay setup pane is disabled
        ## @param value Value to set for the applePayDisabled property.
        ## @return a void
        ## 
        def apple_pay_disabled=(value)
            @apple_pay_disabled = value
        end
        ## 
        ## Gets the awaitDeviceConfiguredConfirmation property value. Indicates if the device will need to wait for configured confirmation
        ## @return a boolean
        ## 
        def await_device_configured_confirmation
            return @await_device_configured_confirmation
        end
        ## 
        ## Sets the awaitDeviceConfiguredConfirmation property value. Indicates if the device will need to wait for configured confirmation
        ## @param value Value to set for the awaitDeviceConfiguredConfirmation property.
        ## @return a void
        ## 
        def await_device_configured_confirmation=(value)
            @await_device_configured_confirmation = value
        end
        ## 
        ## Instantiates a new DepEnrollmentProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.depEnrollmentProfile"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a dep_enrollment_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DepEnrollmentProfile.new
        end
        ## 
        ## Gets the diagnosticsDisabled property value. Indicates if diagnostics setup pane is disabled
        ## @return a boolean
        ## 
        def diagnostics_disabled
            return @diagnostics_disabled
        end
        ## 
        ## Sets the diagnosticsDisabled property value. Indicates if diagnostics setup pane is disabled
        ## @param value Value to set for the diagnosticsDisabled property.
        ## @return a void
        ## 
        def diagnostics_disabled=(value)
            @diagnostics_disabled = value
        end
        ## 
        ## Gets the enableSharedIPad property value. This indicates whether the device is to be enrolled in a mode which enables multi user scenarios. Only applicable in shared iPads.
        ## @return a boolean
        ## 
        def enable_shared_i_pad
            return @enable_shared_i_pad
        end
        ## 
        ## Sets the enableSharedIPad property value. This indicates whether the device is to be enrolled in a mode which enables multi user scenarios. Only applicable in shared iPads.
        ## @param value Value to set for the enableSharedIPad property.
        ## @return a void
        ## 
        def enable_shared_i_pad=(value)
            @enable_shared_i_pad = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appleIdDisabled" => lambda {|n| @apple_id_disabled = n.get_boolean_value() },
                "applePayDisabled" => lambda {|n| @apple_pay_disabled = n.get_boolean_value() },
                "awaitDeviceConfiguredConfirmation" => lambda {|n| @await_device_configured_confirmation = n.get_boolean_value() },
                "diagnosticsDisabled" => lambda {|n| @diagnostics_disabled = n.get_boolean_value() },
                "enableSharedIPad" => lambda {|n| @enable_shared_i_pad = n.get_boolean_value() },
                "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                "isMandatory" => lambda {|n| @is_mandatory = n.get_boolean_value() },
                "iTunesPairingMode" => lambda {|n| @i_tunes_pairing_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ITunesPairingMode) },
                "locationDisabled" => lambda {|n| @location_disabled = n.get_boolean_value() },
                "macOSFileVaultDisabled" => lambda {|n| @mac_o_s_file_vault_disabled = n.get_boolean_value() },
                "macOSRegistrationDisabled" => lambda {|n| @mac_o_s_registration_disabled = n.get_boolean_value() },
                "managementCertificates" => lambda {|n| @management_certificates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagementCertificateWithThumbprint.create_from_discriminator_value(pn) }) },
                "passCodeDisabled" => lambda {|n| @pass_code_disabled = n.get_boolean_value() },
                "profileRemovalDisabled" => lambda {|n| @profile_removal_disabled = n.get_boolean_value() },
                "restoreBlocked" => lambda {|n| @restore_blocked = n.get_boolean_value() },
                "restoreFromAndroidDisabled" => lambda {|n| @restore_from_android_disabled = n.get_boolean_value() },
                "sharedIPadMaximumUserCount" => lambda {|n| @shared_i_pad_maximum_user_count = n.get_number_value() },
                "siriDisabled" => lambda {|n| @siri_disabled = n.get_boolean_value() },
                "supervisedModeEnabled" => lambda {|n| @supervised_mode_enabled = n.get_boolean_value() },
                "supportDepartment" => lambda {|n| @support_department = n.get_string_value() },
                "supportPhoneNumber" => lambda {|n| @support_phone_number = n.get_string_value() },
                "termsAndConditionsDisabled" => lambda {|n| @terms_and_conditions_disabled = n.get_boolean_value() },
                "touchIdDisabled" => lambda {|n| @touch_id_disabled = n.get_boolean_value() },
                "zoomDisabled" => lambda {|n| @zoom_disabled = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the isDefault property value. Indicates if this is the default profile
        ## @return a boolean
        ## 
        def is_default
            return @is_default
        end
        ## 
        ## Sets the isDefault property value. Indicates if this is the default profile
        ## @param value Value to set for the isDefault property.
        ## @return a void
        ## 
        def is_default=(value)
            @is_default = value
        end
        ## 
        ## Gets the isMandatory property value. Indicates if the profile is mandatory
        ## @return a boolean
        ## 
        def is_mandatory
            return @is_mandatory
        end
        ## 
        ## Sets the isMandatory property value. Indicates if the profile is mandatory
        ## @param value Value to set for the isMandatory property.
        ## @return a void
        ## 
        def is_mandatory=(value)
            @is_mandatory = value
        end
        ## 
        ## Gets the iTunesPairingMode property value. The iTunesPairingMode property
        ## @return a i_tunes_pairing_mode
        ## 
        def i_tunes_pairing_mode
            return @i_tunes_pairing_mode
        end
        ## 
        ## Sets the iTunesPairingMode property value. The iTunesPairingMode property
        ## @param value Value to set for the iTunesPairingMode property.
        ## @return a void
        ## 
        def i_tunes_pairing_mode=(value)
            @i_tunes_pairing_mode = value
        end
        ## 
        ## Gets the locationDisabled property value. Indicates if Location service setup pane is disabled
        ## @return a boolean
        ## 
        def location_disabled
            return @location_disabled
        end
        ## 
        ## Sets the locationDisabled property value. Indicates if Location service setup pane is disabled
        ## @param value Value to set for the locationDisabled property.
        ## @return a void
        ## 
        def location_disabled=(value)
            @location_disabled = value
        end
        ## 
        ## Gets the macOSFileVaultDisabled property value. Indicates if Mac OS file vault is disabled
        ## @return a boolean
        ## 
        def mac_o_s_file_vault_disabled
            return @mac_o_s_file_vault_disabled
        end
        ## 
        ## Sets the macOSFileVaultDisabled property value. Indicates if Mac OS file vault is disabled
        ## @param value Value to set for the macOSFileVaultDisabled property.
        ## @return a void
        ## 
        def mac_o_s_file_vault_disabled=(value)
            @mac_o_s_file_vault_disabled = value
        end
        ## 
        ## Gets the macOSRegistrationDisabled property value. Indicates if Mac OS registration is disabled
        ## @return a boolean
        ## 
        def mac_o_s_registration_disabled
            return @mac_o_s_registration_disabled
        end
        ## 
        ## Sets the macOSRegistrationDisabled property value. Indicates if Mac OS registration is disabled
        ## @param value Value to set for the macOSRegistrationDisabled property.
        ## @return a void
        ## 
        def mac_o_s_registration_disabled=(value)
            @mac_o_s_registration_disabled = value
        end
        ## 
        ## Gets the managementCertificates property value. Management certificates for Apple Configurator
        ## @return a management_certificate_with_thumbprint
        ## 
        def management_certificates
            return @management_certificates
        end
        ## 
        ## Sets the managementCertificates property value. Management certificates for Apple Configurator
        ## @param value Value to set for the managementCertificates property.
        ## @return a void
        ## 
        def management_certificates=(value)
            @management_certificates = value
        end
        ## 
        ## Gets the passCodeDisabled property value. Indicates if Passcode setup pane is disabled
        ## @return a boolean
        ## 
        def pass_code_disabled
            return @pass_code_disabled
        end
        ## 
        ## Sets the passCodeDisabled property value. Indicates if Passcode setup pane is disabled
        ## @param value Value to set for the passCodeDisabled property.
        ## @return a void
        ## 
        def pass_code_disabled=(value)
            @pass_code_disabled = value
        end
        ## 
        ## Gets the profileRemovalDisabled property value. Indicates if the profile removal option is disabled
        ## @return a boolean
        ## 
        def profile_removal_disabled
            return @profile_removal_disabled
        end
        ## 
        ## Sets the profileRemovalDisabled property value. Indicates if the profile removal option is disabled
        ## @param value Value to set for the profileRemovalDisabled property.
        ## @return a void
        ## 
        def profile_removal_disabled=(value)
            @profile_removal_disabled = value
        end
        ## 
        ## Gets the restoreBlocked property value. Indicates if Restore setup pane is blocked
        ## @return a boolean
        ## 
        def restore_blocked
            return @restore_blocked
        end
        ## 
        ## Sets the restoreBlocked property value. Indicates if Restore setup pane is blocked
        ## @param value Value to set for the restoreBlocked property.
        ## @return a void
        ## 
        def restore_blocked=(value)
            @restore_blocked = value
        end
        ## 
        ## Gets the restoreFromAndroidDisabled property value. Indicates if Restore from Android is disabled
        ## @return a boolean
        ## 
        def restore_from_android_disabled
            return @restore_from_android_disabled
        end
        ## 
        ## Sets the restoreFromAndroidDisabled property value. Indicates if Restore from Android is disabled
        ## @param value Value to set for the restoreFromAndroidDisabled property.
        ## @return a void
        ## 
        def restore_from_android_disabled=(value)
            @restore_from_android_disabled = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("appleIdDisabled", @apple_id_disabled)
            writer.write_boolean_value("applePayDisabled", @apple_pay_disabled)
            writer.write_boolean_value("awaitDeviceConfiguredConfirmation", @await_device_configured_confirmation)
            writer.write_boolean_value("diagnosticsDisabled", @diagnostics_disabled)
            writer.write_boolean_value("enableSharedIPad", @enable_shared_i_pad)
            writer.write_boolean_value("isDefault", @is_default)
            writer.write_boolean_value("isMandatory", @is_mandatory)
            writer.write_enum_value("iTunesPairingMode", @i_tunes_pairing_mode)
            writer.write_boolean_value("locationDisabled", @location_disabled)
            writer.write_boolean_value("macOSFileVaultDisabled", @mac_o_s_file_vault_disabled)
            writer.write_boolean_value("macOSRegistrationDisabled", @mac_o_s_registration_disabled)
            writer.write_collection_of_object_values("managementCertificates", @management_certificates)
            writer.write_boolean_value("passCodeDisabled", @pass_code_disabled)
            writer.write_boolean_value("profileRemovalDisabled", @profile_removal_disabled)
            writer.write_boolean_value("restoreBlocked", @restore_blocked)
            writer.write_boolean_value("restoreFromAndroidDisabled", @restore_from_android_disabled)
            writer.write_number_value("sharedIPadMaximumUserCount", @shared_i_pad_maximum_user_count)
            writer.write_boolean_value("siriDisabled", @siri_disabled)
            writer.write_boolean_value("supervisedModeEnabled", @supervised_mode_enabled)
            writer.write_string_value("supportDepartment", @support_department)
            writer.write_string_value("supportPhoneNumber", @support_phone_number)
            writer.write_boolean_value("termsAndConditionsDisabled", @terms_and_conditions_disabled)
            writer.write_boolean_value("touchIdDisabled", @touch_id_disabled)
            writer.write_boolean_value("zoomDisabled", @zoom_disabled)
        end
        ## 
        ## Gets the sharedIPadMaximumUserCount property value. This specifies the maximum number of users that can use a shared iPad. Only applicable in shared iPad mode.
        ## @return a integer
        ## 
        def shared_i_pad_maximum_user_count
            return @shared_i_pad_maximum_user_count
        end
        ## 
        ## Sets the sharedIPadMaximumUserCount property value. This specifies the maximum number of users that can use a shared iPad. Only applicable in shared iPad mode.
        ## @param value Value to set for the sharedIPadMaximumUserCount property.
        ## @return a void
        ## 
        def shared_i_pad_maximum_user_count=(value)
            @shared_i_pad_maximum_user_count = value
        end
        ## 
        ## Gets the siriDisabled property value. Indicates if siri setup pane is disabled
        ## @return a boolean
        ## 
        def siri_disabled
            return @siri_disabled
        end
        ## 
        ## Sets the siriDisabled property value. Indicates if siri setup pane is disabled
        ## @param value Value to set for the siriDisabled property.
        ## @return a void
        ## 
        def siri_disabled=(value)
            @siri_disabled = value
        end
        ## 
        ## Gets the supervisedModeEnabled property value. Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
        ## @return a boolean
        ## 
        def supervised_mode_enabled
            return @supervised_mode_enabled
        end
        ## 
        ## Sets the supervisedModeEnabled property value. Supervised mode, True to enable, false otherwise. See https://learn.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune for additional information.
        ## @param value Value to set for the supervisedModeEnabled property.
        ## @return a void
        ## 
        def supervised_mode_enabled=(value)
            @supervised_mode_enabled = value
        end
        ## 
        ## Gets the supportDepartment property value. Support department information
        ## @return a string
        ## 
        def support_department
            return @support_department
        end
        ## 
        ## Sets the supportDepartment property value. Support department information
        ## @param value Value to set for the supportDepartment property.
        ## @return a void
        ## 
        def support_department=(value)
            @support_department = value
        end
        ## 
        ## Gets the supportPhoneNumber property value. Support phone number
        ## @return a string
        ## 
        def support_phone_number
            return @support_phone_number
        end
        ## 
        ## Sets the supportPhoneNumber property value. Support phone number
        ## @param value Value to set for the supportPhoneNumber property.
        ## @return a void
        ## 
        def support_phone_number=(value)
            @support_phone_number = value
        end
        ## 
        ## Gets the termsAndConditionsDisabled property value. Indicates if 'Terms and Conditions' setup pane is disabled
        ## @return a boolean
        ## 
        def terms_and_conditions_disabled
            return @terms_and_conditions_disabled
        end
        ## 
        ## Sets the termsAndConditionsDisabled property value. Indicates if 'Terms and Conditions' setup pane is disabled
        ## @param value Value to set for the termsAndConditionsDisabled property.
        ## @return a void
        ## 
        def terms_and_conditions_disabled=(value)
            @terms_and_conditions_disabled = value
        end
        ## 
        ## Gets the touchIdDisabled property value. Indicates if touch id setup pane is disabled
        ## @return a boolean
        ## 
        def touch_id_disabled
            return @touch_id_disabled
        end
        ## 
        ## Sets the touchIdDisabled property value. Indicates if touch id setup pane is disabled
        ## @param value Value to set for the touchIdDisabled property.
        ## @return a void
        ## 
        def touch_id_disabled=(value)
            @touch_id_disabled = value
        end
        ## 
        ## Gets the zoomDisabled property value. Indicates if zoom setup pane is disabled
        ## @return a boolean
        ## 
        def zoom_disabled
            return @zoom_disabled
        end
        ## 
        ## Sets the zoomDisabled property value. Indicates if zoom setup pane is disabled
        ## @param value Value to set for the zoomDisabled property.
        ## @return a void
        ## 
        def zoom_disabled=(value)
            @zoom_disabled = value
        end
    end
end
