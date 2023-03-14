require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DepIOSEnrollmentProfile < MicrosoftGraphBeta::Models::DepEnrollmentBaseProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if Apperance screen is disabled
            @appearance_screen_disabled
            ## 
            # Indicates if the device will need to wait for configured confirmation
            @await_device_configured_confirmation
            ## 
            # Carrier URL for activating device eSIM.
            @carrier_activation_url
            ## 
            # If set, indicates which Vpp token should be used to deploy the Company Portal w/ device licensing. 'enableAuthenticationViaCompanyPortal' must be set in order for this property to be set.
            @company_portal_vpp_token_id
            ## 
            # Indicates if Device To Device Migration is disabled
            @device_to_device_migration_disabled
            ## 
            # This indicates whether the device is to be enrolled in a mode which enables multi user scenarios. Only applicable in shared iPads.
            @enable_shared_i_pad
            ## 
            # Tells the device to enable single app mode and apply app-lock during enrollment. Default is false. 'enableAuthenticationViaCompanyPortal' and 'companyPortalVppTokenId' must be set for this property to be set.
            @enable_single_app_enrollment_mode
            ## 
            # Indicates if Express Language screen is disabled
            @express_language_screen_disabled
            ## 
            # Indicates if temporary sessions is enabled
            @force_temporary_session
            ## 
            # Indicates if home button sensitivity screen is disabled
            @home_button_screen_disabled
            ## 
            # Indicates if iMessage and FaceTime screen is disabled
            @i_message_and_face_time_screen_disabled
            ## 
            # The iTunesPairingMode property
            @i_tunes_pairing_mode
            ## 
            # Management certificates for Apple Configurator
            @management_certificates
            ## 
            # Indicates if onboarding setup screen is disabled
            @on_boarding_screen_disabled
            ## 
            # Indicates if Passcode setup pane is disabled
            @pass_code_disabled
            ## 
            # Indicates timeout before locked screen requires the user to enter the device passocde to unlock it
            @passcode_lock_grace_period_in_seconds
            ## 
            # Indicates if Preferred language screen is disabled
            @preferred_language_screen_disabled
            ## 
            # Indicates if Weclome screen is disabled
            @restore_completed_screen_disabled
            ## 
            # Indicates if Restore from Android is disabled
            @restore_from_android_disabled
            ## 
            # This specifies the maximum number of users that can use a shared iPad. Only applicable in shared iPad mode.
            @shared_i_pad_maximum_user_count
            ## 
            # Indicates if the SIMSetup screen is disabled
            @sim_setup_screen_disabled
            ## 
            # Indicates if the mandatory sofware update screen is disabled
            @software_update_screen_disabled
            ## 
            # Indicates timeout of temporary session
            @temporary_session_timeout_in_seconds
            ## 
            # Indicates if Weclome screen is disabled
            @update_complete_screen_disabled
            ## 
            # Indicates timeout of temporary session
            @user_session_timeout_in_seconds
            ## 
            # Indicates that this apple device is designated to support 'shared device mode' scenarios. This is distinct from the 'shared iPad' scenario. See https://learn.microsoft.com/mem/intune/enrollment/device-enrollment-shared-ios
            @userless_shared_aad_mode_enabled
            ## 
            # Indicates if the watch migration screen is disabled
            @watch_migration_screen_disabled
            ## 
            # Indicates if Weclome screen is disabled
            @welcome_screen_disabled
            ## 
            # Indicates if zoom setup pane is disabled
            @zoom_disabled
            ## 
            ## Gets the appearanceScreenDisabled property value. Indicates if Apperance screen is disabled
            ## @return a boolean
            ## 
            def appearance_screen_disabled
                return @appearance_screen_disabled
            end
            ## 
            ## Sets the appearanceScreenDisabled property value. Indicates if Apperance screen is disabled
            ## @param value Value to set for the appearance_screen_disabled property.
            ## @return a void
            ## 
            def appearance_screen_disabled=(value)
                @appearance_screen_disabled = value
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
            ## @param value Value to set for the await_device_configured_confirmation property.
            ## @return a void
            ## 
            def await_device_configured_confirmation=(value)
                @await_device_configured_confirmation = value
            end
            ## 
            ## Gets the carrierActivationUrl property value. Carrier URL for activating device eSIM.
            ## @return a string
            ## 
            def carrier_activation_url
                return @carrier_activation_url
            end
            ## 
            ## Sets the carrierActivationUrl property value. Carrier URL for activating device eSIM.
            ## @param value Value to set for the carrier_activation_url property.
            ## @return a void
            ## 
            def carrier_activation_url=(value)
                @carrier_activation_url = value
            end
            ## 
            ## Gets the companyPortalVppTokenId property value. If set, indicates which Vpp token should be used to deploy the Company Portal w/ device licensing. 'enableAuthenticationViaCompanyPortal' must be set in order for this property to be set.
            ## @return a string
            ## 
            def company_portal_vpp_token_id
                return @company_portal_vpp_token_id
            end
            ## 
            ## Sets the companyPortalVppTokenId property value. If set, indicates which Vpp token should be used to deploy the Company Portal w/ device licensing. 'enableAuthenticationViaCompanyPortal' must be set in order for this property to be set.
            ## @param value Value to set for the company_portal_vpp_token_id property.
            ## @return a void
            ## 
            def company_portal_vpp_token_id=(value)
                @company_portal_vpp_token_id = value
            end
            ## 
            ## Instantiates a new DepIOSEnrollmentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.depIOSEnrollmentProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a dep_i_o_s_enrollment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DepIOSEnrollmentProfile.new
            end
            ## 
            ## Gets the deviceToDeviceMigrationDisabled property value. Indicates if Device To Device Migration is disabled
            ## @return a boolean
            ## 
            def device_to_device_migration_disabled
                return @device_to_device_migration_disabled
            end
            ## 
            ## Sets the deviceToDeviceMigrationDisabled property value. Indicates if Device To Device Migration is disabled
            ## @param value Value to set for the device_to_device_migration_disabled property.
            ## @return a void
            ## 
            def device_to_device_migration_disabled=(value)
                @device_to_device_migration_disabled = value
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
            ## @param value Value to set for the enable_shared_i_pad property.
            ## @return a void
            ## 
            def enable_shared_i_pad=(value)
                @enable_shared_i_pad = value
            end
            ## 
            ## Gets the enableSingleAppEnrollmentMode property value. Tells the device to enable single app mode and apply app-lock during enrollment. Default is false. 'enableAuthenticationViaCompanyPortal' and 'companyPortalVppTokenId' must be set for this property to be set.
            ## @return a boolean
            ## 
            def enable_single_app_enrollment_mode
                return @enable_single_app_enrollment_mode
            end
            ## 
            ## Sets the enableSingleAppEnrollmentMode property value. Tells the device to enable single app mode and apply app-lock during enrollment. Default is false. 'enableAuthenticationViaCompanyPortal' and 'companyPortalVppTokenId' must be set for this property to be set.
            ## @param value Value to set for the enable_single_app_enrollment_mode property.
            ## @return a void
            ## 
            def enable_single_app_enrollment_mode=(value)
                @enable_single_app_enrollment_mode = value
            end
            ## 
            ## Gets the expressLanguageScreenDisabled property value. Indicates if Express Language screen is disabled
            ## @return a boolean
            ## 
            def express_language_screen_disabled
                return @express_language_screen_disabled
            end
            ## 
            ## Sets the expressLanguageScreenDisabled property value. Indicates if Express Language screen is disabled
            ## @param value Value to set for the express_language_screen_disabled property.
            ## @return a void
            ## 
            def express_language_screen_disabled=(value)
                @express_language_screen_disabled = value
            end
            ## 
            ## Gets the forceTemporarySession property value. Indicates if temporary sessions is enabled
            ## @return a boolean
            ## 
            def force_temporary_session
                return @force_temporary_session
            end
            ## 
            ## Sets the forceTemporarySession property value. Indicates if temporary sessions is enabled
            ## @param value Value to set for the force_temporary_session property.
            ## @return a void
            ## 
            def force_temporary_session=(value)
                @force_temporary_session = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appearanceScreenDisabled" => lambda {|n| @appearance_screen_disabled = n.get_boolean_value() },
                    "awaitDeviceConfiguredConfirmation" => lambda {|n| @await_device_configured_confirmation = n.get_boolean_value() },
                    "carrierActivationUrl" => lambda {|n| @carrier_activation_url = n.get_string_value() },
                    "companyPortalVppTokenId" => lambda {|n| @company_portal_vpp_token_id = n.get_string_value() },
                    "deviceToDeviceMigrationDisabled" => lambda {|n| @device_to_device_migration_disabled = n.get_boolean_value() },
                    "enableSharedIPad" => lambda {|n| @enable_shared_i_pad = n.get_boolean_value() },
                    "enableSingleAppEnrollmentMode" => lambda {|n| @enable_single_app_enrollment_mode = n.get_boolean_value() },
                    "expressLanguageScreenDisabled" => lambda {|n| @express_language_screen_disabled = n.get_boolean_value() },
                    "forceTemporarySession" => lambda {|n| @force_temporary_session = n.get_boolean_value() },
                    "homeButtonScreenDisabled" => lambda {|n| @home_button_screen_disabled = n.get_boolean_value() },
                    "iMessageAndFaceTimeScreenDisabled" => lambda {|n| @i_message_and_face_time_screen_disabled = n.get_boolean_value() },
                    "iTunesPairingMode" => lambda {|n| @i_tunes_pairing_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ITunesPairingMode) },
                    "managementCertificates" => lambda {|n| @management_certificates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagementCertificateWithThumbprint.create_from_discriminator_value(pn) }) },
                    "onBoardingScreenDisabled" => lambda {|n| @on_boarding_screen_disabled = n.get_boolean_value() },
                    "passCodeDisabled" => lambda {|n| @pass_code_disabled = n.get_boolean_value() },
                    "passcodeLockGracePeriodInSeconds" => lambda {|n| @passcode_lock_grace_period_in_seconds = n.get_number_value() },
                    "preferredLanguageScreenDisabled" => lambda {|n| @preferred_language_screen_disabled = n.get_boolean_value() },
                    "restoreCompletedScreenDisabled" => lambda {|n| @restore_completed_screen_disabled = n.get_boolean_value() },
                    "restoreFromAndroidDisabled" => lambda {|n| @restore_from_android_disabled = n.get_boolean_value() },
                    "sharedIPadMaximumUserCount" => lambda {|n| @shared_i_pad_maximum_user_count = n.get_number_value() },
                    "simSetupScreenDisabled" => lambda {|n| @sim_setup_screen_disabled = n.get_boolean_value() },
                    "softwareUpdateScreenDisabled" => lambda {|n| @software_update_screen_disabled = n.get_boolean_value() },
                    "temporarySessionTimeoutInSeconds" => lambda {|n| @temporary_session_timeout_in_seconds = n.get_number_value() },
                    "updateCompleteScreenDisabled" => lambda {|n| @update_complete_screen_disabled = n.get_boolean_value() },
                    "userSessionTimeoutInSeconds" => lambda {|n| @user_session_timeout_in_seconds = n.get_number_value() },
                    "userlessSharedAadModeEnabled" => lambda {|n| @userless_shared_aad_mode_enabled = n.get_boolean_value() },
                    "watchMigrationScreenDisabled" => lambda {|n| @watch_migration_screen_disabled = n.get_boolean_value() },
                    "welcomeScreenDisabled" => lambda {|n| @welcome_screen_disabled = n.get_boolean_value() },
                    "zoomDisabled" => lambda {|n| @zoom_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the homeButtonScreenDisabled property value. Indicates if home button sensitivity screen is disabled
            ## @return a boolean
            ## 
            def home_button_screen_disabled
                return @home_button_screen_disabled
            end
            ## 
            ## Sets the homeButtonScreenDisabled property value. Indicates if home button sensitivity screen is disabled
            ## @param value Value to set for the home_button_screen_disabled property.
            ## @return a void
            ## 
            def home_button_screen_disabled=(value)
                @home_button_screen_disabled = value
            end
            ## 
            ## Gets the iMessageAndFaceTimeScreenDisabled property value. Indicates if iMessage and FaceTime screen is disabled
            ## @return a boolean
            ## 
            def i_message_and_face_time_screen_disabled
                return @i_message_and_face_time_screen_disabled
            end
            ## 
            ## Sets the iMessageAndFaceTimeScreenDisabled property value. Indicates if iMessage and FaceTime screen is disabled
            ## @param value Value to set for the i_message_and_face_time_screen_disabled property.
            ## @return a void
            ## 
            def i_message_and_face_time_screen_disabled=(value)
                @i_message_and_face_time_screen_disabled = value
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
            ## @param value Value to set for the i_tunes_pairing_mode property.
            ## @return a void
            ## 
            def i_tunes_pairing_mode=(value)
                @i_tunes_pairing_mode = value
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
            ## @param value Value to set for the management_certificates property.
            ## @return a void
            ## 
            def management_certificates=(value)
                @management_certificates = value
            end
            ## 
            ## Gets the onBoardingScreenDisabled property value. Indicates if onboarding setup screen is disabled
            ## @return a boolean
            ## 
            def on_boarding_screen_disabled
                return @on_boarding_screen_disabled
            end
            ## 
            ## Sets the onBoardingScreenDisabled property value. Indicates if onboarding setup screen is disabled
            ## @param value Value to set for the on_boarding_screen_disabled property.
            ## @return a void
            ## 
            def on_boarding_screen_disabled=(value)
                @on_boarding_screen_disabled = value
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
            ## @param value Value to set for the pass_code_disabled property.
            ## @return a void
            ## 
            def pass_code_disabled=(value)
                @pass_code_disabled = value
            end
            ## 
            ## Gets the passcodeLockGracePeriodInSeconds property value. Indicates timeout before locked screen requires the user to enter the device passocde to unlock it
            ## @return a integer
            ## 
            def passcode_lock_grace_period_in_seconds
                return @passcode_lock_grace_period_in_seconds
            end
            ## 
            ## Sets the passcodeLockGracePeriodInSeconds property value. Indicates timeout before locked screen requires the user to enter the device passocde to unlock it
            ## @param value Value to set for the passcode_lock_grace_period_in_seconds property.
            ## @return a void
            ## 
            def passcode_lock_grace_period_in_seconds=(value)
                @passcode_lock_grace_period_in_seconds = value
            end
            ## 
            ## Gets the preferredLanguageScreenDisabled property value. Indicates if Preferred language screen is disabled
            ## @return a boolean
            ## 
            def preferred_language_screen_disabled
                return @preferred_language_screen_disabled
            end
            ## 
            ## Sets the preferredLanguageScreenDisabled property value. Indicates if Preferred language screen is disabled
            ## @param value Value to set for the preferred_language_screen_disabled property.
            ## @return a void
            ## 
            def preferred_language_screen_disabled=(value)
                @preferred_language_screen_disabled = value
            end
            ## 
            ## Gets the restoreCompletedScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @return a boolean
            ## 
            def restore_completed_screen_disabled
                return @restore_completed_screen_disabled
            end
            ## 
            ## Sets the restoreCompletedScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @param value Value to set for the restore_completed_screen_disabled property.
            ## @return a void
            ## 
            def restore_completed_screen_disabled=(value)
                @restore_completed_screen_disabled = value
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
            ## @param value Value to set for the restore_from_android_disabled property.
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
                writer.write_boolean_value("appearanceScreenDisabled", @appearance_screen_disabled)
                writer.write_boolean_value("awaitDeviceConfiguredConfirmation", @await_device_configured_confirmation)
                writer.write_string_value("carrierActivationUrl", @carrier_activation_url)
                writer.write_string_value("companyPortalVppTokenId", @company_portal_vpp_token_id)
                writer.write_boolean_value("deviceToDeviceMigrationDisabled", @device_to_device_migration_disabled)
                writer.write_boolean_value("enableSharedIPad", @enable_shared_i_pad)
                writer.write_boolean_value("enableSingleAppEnrollmentMode", @enable_single_app_enrollment_mode)
                writer.write_boolean_value("expressLanguageScreenDisabled", @express_language_screen_disabled)
                writer.write_boolean_value("forceTemporarySession", @force_temporary_session)
                writer.write_boolean_value("homeButtonScreenDisabled", @home_button_screen_disabled)
                writer.write_boolean_value("iMessageAndFaceTimeScreenDisabled", @i_message_and_face_time_screen_disabled)
                writer.write_enum_value("iTunesPairingMode", @i_tunes_pairing_mode)
                writer.write_collection_of_object_values("managementCertificates", @management_certificates)
                writer.write_boolean_value("onBoardingScreenDisabled", @on_boarding_screen_disabled)
                writer.write_boolean_value("passCodeDisabled", @pass_code_disabled)
                writer.write_number_value("passcodeLockGracePeriodInSeconds", @passcode_lock_grace_period_in_seconds)
                writer.write_boolean_value("preferredLanguageScreenDisabled", @preferred_language_screen_disabled)
                writer.write_boolean_value("restoreCompletedScreenDisabled", @restore_completed_screen_disabled)
                writer.write_boolean_value("restoreFromAndroidDisabled", @restore_from_android_disabled)
                writer.write_number_value("sharedIPadMaximumUserCount", @shared_i_pad_maximum_user_count)
                writer.write_boolean_value("simSetupScreenDisabled", @sim_setup_screen_disabled)
                writer.write_boolean_value("softwareUpdateScreenDisabled", @software_update_screen_disabled)
                writer.write_number_value("temporarySessionTimeoutInSeconds", @temporary_session_timeout_in_seconds)
                writer.write_boolean_value("updateCompleteScreenDisabled", @update_complete_screen_disabled)
                writer.write_number_value("userSessionTimeoutInSeconds", @user_session_timeout_in_seconds)
                writer.write_boolean_value("userlessSharedAadModeEnabled", @userless_shared_aad_mode_enabled)
                writer.write_boolean_value("watchMigrationScreenDisabled", @watch_migration_screen_disabled)
                writer.write_boolean_value("welcomeScreenDisabled", @welcome_screen_disabled)
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
            ## @param value Value to set for the shared_i_pad_maximum_user_count property.
            ## @return a void
            ## 
            def shared_i_pad_maximum_user_count=(value)
                @shared_i_pad_maximum_user_count = value
            end
            ## 
            ## Gets the simSetupScreenDisabled property value. Indicates if the SIMSetup screen is disabled
            ## @return a boolean
            ## 
            def sim_setup_screen_disabled
                return @sim_setup_screen_disabled
            end
            ## 
            ## Sets the simSetupScreenDisabled property value. Indicates if the SIMSetup screen is disabled
            ## @param value Value to set for the sim_setup_screen_disabled property.
            ## @return a void
            ## 
            def sim_setup_screen_disabled=(value)
                @sim_setup_screen_disabled = value
            end
            ## 
            ## Gets the softwareUpdateScreenDisabled property value. Indicates if the mandatory sofware update screen is disabled
            ## @return a boolean
            ## 
            def software_update_screen_disabled
                return @software_update_screen_disabled
            end
            ## 
            ## Sets the softwareUpdateScreenDisabled property value. Indicates if the mandatory sofware update screen is disabled
            ## @param value Value to set for the software_update_screen_disabled property.
            ## @return a void
            ## 
            def software_update_screen_disabled=(value)
                @software_update_screen_disabled = value
            end
            ## 
            ## Gets the temporarySessionTimeoutInSeconds property value. Indicates timeout of temporary session
            ## @return a integer
            ## 
            def temporary_session_timeout_in_seconds
                return @temporary_session_timeout_in_seconds
            end
            ## 
            ## Sets the temporarySessionTimeoutInSeconds property value. Indicates timeout of temporary session
            ## @param value Value to set for the temporary_session_timeout_in_seconds property.
            ## @return a void
            ## 
            def temporary_session_timeout_in_seconds=(value)
                @temporary_session_timeout_in_seconds = value
            end
            ## 
            ## Gets the updateCompleteScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @return a boolean
            ## 
            def update_complete_screen_disabled
                return @update_complete_screen_disabled
            end
            ## 
            ## Sets the updateCompleteScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @param value Value to set for the update_complete_screen_disabled property.
            ## @return a void
            ## 
            def update_complete_screen_disabled=(value)
                @update_complete_screen_disabled = value
            end
            ## 
            ## Gets the userSessionTimeoutInSeconds property value. Indicates timeout of temporary session
            ## @return a integer
            ## 
            def user_session_timeout_in_seconds
                return @user_session_timeout_in_seconds
            end
            ## 
            ## Sets the userSessionTimeoutInSeconds property value. Indicates timeout of temporary session
            ## @param value Value to set for the user_session_timeout_in_seconds property.
            ## @return a void
            ## 
            def user_session_timeout_in_seconds=(value)
                @user_session_timeout_in_seconds = value
            end
            ## 
            ## Gets the userlessSharedAadModeEnabled property value. Indicates that this apple device is designated to support 'shared device mode' scenarios. This is distinct from the 'shared iPad' scenario. See https://learn.microsoft.com/mem/intune/enrollment/device-enrollment-shared-ios
            ## @return a boolean
            ## 
            def userless_shared_aad_mode_enabled
                return @userless_shared_aad_mode_enabled
            end
            ## 
            ## Sets the userlessSharedAadModeEnabled property value. Indicates that this apple device is designated to support 'shared device mode' scenarios. This is distinct from the 'shared iPad' scenario. See https://learn.microsoft.com/mem/intune/enrollment/device-enrollment-shared-ios
            ## @param value Value to set for the userless_shared_aad_mode_enabled property.
            ## @return a void
            ## 
            def userless_shared_aad_mode_enabled=(value)
                @userless_shared_aad_mode_enabled = value
            end
            ## 
            ## Gets the watchMigrationScreenDisabled property value. Indicates if the watch migration screen is disabled
            ## @return a boolean
            ## 
            def watch_migration_screen_disabled
                return @watch_migration_screen_disabled
            end
            ## 
            ## Sets the watchMigrationScreenDisabled property value. Indicates if the watch migration screen is disabled
            ## @param value Value to set for the watch_migration_screen_disabled property.
            ## @return a void
            ## 
            def watch_migration_screen_disabled=(value)
                @watch_migration_screen_disabled = value
            end
            ## 
            ## Gets the welcomeScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @return a boolean
            ## 
            def welcome_screen_disabled
                return @welcome_screen_disabled
            end
            ## 
            ## Sets the welcomeScreenDisabled property value. Indicates if Weclome screen is disabled
            ## @param value Value to set for the welcome_screen_disabled property.
            ## @return a void
            ## 
            def welcome_screen_disabled=(value)
                @welcome_screen_disabled = value
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
            ## @param value Value to set for the zoom_disabled property.
            ## @return a void
            ## 
            def zoom_disabled=(value)
                @zoom_disabled = value
            end
        end
    end
end
