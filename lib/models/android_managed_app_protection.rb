require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Policy used to configure detailed management settings targeted to specific security groups and for a specified set of apps on an Android device
        class AndroidManagedAppProtection < MicrosoftGraphBeta::Models::TargetedManagedAppProtection
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work.
            @allowed_android_device_manufacturers
            ## 
            # List of device models allowed, as a string, for the managed app to work.
            @allowed_android_device_models
            ## 
            # Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time).
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
            # If the device does not have a passcode of high complexity or higher, trigger the stored action.
            @app_action_if_device_passcode_complexity_less_than_high
            ## 
            # If the device does not have a passcode of low complexity or higher, trigger the stored action.
            @app_action_if_device_passcode_complexity_less_than_low
            ## 
            # If the device does not have a passcode of medium complexity or higher, trigger the stored action.
            @app_action_if_device_passcode_complexity_less_than_medium
            ## 
            # Defines the behavior of a managed app when Samsung Knox Attestation is required. Possible values are null, warn, block & wipe. If the admin does not set this action, the default is null, which indicates this setting is not configured.
            @app_action_if_samsung_knox_attestation_required
            ## 
            # If Keyboard Restriction is enabled, only keyboards in this approved list will be allowed. A key should be Android package id for a keyboard and value should be a friendly name
            @approved_keyboards
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True.
            @biometric_authentication_blocked
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or app access will be blocked.
            @block_after_company_portal_update_deferral_in_days
            ## 
            # Whether the app should connect to the configured VPN on launch.
            @connect_to_vpn_on_launch
            ## 
            # Friendly name of the preferred custom browser to open weblink on Android.
            @custom_browser_display_name
            ## 
            # Unique identifier of a custom browser to open weblink on Android.
            @custom_browser_package_id
            ## 
            # Friendly name of a custom dialer app to click-to-open a phone number on Android.
            @custom_dialer_app_display_name
            ## 
            # PackageId of a custom dialer app to click-to-open a phone number on Android.
            @custom_dialer_app_package_id
            ## 
            # Count of apps to which the current policy is deployed.
            @deployed_app_count
            ## 
            # Navigation property to deployment summary of the configuration.
            @deployment_summary
            ## 
            # Defines if any kind of lock must be required on android device
            @device_lock_required
            ## 
            # When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            @disable_app_encryption_if_device_encryption_is_enabled
            ## 
            # Indicates whether application data for managed apps should be encrypted
            @encrypt_app_data
            ## 
            # App packages in this list will be exempt from the policy and will be able to receive data from managed apps.
            @exempted_app_packages
            ## 
            # If null, this setting will be ignored. If false both fingerprints and biometrics will not be enabled. If true, both fingerprints and biometrics will be enabled.
            @fingerprint_and_biometric_enabled
            ## 
            # Indicates if keyboard restriction is enabled. If enabled list of approved keyboards must be provided as well.
            @keyboards_restricted
            ## 
            # Minimum version of the Company portal that must be installed on the device or app access will be blocked
            @minimum_required_company_portal_version
            ## 
            # Define the oldest required Android security patch level a user can have to gain secure access to the app.
            @minimum_required_patch_version
            ## 
            # Minimum version of the Company portal that must be installed on the device or the user will receive a warning
            @minimum_warning_company_portal_version
            ## 
            # Define the oldest recommended Android security patch level a user can have for secure access to the app.
            @minimum_warning_patch_version
            ## 
            # Minimum version of the Company portal that must be installed on the device or the company data on the app will be wiped
            @minimum_wipe_company_portal_version
            ## 
            # Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data.
            @minimum_wipe_patch_version
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
            # Indicates whether a managed user can take screen captures of managed apps
            @screen_capture_blocked
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or the user will receive the warning
            @warn_after_company_portal_update_deferral_in_days
            ## 
            # Maximum number of days Company Portal update can be deferred on the device or the company data on the app will be wiped
            @wipe_after_company_portal_update_deferral_in_days
            ## 
            ## Gets the allowedAndroidDeviceManufacturers property value. Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work.
            ## @return a string
            ## 
            def allowed_android_device_manufacturers
                return @allowed_android_device_manufacturers
            end
            ## 
            ## Sets the allowedAndroidDeviceManufacturers property value. Semicolon seperated list of device manufacturers allowed, as a string, for the managed app to work.
            ## @param value Value to set for the allowedAndroidDeviceManufacturers property.
            ## @return a void
            ## 
            def allowed_android_device_manufacturers=(value)
                @allowed_android_device_manufacturers = value
            end
            ## 
            ## Gets the allowedAndroidDeviceModels property value. List of device models allowed, as a string, for the managed app to work.
            ## @return a string
            ## 
            def allowed_android_device_models
                return @allowed_android_device_models
            end
            ## 
            ## Sets the allowedAndroidDeviceModels property value. List of device models allowed, as a string, for the managed app to work.
            ## @param value Value to set for the allowedAndroidDeviceModels property.
            ## @return a void
            ## 
            def allowed_android_device_models=(value)
                @allowed_android_device_models = value
            end
            ## 
            ## Gets the appActionIfAccountIsClockedOut property value. Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time).
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_account_is_clocked_out
                return @app_action_if_account_is_clocked_out
            end
            ## 
            ## Sets the appActionIfAccountIsClockedOut property value. Defines a managed app behavior, either block or warn, if the user is clocked out (non-working time).
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
            ## Gets the appActionIfDevicePasscodeComplexityLessThanHigh property value. If the device does not have a passcode of high complexity or higher, trigger the stored action.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_device_passcode_complexity_less_than_high
                return @app_action_if_device_passcode_complexity_less_than_high
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanHigh property value. If the device does not have a passcode of high complexity or higher, trigger the stored action.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanHigh property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_high=(value)
                @app_action_if_device_passcode_complexity_less_than_high = value
            end
            ## 
            ## Gets the appActionIfDevicePasscodeComplexityLessThanLow property value. If the device does not have a passcode of low complexity or higher, trigger the stored action.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_device_passcode_complexity_less_than_low
                return @app_action_if_device_passcode_complexity_less_than_low
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanLow property value. If the device does not have a passcode of low complexity or higher, trigger the stored action.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanLow property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_low=(value)
                @app_action_if_device_passcode_complexity_less_than_low = value
            end
            ## 
            ## Gets the appActionIfDevicePasscodeComplexityLessThanMedium property value. If the device does not have a passcode of medium complexity or higher, trigger the stored action.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_device_passcode_complexity_less_than_medium
                return @app_action_if_device_passcode_complexity_less_than_medium
            end
            ## 
            ## Sets the appActionIfDevicePasscodeComplexityLessThanMedium property value. If the device does not have a passcode of medium complexity or higher, trigger the stored action.
            ## @param value Value to set for the appActionIfDevicePasscodeComplexityLessThanMedium property.
            ## @return a void
            ## 
            def app_action_if_device_passcode_complexity_less_than_medium=(value)
                @app_action_if_device_passcode_complexity_less_than_medium = value
            end
            ## 
            ## Gets the appActionIfSamsungKnoxAttestationRequired property value. Defines the behavior of a managed app when Samsung Knox Attestation is required. Possible values are null, warn, block & wipe. If the admin does not set this action, the default is null, which indicates this setting is not configured.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_samsung_knox_attestation_required
                return @app_action_if_samsung_knox_attestation_required
            end
            ## 
            ## Sets the appActionIfSamsungKnoxAttestationRequired property value. Defines the behavior of a managed app when Samsung Knox Attestation is required. Possible values are null, warn, block & wipe. If the admin does not set this action, the default is null, which indicates this setting is not configured.
            ## @param value Value to set for the appActionIfSamsungKnoxAttestationRequired property.
            ## @return a void
            ## 
            def app_action_if_samsung_knox_attestation_required=(value)
                @app_action_if_samsung_knox_attestation_required = value
            end
            ## 
            ## Gets the approvedKeyboards property value. If Keyboard Restriction is enabled, only keyboards in this approved list will be allowed. A key should be Android package id for a keyboard and value should be a friendly name
            ## @return a key_value_pair
            ## 
            def approved_keyboards
                return @approved_keyboards
            end
            ## 
            ## Sets the approvedKeyboards property value. If Keyboard Restriction is enabled, only keyboards in this approved list will be allowed. A key should be Android package id for a keyboard and value should be a friendly name
            ## @param value Value to set for the approvedKeyboards property.
            ## @return a void
            ## 
            def approved_keyboards=(value)
                @approved_keyboards = value
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
            ## Gets the biometricAuthenticationBlocked property value. Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True.
            ## @return a boolean
            ## 
            def biometric_authentication_blocked
                return @biometric_authentication_blocked
            end
            ## 
            ## Sets the biometricAuthenticationBlocked property value. Indicates whether use of the biometric authentication is allowed in place of a pin if PinRequired is set to True.
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
            ## Gets the connectToVpnOnLaunch property value. Whether the app should connect to the configured VPN on launch.
            ## @return a boolean
            ## 
            def connect_to_vpn_on_launch
                return @connect_to_vpn_on_launch
            end
            ## 
            ## Sets the connectToVpnOnLaunch property value. Whether the app should connect to the configured VPN on launch.
            ## @param value Value to set for the connectToVpnOnLaunch property.
            ## @return a void
            ## 
            def connect_to_vpn_on_launch=(value)
                @connect_to_vpn_on_launch = value
            end
            ## 
            ## Instantiates a new androidManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidManagedAppProtection.new
            end
            ## 
            ## Gets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android.
            ## @return a string
            ## 
            def custom_browser_display_name
                return @custom_browser_display_name
            end
            ## 
            ## Sets the customBrowserDisplayName property value. Friendly name of the preferred custom browser to open weblink on Android.
            ## @param value Value to set for the customBrowserDisplayName property.
            ## @return a void
            ## 
            def custom_browser_display_name=(value)
                @custom_browser_display_name = value
            end
            ## 
            ## Gets the customBrowserPackageId property value. Unique identifier of a custom browser to open weblink on Android.
            ## @return a string
            ## 
            def custom_browser_package_id
                return @custom_browser_package_id
            end
            ## 
            ## Sets the customBrowserPackageId property value. Unique identifier of a custom browser to open weblink on Android.
            ## @param value Value to set for the customBrowserPackageId property.
            ## @return a void
            ## 
            def custom_browser_package_id=(value)
                @custom_browser_package_id = value
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
            ## Gets the deviceLockRequired property value. Defines if any kind of lock must be required on android device
            ## @return a boolean
            ## 
            def device_lock_required
                return @device_lock_required
            end
            ## 
            ## Sets the deviceLockRequired property value. Defines if any kind of lock must be required on android device
            ## @param value Value to set for the deviceLockRequired property.
            ## @return a void
            ## 
            def device_lock_required=(value)
                @device_lock_required = value
            end
            ## 
            ## Gets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            ## @return a boolean
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled
                return @disable_app_encryption_if_device_encryption_is_enabled
            end
            ## 
            ## Sets the disableAppEncryptionIfDeviceEncryptionIsEnabled property value. When this setting is enabled, app level encryption is disabled if device level encryption is enabled
            ## @param value Value to set for the disableAppEncryptionIfDeviceEncryptionIsEnabled property.
            ## @return a void
            ## 
            def disable_app_encryption_if_device_encryption_is_enabled=(value)
                @disable_app_encryption_if_device_encryption_is_enabled = value
            end
            ## 
            ## Gets the encryptAppData property value. Indicates whether application data for managed apps should be encrypted
            ## @return a boolean
            ## 
            def encrypt_app_data
                return @encrypt_app_data
            end
            ## 
            ## Sets the encryptAppData property value. Indicates whether application data for managed apps should be encrypted
            ## @param value Value to set for the encryptAppData property.
            ## @return a void
            ## 
            def encrypt_app_data=(value)
                @encrypt_app_data = value
            end
            ## 
            ## Gets the exemptedAppPackages property value. App packages in this list will be exempt from the policy and will be able to receive data from managed apps.
            ## @return a key_value_pair
            ## 
            def exempted_app_packages
                return @exempted_app_packages
            end
            ## 
            ## Sets the exemptedAppPackages property value. App packages in this list will be exempt from the policy and will be able to receive data from managed apps.
            ## @param value Value to set for the exemptedAppPackages property.
            ## @return a void
            ## 
            def exempted_app_packages=(value)
                @exempted_app_packages = value
            end
            ## 
            ## Gets the fingerprintAndBiometricEnabled property value. If null, this setting will be ignored. If false both fingerprints and biometrics will not be enabled. If true, both fingerprints and biometrics will be enabled.
            ## @return a boolean
            ## 
            def fingerprint_and_biometric_enabled
                return @fingerprint_and_biometric_enabled
            end
            ## 
            ## Sets the fingerprintAndBiometricEnabled property value. If null, this setting will be ignored. If false both fingerprints and biometrics will not be enabled. If true, both fingerprints and biometrics will be enabled.
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
                    "appActionIfAccountIsClockedOut" => lambda {|n| @app_action_if_account_is_clocked_out = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidDeviceManufacturerNotAllowed" => lambda {|n| @app_action_if_android_device_manufacturer_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidDeviceModelNotAllowed" => lambda {|n| @app_action_if_android_device_model_not_allowed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidSafetyNetAppsVerificationFailed" => lambda {|n| @app_action_if_android_safety_net_apps_verification_failed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfAndroidSafetyNetDeviceAttestationFailed" => lambda {|n| @app_action_if_android_safety_net_device_attestation_failed = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDeviceLockNotSet" => lambda {|n| @app_action_if_device_lock_not_set = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDevicePasscodeComplexityLessThanHigh" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_high = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDevicePasscodeComplexityLessThanLow" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_low = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfDevicePasscodeComplexityLessThanMedium" => lambda {|n| @app_action_if_device_passcode_complexity_less_than_medium = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "appActionIfSamsungKnoxAttestationRequired" => lambda {|n| @app_action_if_samsung_knox_attestation_required = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "approvedKeyboards" => lambda {|n| @approved_keyboards = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "biometricAuthenticationBlocked" => lambda {|n| @biometric_authentication_blocked = n.get_boolean_value() },
                    "blockAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @block_after_company_portal_update_deferral_in_days = n.get_number_value() },
                    "connectToVpnOnLaunch" => lambda {|n| @connect_to_vpn_on_launch = n.get_boolean_value() },
                    "customBrowserDisplayName" => lambda {|n| @custom_browser_display_name = n.get_string_value() },
                    "customBrowserPackageId" => lambda {|n| @custom_browser_package_id = n.get_string_value() },
                    "customDialerAppDisplayName" => lambda {|n| @custom_dialer_app_display_name = n.get_string_value() },
                    "customDialerAppPackageId" => lambda {|n| @custom_dialer_app_package_id = n.get_string_value() },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "deploymentSummary" => lambda {|n| @deployment_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppPolicyDeploymentSummary.create_from_discriminator_value(pn) }) },
                    "deviceLockRequired" => lambda {|n| @device_lock_required = n.get_boolean_value() },
                    "disableAppEncryptionIfDeviceEncryptionIsEnabled" => lambda {|n| @disable_app_encryption_if_device_encryption_is_enabled = n.get_boolean_value() },
                    "encryptAppData" => lambda {|n| @encrypt_app_data = n.get_boolean_value() },
                    "exemptedAppPackages" => lambda {|n| @exempted_app_packages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "fingerprintAndBiometricEnabled" => lambda {|n| @fingerprint_and_biometric_enabled = n.get_boolean_value() },
                    "keyboardsRestricted" => lambda {|n| @keyboards_restricted = n.get_boolean_value() },
                    "minimumRequiredCompanyPortalVersion" => lambda {|n| @minimum_required_company_portal_version = n.get_string_value() },
                    "minimumRequiredPatchVersion" => lambda {|n| @minimum_required_patch_version = n.get_string_value() },
                    "minimumWarningCompanyPortalVersion" => lambda {|n| @minimum_warning_company_portal_version = n.get_string_value() },
                    "minimumWarningPatchVersion" => lambda {|n| @minimum_warning_patch_version = n.get_string_value() },
                    "minimumWipeCompanyPortalVersion" => lambda {|n| @minimum_wipe_company_portal_version = n.get_string_value() },
                    "minimumWipePatchVersion" => lambda {|n| @minimum_wipe_patch_version = n.get_string_value() },
                    "requireClass3Biometrics" => lambda {|n| @require_class3_biometrics = n.get_boolean_value() },
                    "requirePinAfterBiometricChange" => lambda {|n| @require_pin_after_biometric_change = n.get_boolean_value() },
                    "requiredAndroidSafetyNetAppsVerificationType" => lambda {|n| @required_android_safety_net_apps_verification_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetAppsVerificationType) },
                    "requiredAndroidSafetyNetDeviceAttestationType" => lambda {|n| @required_android_safety_net_device_attestation_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetDeviceAttestationType) },
                    "requiredAndroidSafetyNetEvaluationType" => lambda {|n| @required_android_safety_net_evaluation_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidManagedAppSafetyNetEvaluationType) },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "warnAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @warn_after_company_portal_update_deferral_in_days = n.get_number_value() },
                    "wipeAfterCompanyPortalUpdateDeferralInDays" => lambda {|n| @wipe_after_company_portal_update_deferral_in_days = n.get_number_value() },
                })
            end
            ## 
            ## Gets the keyboardsRestricted property value. Indicates if keyboard restriction is enabled. If enabled list of approved keyboards must be provided as well.
            ## @return a boolean
            ## 
            def keyboards_restricted
                return @keyboards_restricted
            end
            ## 
            ## Sets the keyboardsRestricted property value. Indicates if keyboard restriction is enabled. If enabled list of approved keyboards must be provided as well.
            ## @param value Value to set for the keyboardsRestricted property.
            ## @return a void
            ## 
            def keyboards_restricted=(value)
                @keyboards_restricted = value
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
            ## Gets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app.
            ## @return a string
            ## 
            def minimum_required_patch_version
                return @minimum_required_patch_version
            end
            ## 
            ## Sets the minimumRequiredPatchVersion property value. Define the oldest required Android security patch level a user can have to gain secure access to the app.
            ## @param value Value to set for the minimumRequiredPatchVersion property.
            ## @return a void
            ## 
            def minimum_required_patch_version=(value)
                @minimum_required_patch_version = value
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
            ## Gets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app.
            ## @return a string
            ## 
            def minimum_warning_patch_version
                return @minimum_warning_patch_version
            end
            ## 
            ## Sets the minimumWarningPatchVersion property value. Define the oldest recommended Android security patch level a user can have for secure access to the app.
            ## @param value Value to set for the minimumWarningPatchVersion property.
            ## @return a void
            ## 
            def minimum_warning_patch_version=(value)
                @minimum_warning_patch_version = value
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
            ## Gets the minimumWipePatchVersion property value. Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data.
            ## @return a string
            ## 
            def minimum_wipe_patch_version
                return @minimum_wipe_patch_version
            end
            ## 
            ## Sets the minimumWipePatchVersion property value. Android security patch level  less than or equal to the specified value will wipe the managed app and the associated company data.
            ## @param value Value to set for the minimumWipePatchVersion property.
            ## @return a void
            ## 
            def minimum_wipe_patch_version=(value)
                @minimum_wipe_patch_version = value
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
            ## Gets the screenCaptureBlocked property value. Indicates whether a managed user can take screen captures of managed apps
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether a managed user can take screen captures of managed apps
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
                writer.write_enum_value("appActionIfAccountIsClockedOut", @app_action_if_account_is_clocked_out)
                writer.write_enum_value("appActionIfAndroidDeviceManufacturerNotAllowed", @app_action_if_android_device_manufacturer_not_allowed)
                writer.write_enum_value("appActionIfAndroidDeviceModelNotAllowed", @app_action_if_android_device_model_not_allowed)
                writer.write_enum_value("appActionIfAndroidSafetyNetAppsVerificationFailed", @app_action_if_android_safety_net_apps_verification_failed)
                writer.write_enum_value("appActionIfAndroidSafetyNetDeviceAttestationFailed", @app_action_if_android_safety_net_device_attestation_failed)
                writer.write_enum_value("appActionIfDeviceLockNotSet", @app_action_if_device_lock_not_set)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanHigh", @app_action_if_device_passcode_complexity_less_than_high)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanLow", @app_action_if_device_passcode_complexity_less_than_low)
                writer.write_enum_value("appActionIfDevicePasscodeComplexityLessThanMedium", @app_action_if_device_passcode_complexity_less_than_medium)
                writer.write_enum_value("appActionIfSamsungKnoxAttestationRequired", @app_action_if_samsung_knox_attestation_required)
                writer.write_collection_of_object_values("approvedKeyboards", @approved_keyboards)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_boolean_value("biometricAuthenticationBlocked", @biometric_authentication_blocked)
                writer.write_number_value("blockAfterCompanyPortalUpdateDeferralInDays", @block_after_company_portal_update_deferral_in_days)
                writer.write_boolean_value("connectToVpnOnLaunch", @connect_to_vpn_on_launch)
                writer.write_string_value("customBrowserDisplayName", @custom_browser_display_name)
                writer.write_string_value("customBrowserPackageId", @custom_browser_package_id)
                writer.write_string_value("customDialerAppDisplayName", @custom_dialer_app_display_name)
                writer.write_string_value("customDialerAppPackageId", @custom_dialer_app_package_id)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_object_value("deploymentSummary", @deployment_summary)
                writer.write_boolean_value("deviceLockRequired", @device_lock_required)
                writer.write_boolean_value("disableAppEncryptionIfDeviceEncryptionIsEnabled", @disable_app_encryption_if_device_encryption_is_enabled)
                writer.write_boolean_value("encryptAppData", @encrypt_app_data)
                writer.write_collection_of_object_values("exemptedAppPackages", @exempted_app_packages)
                writer.write_boolean_value("fingerprintAndBiometricEnabled", @fingerprint_and_biometric_enabled)
                writer.write_boolean_value("keyboardsRestricted", @keyboards_restricted)
                writer.write_string_value("minimumRequiredCompanyPortalVersion", @minimum_required_company_portal_version)
                writer.write_string_value("minimumRequiredPatchVersion", @minimum_required_patch_version)
                writer.write_string_value("minimumWarningCompanyPortalVersion", @minimum_warning_company_portal_version)
                writer.write_string_value("minimumWarningPatchVersion", @minimum_warning_patch_version)
                writer.write_string_value("minimumWipeCompanyPortalVersion", @minimum_wipe_company_portal_version)
                writer.write_string_value("minimumWipePatchVersion", @minimum_wipe_patch_version)
                writer.write_boolean_value("requireClass3Biometrics", @require_class3_biometrics)
                writer.write_boolean_value("requirePinAfterBiometricChange", @require_pin_after_biometric_change)
                writer.write_enum_value("requiredAndroidSafetyNetAppsVerificationType", @required_android_safety_net_apps_verification_type)
                writer.write_enum_value("requiredAndroidSafetyNetDeviceAttestationType", @required_android_safety_net_device_attestation_type)
                writer.write_enum_value("requiredAndroidSafetyNetEvaluationType", @required_android_safety_net_evaluation_type)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_number_value("warnAfterCompanyPortalUpdateDeferralInDays", @warn_after_company_portal_update_deferral_in_days)
                writer.write_number_value("wipeAfterCompanyPortalUpdateDeferralInDays", @wipe_after_company_portal_update_deferral_in_days)
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
