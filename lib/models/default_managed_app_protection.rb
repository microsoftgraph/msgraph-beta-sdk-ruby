require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy used to configure detailed management settings for a specified set of apps for all users not targeted by a TargetedManagedAppProtection Policy
        class DefaultManagedAppProtection < MicrosoftGraphBeta::Models::ManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work. (Android only)
            @allowed_android_device_manufacturers
            ## 
            # List of device models allowed, as a string, for the managed app to work. (Android Only)
            @allowed_android_device_models
            ## 
            # Semicolon seperated list of device models allowed, as a string, for the managed app to work. (iOS Only)
            @allowed_ios_device_models
            ## 
            # Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time). Possible values are: block, wipe, warn.
            @app_action_if_account_is_clocked_out
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_android_device_manufacturer_not_allowed
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_android_device_model_not_allowed
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_android_safety_net_apps_verification_failed
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_android_safety_net_device_attestation_failed
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_device_lock_not_set
            ## 
            # If the device does not have a passcode of high complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            @app_action_if_device_passcode_complexity_less_than_high
            ## 
            # If the device does not have a passcode of low complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            @app_action_if_device_passcode_complexity_less_than_low
            ## 
            # If the device does not have a passcode of medium complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            @app_action_if_device_passcode_complexity_less_than_medium
            ## 
            # An admin initiated action to be applied on a managed app.
            @app_action_if_ios_device_model_not_allowed
            ## 
            # Represents the level to which app data is encrypted for managed apps
            @app_data_encryption_type
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True. (Android Only)
            @biometric_authentication_blocked
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or app access will be blocked.
            @block_after_company_portal_update_deferral_in_days
            ## 
            # Whether the app should connect to the configured VPN on launch (Android only).
            @connect_to_vpn_on_launch
            ## 
            # Friendly name of the preferred custom browser to open weblink on Android. (Android only)
            @custom_browser_display_name
            ## 
            # Unique identifier of a custom browser to open weblink on Android. (Android only)
            @custom_browser_package_id
            ## 
            # A custom browser protocol to open weblink on iOS. (iOS only)
            @custom_browser_protocol
            ## 
            # Friendly name of a custom dialer app to click-to-open a phone number on Android.
            @custom_dialer_app_display_name
            ## 
            # PackageId of a custom dialer app to click-to-open a phone number on Android.
            @custom_dialer_app_package_id
            ## 
            # Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            @custom_dialer_app_protocol
            ## 
            # A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            @custom_settings
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # Defines if any kind of lock must be required on device. (android only)
            @device_lock_required
            ## 
            # When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            @disable_app_encryption_if_device_encryption_is_enabled
            ## 
            # Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps. (iOS Only)
            @disable_protection_of_managed_outbound_open_in_data
            ## 
            # Indicates whether managed-app data should be encrypted. (Android only)
            @encrypt_app_data
            ## 
            # Android App packages in this list will be exempt from the policy and will be able to receive data from managed apps. (Android only)
            @exempted_app_packages
            ## 
            # iOS Apps in this list will be exempt from the policy and will be able to receive data from managed apps. (iOS Only)
            @exempted_app_protocols
            ## 
            # Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            @face_id_blocked
            ## 
            # Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False. (iOS Only)
            @filter_open_in_to_only_managed_apps
            ## 
            # Indicate to the client to enable both biometrics and fingerprints for the app.
            @fingerprint_and_biometric_enabled
            ## 
            # When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app name which are allowed to be used.
            @messaging_redirect_app_display_name
            ## 
            # When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app package ids which are allowed to be used.
            @messaging_redirect_app_package_id
            ## 
            # When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app url redirect schemes which are allowed to be used.
            @messaging_redirect_app_url_scheme
            ## 
            # Minimum version of the Company portal that must be installed on the device or app access will be blocked
            @minimum_required_company_portal_version
            ## 
            # Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            @minimum_required_patch_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            @minimum_required_sdk_version
            ## 
            # Minimum version of the Company portal that must be installed on the device or the user will receive a warning
            @minimum_warning_company_portal_version
            ## 
            # Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            @minimum_warning_patch_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app from accessing company data. (iOS only)
            @minimum_warning_sdk_version
            ## 
            # Minimum version of the Company portal that must be installed on the device or the company data on the app will be wiped
            @minimum_wipe_company_portal_version
            ## 
            # Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data. (Android only)
            @minimum_wipe_patch_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data.
            @minimum_wipe_sdk_version
            ## 
            # Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps. (iOS Only)
            @protect_inbound_data_from_unknown_sources
            ## 
            # Require user to apply Class 3 Biometrics on their Android device.
            @require_class3_biometrics
            ## 
            # A PIN prompt will override biometric prompts if class 3 biometrics are updated on the device.
            @require_pin_after_biometric_change
            ## 
            # An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            @required_android_safety_net_apps_verification_type
            ## 
            # An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            @required_android_safety_net_device_attestation_type
            ## 
            # An admin enforced Android SafetyNet evaluation type requirement on a managed app.
            @required_android_safety_net_evaluation_type
            ## 
            # Indicates whether screen capture is blocked. (Android only)
            @screen_capture_blocked
            ## 
            # Defines if third party keyboards are allowed while accessing a managed app. (iOS Only)
            @third_party_keyboards_blocked
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or the user will receive the warning
            @warn_after_company_portal_update_deferral_in_days
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or the company data on the app will be wiped
            @wipe_after_company_portal_update_deferral_in_days
            ## 
            ## Gets the allowedAndroidDeviceManufacturers property value. Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work. (Android only)
            ## @return a string
            ## 
            def allowed_android_device_manufacturers
                return @allowed_android_device_manufacturers
            end
            ## 
            ## Sets the allowedAndroidDeviceManufacturers property value. Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work. (Android only)
            ## @param value Value to set for the allowedAndroidDeviceManufacturers property.
            ## @return a void
            ## 
            def allowed_android_device_manufacturers=(value)
                @allowed_android_device_manufacturers = value
            end
            ## 
            ## Gets the allowedAndroidDeviceModels property value. List of device models allowed, as a string, for the managed app to work. (Android Only)
            ## @return a string
            ## 
            def allowed_android_device_models
                return @allowed_android_device_models
            end
            ## 
            ## Sets the allowedAndroidDeviceModels property value. List of device models allowed, as a string, for the managed app to work. (Android Only)
            ## @param value Value to set for the allowedAndroidDeviceModels property.
            ## @return a void
            ## 
            def allowed_android_device_models=(value)
                @allowed_android_device_models = value
            end
            ## 
            ## Gets the allowedIosDeviceModels property value. Semicolon seperated list of device models allowed, as a string, for the managed app to work. (iOS Only)
            ## @return a string
            ## 
            def allowed_ios_device_models
                return @allowed_ios_device_models
            end
            ## 
            ## Sets the allowedIosDeviceModels property value. Semicolon seperated list of device models allowed, as a string, for the managed app to work. (iOS Only)
            ## @param value Value to set for the allowedIosDeviceModels property.
            ## @return a void
            ## 
            def allowed_ios_device_models=(value)
                @allowed_ios_device_models = value
            end
            ## 
            ## Gets the appActionIfAccountIsClockedOut property value. Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time). Possible values are: block, wipe, warn.
            ## @return a default_managed_app_protection_app_action_if_account_is_clocked_out
            ## 
            def app_action_if_account_is_clocked_out
                return @app_action_if_account_is_clocked_out
            end
            ## 
            ## Sets the appActionIfAccountIsClockedOut property value. Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time). Possible values are: block, wipe, warn.
            ## @param value Value to set for the appActionIfAccountIsClockedOut property.
            ## @return a void
            ## 
            def app_action_if_account_is_clocked_out=(value)
                @app_action_if_account_is_clocked_out = value
            end
            ## 
            ## Gets the appActionIfAndroidDeviceManufacturerNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_android_device_manufacturer_not_allowed
                return @app_action_if_android_device_manufacturer_not_allowed
            end
            ## 
            ## Sets the appActionIfAndroidDeviceManufacturerNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfAndroidDeviceManufacturerNotAllowed property.
            ## @return a void
            ## 
            def app_action_if_android_device_manufacturer_not_allowed=(value)
                @app_action_if_android_device_manufacturer_not_allowed = value
            end
            ## 
            ## Gets the appActionIfAndroidDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_android_device_model_not_allowed
                return @app_action_if_android_device_model_not_allowed
            end
            ## 
            ## Sets the appActionIfAndroidDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfAndroidDeviceModelNotAllowed property.
            ## @return a void
            ## 
            def app_action_if_android_device_model_not_allowed=(value)
                @app_action_if_android_device_model_not_allowed = value
            end
            ## 
            ## Gets the appActionIfAndroidSafetyNetAppsVerificationFailed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_android_safety_net_apps_verification_failed
                return @app_action_if_android_safety_net_apps_verification_failed
            end
            ## 
            ## Sets the appActionIfAndroidSafetyNetAppsVerificationFailed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfAndroidSafetyNetAppsVerificationFailed property.
            ## @return a void
            ## 
            def app_action_if_android_safety_net_apps_verification_failed=(value)
                @app_action_if_android_safety_net_apps_verification_failed = value
            end
            ## 
            ## Gets the appActionIfAndroidSafetyNetDeviceAttestationFailed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_android_safety_net_device_attestation_failed
                return @app_action_if_android_safety_net_device_attestation_failed
            end
            ## 
            ## Sets the appActionIfAndroidSafetyNetDeviceAttestationFailed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfAndroidSafetyNetDeviceAttestationFailed property.
            ## @return a void
            ## 
            def app_action_if_android_safety_net_device_attestation_failed=(value)
                @app_action_if_android_safety_net_device_attestation_failed = value
            end
            ## 
            ## Gets the appActionIfDeviceLockNotSet property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_device_lock_not_set
                return @app_action_if_device_lock_not_set
            end
            ## 
            ## Sets the appActionIfDeviceLockNotSet property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfDeviceLockNotSet property.
            ## @return a void
            ## 
            def app_action_if_device_lock_not_set=(value)
                @app_action_if_device_lock_not_set = value
            end
            ## 
            ## Gets the appActionIfDevicePasscodeComplexityLessThanHigh property value. If the device does not have a passcode of high complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @return a default_managed_app_protection_app_action_if_device_passcode_complexity_less_than_high
            ## 
            def app_action_if_device_passcode_complexity_less_than_high
                return @app_action_if_device_passcode_complexity_less_than_high
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanHigh property value. If the device does not have a passcode of high complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanHigh property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_high=(value)
                @app_action_if_device_passcode_complexity_less_than_high = value
            end
            ## 
            ## Gets the appActionIfDevicePasscodeComplexityLessThanLow property value. If the device does not have a passcode of low complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @return a default_managed_app_protection_app_action_if_device_passcode_complexity_less_than_low
            ## 
            def app_action_if_device_passcode_complexity_less_than_low
                return @app_action_if_device_passcode_complexity_less_than_low
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanLow property value. If the device does not have a passcode of low complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanLow property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_low=(value)
                @app_action_if_device_passcode_complexity_less_than_low = value
            end
            ## 
            ## Gets the appActionIfDevicePasscodeComplexityLessThanMedium property value. If the device does not have a passcode of medium complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @return a default_managed_app_protection_app_action_if_device_passcode_complexity_less_than_medium
            ## 
            def app_action_if_device_passcode_complexity_less_than_medium
                return @app_action_if_device_passcode_complexity_less_than_medium
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanMedium property value. If the device does not have a passcode of medium complexity or higher, trigger the stored action. Possible values are: block, wipe, warn.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanMedium property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_medium=(value)
                @app_action_if_device_passcode_complexity_less_than_medium = value
            end
            ## 
            ## Gets the appActionIfIosDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_ios_device_model_not_allowed
                return @app_action_if_ios_device_model_not_allowed
            end
            ## 
            ## Sets the appActionIfIosDeviceModelNotAllowed property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the appActionIfIosDeviceModelNotAllowed property.
            ## @return a void
            ## 
            def app_action_if_ios_device_model_not_allowed=(value)
                @app_action_if_ios_device_model_not_allowed = value
            end
            ## 
            ## Gets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @return a managed_app_data_encryption_type
            ## 
            def app_data_encryption_type
                return @app_data_encryption_type
            end
            ## 
            ## Sets the appDataEncryptionType property value. Represents the level to which app data is encrypted for managed apps
            ## @param value Value to set for the appDataEncryptionType property.
            ## @return a void
            ## 
            def app_data_encryption_type=(value)
                @app_data_encryption_type = value
            end
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Gets the biometricAuthenticationBlocked property value. Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True. (Android Only)
            ## @return a boolean
            ## 
            def biometric_authentication_blocked
                return @biometric_authentication_blocked
            end
            ## 
            ## Sets the biometricAuthenticationBlocked property value. Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True. (Android Only)
            ## @param value Value to set for the biometricAuthenticationBlocked property.
            ## @return a void
            ## 
            def biometric_authentication_blocked=(value)
                @biometric_authentication_blocked = value
            end
            ## 
            ## Gets the blockAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or app access will be blocked.
            ## @return a integer
            ## 
            def block_after_company_portal_update_deferral_in_days
                return @block_after_company_portal_update_deferral_in_days
            end
            ## 
            ## Sets the blockAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or app access will be blocked.
            ## @param value Value to set for the blockAfterCompanyPortalUpdateDeferralInDays property.
            ## @return a void
            ## 
            def block_after_company_portal_update_deferral_in_days=(value)
                @block_after_company_portal_update_deferral_in_days = value
            end
            ## 
            ## Gets the connectToVpnOnLaunch property value. Whether the app should connect to the configured VPN on launch (Android only).
            ## @return a boolean
            ## 
            def connect_to_vpn_on_launch
                return @connect_to_vpn_on_launch
            end
            ## 
            ## Sets the connectToVpnOnLaunch property value. Whether the app should connect to the configured VPN on launch (Android only).
            ## @param value Value to set for the connectToVpnOnLaunch property.
            ## @return a void
            ## 
            def connect_to_vpn_on_launch=(value)
                @connect_to_vpn_on_launch = value
            end
            ## 
            ## Instantiates a new defaultManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.defaultManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a default_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DefaultManagedAppProtection.new
            end
            ## 
            ## Gets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android. (Android only)
            ## @return a string
            ## 
            def custom_browser_display_name
                return @custom_browser_display_name
            end
            ## 
            ## Sets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android. (Android only)
            ## @param value Value to set for the customBrowserDisplayName property.
            ## @return a void
            ## 
            def custom_browser_display_name=(value)
                @custom_browser_display_name = value
            end
            ## 
            ## Gets the customBrowserPackageId property value. Unique identifier of a custom browser to open weblink on Android. (Android only)
            ## @return a string
            ## 
            def custom_browser_package_id
                return @custom_browser_package_id
            end
            ## 
            ## Sets the customBrowserPackageId property value. Unique identifier of a custom browser to open weblink on Android. (Android only)
            ## @param value Value to set for the customBrowserPackageId property.
            ## @return a void
            ## 
            def custom_browser_package_id=(value)
                @custom_browser_package_id = value
            end
            ## 
            ## Gets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS. (iOS only)
            ## @return a string
            ## 
            def custom_browser_protocol
                return @custom_browser_protocol
            end
            ## 
            ## Sets the customBrowserProtocol property value. A custom browser protocol to open weblink on iOS. (iOS only)
            ## @param value Value to set for the customBrowserProtocol property.
            ## @return a void
            ## 
            def custom_browser_protocol=(value)
                @custom_browser_protocol = value
            end
            ## 
            ## Gets the customDialerAppDisplayName property value. Friendly name of a custom dialer app to click-to-open a phone number on Android.
            ## @return a string
            ## 
            def custom_dialer_app_display_name
                return @custom_dialer_app_display_name
            end
            ## 
            ## Sets the customDialerAppDisplayName property value. Friendly name of a custom dialer app to click-to-open a phone number on Android.
            ## @param value Value to set for the customDialerAppDisplayName property.
            ## @return a void
            ## 
            def custom_dialer_app_display_name=(value)
                @custom_dialer_app_display_name = value
            end
            ## 
            ## Gets the customDialerAppPackageId property value. PackageId of a custom dialer app to click-to-open a phone number on Android.
            ## @return a string
            ## 
            def custom_dialer_app_package_id
                return @custom_dialer_app_package_id
            end
            ## 
            ## Sets the customDialerAppPackageId property value. PackageId of a custom dialer app to click-to-open a phone number on Android.
            ## @param value Value to set for the customDialerAppPackageId property.
            ## @return a void
            ## 
            def custom_dialer_app_package_id=(value)
                @custom_dialer_app_package_id = value
            end
            ## 
            ## Gets the customDialerAppProtocol property value. Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            ## @return a string
            ## 
            def custom_dialer_app_protocol
                return @custom_dialer_app_protocol
            end
            ## 
            ## Sets the customDialerAppProtocol property value. Protocol of a custom dialer app to click-to-open a phone number on iOS, for example, skype:.
            ## @param value Value to set for the customDialerAppProtocol property.
            ## @return a void
            ## 
            def custom_dialer_app_protocol=(value)
                @custom_dialer_app_protocol = value
            end
            ## 
            ## Gets the customSettings property value. A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            ## @return a key_value_pair
            ## 
            def custom_settings
                return @custom_settings
            end
            ## 
            ## Sets the customSettings property value. A set of string key and string value pairs to be sent to the affected users, unalterned by this service
            ## @param value Value to set for the customSettings property.
            ## @return a void
            ## 
            def custom_settings=(value)
                @custom_settings = value
            end
            ## 
            ## Gets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Count of apps to which the current policy is deployed.
            ## @param value Value to set for the deployedAppCount property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## Gets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @return a managed_app_policy_deployment_summary
            ## 
            def deployment_summary
                return @deployment_summary
            end
            ## 
            ## Sets the deploymentSummary property value. Navigation property to deployment summary of the configuration.
            ## @param value Value to set for the deploymentSummary property.
            ## @return a void
            ## 
            def deployment_summary=(value)
                @deployment_summary = value
            end
            ## 
            ## Gets the deviceLockRequired property value. Defines if any kind of lock must be required on device. (android only)
            ## @return a boolean
            ## 
            def device_lock_required
                return @device_lock_required
            end
            ## 
            ## Sets the deviceLockRequired property value. Defines if any kind of lock must be required on device. (android only)
            ## @param value Value to set for the deviceLockRequired property.
            ## @return a void
            ## 
            def device_lock_required=(value)
                @device_lock_required = value
            end
            ## 
            ## Gets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            ## @return a boolean
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled
                return @disable_app_encryption_if_device_encryption_is_enabled
            end
            ## 
            ## Sets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled. (Android only)
            ## @param value Value to set for the disableAppEncryptionIfDeviceEncryptionIsEnabled property.
            ## @return a void
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled=(value)
                @disable_app_encryption_if_device_encryption_is_enabled = value
            end
            ## 
            ## Gets the disableProtectionOfManagedOutboundOpenInData property value. Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps. (iOS Only)
            ## @return a boolean
            ## 
            def disable_protection_of_managed_outbound_open_in_data
                return @disable_protection_of_managed_outbound_open_in_data
            end
            ## 
            ## Sets the disableProtectionOfManagedOutboundOpenInData property value. Disable protection of data transferred to other apps through IOS OpenIn option. This setting is only allowed to be True when AllowedOutboundDataTransferDestinations is set to ManagedApps. (iOS Only)
            ## @param value Value to set for the disableProtectionOfManagedOutboundOpenInData property.
            ## @return a void
            ## 
            def disable_protection_of_managed_outbound_open_in_data=(value)
                @disable_protection_of_managed_outbound_open_in_data = value
            end
            ## 
            ## Gets the encryptAppData property value. Indicates whether managed-app data should be encrypted. (Android only)
            ## @return a boolean
            ## 
            def encrypt_app_data
                return @encrypt_app_data
            end
            ## 
            ## Sets the encryptAppData property value. Indicates whether managed-app data should be encrypted. (Android only)
            ## @param value Value to set for the encryptAppData property.
            ## @return a void
            ## 
            def encrypt_app_data=(value)
                @encrypt_app_data = value
            end
            ## 
            ## Gets the exemptedAppPackages property value. Android App packages in this list will be exempt from the policy and will be able to receive data from managed apps. (Android only)
            ## @return a key_value_pair
            ## 
            def exempted_app_packages
                return @exempted_app_packages
            end
            ## 
            ## Sets the exemptedAppPackages property value. Android App packages in this list will be exempt from the policy and will be able to receive data from managed apps. (Android only)
            ## @param value Value to set for the exemptedAppPackages property.
            ## @return a void
            ## 
            def exempted_app_packages=(value)
                @exempted_app_packages = value
            end
            ## 
            ## Gets the exemptedAppProtocols property value. iOS Apps in this list will be exempt from the policy and will be able to receive data from managed apps. (iOS Only)
            ## @return a key_value_pair
            ## 
            def exempted_app_protocols
                return @exempted_app_protocols
            end
            ## 
            ## Sets the exemptedAppProtocols property value. iOS Apps in this list will be exempt from the policy and will be able to receive data from managed apps. (iOS Only)
            ## @param value Value to set for the exemptedAppProtocols property.
            ## @return a void
            ## 
            def exempted_app_protocols=(value)
                @exempted_app_protocols = value
            end
            ## 
            ## Gets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            ## @return a boolean
            ## 
            def face_id_blocked
                return @face_id_blocked
            end
            ## 
            ## Sets the faceIdBlocked property value. Indicates whether use of the FaceID is allowed in place of a pin if PinRequired is set to True. (iOS Only)
            ## @param value Value to set for the faceIdBlocked property.
            ## @return a void
            ## 
            def face_id_blocked=(value)
                @face_id_blocked = value
            end
            ## 
            ## Gets the filterOpenInToOnlyManagedApps property value. Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False. (iOS Only)
            ## @return a boolean
            ## 
            def filter_open_in_to_only_managed_apps
                return @filter_open_in_to_only_managed_apps
            end
            ## 
            ## Sets the filterOpenInToOnlyManagedApps property value. Defines if open-in operation is supported from the managed app to the filesharing locations selected. This setting only applies when AllowedOutboundDataTransferDestinations is set to ManagedApps and DisableProtectionOfManagedOutboundOpenInData is set to False. (iOS Only)
            ## @param value Value to set for the filterOpenInToOnlyManagedApps property.
            ## @return a void
            ## 
            def filter_open_in_to_only_managed_apps=(value)
                @filter_open_in_to_only_managed_apps = value
            end
            ## 
            ## Gets the fingerprintAndBiometricEnabled property value. Indicate to the client to enable both biometrics and fingerprints for the app.
            ## @return a boolean
            ## 
            def fingerprint_and_biometric_enabled
                return @fingerprint_and_biometric_enabled
            end
            ## 
            ## Sets the fingerprintAndBiometricEnabled property value. Indicate to the client to enable both biometrics and fingerprints for the app.
            ## @param value Value to set for the fingerprintAndBiometricEnabled property.
            ## @return a void
            ## 
            def fingerprint_and_biometric_enabled=(value)
                @fingerprint_and_biometric_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedAndroidDeviceManufacturers" => lambda {|n| @allowed_android_device_manufacturers = n.get_string_value() },
                    "allowedAndroidDeviceModels" => lambda {|n| @allowed_android_device_models = n.get_collection_of_primitive_values(String) },
                    "allowedIosDeviceModels" => lambda {|n| @allowed_ios_device_models = n.get_string_value() },
                    "appActionIfAccountIsClockedOut" => lambda {|n| @app_action_if_account_is_clocked_out = n.get_enum_value(MicrosoftGraphBeta::Models::DefaultManagedAppProtectionAppActionIfAccountIsClockedOut) },
                    "appActionIfAndroidDeviceManufacturerNotAllowed" => lambda {|n| @app_action_if_android_device_manufacturer_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidDeviceModelNotAllowed" => lambda {|n| @app_action_if_android_device_model_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidSafetyNetAppsVerificationFailed" => lambda {|n| @app_action_if_android_safety_net_apps_verification_failed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidSafetyNetDeviceAttestationFailed" => lambda {|n| @app_action_if_android_safety_net_device_attestation_failed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDeviceLockNotSet" => lambda {|n| @app_action_if_device_lock_not_set = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDevicePasscodeComplexityLessThanHigh" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_high = n.get_enum_value(MicrosoftGraphBeta::Models::DefaultManagedAppProtectionAppActionIfDevicePasscodeComplexityLessThanHigh) },
                    "appActionIfDevicePasscodeComplexityLessThanLow" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_low = n.get_enum_value(MicrosoftGraphBeta::Models::DefaultManagedAppProtectionAppActionIfDevicePasscodeComplexityLessThanLow) },
                    "appActionIfDevicePasscodeComplexityLessThanMedium" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_medium = n.get_enum_value(MicrosoftGraphBeta::Models::DefaultManagedAppProtectionAppActionIfDevicePasscodeComplexityLessThanMedium) },
                    "appActionIfIosDeviceModelNotAllowed" => lambda {|n| @app_action_if_ios_device_model_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appDataEncryptionType" => lambda {|n| @app_data_encryption_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDataEncryptionType) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "biometricAuthenticationBlocked" => lambda {|n| @biometric_authentication_blocked = n.get_boolean_value() },
                    "blockAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @block_after_company_portal_update_deferral_in_days = n.get_number_value() },
                    "connectToVpnOnLaunch" => lambda {|n| @connect_to_vpn_on_launch = n.get_boolean_value() },
                    "customBrowserDisplayName" => lambda {|n| @custom_browser_display_name = n.get_string_value() },
                    "customBrowserPackageId" => lambda {|n| @custom_browser_package_id = n.get_string_value() },
                    "customBrowserProtocol" => lambda {|n| @custom_browser_protocol = n.get_string_value() },
                    "customDialerAppDisplayName" => lambda {|n| @custom_dialer_app_display_name = n.get_string_value() },
                    "customDialerAppPackageId" => lambda {|n| @custom_dialer_app_package_id = n.get_string_value() },
                    "customDialerAppProtocol" => lambda {|n| @custom_dialer_app_protocol = n.get_string_value() },
                    "customSettings" => lambda {|n| @custom_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "deviceLockRequired" => lambda {|n| @device_lock_required = n.get_boolean_value() },
                    "disableAppEncryptionIfDeviceEncryptionIsEnabled" => lambda {|n| @disable_app_encryption_if_device_encryption_is_enabled = n.get_boolean_value() },
                    "disableProtectionOfManagedOutboundOpenInData" => lambda {|n| @disable_protection_of_managed_outbound_open_in_data = n.get_boolean_value() },
                    "encryptAppData" => lambda {|n| @encrypt_app_data = n.get_boolean_value() },
                    "exemptedAppPackages" => lambda {|n| @exempted_app_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "exemptedAppProtocols" => lambda {|n| @exempted_app_protocols = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "faceIdBlocked" => lambda {|n| @face_id_blocked = n.get_boolean_value() },
                    "filterOpenInToOnlyManagedApps" => lambda {|n| @filter_open_in_to_only_managed_apps = n.get_boolean_value() },
                    "fingerprintAndBiometricEnabled" => lambda {|n| @fingerprint_and_biometric_enabled = n.get_boolean_value() },
                    "messagingRedirectAppDisplayName" => lambda {|n| @messaging_redirect_app_display_name = n.get_string_value() },
                    "messagingRedirectAppPackageId" => lambda {|n| @messaging_redirect_app_package_id = n.get_string_value() },
                    "messagingRedirectAppUrlScheme" => lambda {|n| @messaging_redirect_app_url_scheme = n.get_string_value() },
                    "minimumRequiredCompanyPortalVersion" => lambda {|n| @minimum_required_company_portal_version = n.get_string_value() },
                    "minimumRequiredPatchVersion" => lambda {|n| @minimum_required_patch_version = n.get_string_value() },
                    "minimumRequiredSdkVersion" => lambda {|n| @minimum_required_sdk_version = n.get_string_value() },
                    "minimumWarningCompanyPortalVersion" => lambda {|n| @minimum_warning_company_portal_version = n.get_string_value() },
                    "minimumWarningPatchVersion" => lambda {|n| @minimum_warning_patch_version = n.get_string_value() },
                    "minimumWarningSdkVersion" => lambda {|n| @minimum_warning_sdk_version = n.get_string_value() },
                    "minimumWipeCompanyPortalVersion" => lambda {|n| @minimum_wipe_company_portal_version = n.get_string_value() },
                    "minimumWipePatchVersion" => lambda {|n| @minimum_wipe_patch_version = n.get_string_value() },
                    "minimumWipeSdkVersion" => lambda {|n| @minimum_wipe_sdk_version = n.get_string_value() },
                    "protectInboundDataFromUnknownSources" => lambda {|n| @protect_inbound_data_from_unknown_sources = n.get_boolean_value() },
                    "requireClass3Biometrics" => lambda {|n| @require_class3_biometrics = n.get_boolean_value() },
                    "requirePinAfterBiometricChange" => lambda {|n| @require_pin_after_biometric_change = n.get_boolean_value() },
                    "requiredAndroidSafetyNetAppsVerificationType" => lambda {|n| @required_android_safety_net_apps_verification_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetAppsVerificationType) },
                    "requiredAndroidSafetyNetDeviceAttestationType" => lambda {|n| @required_android_safety_net_device_attestation_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetDeviceAttestationType) },
                    "requiredAndroidSafetyNetEvaluationType" => lambda {|n| @required_android_safety_net_evaluation_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetEvaluationType) },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "thirdPartyKeyboardsBlocked" => lambda {|n| @third_party_keyboards_blocked = n.get_boolean_value() },
                    "warnAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @warn_after_company_portal_update_deferral_in_days = n.get_number_value() },
                    "wipeAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @wipe_after_company_portal_update_deferral_in_days = n.get_number_value() },
                })
            end
            ## 
            ## Gets the messagingRedirectAppDisplayName property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app name which are allowed to be used.
            ## @return a string
            ## 
            def messaging_redirect_app_display_name
                return @messaging_redirect_app_display_name
            end
            ## 
            ## Sets the messagingRedirectAppDisplayName property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app name which are allowed to be used.
            ## @param value Value to set for the messagingRedirectAppDisplayName property.
            ## @return a void
            ## 
            def messaging_redirect_app_display_name=(value)
                @messaging_redirect_app_display_name = value
            end
            ## 
            ## Gets the messagingRedirectAppPackageId property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app package ids which are allowed to be used.
            ## @return a string
            ## 
            def messaging_redirect_app_package_id
                return @messaging_redirect_app_package_id
            end
            ## 
            ## Sets the messagingRedirectAppPackageId property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app package ids which are allowed to be used.
            ## @param value Value to set for the messagingRedirectAppPackageId property.
            ## @return a void
            ## 
            def messaging_redirect_app_package_id=(value)
                @messaging_redirect_app_package_id = value
            end
            ## 
            ## Gets the messagingRedirectAppUrlScheme property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app url redirect schemes which are allowed to be used.
            ## @return a string
            ## 
            def messaging_redirect_app_url_scheme
                return @messaging_redirect_app_url_scheme
            end
            ## 
            ## Sets the messagingRedirectAppUrlScheme property value. When a specific app redirection is enforced by protectedMessagingRedirectAppType in an App Protection Policy, this value defines the app url redirect schemes which are allowed to be used.
            ## @param value Value to set for the messagingRedirectAppUrlScheme property.
            ## @return a void
            ## 
            def messaging_redirect_app_url_scheme=(value)
                @messaging_redirect_app_url_scheme = value
            end
            ## 
            ## Gets the minimumRequiredCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or app access will be blocked
            ## @return a string
            ## 
            def minimum_required_company_portal_version
                return @minimum_required_company_portal_version
            end
            ## 
            ## Sets the minimumRequiredCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or app access will be blocked
            ## @param value Value to set for the minimumRequiredCompanyPortalVersion property.
            ## @return a void
            ## 
            def minimum_required_company_portal_version=(value)
                @minimum_required_company_portal_version = value
            end
            ## 
            ## Gets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            ## @return a string
            ## 
            def minimum_required_patch_version
                return @minimum_required_patch_version
            end
            ## 
            ## Sets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app. (Android only)
            ## @param value Value to set for the minimumRequiredPatchVersion property.
            ## @return a void
            ## 
            def minimum_required_patch_version=(value)
                @minimum_required_patch_version = value
            end
            ## 
            ## Gets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            ## @return a string
            ## 
            def minimum_required_sdk_version
                return @minimum_required_sdk_version
            end
            ## 
            ## Sets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. (iOS Only)
            ## @param value Value to set for the minimumRequiredSdkVersion property.
            ## @return a void
            ## 
            def minimum_required_sdk_version=(value)
                @minimum_required_sdk_version = value
            end
            ## 
            ## Gets the minimumWarningCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or the user will receive a warning
            ## @return a string
            ## 
            def minimum_warning_company_portal_version
                return @minimum_warning_company_portal_version
            end
            ## 
            ## Sets the minimumWarningCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or the user will receive a warning
            ## @param value Value to set for the minimumWarningCompanyPortalVersion property.
            ## @return a void
            ## 
            def minimum_warning_company_portal_version=(value)
                @minimum_warning_company_portal_version = value
            end
            ## 
            ## Gets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            ## @return a string
            ## 
            def minimum_warning_patch_version
                return @minimum_warning_patch_version
            end
            ## 
            ## Sets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app. (Android only)
            ## @param value Value to set for the minimumWarningPatchVersion property.
            ## @return a void
            ## 
            def minimum_warning_patch_version=(value)
                @minimum_warning_patch_version = value
            end
            ## 
            ## Gets the minimumWarningSdkVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. (iOS only)
            ## @return a string
            ## 
            def minimum_warning_sdk_version
                return @minimum_warning_sdk_version
            end
            ## 
            ## Sets the minimumWarningSdkVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. (iOS only)
            ## @param value Value to set for the minimumWarningSdkVersion property.
            ## @return a void
            ## 
            def minimum_warning_sdk_version=(value)
                @minimum_warning_sdk_version = value
            end
            ## 
            ## Gets the minimumWipeCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or the company data on the app will be wiped
            ## @return a string
            ## 
            def minimum_wipe_company_portal_version
                return @minimum_wipe_company_portal_version
            end
            ## 
            ## Sets the minimumWipeCompanyPortalVersion property value. Minimum version of the Company portal that must be installed on the device or the company data on the app will be wiped
            ## @param value Value to set for the minimumWipeCompanyPortalVersion property.
            ## @return a void
            ## 
            def minimum_wipe_company_portal_version=(value)
                @minimum_wipe_company_portal_version = value
            end
            ## 
            ## Gets the minimumWipePatchVersion property value. Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data. (Android only)
            ## @return a string
            ## 
            def minimum_wipe_patch_version
                return @minimum_wipe_patch_version
            end
            ## 
            ## Sets the minimumWipePatchVersion property value. Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data. (Android only)
            ## @param value Value to set for the minimumWipePatchVersion property.
            ## @return a void
            ## 
            def minimum_wipe_patch_version=(value)
                @minimum_wipe_patch_version = value
            end
            ## 
            ## Gets the minimumWipeSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @return a string
            ## 
            def minimum_wipe_sdk_version
                return @minimum_wipe_sdk_version
            end
            ## 
            ## Sets the minimumWipeSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data.
            ## @param value Value to set for the minimumWipeSdkVersion property.
            ## @return a void
            ## 
            def minimum_wipe_sdk_version=(value)
                @minimum_wipe_sdk_version = value
            end
            ## 
            ## Gets the protectInboundDataFromUnknownSources property value. Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps. (iOS Only)
            ## @return a boolean
            ## 
            def protect_inbound_data_from_unknown_sources
                return @protect_inbound_data_from_unknown_sources
            end
            ## 
            ## Sets the protectInboundDataFromUnknownSources property value. Protect incoming data from unknown source. This setting is only allowed to be True when AllowedInboundDataTransferSources is set to AllApps. (iOS Only)
            ## @param value Value to set for the protectInboundDataFromUnknownSources property.
            ## @return a void
            ## 
            def protect_inbound_data_from_unknown_sources=(value)
                @protect_inbound_data_from_unknown_sources = value
            end
            ## 
            ## Gets the requireClass3Biometrics property value. Require user to apply Class 3 Biometrics on their Android device.
            ## @return a boolean
            ## 
            def require_class3_biometrics
                return @require_class3_biometrics
            end
            ## 
            ## Sets the requireClass3Biometrics property value. Require user to apply Class 3 Biometrics on their Android device.
            ## @param value Value to set for the requireClass3Biometrics property.
            ## @return a void
            ## 
            def require_class3_biometrics=(value)
                @require_class3_biometrics = value
            end
            ## 
            ## Gets the requirePinAfterBiometricChange property value. A PIN prompt will override biometric prompts if class 3 biometrics are updated on the device.
            ## @return a boolean
            ## 
            def require_pin_after_biometric_change
                return @require_pin_after_biometric_change
            end
            ## 
            ## Sets the requirePinAfterBiometricChange property value. A PIN prompt will override biometric prompts if class 3 biometrics are updated on the device.
            ## @param value Value to set for the requirePinAfterBiometricChange property.
            ## @return a void
            ## 
            def require_pin_after_biometric_change=(value)
                @require_pin_after_biometric_change = value
            end
            ## 
            ## Gets the requiredAndroidSafetyNetAppsVerificationType property value. An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            ## @return a android_managed_app_safety_net_apps_verification_type
            ## 
            def required_android_safety_net_apps_verification_type
                return @required_android_safety_net_apps_verification_type
            end
            ## 
            ## Sets the requiredAndroidSafetyNetAppsVerificationType property value. An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            ## @param value Value to set for the requiredAndroidSafetyNetAppsVerificationType property.
            ## @return a void
            ## 
            def required_android_safety_net_apps_verification_type=(value)
                @required_android_safety_net_apps_verification_type = value
            end
            ## 
            ## Gets the requiredAndroidSafetyNetDeviceAttestationType property value. An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            ## @return a android_managed_app_safety_net_device_attestation_type
            ## 
            def required_android_safety_net_device_attestation_type
                return @required_android_safety_net_device_attestation_type
            end
            ## 
            ## Sets the requiredAndroidSafetyNetDeviceAttestationType property value. An admin enforced Android SafetyNet Device Attestation requirement on a managed app.
            ## @param value Value to set for the requiredAndroidSafetyNetDeviceAttestationType property.
            ## @return a void
            ## 
            def required_android_safety_net_device_attestation_type=(value)
                @required_android_safety_net_device_attestation_type = value
            end
            ## 
            ## Gets the requiredAndroidSafetyNetEvaluationType property value. An admin enforced Android SafetyNet evaluation type requirement on a managed app.
            ## @return a android_managed_app_safety_net_evaluation_type
            ## 
            def required_android_safety_net_evaluation_type
                return @required_android_safety_net_evaluation_type
            end
            ## 
            ## Sets the requiredAndroidSafetyNetEvaluationType property value. An admin enforced Android SafetyNet evaluation type requirement on a managed app.
            ## @param value Value to set for the requiredAndroidSafetyNetEvaluationType property.
            ## @return a void
            ## 
            def required_android_safety_net_evaluation_type=(value)
                @required_android_safety_net_evaluation_type = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether screen capture is blocked. (Android only)
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether screen capture is blocked. (Android only)
            ## @param value Value to set for the screenCaptureBlocked property.
            ## @return a void
            ## 
            def screen_capture_blocked=(value)
                @screen_capture_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("allowedAndroidDeviceManufacturers", @allowed_android_device_manufacturers)
                writer.write_collection_of_primitive_values("allowedAndroidDeviceModels", @allowed_android_device_models)
                writer.write_string_value("allowedIosDeviceModels", @allowed_ios_device_models)
                writer.write_enum_value("appActionIfAccountIsClockedOut", @app_action_if_account_is_clocked_out)
                writer.write_enum_value("appActionIfAndroidDeviceManufacturerNotAllowed", @app_action_if_android_device_manufacturer_not_allowed)
                writer.write_enum_value("appActionIfAndroidDeviceModelNotAllowed", @app_action_if_android_device_model_not_allowed)
                writer.write_enum_value("appActionIfAndroidSafetyNetAppsVerificationFailed", @app_action_if_android_safety_net_apps_verification_failed)
                writer.write_enum_value("appActionIfAndroidSafetyNetDeviceAttestationFailed", @app_action_if_android_safety_net_device_attestation_failed)
                writer.write_enum_value("appActionIfDeviceLockNotSet", @app_action_if_device_lock_not_set)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanHigh", @app_action_if_device_passcode_complexity_less_than_high)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanLow", @app_action_if_device_passcode_complexity_less_than_low)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanMedium", @app_action_if_device_passcode_complexity_less_than_medium)
                writer.write_enum_value("appActionIfIosDeviceModelNotAllowed", @app_action_if_ios_device_model_not_allowed)
                writer.write_enum_value("appDataEncryptionType", @app_data_encryption_type)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_boolean_value("biometricAuthenticationBlocked", @biometric_authentication_blocked)
                writer.write_number_value("blockAfterCompanyPortalUpdateDeferralInDays", @block_after_company_portal_update_deferral_in_days)
                writer.write_boolean_value("connectToVpnOnLaunch", @connect_to_vpn_on_launch)
                writer.write_string_value("customBrowserDisplayName", @custom_browser_display_name)
                writer.write_string_value("customBrowserPackageId", @custom_browser_package_id)
                writer.write_string_value("customBrowserProtocol", @custom_browser_protocol)
                writer.write_string_value("customDialerAppDisplayName", @custom_dialer_app_display_name)
                writer.write_string_value("customDialerAppPackageId", @custom_dialer_app_package_id)
                writer.write_string_value("customDialerAppProtocol", @custom_dialer_app_protocol)
                writer.write_collection_of_object_values("customSettings", @custom_settings)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("deviceLockRequired", @device_lock_required)
                writer.write_boolean_value("disableAppEncryptionIfDeviceEncryptionIsEnabled", @disable_app_encryption_if_device_encryption_is_enabled)
                writer.write_boolean_value("disableProtectionOfManagedOutboundOpenInData", @disable_protection_of_managed_outbound_open_in_data)
                writer.write_boolean_value("encryptAppData", @encrypt_app_data)
                writer.write_collection_of_object_values("exemptedAppPackages", @exempted_app_packages)
                writer.write_collection_of_object_values("exemptedAppProtocols", @exempted_app_protocols)
                writer.write_boolean_value("faceIdBlocked", @face_id_blocked)
                writer.write_boolean_value("filterOpenInToOnlyManagedApps", @filter_open_in_to_only_managed_apps)
                writer.write_boolean_value("fingerprintAndBiometricEnabled", @fingerprint_and_biometric_enabled)
                writer.write_string_value("messagingRedirectAppDisplayName", @messaging_redirect_app_display_name)
                writer.write_string_value("messagingRedirectAppPackageId", @messaging_redirect_app_package_id)
                writer.write_string_value("messagingRedirectAppUrlScheme", @messaging_redirect_app_url_scheme)
                writer.write_string_value("minimumRequiredCompanyPortalVersion", @minimum_required_company_portal_version)
                writer.write_string_value("minimumRequiredPatchVersion", @minimum_required_patch_version)
                writer.write_string_value("minimumRequiredSdkVersion", @minimum_required_sdk_version)
                writer.write_string_value("minimumWarningCompanyPortalVersion", @minimum_warning_company_portal_version)
                writer.write_string_value("minimumWarningPatchVersion", @minimum_warning_patch_version)
                writer.write_string_value("minimumWarningSdkVersion", @minimum_warning_sdk_version)
                writer.write_string_value("minimumWipeCompanyPortalVersion", @minimum_wipe_company_portal_version)
                writer.write_string_value("minimumWipePatchVersion", @minimum_wipe_patch_version)
                writer.write_string_value("minimumWipeSdkVersion", @minimum_wipe_sdk_version)
                writer.write_boolean_value("protectInboundDataFromUnknownSources", @protect_inbound_data_from_unknown_sources)
                writer.write_boolean_value("requireClass3Biometrics", @require_class3_biometrics)
                writer.write_boolean_value("requirePinAfterBiometricChange", @require_pin_after_biometric_change)
                writer.write_enum_value("requiredAndroidSafetyNetAppsVerificationType", @required_android_safety_net_apps_verification_type)
                writer.write_enum_value("requiredAndroidSafetyNetDeviceAttestationType", @required_android_safety_net_device_attestation_type)
                writer.write_enum_value("requiredAndroidSafetyNetEvaluationType", @required_android_safety_net_evaluation_type)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("thirdPartyKeyboardsBlocked", @third_party_keyboards_blocked)
                writer.write_number_value("warnAfterCompanyPortalUpdateDeferralInDays", @warn_after_company_portal_update_deferral_in_days)
                writer.write_number_value("wipeAfterCompanyPortalUpdateDeferralInDays", @wipe_after_company_portal_update_deferral_in_days)
            end
            ## 
            ## Gets the thirdPartyKeyboardsBlocked property value. Defines if third party keyboards are allowed while accessing a managed app. (iOS Only)
            ## @return a boolean
            ## 
            def third_party_keyboards_blocked
                return @third_party_keyboards_blocked
            end
            ## 
            ## Sets the thirdPartyKeyboardsBlocked property value. Defines if third party keyboards are allowed while accessing a managed app. (iOS Only)
            ## @param value Value to set for the thirdPartyKeyboardsBlocked property.
            ## @return a void
            ## 
            def third_party_keyboards_blocked=(value)
                @third_party_keyboards_blocked = value
            end
            ## 
            ## Gets the warnAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or the user will receive the warning
            ## @return a integer
            ## 
            def warn_after_company_portal_update_deferral_in_days
                return @warn_after_company_portal_update_deferral_in_days
            end
            ## 
            ## Sets the warnAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or the user will receive the warning
            ## @param value Value to set for the warnAfterCompanyPortalUpdateDeferralInDays property.
            ## @return a void
            ## 
            def warn_after_company_portal_update_deferral_in_days=(value)
                @warn_after_company_portal_update_deferral_in_days = value
            end
            ## 
            ## Gets the wipeAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or the company data on the app will be wiped
            ## @return a integer
            ## 
            def wipe_after_company_portal_update_deferral_in_days
                return @wipe_after_company_portal_update_deferral_in_days
            end
            ## 
            ## Sets the wipeAfterCompanyPortalUpdateDeferralInDays property value. Maximum number of days Company Portal update can be deferred on the device or the company data on the app will be wiped
            ## @param value Value to set for the wipeAfterCompanyPortalUpdateDeferralInDays property.
            ## @return a void
            ## 
            def wipe_after_company_portal_update_deferral_in_days=(value)
                @wipe_after_company_portal_update_deferral_in_days = value
            end
        end
    end
end
