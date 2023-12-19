require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This topic provides descriptions of the declared methods, properties and relationships exposed by the androidDeviceOwnerGeneralDeviceConfiguration resource.
        class AndroidDeviceOwnerGeneralDeviceConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not adding or removing accounts is disabled.
            @accounts_block_modification
            ## 
            # Specifies the list of managed apps with app details and its associated delegated scope(s). This collection can contain a maximum of 500 elements.
            @android_device_owner_delegated_scope_app_settings
            ## 
            # Indicates whether or not the user is allowed to enable to unknown sources setting.
            @apps_allow_install_from_unknown_sources
            ## 
            # Indicates the value of the app auto update policy. Possible values are: notConfigured, userChoice, never, wiFiOnly, always.
            @apps_auto_update_policy
            ## 
            # Indicates the permission policy for requests for runtime permissions if one is not defined for the app specifically. Possible values are: deviceDefault, prompt, autoGrant, autoDeny.
            @apps_default_permission_policy
            ## 
            # Whether or not to recommend all apps skip any first-time-use hints they may have added.
            @apps_recommend_skipping_first_use_hints
            ## 
            # A list of managed apps that will have their data cleared during a global sign-out in AAD shared device mode. This collection can contain a maximum of 500 elements.
            @azure_ad_shared_device_data_clear_apps
            ## 
            # Indicates whether or not to block a user from configuring bluetooth.
            @bluetooth_block_configuration
            ## 
            # Indicates whether or not to block a user from sharing contacts via bluetooth.
            @bluetooth_block_contact_sharing
            ## 
            # Indicates whether or not to disable the use of the camera.
            @camera_blocked
            ## 
            # Indicates whether or not to block Wi-Fi tethering.
            @cellular_block_wi_fi_tethering
            ## 
            # Indicates whether or not to block users from any certificate credential configuration.
            @certificate_credential_configuration_disabled
            ## 
            # Indicates whether or not text copied from one profile (personal or work) can be pasted in the other.
            @cross_profile_policies_allow_copy_paste
            ## 
            # Indicates whether data from one profile (personal or work) can be shared with apps in the other profile. Possible values are: notConfigured, crossProfileDataSharingBlocked, dataSharingFromWorkToPersonalBlocked, crossProfileDataSharingAllowed, unkownFutureValue.
            @cross_profile_policies_allow_data_sharing
            ## 
            # Indicates whether or not contacts stored in work profile are shown in personal profile contact searches/incoming calls.
            @cross_profile_policies_show_work_contacts_in_personal_profile
            ## 
            # Indicates whether or not to block a user from data roaming.
            @data_roaming_blocked
            ## 
            # Indicates whether or not to block the user from manually changing the date or time on the device
            @date_time_configuration_blocked
            ## 
            # Represents the customized detailed help text provided to users when they attempt to modify managed settings on their device.
            @detailed_help_text
            ## 
            # Indicates the location setting configuration for fully managed devices (COBO) and corporate owned devices with a work profile (COPE)
            @device_location_mode
            ## 
            # Represents the customized lock screen message provided to users when they attempt to modify managed settings on their device.
            @device_owner_lock_screen_message
            ## 
            # Android Device Owner Enrollment Profile types.
            @enrollment_profile
            ## 
            # Indicates whether or not the factory reset option in settings is disabled.
            @factory_reset_blocked
            ## 
            # List of Google account emails that will be required to authenticate after a device is factory reset before it can be set up.
            @factory_reset_device_administrator_emails
            ## 
            # Proxy is set up directly with host, port and excluded hosts.
            @global_proxy
            ## 
            # Indicates whether or not google accounts will be blocked.
            @google_accounts_blocked
            ## 
            # Indicates whether a user can access the device's Settings app while in Kiosk Mode.
            @kiosk_customization_device_settings_blocked
            ## 
            # Whether the power menu is shown when a user long presses the Power button of a device in Kiosk Mode.
            @kiosk_customization_power_button_actions_blocked
            ## 
            # Indicates whether system info and notifications are disabled in Kiosk Mode. Possible values are: notConfigured, notificationsAndSystemInfoEnabled, systemInfoOnly.
            @kiosk_customization_status_bar
            ## 
            # Indicates whether system error dialogs for crashed or unresponsive apps are shown in Kiosk Mode.
            @kiosk_customization_system_error_warnings
            ## 
            # Indicates which navigation features are enabled in Kiosk Mode. Possible values are: notConfigured, navigationEnabled, homeButtonOnly.
            @kiosk_customization_system_navigation
            ## 
            # Whether or not to enable app ordering in Kiosk Mode.
            @kiosk_mode_app_order_enabled
            ## 
            # The ordering of items on Kiosk Mode Managed Home Screen. This collection can contain a maximum of 500 elements.
            @kiosk_mode_app_positions
            ## 
            # A list of managed apps that will be shown when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            @kiosk_mode_apps
            ## 
            # Whether or not to alphabetize applications within a folder in Kiosk Mode.
            @kiosk_mode_apps_in_folder_ordered_by_name
            ## 
            # Whether or not to allow a user to configure Bluetooth settings in Kiosk Mode.
            @kiosk_mode_bluetooth_configuration_enabled
            ## 
            # Whether or not to allow a user to easy access to the debug menu in Kiosk Mode.
            @kiosk_mode_debug_menu_easy_access_enabled
            ## 
            # Exit code to allow a user to escape from Kiosk Mode when the device is in Kiosk Mode.
            @kiosk_mode_exit_code
            ## 
            # Whether or not to allow a user to use the flashlight in Kiosk Mode.
            @kiosk_mode_flashlight_configuration_enabled
            ## 
            # Folder icon configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, darkSquare, darkCircle, lightSquare, lightCircle.
            @kiosk_mode_folder_icon
            ## 
            # Number of rows for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            @kiosk_mode_grid_height
            ## 
            # Number of columns for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            @kiosk_mode_grid_width
            ## 
            # Icon size configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, smallest, small, regular, large, largest.
            @kiosk_mode_icon_size
            ## 
            # Whether or not to lock home screen to the end user in Kiosk Mode.
            @kiosk_mode_lock_home_screen
            ## 
            # A list of managed folders for a device in Kiosk Mode. This collection can contain a maximum of 500 elements.
            @kiosk_mode_managed_folders
            ## 
            # Whether or not to automatically sign-out of MHS and Shared device mode applications after inactive for Managed Home Screen.
            @kiosk_mode_managed_home_screen_auto_signout
            ## 
            # Number of seconds to give user notice before automatically signing them out for Managed Home Screen. Valid values 0 to 9999999
            @kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds
            ## 
            # Number of seconds device is inactive before automatically signing user out for Managed Home Screen. Valid values 0 to 9999999
            @kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds
            ## 
            # Complexity of PIN for sign-in session for Managed Home Screen. Possible values are: notConfigured, simple, complex.
            @kiosk_mode_managed_home_screen_pin_complexity
            ## 
            # Whether or not require user to set a PIN for sign-in session for Managed Home Screen.
            @kiosk_mode_managed_home_screen_pin_required
            ## 
            # Whether or not required user to enter session PIN if screensaver has appeared for Managed Home Screen.
            @kiosk_mode_managed_home_screen_pin_required_to_resume
            ## 
            # Custom URL background for sign-in screen for Managed Home Screen.
            @kiosk_mode_managed_home_screen_sign_in_background
            ## 
            # Custom URL branding logo for sign-in screen and session pin page for Managed Home Screen.
            @kiosk_mode_managed_home_screen_sign_in_branding_logo
            ## 
            # Whether or not show sign-in screen for Managed Home Screen.
            @kiosk_mode_managed_home_screen_sign_in_enabled
            ## 
            # Whether or not to display the Managed Settings entry point on the managed home screen in Kiosk Mode.
            @kiosk_mode_managed_settings_entry_disabled
            ## 
            # Whether or not to allow a user to change the media volume in Kiosk Mode.
            @kiosk_mode_media_volume_configuration_enabled
            ## 
            # Screen orientation configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, portrait, landscape, autoRotate.
            @kiosk_mode_screen_orientation
            ## 
            # Whether or not to enable screen saver mode or not in Kiosk Mode.
            @kiosk_mode_screen_saver_configuration_enabled
            ## 
            # Whether or not the device screen should show the screen saver if audio/video is playing in Kiosk Mode.
            @kiosk_mode_screen_saver_detect_media_disabled
            ## 
            # The number of seconds that the device will display the screen saver for in Kiosk Mode. Valid values 0 to 9999999
            @kiosk_mode_screen_saver_display_time_in_seconds
            ## 
            # URL for an image that will be the device's screen saver in Kiosk Mode.
            @kiosk_mode_screen_saver_image_url
            ## 
            # The number of seconds the device needs to be inactive for before the screen saver is shown in Kiosk Mode. Valid values 1 to 9999999
            @kiosk_mode_screen_saver_start_delay_in_seconds
            ## 
            # Whether or not to display application notification badges in Kiosk Mode.
            @kiosk_mode_show_app_notification_badge
            ## 
            # Whether or not to allow a user to access basic device information.
            @kiosk_mode_show_device_info
            ## 
            # Whether or not to use single app kiosk mode or multi-app kiosk mode. Possible values are: notConfigured, singleAppMode, multiAppMode.
            @kiosk_mode_use_managed_home_screen_app
            ## 
            # Whether or not to display a virtual home button when the device is in Kiosk Mode.
            @kiosk_mode_virtual_home_button_enabled
            ## 
            # Indicates whether the virtual home button is a swipe up home button or a floating home button. Possible values are: notConfigured, swipeUp, floating.
            @kiosk_mode_virtual_home_button_type
            ## 
            # URL to a publicly accessible image to use for the wallpaper when the device is in Kiosk Mode.
            @kiosk_mode_wallpaper_url
            ## 
            # Whether or not to allow a user to configure Wi-Fi settings in Kiosk Mode.
            @kiosk_mode_wi_fi_configuration_enabled
            ## 
            # The restricted set of WIFI SSIDs available for the user to configure in Kiosk Mode. This collection can contain a maximum of 500 elements.
            @kiosk_mode_wifi_allowed_ssids
            ## 
            # Indicates whether or not LocateDevice for devices with lost mode (COBO, COPE) is enabled.
            @locate_device_lost_mode_enabled
            ## 
            # Indicates whether or not LocateDevice for userless (COSU) devices is disabled.
            @locate_device_userless_disabled
            ## 
            # Indicates whether or not to block unmuting the microphone on the device.
            @microphone_force_mute
            ## 
            # Indicates whether or not to you want configure Microsoft Launcher.
            @microsoft_launcher_configuration_enabled
            ## 
            # Indicates whether or not the user can modify the wallpaper to personalize their device.
            @microsoft_launcher_custom_wallpaper_allow_user_modification
            ## 
            # Indicates whether or not to configure the wallpaper on the targeted devices.
            @microsoft_launcher_custom_wallpaper_enabled
            ## 
            # Indicates the URL for the image file to use as the wallpaper on the targeted devices.
            @microsoft_launcher_custom_wallpaper_image_url
            ## 
            # Indicates whether or not the user can modify the device dock configuration on the device.
            @microsoft_launcher_dock_presence_allow_user_modification
            ## 
            # Indicates whether or not you want to configure the device dock. Possible values are: notConfigured, show, hide, disabled.
            @microsoft_launcher_dock_presence_configuration
            ## 
            # Indicates whether or not the user can modify the launcher feed on the device.
            @microsoft_launcher_feed_allow_user_modification
            ## 
            # Indicates whether or not you want to enable the launcher feed on the device.
            @microsoft_launcher_feed_enabled
            ## 
            # Indicates the search bar placement configuration on the device. Possible values are: notConfigured, top, bottom, hide.
            @microsoft_launcher_search_bar_placement_configuration
            ## 
            # Indicates whether or not the device will allow connecting to a temporary network connection at boot time.
            @network_escape_hatch_allowed
            ## 
            # Indicates whether or not to block NFC outgoing beam.
            @nfc_block_outgoing_beam
            ## 
            # Indicates whether or not the keyguard is disabled.
            @password_block_keyguard
            ## 
            # List of device keyguard features to block. This collection can contain a maximum of 11 elements.
            @password_block_keyguard_features
            ## 
            # Indicates the amount of time that a password can be set for before it expires and a new password will be required. Valid values 1 to 365
            @password_expiration_days
            ## 
            # Indicates the minimum length of the password required on the device. Valid values 4 to 16
            @password_minimum_length
            ## 
            # Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
            @password_minimum_letter_characters
            ## 
            # Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
            @password_minimum_lower_case_characters
            ## 
            # Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
            @password_minimum_non_letter_characters
            ## 
            # Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
            @password_minimum_numeric_characters
            ## 
            # Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
            @password_minimum_symbol_characters
            ## 
            # Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
            @password_minimum_upper_case_characters
            ## 
            # Minutes of inactivity before the screen times out.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # Indicates the length of password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            @password_previous_password_count_to_block
            ## 
            # Indicates the timeout period after which a device must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            @password_require_unlock
            ## 
            # Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            @password_required_type
            ## 
            # Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # Indicates whether the user can install apps from unknown sources on the personal profile.
            @personal_profile_apps_allow_install_from_unknown_sources
            ## 
            # Indicates whether to disable the use of the camera on the personal profile.
            @personal_profile_camera_blocked
            ## 
            # Policy applied to applications in the personal profile. This collection can contain a maximum of 500 elements.
            @personal_profile_personal_applications
            ## 
            # Used together with PersonalProfilePersonalApplications to control how apps in the personal profile are allowed or blocked. Possible values are: notConfigured, blockedApps, allowedApps.
            @personal_profile_play_store_mode
            ## 
            # Indicates whether to disable the capability to take screenshots on the personal profile.
            @personal_profile_screen_capture_blocked
            ## 
            # Indicates the Play Store mode of the device. Possible values are: notConfigured, allowList, blockList.
            @play_store_mode
            ## 
            # Indicates whether or not to disable the capability to take screenshots.
            @screen_capture_blocked
            ## 
            # Represents the security common criteria mode enabled provided to users when they attempt to modify managed settings on their device.
            @security_common_criteria_mode_enabled
            ## 
            # Indicates whether or not the user is allowed to access developer settings like developer options and safe boot on the device.
            @security_developer_settings_enabled
            ## 
            # Indicates whether or not verify apps is required.
            @security_require_verify_apps
            ## 
            # Indicates whether or not location sharing is disabled for fully managed devices (COBO), and corporate owned devices with a work profile (COPE)
            @share_device_location_disabled
            ## 
            # Represents the customized short help text provided to users when they attempt to modify managed settings on their device.
            @short_help_text
            ## 
            # Indicates whether or the status bar is disabled, including notifications, quick settings and other screen overlays.
            @status_bar_blocked
            ## 
            # List of modes in which the device's display will stay powered-on. This collection can contain a maximum of 4 elements.
            @stay_on_modes
            ## 
            # Indicates whether or not to allow USB mass storage.
            @storage_allow_usb
            ## 
            # Indicates whether or not to block external media.
            @storage_block_external_media
            ## 
            # Indicates whether or not to block USB file transfer.
            @storage_block_usb_file_transfer
            ## 
            # Indicates the annually repeating time periods during which system updates are postponed. This collection can contain a maximum of 500 elements.
            @system_update_freeze_periods
            ## 
            # The type of system update configuration. Possible values are: deviceDefault, postpone, windowed, automatic.
            @system_update_install_type
            ## 
            # Indicates the number of minutes after midnight that the system update window ends. Valid values 0 to 1440
            @system_update_window_end_minutes_after_midnight
            ## 
            # Indicates the number of minutes after midnight that the system update window starts. Valid values 0 to 1440
            @system_update_window_start_minutes_after_midnight
            ## 
            # Whether or not to block Android system prompt windows, like toasts, phone activities, and system alerts.
            @system_windows_blocked
            ## 
            # Indicates whether or not adding users and profiles is disabled.
            @users_block_add
            ## 
            # Indicates whether or not to disable removing other users from the device.
            @users_block_remove
            ## 
            # Indicates whether or not adjusting the master volume is disabled.
            @volume_block_adjustment
            ## 
            # If an always on VPN package name is specified, whether or not to lock network traffic when that VPN is disconnected.
            @vpn_always_on_lockdown_mode
            ## 
            # Android app package name for app that will handle an always-on VPN connection.
            @vpn_always_on_package_identifier
            ## 
            # Indicates whether or not to block the user from editing the wifi connection settings.
            @wifi_block_edit_configurations
            ## 
            # Indicates whether or not to block the user from editing just the networks defined by the policy.
            @wifi_block_edit_policy_defined_configurations
            ## 
            # Indicates the number of days that a work profile password can be set before it expires and a new password will be required. Valid values 1 to 365
            @work_profile_password_expiration_days
            ## 
            # Indicates the minimum length of the work profile password. Valid values 4 to 16
            @work_profile_password_minimum_length
            ## 
            # Indicates the minimum number of letter characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_letter_characters
            ## 
            # Indicates the minimum number of lower-case characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_lower_case_characters
            ## 
            # Indicates the minimum number of non-letter characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_non_letter_characters
            ## 
            # Indicates the minimum number of numeric characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_numeric_characters
            ## 
            # Indicates the minimum number of symbol characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_symbol_characters
            ## 
            # Indicates the minimum number of upper-case letter characters required for the work profile password. Valid values 1 to 16
            @work_profile_password_minimum_upper_case_characters
            ## 
            # Indicates the length of the work profile password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            @work_profile_password_previous_password_count_to_block
            ## 
            # Indicates the timeout period after which a work profile must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            @work_profile_password_require_unlock
            ## 
            # Indicates the minimum password quality required on the work profile password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            @work_profile_password_required_type
            ## 
            # Indicates the number of times a user can enter an incorrect work profile password before the device is wiped. Valid values 4 to 11
            @work_profile_password_sign_in_failure_count_before_factory_reset
            ## 
            ## Gets the accountsBlockModification property value. Indicates whether or not adding or removing accounts is disabled.
            ## @return a boolean
            ## 
            def accounts_block_modification
                return @accounts_block_modification
            end
            ## 
            ## Sets the accountsBlockModification property value. Indicates whether or not adding or removing accounts is disabled.
            ## @param value Value to set for the accountsBlockModification property.
            ## @return a void
            ## 
            def accounts_block_modification=(value)
                @accounts_block_modification = value
            end
            ## 
            ## Gets the androidDeviceOwnerDelegatedScopeAppSettings property value. Specifies the list of managed apps with app details and its associated delegated scope(s). This collection can contain a maximum of 500 elements.
            ## @return a android_device_owner_delegated_scope_app_setting
            ## 
            def android_device_owner_delegated_scope_app_settings
                return @android_device_owner_delegated_scope_app_settings
            end
            ## 
            ## Sets the androidDeviceOwnerDelegatedScopeAppSettings property value. Specifies the list of managed apps with app details and its associated delegated scope(s). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the androidDeviceOwnerDelegatedScopeAppSettings property.
            ## @return a void
            ## 
            def android_device_owner_delegated_scope_app_settings=(value)
                @android_device_owner_delegated_scope_app_settings = value
            end
            ## 
            ## Gets the appsAllowInstallFromUnknownSources property value. Indicates whether or not the user is allowed to enable to unknown sources setting.
            ## @return a boolean
            ## 
            def apps_allow_install_from_unknown_sources
                return @apps_allow_install_from_unknown_sources
            end
            ## 
            ## Sets the appsAllowInstallFromUnknownSources property value. Indicates whether or not the user is allowed to enable to unknown sources setting.
            ## @param value Value to set for the appsAllowInstallFromUnknownSources property.
            ## @return a void
            ## 
            def apps_allow_install_from_unknown_sources=(value)
                @apps_allow_install_from_unknown_sources = value
            end
            ## 
            ## Gets the appsAutoUpdatePolicy property value. Indicates the value of the app auto update policy. Possible values are: notConfigured, userChoice, never, wiFiOnly, always.
            ## @return a android_device_owner_general_device_configuration_apps_auto_update_policy
            ## 
            def apps_auto_update_policy
                return @apps_auto_update_policy
            end
            ## 
            ## Sets the appsAutoUpdatePolicy property value. Indicates the value of the app auto update policy. Possible values are: notConfigured, userChoice, never, wiFiOnly, always.
            ## @param value Value to set for the appsAutoUpdatePolicy property.
            ## @return a void
            ## 
            def apps_auto_update_policy=(value)
                @apps_auto_update_policy = value
            end
            ## 
            ## Gets the appsDefaultPermissionPolicy property value. Indicates the permission policy for requests for runtime permissions if one is not defined for the app specifically. Possible values are: deviceDefault, prompt, autoGrant, autoDeny.
            ## @return a android_device_owner_general_device_configuration_apps_default_permission_policy
            ## 
            def apps_default_permission_policy
                return @apps_default_permission_policy
            end
            ## 
            ## Sets the appsDefaultPermissionPolicy property value. Indicates the permission policy for requests for runtime permissions if one is not defined for the app specifically. Possible values are: deviceDefault, prompt, autoGrant, autoDeny.
            ## @param value Value to set for the appsDefaultPermissionPolicy property.
            ## @return a void
            ## 
            def apps_default_permission_policy=(value)
                @apps_default_permission_policy = value
            end
            ## 
            ## Gets the appsRecommendSkippingFirstUseHints property value. Whether or not to recommend all apps skip any first-time-use hints they may have added.
            ## @return a boolean
            ## 
            def apps_recommend_skipping_first_use_hints
                return @apps_recommend_skipping_first_use_hints
            end
            ## 
            ## Sets the appsRecommendSkippingFirstUseHints property value. Whether or not to recommend all apps skip any first-time-use hints they may have added.
            ## @param value Value to set for the appsRecommendSkippingFirstUseHints property.
            ## @return a void
            ## 
            def apps_recommend_skipping_first_use_hints=(value)
                @apps_recommend_skipping_first_use_hints = value
            end
            ## 
            ## Gets the azureAdSharedDeviceDataClearApps property value. A list of managed apps that will have their data cleared during a global sign-out in AAD shared device mode. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def azure_ad_shared_device_data_clear_apps
                return @azure_ad_shared_device_data_clear_apps
            end
            ## 
            ## Sets the azureAdSharedDeviceDataClearApps property value. A list of managed apps that will have their data cleared during a global sign-out in AAD shared device mode. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the azureAdSharedDeviceDataClearApps property.
            ## @return a void
            ## 
            def azure_ad_shared_device_data_clear_apps=(value)
                @azure_ad_shared_device_data_clear_apps = value
            end
            ## 
            ## Gets the bluetoothBlockConfiguration property value. Indicates whether or not to block a user from configuring bluetooth.
            ## @return a boolean
            ## 
            def bluetooth_block_configuration
                return @bluetooth_block_configuration
            end
            ## 
            ## Sets the bluetoothBlockConfiguration property value. Indicates whether or not to block a user from configuring bluetooth.
            ## @param value Value to set for the bluetoothBlockConfiguration property.
            ## @return a void
            ## 
            def bluetooth_block_configuration=(value)
                @bluetooth_block_configuration = value
            end
            ## 
            ## Gets the bluetoothBlockContactSharing property value. Indicates whether or not to block a user from sharing contacts via bluetooth.
            ## @return a boolean
            ## 
            def bluetooth_block_contact_sharing
                return @bluetooth_block_contact_sharing
            end
            ## 
            ## Sets the bluetoothBlockContactSharing property value. Indicates whether or not to block a user from sharing contacts via bluetooth.
            ## @param value Value to set for the bluetoothBlockContactSharing property.
            ## @return a void
            ## 
            def bluetooth_block_contact_sharing=(value)
                @bluetooth_block_contact_sharing = value
            end
            ## 
            ## Gets the cameraBlocked property value. Indicates whether or not to disable the use of the camera.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Indicates whether or not to disable the use of the camera.
            ## @param value Value to set for the cameraBlocked property.
            ## @return a void
            ## 
            def camera_blocked=(value)
                @camera_blocked = value
            end
            ## 
            ## Gets the cellularBlockWiFiTethering property value. Indicates whether or not to block Wi-Fi tethering.
            ## @return a boolean
            ## 
            def cellular_block_wi_fi_tethering
                return @cellular_block_wi_fi_tethering
            end
            ## 
            ## Sets the cellularBlockWiFiTethering property value. Indicates whether or not to block Wi-Fi tethering.
            ## @param value Value to set for the cellularBlockWiFiTethering property.
            ## @return a void
            ## 
            def cellular_block_wi_fi_tethering=(value)
                @cellular_block_wi_fi_tethering = value
            end
            ## 
            ## Gets the certificateCredentialConfigurationDisabled property value. Indicates whether or not to block users from any certificate credential configuration.
            ## @return a boolean
            ## 
            def certificate_credential_configuration_disabled
                return @certificate_credential_configuration_disabled
            end
            ## 
            ## Sets the certificateCredentialConfigurationDisabled property value. Indicates whether or not to block users from any certificate credential configuration.
            ## @param value Value to set for the certificateCredentialConfigurationDisabled property.
            ## @return a void
            ## 
            def certificate_credential_configuration_disabled=(value)
                @certificate_credential_configuration_disabled = value
            end
            ## 
            ## Instantiates a new androidDeviceOwnerGeneralDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerGeneralDeviceConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_general_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerGeneralDeviceConfiguration.new
            end
            ## 
            ## Gets the crossProfilePoliciesAllowCopyPaste property value. Indicates whether or not text copied from one profile (personal or work) can be pasted in the other.
            ## @return a boolean
            ## 
            def cross_profile_policies_allow_copy_paste
                return @cross_profile_policies_allow_copy_paste
            end
            ## 
            ## Sets the crossProfilePoliciesAllowCopyPaste property value. Indicates whether or not text copied from one profile (personal or work) can be pasted in the other.
            ## @param value Value to set for the crossProfilePoliciesAllowCopyPaste property.
            ## @return a void
            ## 
            def cross_profile_policies_allow_copy_paste=(value)
                @cross_profile_policies_allow_copy_paste = value
            end
            ## 
            ## Gets the crossProfilePoliciesAllowDataSharing property value. Indicates whether data from one profile (personal or work) can be shared with apps in the other profile. Possible values are: notConfigured, crossProfileDataSharingBlocked, dataSharingFromWorkToPersonalBlocked, crossProfileDataSharingAllowed, unkownFutureValue.
            ## @return a android_device_owner_general_device_configuration_cross_profile_policies_allow_data_sharing
            ## 
            def cross_profile_policies_allow_data_sharing
                return @cross_profile_policies_allow_data_sharing
            end
            ## 
            ## Sets the crossProfilePoliciesAllowDataSharing property value. Indicates whether data from one profile (personal or work) can be shared with apps in the other profile. Possible values are: notConfigured, crossProfileDataSharingBlocked, dataSharingFromWorkToPersonalBlocked, crossProfileDataSharingAllowed, unkownFutureValue.
            ## @param value Value to set for the crossProfilePoliciesAllowDataSharing property.
            ## @return a void
            ## 
            def cross_profile_policies_allow_data_sharing=(value)
                @cross_profile_policies_allow_data_sharing = value
            end
            ## 
            ## Gets the crossProfilePoliciesShowWorkContactsInPersonalProfile property value. Indicates whether or not contacts stored in work profile are shown in personal profile contact searches/incoming calls.
            ## @return a boolean
            ## 
            def cross_profile_policies_show_work_contacts_in_personal_profile
                return @cross_profile_policies_show_work_contacts_in_personal_profile
            end
            ## 
            ## Sets the crossProfilePoliciesShowWorkContactsInPersonalProfile property value. Indicates whether or not contacts stored in work profile are shown in personal profile contact searches/incoming calls.
            ## @param value Value to set for the crossProfilePoliciesShowWorkContactsInPersonalProfile property.
            ## @return a void
            ## 
            def cross_profile_policies_show_work_contacts_in_personal_profile=(value)
                @cross_profile_policies_show_work_contacts_in_personal_profile = value
            end
            ## 
            ## Gets the dataRoamingBlocked property value. Indicates whether or not to block a user from data roaming.
            ## @return a boolean
            ## 
            def data_roaming_blocked
                return @data_roaming_blocked
            end
            ## 
            ## Sets the dataRoamingBlocked property value. Indicates whether or not to block a user from data roaming.
            ## @param value Value to set for the dataRoamingBlocked property.
            ## @return a void
            ## 
            def data_roaming_blocked=(value)
                @data_roaming_blocked = value
            end
            ## 
            ## Gets the dateTimeConfigurationBlocked property value. Indicates whether or not to block the user from manually changing the date or time on the device
            ## @return a boolean
            ## 
            def date_time_configuration_blocked
                return @date_time_configuration_blocked
            end
            ## 
            ## Sets the dateTimeConfigurationBlocked property value. Indicates whether or not to block the user from manually changing the date or time on the device
            ## @param value Value to set for the dateTimeConfigurationBlocked property.
            ## @return a void
            ## 
            def date_time_configuration_blocked=(value)
                @date_time_configuration_blocked = value
            end
            ## 
            ## Gets the detailedHelpText property value. Represents the customized detailed help text provided to users when they attempt to modify managed settings on their device.
            ## @return a android_device_owner_user_facing_message
            ## 
            def detailed_help_text
                return @detailed_help_text
            end
            ## 
            ## Sets the detailedHelpText property value. Represents the customized detailed help text provided to users when they attempt to modify managed settings on their device.
            ## @param value Value to set for the detailedHelpText property.
            ## @return a void
            ## 
            def detailed_help_text=(value)
                @detailed_help_text = value
            end
            ## 
            ## Gets the deviceLocationMode property value. Indicates the location setting configuration for fully managed devices (COBO) and corporate owned devices with a work profile (COPE)
            ## @return a android_device_owner_general_device_configuration_device_location_mode
            ## 
            def device_location_mode
                return @device_location_mode
            end
            ## 
            ## Sets the deviceLocationMode property value. Indicates the location setting configuration for fully managed devices (COBO) and corporate owned devices with a work profile (COPE)
            ## @param value Value to set for the deviceLocationMode property.
            ## @return a void
            ## 
            def device_location_mode=(value)
                @device_location_mode = value
            end
            ## 
            ## Gets the deviceOwnerLockScreenMessage property value. Represents the customized lock screen message provided to users when they attempt to modify managed settings on their device.
            ## @return a android_device_owner_user_facing_message
            ## 
            def device_owner_lock_screen_message
                return @device_owner_lock_screen_message
            end
            ## 
            ## Sets the deviceOwnerLockScreenMessage property value. Represents the customized lock screen message provided to users when they attempt to modify managed settings on their device.
            ## @param value Value to set for the deviceOwnerLockScreenMessage property.
            ## @return a void
            ## 
            def device_owner_lock_screen_message=(value)
                @device_owner_lock_screen_message = value
            end
            ## 
            ## Gets the enrollmentProfile property value. Android Device Owner Enrollment Profile types.
            ## @return a android_device_owner_enrollment_profile_type
            ## 
            def enrollment_profile
                return @enrollment_profile
            end
            ## 
            ## Sets the enrollmentProfile property value. Android Device Owner Enrollment Profile types.
            ## @param value Value to set for the enrollmentProfile property.
            ## @return a void
            ## 
            def enrollment_profile=(value)
                @enrollment_profile = value
            end
            ## 
            ## Gets the factoryResetBlocked property value. Indicates whether or not the factory reset option in settings is disabled.
            ## @return a boolean
            ## 
            def factory_reset_blocked
                return @factory_reset_blocked
            end
            ## 
            ## Sets the factoryResetBlocked property value. Indicates whether or not the factory reset option in settings is disabled.
            ## @param value Value to set for the factoryResetBlocked property.
            ## @return a void
            ## 
            def factory_reset_blocked=(value)
                @factory_reset_blocked = value
            end
            ## 
            ## Gets the factoryResetDeviceAdministratorEmails property value. List of Google account emails that will be required to authenticate after a device is factory reset before it can be set up.
            ## @return a string
            ## 
            def factory_reset_device_administrator_emails
                return @factory_reset_device_administrator_emails
            end
            ## 
            ## Sets the factoryResetDeviceAdministratorEmails property value. List of Google account emails that will be required to authenticate after a device is factory reset before it can be set up.
            ## @param value Value to set for the factoryResetDeviceAdministratorEmails property.
            ## @return a void
            ## 
            def factory_reset_device_administrator_emails=(value)
                @factory_reset_device_administrator_emails = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountsBlockModification" => lambda {|n| @accounts_block_modification = n.get_boolean_value() },
                    "androidDeviceOwnerDelegatedScopeAppSettings" => lambda {|n| @android_device_owner_delegated_scope_app_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerDelegatedScopeAppSetting.create_from_discriminator_value(pn) }) },
                    "appsAllowInstallFromUnknownSources" => lambda {|n| @apps_allow_install_from_unknown_sources = n.get_boolean_value() },
                    "appsAutoUpdatePolicy" => lambda {|n| @apps_auto_update_policy = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationAppsAutoUpdatePolicy) },
                    "appsDefaultPermissionPolicy" => lambda {|n| @apps_default_permission_policy = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationAppsDefaultPermissionPolicy) },
                    "appsRecommendSkippingFirstUseHints" => lambda {|n| @apps_recommend_skipping_first_use_hints = n.get_boolean_value() },
                    "azureAdSharedDeviceDataClearApps" => lambda {|n| @azure_ad_shared_device_data_clear_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "bluetoothBlockConfiguration" => lambda {|n| @bluetooth_block_configuration = n.get_boolean_value() },
                    "bluetoothBlockContactSharing" => lambda {|n| @bluetooth_block_contact_sharing = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "cellularBlockWiFiTethering" => lambda {|n| @cellular_block_wi_fi_tethering = n.get_boolean_value() },
                    "certificateCredentialConfigurationDisabled" => lambda {|n| @certificate_credential_configuration_disabled = n.get_boolean_value() },
                    "crossProfilePoliciesAllowCopyPaste" => lambda {|n| @cross_profile_policies_allow_copy_paste = n.get_boolean_value() },
                    "crossProfilePoliciesAllowDataSharing" => lambda {|n| @cross_profile_policies_allow_data_sharing = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationCrossProfilePoliciesAllowDataSharing) },
                    "crossProfilePoliciesShowWorkContactsInPersonalProfile" => lambda {|n| @cross_profile_policies_show_work_contacts_in_personal_profile = n.get_boolean_value() },
                    "dataRoamingBlocked" => lambda {|n| @data_roaming_blocked = n.get_boolean_value() },
                    "dateTimeConfigurationBlocked" => lambda {|n| @date_time_configuration_blocked = n.get_boolean_value() },
                    "detailedHelpText" => lambda {|n| @detailed_help_text = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerUserFacingMessage.create_from_discriminator_value(pn) }) },
                    "deviceLocationMode" => lambda {|n| @device_location_mode = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationDeviceLocationMode) },
                    "deviceOwnerLockScreenMessage" => lambda {|n| @device_owner_lock_screen_message = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerUserFacingMessage.create_from_discriminator_value(pn) }) },
                    "enrollmentProfile" => lambda {|n| @enrollment_profile = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerEnrollmentProfileType) },
                    "factoryResetBlocked" => lambda {|n| @factory_reset_blocked = n.get_boolean_value() },
                    "factoryResetDeviceAdministratorEmails" => lambda {|n| @factory_reset_device_administrator_emails = n.get_collection_of_primitive_values(String) },
                    "globalProxy" => lambda {|n| @global_proxy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerGlobalProxy.create_from_discriminator_value(pn) }) },
                    "googleAccountsBlocked" => lambda {|n| @google_accounts_blocked = n.get_boolean_value() },
                    "kioskCustomizationDeviceSettingsBlocked" => lambda {|n| @kiosk_customization_device_settings_blocked = n.get_boolean_value() },
                    "kioskCustomizationPowerButtonActionsBlocked" => lambda {|n| @kiosk_customization_power_button_actions_blocked = n.get_boolean_value() },
                    "kioskCustomizationStatusBar" => lambda {|n| @kiosk_customization_status_bar = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskCustomizationStatusBar) },
                    "kioskCustomizationSystemErrorWarnings" => lambda {|n| @kiosk_customization_system_error_warnings = n.get_boolean_value() },
                    "kioskCustomizationSystemNavigation" => lambda {|n| @kiosk_customization_system_navigation = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskCustomizationSystemNavigation) },
                    "kioskModeAppOrderEnabled" => lambda {|n| @kiosk_mode_app_order_enabled = n.get_boolean_value() },
                    "kioskModeAppPositions" => lambda {|n| @kiosk_mode_app_positions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeAppPositionItem.create_from_discriminator_value(pn) }) },
                    "kioskModeApps" => lambda {|n| @kiosk_mode_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "kioskModeAppsInFolderOrderedByName" => lambda {|n| @kiosk_mode_apps_in_folder_ordered_by_name = n.get_boolean_value() },
                    "kioskModeBluetoothConfigurationEnabled" => lambda {|n| @kiosk_mode_bluetooth_configuration_enabled = n.get_boolean_value() },
                    "kioskModeDebugMenuEasyAccessEnabled" => lambda {|n| @kiosk_mode_debug_menu_easy_access_enabled = n.get_boolean_value() },
                    "kioskModeExitCode" => lambda {|n| @kiosk_mode_exit_code = n.get_string_value() },
                    "kioskModeFlashlightConfigurationEnabled" => lambda {|n| @kiosk_mode_flashlight_configuration_enabled = n.get_boolean_value() },
                    "kioskModeFolderIcon" => lambda {|n| @kiosk_mode_folder_icon = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeFolderIcon) },
                    "kioskModeGridHeight" => lambda {|n| @kiosk_mode_grid_height = n.get_number_value() },
                    "kioskModeGridWidth" => lambda {|n| @kiosk_mode_grid_width = n.get_number_value() },
                    "kioskModeIconSize" => lambda {|n| @kiosk_mode_icon_size = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeIconSize) },
                    "kioskModeLockHomeScreen" => lambda {|n| @kiosk_mode_lock_home_screen = n.get_boolean_value() },
                    "kioskModeManagedFolders" => lambda {|n| @kiosk_mode_managed_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerKioskModeManagedFolder.create_from_discriminator_value(pn) }) },
                    "kioskModeManagedHomeScreenAutoSignout" => lambda {|n| @kiosk_mode_managed_home_screen_auto_signout = n.get_boolean_value() },
                    "kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds" => lambda {|n| @kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds = n.get_number_value() },
                    "kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds" => lambda {|n| @kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds = n.get_number_value() },
                    "kioskModeManagedHomeScreenPinComplexity" => lambda {|n| @kiosk_mode_managed_home_screen_pin_complexity = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeManagedHomeScreenPinComplexity) },
                    "kioskModeManagedHomeScreenPinRequired" => lambda {|n| @kiosk_mode_managed_home_screen_pin_required = n.get_boolean_value() },
                    "kioskModeManagedHomeScreenPinRequiredToResume" => lambda {|n| @kiosk_mode_managed_home_screen_pin_required_to_resume = n.get_boolean_value() },
                    "kioskModeManagedHomeScreenSignInBackground" => lambda {|n| @kiosk_mode_managed_home_screen_sign_in_background = n.get_string_value() },
                    "kioskModeManagedHomeScreenSignInBrandingLogo" => lambda {|n| @kiosk_mode_managed_home_screen_sign_in_branding_logo = n.get_string_value() },
                    "kioskModeManagedHomeScreenSignInEnabled" => lambda {|n| @kiosk_mode_managed_home_screen_sign_in_enabled = n.get_boolean_value() },
                    "kioskModeManagedSettingsEntryDisabled" => lambda {|n| @kiosk_mode_managed_settings_entry_disabled = n.get_boolean_value() },
                    "kioskModeMediaVolumeConfigurationEnabled" => lambda {|n| @kiosk_mode_media_volume_configuration_enabled = n.get_boolean_value() },
                    "kioskModeScreenOrientation" => lambda {|n| @kiosk_mode_screen_orientation = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeScreenOrientation) },
                    "kioskModeScreenSaverConfigurationEnabled" => lambda {|n| @kiosk_mode_screen_saver_configuration_enabled = n.get_boolean_value() },
                    "kioskModeScreenSaverDetectMediaDisabled" => lambda {|n| @kiosk_mode_screen_saver_detect_media_disabled = n.get_boolean_value() },
                    "kioskModeScreenSaverDisplayTimeInSeconds" => lambda {|n| @kiosk_mode_screen_saver_display_time_in_seconds = n.get_number_value() },
                    "kioskModeScreenSaverImageUrl" => lambda {|n| @kiosk_mode_screen_saver_image_url = n.get_string_value() },
                    "kioskModeScreenSaverStartDelayInSeconds" => lambda {|n| @kiosk_mode_screen_saver_start_delay_in_seconds = n.get_number_value() },
                    "kioskModeShowAppNotificationBadge" => lambda {|n| @kiosk_mode_show_app_notification_badge = n.get_boolean_value() },
                    "kioskModeShowDeviceInfo" => lambda {|n| @kiosk_mode_show_device_info = n.get_boolean_value() },
                    "kioskModeUseManagedHomeScreenApp" => lambda {|n| @kiosk_mode_use_managed_home_screen_app = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeUseManagedHomeScreenApp) },
                    "kioskModeVirtualHomeButtonEnabled" => lambda {|n| @kiosk_mode_virtual_home_button_enabled = n.get_boolean_value() },
                    "kioskModeVirtualHomeButtonType" => lambda {|n| @kiosk_mode_virtual_home_button_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationKioskModeVirtualHomeButtonType) },
                    "kioskModeWallpaperUrl" => lambda {|n| @kiosk_mode_wallpaper_url = n.get_string_value() },
                    "kioskModeWiFiConfigurationEnabled" => lambda {|n| @kiosk_mode_wi_fi_configuration_enabled = n.get_boolean_value() },
                    "kioskModeWifiAllowedSsids" => lambda {|n| @kiosk_mode_wifi_allowed_ssids = n.get_collection_of_primitive_values(String) },
                    "locateDeviceLostModeEnabled" => lambda {|n| @locate_device_lost_mode_enabled = n.get_boolean_value() },
                    "locateDeviceUserlessDisabled" => lambda {|n| @locate_device_userless_disabled = n.get_boolean_value() },
                    "microphoneForceMute" => lambda {|n| @microphone_force_mute = n.get_boolean_value() },
                    "microsoftLauncherConfigurationEnabled" => lambda {|n| @microsoft_launcher_configuration_enabled = n.get_boolean_value() },
                    "microsoftLauncherCustomWallpaperAllowUserModification" => lambda {|n| @microsoft_launcher_custom_wallpaper_allow_user_modification = n.get_boolean_value() },
                    "microsoftLauncherCustomWallpaperEnabled" => lambda {|n| @microsoft_launcher_custom_wallpaper_enabled = n.get_boolean_value() },
                    "microsoftLauncherCustomWallpaperImageUrl" => lambda {|n| @microsoft_launcher_custom_wallpaper_image_url = n.get_string_value() },
                    "microsoftLauncherDockPresenceAllowUserModification" => lambda {|n| @microsoft_launcher_dock_presence_allow_user_modification = n.get_boolean_value() },
                    "microsoftLauncherDockPresenceConfiguration" => lambda {|n| @microsoft_launcher_dock_presence_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationMicrosoftLauncherDockPresenceConfiguration) },
                    "microsoftLauncherFeedAllowUserModification" => lambda {|n| @microsoft_launcher_feed_allow_user_modification = n.get_boolean_value() },
                    "microsoftLauncherFeedEnabled" => lambda {|n| @microsoft_launcher_feed_enabled = n.get_boolean_value() },
                    "microsoftLauncherSearchBarPlacementConfiguration" => lambda {|n| @microsoft_launcher_search_bar_placement_configuration = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationMicrosoftLauncherSearchBarPlacementConfiguration) },
                    "networkEscapeHatchAllowed" => lambda {|n| @network_escape_hatch_allowed = n.get_boolean_value() },
                    "nfcBlockOutgoingBeam" => lambda {|n| @nfc_block_outgoing_beam = n.get_boolean_value() },
                    "passwordBlockKeyguard" => lambda {|n| @password_block_keyguard = n.get_boolean_value() },
                    "passwordBlockKeyguardFeatures" => lambda {|n| @password_block_keyguard_features = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidKeyguardFeature.create_from_discriminator_value(pn) }) },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinimumLetterCharacters" => lambda {|n| @password_minimum_letter_characters = n.get_number_value() },
                    "passwordMinimumLowerCaseCharacters" => lambda {|n| @password_minimum_lower_case_characters = n.get_number_value() },
                    "passwordMinimumNonLetterCharacters" => lambda {|n| @password_minimum_non_letter_characters = n.get_number_value() },
                    "passwordMinimumNumericCharacters" => lambda {|n| @password_minimum_numeric_characters = n.get_number_value() },
                    "passwordMinimumSymbolCharacters" => lambda {|n| @password_minimum_symbol_characters = n.get_number_value() },
                    "passwordMinimumUpperCaseCharacters" => lambda {|n| @password_minimum_upper_case_characters = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordCountToBlock" => lambda {|n| @password_previous_password_count_to_block = n.get_number_value() },
                    "passwordRequireUnlock" => lambda {|n| @password_require_unlock = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationPasswordRequireUnlock) },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationPasswordRequiredType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "personalProfileAppsAllowInstallFromUnknownSources" => lambda {|n| @personal_profile_apps_allow_install_from_unknown_sources = n.get_boolean_value() },
                    "personalProfileCameraBlocked" => lambda {|n| @personal_profile_camera_blocked = n.get_boolean_value() },
                    "personalProfilePersonalApplications" => lambda {|n| @personal_profile_personal_applications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "personalProfilePlayStoreMode" => lambda {|n| @personal_profile_play_store_mode = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationPersonalProfilePlayStoreMode) },
                    "personalProfileScreenCaptureBlocked" => lambda {|n| @personal_profile_screen_capture_blocked = n.get_boolean_value() },
                    "playStoreMode" => lambda {|n| @play_store_mode = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationPlayStoreMode) },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "securityCommonCriteriaModeEnabled" => lambda {|n| @security_common_criteria_mode_enabled = n.get_boolean_value() },
                    "securityDeveloperSettingsEnabled" => lambda {|n| @security_developer_settings_enabled = n.get_boolean_value() },
                    "securityRequireVerifyApps" => lambda {|n| @security_require_verify_apps = n.get_boolean_value() },
                    "shareDeviceLocationDisabled" => lambda {|n| @share_device_location_disabled = n.get_boolean_value() },
                    "shortHelpText" => lambda {|n| @short_help_text = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerUserFacingMessage.create_from_discriminator_value(pn) }) },
                    "statusBarBlocked" => lambda {|n| @status_bar_blocked = n.get_boolean_value() },
                    "stayOnModes" => lambda {|n| @stay_on_modes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerBatteryPluggedMode.create_from_discriminator_value(pn) }) },
                    "storageAllowUsb" => lambda {|n| @storage_allow_usb = n.get_boolean_value() },
                    "storageBlockExternalMedia" => lambda {|n| @storage_block_external_media = n.get_boolean_value() },
                    "storageBlockUsbFileTransfer" => lambda {|n| @storage_block_usb_file_transfer = n.get_boolean_value() },
                    "systemUpdateFreezePeriods" => lambda {|n| @system_update_freeze_periods = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerSystemUpdateFreezePeriod.create_from_discriminator_value(pn) }) },
                    "systemUpdateInstallType" => lambda {|n| @system_update_install_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationSystemUpdateInstallType) },
                    "systemUpdateWindowEndMinutesAfterMidnight" => lambda {|n| @system_update_window_end_minutes_after_midnight = n.get_number_value() },
                    "systemUpdateWindowStartMinutesAfterMidnight" => lambda {|n| @system_update_window_start_minutes_after_midnight = n.get_number_value() },
                    "systemWindowsBlocked" => lambda {|n| @system_windows_blocked = n.get_boolean_value() },
                    "usersBlockAdd" => lambda {|n| @users_block_add = n.get_boolean_value() },
                    "usersBlockRemove" => lambda {|n| @users_block_remove = n.get_boolean_value() },
                    "volumeBlockAdjustment" => lambda {|n| @volume_block_adjustment = n.get_boolean_value() },
                    "vpnAlwaysOnLockdownMode" => lambda {|n| @vpn_always_on_lockdown_mode = n.get_boolean_value() },
                    "vpnAlwaysOnPackageIdentifier" => lambda {|n| @vpn_always_on_package_identifier = n.get_string_value() },
                    "wifiBlockEditConfigurations" => lambda {|n| @wifi_block_edit_configurations = n.get_boolean_value() },
                    "wifiBlockEditPolicyDefinedConfigurations" => lambda {|n| @wifi_block_edit_policy_defined_configurations = n.get_boolean_value() },
                    "workProfilePasswordExpirationDays" => lambda {|n| @work_profile_password_expiration_days = n.get_number_value() },
                    "workProfilePasswordMinimumLength" => lambda {|n| @work_profile_password_minimum_length = n.get_number_value() },
                    "workProfilePasswordMinimumLetterCharacters" => lambda {|n| @work_profile_password_minimum_letter_characters = n.get_number_value() },
                    "workProfilePasswordMinimumLowerCaseCharacters" => lambda {|n| @work_profile_password_minimum_lower_case_characters = n.get_number_value() },
                    "workProfilePasswordMinimumNonLetterCharacters" => lambda {|n| @work_profile_password_minimum_non_letter_characters = n.get_number_value() },
                    "workProfilePasswordMinimumNumericCharacters" => lambda {|n| @work_profile_password_minimum_numeric_characters = n.get_number_value() },
                    "workProfilePasswordMinimumSymbolCharacters" => lambda {|n| @work_profile_password_minimum_symbol_characters = n.get_number_value() },
                    "workProfilePasswordMinimumUpperCaseCharacters" => lambda {|n| @work_profile_password_minimum_upper_case_characters = n.get_number_value() },
                    "workProfilePasswordPreviousPasswordCountToBlock" => lambda {|n| @work_profile_password_previous_password_count_to_block = n.get_number_value() },
                    "workProfilePasswordRequireUnlock" => lambda {|n| @work_profile_password_require_unlock = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationWorkProfilePasswordRequireUnlock) },
                    "workProfilePasswordRequiredType" => lambda {|n| @work_profile_password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidDeviceOwnerGeneralDeviceConfigurationWorkProfilePasswordRequiredType) },
                    "workProfilePasswordSignInFailureCountBeforeFactoryReset" => lambda {|n| @work_profile_password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                })
            end
            ## 
            ## Gets the globalProxy property value. Proxy is set up directly with host, port and excluded hosts.
            ## @return a android_device_owner_global_proxy
            ## 
            def global_proxy
                return @global_proxy
            end
            ## 
            ## Sets the globalProxy property value. Proxy is set up directly with host, port and excluded hosts.
            ## @param value Value to set for the globalProxy property.
            ## @return a void
            ## 
            def global_proxy=(value)
                @global_proxy = value
            end
            ## 
            ## Gets the googleAccountsBlocked property value. Indicates whether or not google accounts will be blocked.
            ## @return a boolean
            ## 
            def google_accounts_blocked
                return @google_accounts_blocked
            end
            ## 
            ## Sets the googleAccountsBlocked property value. Indicates whether or not google accounts will be blocked.
            ## @param value Value to set for the googleAccountsBlocked property.
            ## @return a void
            ## 
            def google_accounts_blocked=(value)
                @google_accounts_blocked = value
            end
            ## 
            ## Gets the kioskCustomizationDeviceSettingsBlocked property value. Indicates whether a user can access the device's Settings app while in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_customization_device_settings_blocked
                return @kiosk_customization_device_settings_blocked
            end
            ## 
            ## Sets the kioskCustomizationDeviceSettingsBlocked property value. Indicates whether a user can access the device's Settings app while in Kiosk Mode.
            ## @param value Value to set for the kioskCustomizationDeviceSettingsBlocked property.
            ## @return a void
            ## 
            def kiosk_customization_device_settings_blocked=(value)
                @kiosk_customization_device_settings_blocked = value
            end
            ## 
            ## Gets the kioskCustomizationPowerButtonActionsBlocked property value. Whether the power menu is shown when a user long presses the Power button of a device in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_customization_power_button_actions_blocked
                return @kiosk_customization_power_button_actions_blocked
            end
            ## 
            ## Sets the kioskCustomizationPowerButtonActionsBlocked property value. Whether the power menu is shown when a user long presses the Power button of a device in Kiosk Mode.
            ## @param value Value to set for the kioskCustomizationPowerButtonActionsBlocked property.
            ## @return a void
            ## 
            def kiosk_customization_power_button_actions_blocked=(value)
                @kiosk_customization_power_button_actions_blocked = value
            end
            ## 
            ## Gets the kioskCustomizationStatusBar property value. Indicates whether system info and notifications are disabled in Kiosk Mode. Possible values are: notConfigured, notificationsAndSystemInfoEnabled, systemInfoOnly.
            ## @return a android_device_owner_general_device_configuration_kiosk_customization_status_bar
            ## 
            def kiosk_customization_status_bar
                return @kiosk_customization_status_bar
            end
            ## 
            ## Sets the kioskCustomizationStatusBar property value. Indicates whether system info and notifications are disabled in Kiosk Mode. Possible values are: notConfigured, notificationsAndSystemInfoEnabled, systemInfoOnly.
            ## @param value Value to set for the kioskCustomizationStatusBar property.
            ## @return a void
            ## 
            def kiosk_customization_status_bar=(value)
                @kiosk_customization_status_bar = value
            end
            ## 
            ## Gets the kioskCustomizationSystemErrorWarnings property value. Indicates whether system error dialogs for crashed or unresponsive apps are shown in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_customization_system_error_warnings
                return @kiosk_customization_system_error_warnings
            end
            ## 
            ## Sets the kioskCustomizationSystemErrorWarnings property value. Indicates whether system error dialogs for crashed or unresponsive apps are shown in Kiosk Mode.
            ## @param value Value to set for the kioskCustomizationSystemErrorWarnings property.
            ## @return a void
            ## 
            def kiosk_customization_system_error_warnings=(value)
                @kiosk_customization_system_error_warnings = value
            end
            ## 
            ## Gets the kioskCustomizationSystemNavigation property value. Indicates which navigation features are enabled in Kiosk Mode. Possible values are: notConfigured, navigationEnabled, homeButtonOnly.
            ## @return a android_device_owner_general_device_configuration_kiosk_customization_system_navigation
            ## 
            def kiosk_customization_system_navigation
                return @kiosk_customization_system_navigation
            end
            ## 
            ## Sets the kioskCustomizationSystemNavigation property value. Indicates which navigation features are enabled in Kiosk Mode. Possible values are: notConfigured, navigationEnabled, homeButtonOnly.
            ## @param value Value to set for the kioskCustomizationSystemNavigation property.
            ## @return a void
            ## 
            def kiosk_customization_system_navigation=(value)
                @kiosk_customization_system_navigation = value
            end
            ## 
            ## Gets the kioskModeAppOrderEnabled property value. Whether or not to enable app ordering in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_app_order_enabled
                return @kiosk_mode_app_order_enabled
            end
            ## 
            ## Sets the kioskModeAppOrderEnabled property value. Whether or not to enable app ordering in Kiosk Mode.
            ## @param value Value to set for the kioskModeAppOrderEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_app_order_enabled=(value)
                @kiosk_mode_app_order_enabled = value
            end
            ## 
            ## Gets the kioskModeAppPositions property value. The ordering of items on Kiosk Mode Managed Home Screen. This collection can contain a maximum of 500 elements.
            ## @return a android_device_owner_kiosk_mode_app_position_item
            ## 
            def kiosk_mode_app_positions
                return @kiosk_mode_app_positions
            end
            ## 
            ## Sets the kioskModeAppPositions property value. The ordering of items on Kiosk Mode Managed Home Screen. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kioskModeAppPositions property.
            ## @return a void
            ## 
            def kiosk_mode_app_positions=(value)
                @kiosk_mode_app_positions = value
            end
            ## 
            ## Gets the kioskModeApps property value. A list of managed apps that will be shown when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def kiosk_mode_apps
                return @kiosk_mode_apps
            end
            ## 
            ## Sets the kioskModeApps property value. A list of managed apps that will be shown when the device is in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kioskModeApps property.
            ## @return a void
            ## 
            def kiosk_mode_apps=(value)
                @kiosk_mode_apps = value
            end
            ## 
            ## Gets the kioskModeAppsInFolderOrderedByName property value. Whether or not to alphabetize applications within a folder in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_apps_in_folder_ordered_by_name
                return @kiosk_mode_apps_in_folder_ordered_by_name
            end
            ## 
            ## Sets the kioskModeAppsInFolderOrderedByName property value. Whether or not to alphabetize applications within a folder in Kiosk Mode.
            ## @param value Value to set for the kioskModeAppsInFolderOrderedByName property.
            ## @return a void
            ## 
            def kiosk_mode_apps_in_folder_ordered_by_name=(value)
                @kiosk_mode_apps_in_folder_ordered_by_name = value
            end
            ## 
            ## Gets the kioskModeBluetoothConfigurationEnabled property value. Whether or not to allow a user to configure Bluetooth settings in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_bluetooth_configuration_enabled
                return @kiosk_mode_bluetooth_configuration_enabled
            end
            ## 
            ## Sets the kioskModeBluetoothConfigurationEnabled property value. Whether or not to allow a user to configure Bluetooth settings in Kiosk Mode.
            ## @param value Value to set for the kioskModeBluetoothConfigurationEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_bluetooth_configuration_enabled=(value)
                @kiosk_mode_bluetooth_configuration_enabled = value
            end
            ## 
            ## Gets the kioskModeDebugMenuEasyAccessEnabled property value. Whether or not to allow a user to easy access to the debug menu in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_debug_menu_easy_access_enabled
                return @kiosk_mode_debug_menu_easy_access_enabled
            end
            ## 
            ## Sets the kioskModeDebugMenuEasyAccessEnabled property value. Whether or not to allow a user to easy access to the debug menu in Kiosk Mode.
            ## @param value Value to set for the kioskModeDebugMenuEasyAccessEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_debug_menu_easy_access_enabled=(value)
                @kiosk_mode_debug_menu_easy_access_enabled = value
            end
            ## 
            ## Gets the kioskModeExitCode property value. Exit code to allow a user to escape from Kiosk Mode when the device is in Kiosk Mode.
            ## @return a string
            ## 
            def kiosk_mode_exit_code
                return @kiosk_mode_exit_code
            end
            ## 
            ## Sets the kioskModeExitCode property value. Exit code to allow a user to escape from Kiosk Mode when the device is in Kiosk Mode.
            ## @param value Value to set for the kioskModeExitCode property.
            ## @return a void
            ## 
            def kiosk_mode_exit_code=(value)
                @kiosk_mode_exit_code = value
            end
            ## 
            ## Gets the kioskModeFlashlightConfigurationEnabled property value. Whether or not to allow a user to use the flashlight in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_flashlight_configuration_enabled
                return @kiosk_mode_flashlight_configuration_enabled
            end
            ## 
            ## Sets the kioskModeFlashlightConfigurationEnabled property value. Whether or not to allow a user to use the flashlight in Kiosk Mode.
            ## @param value Value to set for the kioskModeFlashlightConfigurationEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_flashlight_configuration_enabled=(value)
                @kiosk_mode_flashlight_configuration_enabled = value
            end
            ## 
            ## Gets the kioskModeFolderIcon property value. Folder icon configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, darkSquare, darkCircle, lightSquare, lightCircle.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_folder_icon
            ## 
            def kiosk_mode_folder_icon
                return @kiosk_mode_folder_icon
            end
            ## 
            ## Sets the kioskModeFolderIcon property value. Folder icon configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, darkSquare, darkCircle, lightSquare, lightCircle.
            ## @param value Value to set for the kioskModeFolderIcon property.
            ## @return a void
            ## 
            def kiosk_mode_folder_icon=(value)
                @kiosk_mode_folder_icon = value
            end
            ## 
            ## Gets the kioskModeGridHeight property value. Number of rows for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_grid_height
                return @kiosk_mode_grid_height
            end
            ## 
            ## Sets the kioskModeGridHeight property value. Number of rows for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            ## @param value Value to set for the kioskModeGridHeight property.
            ## @return a void
            ## 
            def kiosk_mode_grid_height=(value)
                @kiosk_mode_grid_height = value
            end
            ## 
            ## Gets the kioskModeGridWidth property value. Number of columns for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_grid_width
                return @kiosk_mode_grid_width
            end
            ## 
            ## Sets the kioskModeGridWidth property value. Number of columns for Managed Home Screen grid with app ordering enabled in Kiosk Mode. Valid values 1 to 9999999
            ## @param value Value to set for the kioskModeGridWidth property.
            ## @return a void
            ## 
            def kiosk_mode_grid_width=(value)
                @kiosk_mode_grid_width = value
            end
            ## 
            ## Gets the kioskModeIconSize property value. Icon size configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, smallest, small, regular, large, largest.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_icon_size
            ## 
            def kiosk_mode_icon_size
                return @kiosk_mode_icon_size
            end
            ## 
            ## Sets the kioskModeIconSize property value. Icon size configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, smallest, small, regular, large, largest.
            ## @param value Value to set for the kioskModeIconSize property.
            ## @return a void
            ## 
            def kiosk_mode_icon_size=(value)
                @kiosk_mode_icon_size = value
            end
            ## 
            ## Gets the kioskModeLockHomeScreen property value. Whether or not to lock home screen to the end user in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_lock_home_screen
                return @kiosk_mode_lock_home_screen
            end
            ## 
            ## Sets the kioskModeLockHomeScreen property value. Whether or not to lock home screen to the end user in Kiosk Mode.
            ## @param value Value to set for the kioskModeLockHomeScreen property.
            ## @return a void
            ## 
            def kiosk_mode_lock_home_screen=(value)
                @kiosk_mode_lock_home_screen = value
            end
            ## 
            ## Gets the kioskModeManagedFolders property value. A list of managed folders for a device in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @return a android_device_owner_kiosk_mode_managed_folder
            ## 
            def kiosk_mode_managed_folders
                return @kiosk_mode_managed_folders
            end
            ## 
            ## Sets the kioskModeManagedFolders property value. A list of managed folders for a device in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kioskModeManagedFolders property.
            ## @return a void
            ## 
            def kiosk_mode_managed_folders=(value)
                @kiosk_mode_managed_folders = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenAutoSignout property value. Whether or not to automatically sign-out of MHS and Shared device mode applications after inactive for Managed Home Screen.
            ## @return a boolean
            ## 
            def kiosk_mode_managed_home_screen_auto_signout
                return @kiosk_mode_managed_home_screen_auto_signout
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenAutoSignout property value. Whether or not to automatically sign-out of MHS and Shared device mode applications after inactive for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenAutoSignout property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_auto_signout=(value)
                @kiosk_mode_managed_home_screen_auto_signout = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds property value. Number of seconds to give user notice before automatically signing them out for Managed Home Screen. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds
                return @kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds property value. Number of seconds to give user notice before automatically signing them out for Managed Home Screen. Valid values 0 to 9999999
            ## @param value Value to set for the kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds=(value)
                @kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds property value. Number of seconds device is inactive before automatically signing user out for Managed Home Screen. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds
                return @kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds property value. Number of seconds device is inactive before automatically signing user out for Managed Home Screen. Valid values 0 to 9999999
            ## @param value Value to set for the kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds=(value)
                @kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenPinComplexity property value. Complexity of PIN for sign-in session for Managed Home Screen. Possible values are: notConfigured, simple, complex.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_managed_home_screen_pin_complexity
            ## 
            def kiosk_mode_managed_home_screen_pin_complexity
                return @kiosk_mode_managed_home_screen_pin_complexity
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenPinComplexity property value. Complexity of PIN for sign-in session for Managed Home Screen. Possible values are: notConfigured, simple, complex.
            ## @param value Value to set for the kioskModeManagedHomeScreenPinComplexity property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_pin_complexity=(value)
                @kiosk_mode_managed_home_screen_pin_complexity = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenPinRequired property value. Whether or not require user to set a PIN for sign-in session for Managed Home Screen.
            ## @return a boolean
            ## 
            def kiosk_mode_managed_home_screen_pin_required
                return @kiosk_mode_managed_home_screen_pin_required
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenPinRequired property value. Whether or not require user to set a PIN for sign-in session for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenPinRequired property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_pin_required=(value)
                @kiosk_mode_managed_home_screen_pin_required = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenPinRequiredToResume property value. Whether or not required user to enter session PIN if screensaver has appeared for Managed Home Screen.
            ## @return a boolean
            ## 
            def kiosk_mode_managed_home_screen_pin_required_to_resume
                return @kiosk_mode_managed_home_screen_pin_required_to_resume
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenPinRequiredToResume property value. Whether or not required user to enter session PIN if screensaver has appeared for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenPinRequiredToResume property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_pin_required_to_resume=(value)
                @kiosk_mode_managed_home_screen_pin_required_to_resume = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenSignInBackground property value. Custom URL background for sign-in screen for Managed Home Screen.
            ## @return a string
            ## 
            def kiosk_mode_managed_home_screen_sign_in_background
                return @kiosk_mode_managed_home_screen_sign_in_background
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenSignInBackground property value. Custom URL background for sign-in screen for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenSignInBackground property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_sign_in_background=(value)
                @kiosk_mode_managed_home_screen_sign_in_background = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenSignInBrandingLogo property value. Custom URL branding logo for sign-in screen and session pin page for Managed Home Screen.
            ## @return a string
            ## 
            def kiosk_mode_managed_home_screen_sign_in_branding_logo
                return @kiosk_mode_managed_home_screen_sign_in_branding_logo
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenSignInBrandingLogo property value. Custom URL branding logo for sign-in screen and session pin page for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenSignInBrandingLogo property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_sign_in_branding_logo=(value)
                @kiosk_mode_managed_home_screen_sign_in_branding_logo = value
            end
            ## 
            ## Gets the kioskModeManagedHomeScreenSignInEnabled property value. Whether or not show sign-in screen for Managed Home Screen.
            ## @return a boolean
            ## 
            def kiosk_mode_managed_home_screen_sign_in_enabled
                return @kiosk_mode_managed_home_screen_sign_in_enabled
            end
            ## 
            ## Sets the kioskModeManagedHomeScreenSignInEnabled property value. Whether or not show sign-in screen for Managed Home Screen.
            ## @param value Value to set for the kioskModeManagedHomeScreenSignInEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_managed_home_screen_sign_in_enabled=(value)
                @kiosk_mode_managed_home_screen_sign_in_enabled = value
            end
            ## 
            ## Gets the kioskModeManagedSettingsEntryDisabled property value. Whether or not to display the Managed Settings entry point on the managed home screen in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_managed_settings_entry_disabled
                return @kiosk_mode_managed_settings_entry_disabled
            end
            ## 
            ## Sets the kioskModeManagedSettingsEntryDisabled property value. Whether or not to display the Managed Settings entry point on the managed home screen in Kiosk Mode.
            ## @param value Value to set for the kioskModeManagedSettingsEntryDisabled property.
            ## @return a void
            ## 
            def kiosk_mode_managed_settings_entry_disabled=(value)
                @kiosk_mode_managed_settings_entry_disabled = value
            end
            ## 
            ## Gets the kioskModeMediaVolumeConfigurationEnabled property value. Whether or not to allow a user to change the media volume in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_media_volume_configuration_enabled
                return @kiosk_mode_media_volume_configuration_enabled
            end
            ## 
            ## Sets the kioskModeMediaVolumeConfigurationEnabled property value. Whether or not to allow a user to change the media volume in Kiosk Mode.
            ## @param value Value to set for the kioskModeMediaVolumeConfigurationEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_media_volume_configuration_enabled=(value)
                @kiosk_mode_media_volume_configuration_enabled = value
            end
            ## 
            ## Gets the kioskModeScreenOrientation property value. Screen orientation configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, portrait, landscape, autoRotate.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_screen_orientation
            ## 
            def kiosk_mode_screen_orientation
                return @kiosk_mode_screen_orientation
            end
            ## 
            ## Sets the kioskModeScreenOrientation property value. Screen orientation configuration for managed home screen in Kiosk Mode. Possible values are: notConfigured, portrait, landscape, autoRotate.
            ## @param value Value to set for the kioskModeScreenOrientation property.
            ## @return a void
            ## 
            def kiosk_mode_screen_orientation=(value)
                @kiosk_mode_screen_orientation = value
            end
            ## 
            ## Gets the kioskModeScreenSaverConfigurationEnabled property value. Whether or not to enable screen saver mode or not in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_screen_saver_configuration_enabled
                return @kiosk_mode_screen_saver_configuration_enabled
            end
            ## 
            ## Sets the kioskModeScreenSaverConfigurationEnabled property value. Whether or not to enable screen saver mode or not in Kiosk Mode.
            ## @param value Value to set for the kioskModeScreenSaverConfigurationEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_screen_saver_configuration_enabled=(value)
                @kiosk_mode_screen_saver_configuration_enabled = value
            end
            ## 
            ## Gets the kioskModeScreenSaverDetectMediaDisabled property value. Whether or not the device screen should show the screen saver if audio/video is playing in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_screen_saver_detect_media_disabled
                return @kiosk_mode_screen_saver_detect_media_disabled
            end
            ## 
            ## Sets the kioskModeScreenSaverDetectMediaDisabled property value. Whether or not the device screen should show the screen saver if audio/video is playing in Kiosk Mode.
            ## @param value Value to set for the kioskModeScreenSaverDetectMediaDisabled property.
            ## @return a void
            ## 
            def kiosk_mode_screen_saver_detect_media_disabled=(value)
                @kiosk_mode_screen_saver_detect_media_disabled = value
            end
            ## 
            ## Gets the kioskModeScreenSaverDisplayTimeInSeconds property value. The number of seconds that the device will display the screen saver for in Kiosk Mode. Valid values 0 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_screen_saver_display_time_in_seconds
                return @kiosk_mode_screen_saver_display_time_in_seconds
            end
            ## 
            ## Sets the kioskModeScreenSaverDisplayTimeInSeconds property value. The number of seconds that the device will display the screen saver for in Kiosk Mode. Valid values 0 to 9999999
            ## @param value Value to set for the kioskModeScreenSaverDisplayTimeInSeconds property.
            ## @return a void
            ## 
            def kiosk_mode_screen_saver_display_time_in_seconds=(value)
                @kiosk_mode_screen_saver_display_time_in_seconds = value
            end
            ## 
            ## Gets the kioskModeScreenSaverImageUrl property value. URL for an image that will be the device's screen saver in Kiosk Mode.
            ## @return a string
            ## 
            def kiosk_mode_screen_saver_image_url
                return @kiosk_mode_screen_saver_image_url
            end
            ## 
            ## Sets the kioskModeScreenSaverImageUrl property value. URL for an image that will be the device's screen saver in Kiosk Mode.
            ## @param value Value to set for the kioskModeScreenSaverImageUrl property.
            ## @return a void
            ## 
            def kiosk_mode_screen_saver_image_url=(value)
                @kiosk_mode_screen_saver_image_url = value
            end
            ## 
            ## Gets the kioskModeScreenSaverStartDelayInSeconds property value. The number of seconds the device needs to be inactive for before the screen saver is shown in Kiosk Mode. Valid values 1 to 9999999
            ## @return a integer
            ## 
            def kiosk_mode_screen_saver_start_delay_in_seconds
                return @kiosk_mode_screen_saver_start_delay_in_seconds
            end
            ## 
            ## Sets the kioskModeScreenSaverStartDelayInSeconds property value. The number of seconds the device needs to be inactive for before the screen saver is shown in Kiosk Mode. Valid values 1 to 9999999
            ## @param value Value to set for the kioskModeScreenSaverStartDelayInSeconds property.
            ## @return a void
            ## 
            def kiosk_mode_screen_saver_start_delay_in_seconds=(value)
                @kiosk_mode_screen_saver_start_delay_in_seconds = value
            end
            ## 
            ## Gets the kioskModeShowAppNotificationBadge property value. Whether or not to display application notification badges in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_show_app_notification_badge
                return @kiosk_mode_show_app_notification_badge
            end
            ## 
            ## Sets the kioskModeShowAppNotificationBadge property value. Whether or not to display application notification badges in Kiosk Mode.
            ## @param value Value to set for the kioskModeShowAppNotificationBadge property.
            ## @return a void
            ## 
            def kiosk_mode_show_app_notification_badge=(value)
                @kiosk_mode_show_app_notification_badge = value
            end
            ## 
            ## Gets the kioskModeShowDeviceInfo property value. Whether or not to allow a user to access basic device information.
            ## @return a boolean
            ## 
            def kiosk_mode_show_device_info
                return @kiosk_mode_show_device_info
            end
            ## 
            ## Sets the kioskModeShowDeviceInfo property value. Whether or not to allow a user to access basic device information.
            ## @param value Value to set for the kioskModeShowDeviceInfo property.
            ## @return a void
            ## 
            def kiosk_mode_show_device_info=(value)
                @kiosk_mode_show_device_info = value
            end
            ## 
            ## Gets the kioskModeUseManagedHomeScreenApp property value. Whether or not to use single app kiosk mode or multi-app kiosk mode. Possible values are: notConfigured, singleAppMode, multiAppMode.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_use_managed_home_screen_app
            ## 
            def kiosk_mode_use_managed_home_screen_app
                return @kiosk_mode_use_managed_home_screen_app
            end
            ## 
            ## Sets the kioskModeUseManagedHomeScreenApp property value. Whether or not to use single app kiosk mode or multi-app kiosk mode. Possible values are: notConfigured, singleAppMode, multiAppMode.
            ## @param value Value to set for the kioskModeUseManagedHomeScreenApp property.
            ## @return a void
            ## 
            def kiosk_mode_use_managed_home_screen_app=(value)
                @kiosk_mode_use_managed_home_screen_app = value
            end
            ## 
            ## Gets the kioskModeVirtualHomeButtonEnabled property value. Whether or not to display a virtual home button when the device is in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_virtual_home_button_enabled
                return @kiosk_mode_virtual_home_button_enabled
            end
            ## 
            ## Sets the kioskModeVirtualHomeButtonEnabled property value. Whether or not to display a virtual home button when the device is in Kiosk Mode.
            ## @param value Value to set for the kioskModeVirtualHomeButtonEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_virtual_home_button_enabled=(value)
                @kiosk_mode_virtual_home_button_enabled = value
            end
            ## 
            ## Gets the kioskModeVirtualHomeButtonType property value. Indicates whether the virtual home button is a swipe up home button or a floating home button. Possible values are: notConfigured, swipeUp, floating.
            ## @return a android_device_owner_general_device_configuration_kiosk_mode_virtual_home_button_type
            ## 
            def kiosk_mode_virtual_home_button_type
                return @kiosk_mode_virtual_home_button_type
            end
            ## 
            ## Sets the kioskModeVirtualHomeButtonType property value. Indicates whether the virtual home button is a swipe up home button or a floating home button. Possible values are: notConfigured, swipeUp, floating.
            ## @param value Value to set for the kioskModeVirtualHomeButtonType property.
            ## @return a void
            ## 
            def kiosk_mode_virtual_home_button_type=(value)
                @kiosk_mode_virtual_home_button_type = value
            end
            ## 
            ## Gets the kioskModeWallpaperUrl property value. URL to a publicly accessible image to use for the wallpaper when the device is in Kiosk Mode.
            ## @return a string
            ## 
            def kiosk_mode_wallpaper_url
                return @kiosk_mode_wallpaper_url
            end
            ## 
            ## Sets the kioskModeWallpaperUrl property value. URL to a publicly accessible image to use for the wallpaper when the device is in Kiosk Mode.
            ## @param value Value to set for the kioskModeWallpaperUrl property.
            ## @return a void
            ## 
            def kiosk_mode_wallpaper_url=(value)
                @kiosk_mode_wallpaper_url = value
            end
            ## 
            ## Gets the kioskModeWiFiConfigurationEnabled property value. Whether or not to allow a user to configure Wi-Fi settings in Kiosk Mode.
            ## @return a boolean
            ## 
            def kiosk_mode_wi_fi_configuration_enabled
                return @kiosk_mode_wi_fi_configuration_enabled
            end
            ## 
            ## Sets the kioskModeWiFiConfigurationEnabled property value. Whether or not to allow a user to configure Wi-Fi settings in Kiosk Mode.
            ## @param value Value to set for the kioskModeWiFiConfigurationEnabled property.
            ## @return a void
            ## 
            def kiosk_mode_wi_fi_configuration_enabled=(value)
                @kiosk_mode_wi_fi_configuration_enabled = value
            end
            ## 
            ## Gets the kioskModeWifiAllowedSsids property value. The restricted set of WIFI SSIDs available for the user to configure in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @return a string
            ## 
            def kiosk_mode_wifi_allowed_ssids
                return @kiosk_mode_wifi_allowed_ssids
            end
            ## 
            ## Sets the kioskModeWifiAllowedSsids property value. The restricted set of WIFI SSIDs available for the user to configure in Kiosk Mode. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the kioskModeWifiAllowedSsids property.
            ## @return a void
            ## 
            def kiosk_mode_wifi_allowed_ssids=(value)
                @kiosk_mode_wifi_allowed_ssids = value
            end
            ## 
            ## Gets the locateDeviceLostModeEnabled property value. Indicates whether or not LocateDevice for devices with lost mode (COBO, COPE) is enabled.
            ## @return a boolean
            ## 
            def locate_device_lost_mode_enabled
                return @locate_device_lost_mode_enabled
            end
            ## 
            ## Sets the locateDeviceLostModeEnabled property value. Indicates whether or not LocateDevice for devices with lost mode (COBO, COPE) is enabled.
            ## @param value Value to set for the locateDeviceLostModeEnabled property.
            ## @return a void
            ## 
            def locate_device_lost_mode_enabled=(value)
                @locate_device_lost_mode_enabled = value
            end
            ## 
            ## Gets the locateDeviceUserlessDisabled property value. Indicates whether or not LocateDevice for userless (COSU) devices is disabled.
            ## @return a boolean
            ## 
            def locate_device_userless_disabled
                return @locate_device_userless_disabled
            end
            ## 
            ## Sets the locateDeviceUserlessDisabled property value. Indicates whether or not LocateDevice for userless (COSU) devices is disabled.
            ## @param value Value to set for the locateDeviceUserlessDisabled property.
            ## @return a void
            ## 
            def locate_device_userless_disabled=(value)
                @locate_device_userless_disabled = value
            end
            ## 
            ## Gets the microphoneForceMute property value. Indicates whether or not to block unmuting the microphone on the device.
            ## @return a boolean
            ## 
            def microphone_force_mute
                return @microphone_force_mute
            end
            ## 
            ## Sets the microphoneForceMute property value. Indicates whether or not to block unmuting the microphone on the device.
            ## @param value Value to set for the microphoneForceMute property.
            ## @return a void
            ## 
            def microphone_force_mute=(value)
                @microphone_force_mute = value
            end
            ## 
            ## Gets the microsoftLauncherConfigurationEnabled property value. Indicates whether or not to you want configure Microsoft Launcher.
            ## @return a boolean
            ## 
            def microsoft_launcher_configuration_enabled
                return @microsoft_launcher_configuration_enabled
            end
            ## 
            ## Sets the microsoftLauncherConfigurationEnabled property value. Indicates whether or not to you want configure Microsoft Launcher.
            ## @param value Value to set for the microsoftLauncherConfigurationEnabled property.
            ## @return a void
            ## 
            def microsoft_launcher_configuration_enabled=(value)
                @microsoft_launcher_configuration_enabled = value
            end
            ## 
            ## Gets the microsoftLauncherCustomWallpaperAllowUserModification property value. Indicates whether or not the user can modify the wallpaper to personalize their device.
            ## @return a boolean
            ## 
            def microsoft_launcher_custom_wallpaper_allow_user_modification
                return @microsoft_launcher_custom_wallpaper_allow_user_modification
            end
            ## 
            ## Sets the microsoftLauncherCustomWallpaperAllowUserModification property value. Indicates whether or not the user can modify the wallpaper to personalize their device.
            ## @param value Value to set for the microsoftLauncherCustomWallpaperAllowUserModification property.
            ## @return a void
            ## 
            def microsoft_launcher_custom_wallpaper_allow_user_modification=(value)
                @microsoft_launcher_custom_wallpaper_allow_user_modification = value
            end
            ## 
            ## Gets the microsoftLauncherCustomWallpaperEnabled property value. Indicates whether or not to configure the wallpaper on the targeted devices.
            ## @return a boolean
            ## 
            def microsoft_launcher_custom_wallpaper_enabled
                return @microsoft_launcher_custom_wallpaper_enabled
            end
            ## 
            ## Sets the microsoftLauncherCustomWallpaperEnabled property value. Indicates whether or not to configure the wallpaper on the targeted devices.
            ## @param value Value to set for the microsoftLauncherCustomWallpaperEnabled property.
            ## @return a void
            ## 
            def microsoft_launcher_custom_wallpaper_enabled=(value)
                @microsoft_launcher_custom_wallpaper_enabled = value
            end
            ## 
            ## Gets the microsoftLauncherCustomWallpaperImageUrl property value. Indicates the URL for the image file to use as the wallpaper on the targeted devices.
            ## @return a string
            ## 
            def microsoft_launcher_custom_wallpaper_image_url
                return @microsoft_launcher_custom_wallpaper_image_url
            end
            ## 
            ## Sets the microsoftLauncherCustomWallpaperImageUrl property value. Indicates the URL for the image file to use as the wallpaper on the targeted devices.
            ## @param value Value to set for the microsoftLauncherCustomWallpaperImageUrl property.
            ## @return a void
            ## 
            def microsoft_launcher_custom_wallpaper_image_url=(value)
                @microsoft_launcher_custom_wallpaper_image_url = value
            end
            ## 
            ## Gets the microsoftLauncherDockPresenceAllowUserModification property value. Indicates whether or not the user can modify the device dock configuration on the device.
            ## @return a boolean
            ## 
            def microsoft_launcher_dock_presence_allow_user_modification
                return @microsoft_launcher_dock_presence_allow_user_modification
            end
            ## 
            ## Sets the microsoftLauncherDockPresenceAllowUserModification property value. Indicates whether or not the user can modify the device dock configuration on the device.
            ## @param value Value to set for the microsoftLauncherDockPresenceAllowUserModification property.
            ## @return a void
            ## 
            def microsoft_launcher_dock_presence_allow_user_modification=(value)
                @microsoft_launcher_dock_presence_allow_user_modification = value
            end
            ## 
            ## Gets the microsoftLauncherDockPresenceConfiguration property value. Indicates whether or not you want to configure the device dock. Possible values are: notConfigured, show, hide, disabled.
            ## @return a android_device_owner_general_device_configuration_microsoft_launcher_dock_presence_configuration
            ## 
            def microsoft_launcher_dock_presence_configuration
                return @microsoft_launcher_dock_presence_configuration
            end
            ## 
            ## Sets the microsoftLauncherDockPresenceConfiguration property value. Indicates whether or not you want to configure the device dock. Possible values are: notConfigured, show, hide, disabled.
            ## @param value Value to set for the microsoftLauncherDockPresenceConfiguration property.
            ## @return a void
            ## 
            def microsoft_launcher_dock_presence_configuration=(value)
                @microsoft_launcher_dock_presence_configuration = value
            end
            ## 
            ## Gets the microsoftLauncherFeedAllowUserModification property value. Indicates whether or not the user can modify the launcher feed on the device.
            ## @return a boolean
            ## 
            def microsoft_launcher_feed_allow_user_modification
                return @microsoft_launcher_feed_allow_user_modification
            end
            ## 
            ## Sets the microsoftLauncherFeedAllowUserModification property value. Indicates whether or not the user can modify the launcher feed on the device.
            ## @param value Value to set for the microsoftLauncherFeedAllowUserModification property.
            ## @return a void
            ## 
            def microsoft_launcher_feed_allow_user_modification=(value)
                @microsoft_launcher_feed_allow_user_modification = value
            end
            ## 
            ## Gets the microsoftLauncherFeedEnabled property value. Indicates whether or not you want to enable the launcher feed on the device.
            ## @return a boolean
            ## 
            def microsoft_launcher_feed_enabled
                return @microsoft_launcher_feed_enabled
            end
            ## 
            ## Sets the microsoftLauncherFeedEnabled property value. Indicates whether or not you want to enable the launcher feed on the device.
            ## @param value Value to set for the microsoftLauncherFeedEnabled property.
            ## @return a void
            ## 
            def microsoft_launcher_feed_enabled=(value)
                @microsoft_launcher_feed_enabled = value
            end
            ## 
            ## Gets the microsoftLauncherSearchBarPlacementConfiguration property value. Indicates the search bar placement configuration on the device. Possible values are: notConfigured, top, bottom, hide.
            ## @return a android_device_owner_general_device_configuration_microsoft_launcher_search_bar_placement_configuration
            ## 
            def microsoft_launcher_search_bar_placement_configuration
                return @microsoft_launcher_search_bar_placement_configuration
            end
            ## 
            ## Sets the microsoftLauncherSearchBarPlacementConfiguration property value. Indicates the search bar placement configuration on the device. Possible values are: notConfigured, top, bottom, hide.
            ## @param value Value to set for the microsoftLauncherSearchBarPlacementConfiguration property.
            ## @return a void
            ## 
            def microsoft_launcher_search_bar_placement_configuration=(value)
                @microsoft_launcher_search_bar_placement_configuration = value
            end
            ## 
            ## Gets the networkEscapeHatchAllowed property value. Indicates whether or not the device will allow connecting to a temporary network connection at boot time.
            ## @return a boolean
            ## 
            def network_escape_hatch_allowed
                return @network_escape_hatch_allowed
            end
            ## 
            ## Sets the networkEscapeHatchAllowed property value. Indicates whether or not the device will allow connecting to a temporary network connection at boot time.
            ## @param value Value to set for the networkEscapeHatchAllowed property.
            ## @return a void
            ## 
            def network_escape_hatch_allowed=(value)
                @network_escape_hatch_allowed = value
            end
            ## 
            ## Gets the nfcBlockOutgoingBeam property value. Indicates whether or not to block NFC outgoing beam.
            ## @return a boolean
            ## 
            def nfc_block_outgoing_beam
                return @nfc_block_outgoing_beam
            end
            ## 
            ## Sets the nfcBlockOutgoingBeam property value. Indicates whether or not to block NFC outgoing beam.
            ## @param value Value to set for the nfcBlockOutgoingBeam property.
            ## @return a void
            ## 
            def nfc_block_outgoing_beam=(value)
                @nfc_block_outgoing_beam = value
            end
            ## 
            ## Gets the passwordBlockKeyguard property value. Indicates whether or not the keyguard is disabled.
            ## @return a boolean
            ## 
            def password_block_keyguard
                return @password_block_keyguard
            end
            ## 
            ## Sets the passwordBlockKeyguard property value. Indicates whether or not the keyguard is disabled.
            ## @param value Value to set for the passwordBlockKeyguard property.
            ## @return a void
            ## 
            def password_block_keyguard=(value)
                @password_block_keyguard = value
            end
            ## 
            ## Gets the passwordBlockKeyguardFeatures property value. List of device keyguard features to block. This collection can contain a maximum of 11 elements.
            ## @return a android_keyguard_feature
            ## 
            def password_block_keyguard_features
                return @password_block_keyguard_features
            end
            ## 
            ## Sets the passwordBlockKeyguardFeatures property value. List of device keyguard features to block. This collection can contain a maximum of 11 elements.
            ## @param value Value to set for the passwordBlockKeyguardFeatures property.
            ## @return a void
            ## 
            def password_block_keyguard_features=(value)
                @password_block_keyguard_features = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Indicates the amount of time that a password can be set for before it expires and a new password will be required. Valid values 1 to 365
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Indicates the amount of time that a password can be set for before it expires and a new password will be required. Valid values 1 to 365
            ## @param value Value to set for the passwordExpirationDays property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. Indicates the minimum length of the password required on the device. Valid values 4 to 16
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Indicates the minimum length of the password required on the device. Valid values 4 to 16
            ## @param value Value to set for the passwordMinimumLength property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_letter_characters
                return @password_minimum_letter_characters
            end
            ## 
            ## Sets the passwordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumLetterCharacters property.
            ## @return a void
            ## 
            def password_minimum_letter_characters=(value)
                @password_minimum_letter_characters = value
            end
            ## 
            ## Gets the passwordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_lower_case_characters
                return @password_minimum_lower_case_characters
            end
            ## 
            ## Sets the passwordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower case characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumLowerCaseCharacters property.
            ## @return a void
            ## 
            def password_minimum_lower_case_characters=(value)
                @password_minimum_lower_case_characters = value
            end
            ## 
            ## Gets the passwordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_non_letter_characters
                return @password_minimum_non_letter_characters
            end
            ## 
            ## Sets the passwordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumNonLetterCharacters property.
            ## @return a void
            ## 
            def password_minimum_non_letter_characters=(value)
                @password_minimum_non_letter_characters = value
            end
            ## 
            ## Gets the passwordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_numeric_characters
                return @password_minimum_numeric_characters
            end
            ## 
            ## Sets the passwordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumNumericCharacters property.
            ## @return a void
            ## 
            def password_minimum_numeric_characters=(value)
                @password_minimum_numeric_characters = value
            end
            ## 
            ## Gets the passwordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_symbol_characters
                return @password_minimum_symbol_characters
            end
            ## 
            ## Sets the passwordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumSymbolCharacters property.
            ## @return a void
            ## 
            def password_minimum_symbol_characters=(value)
                @password_minimum_symbol_characters = value
            end
            ## 
            ## Gets the passwordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
            ## @return a integer
            ## 
            def password_minimum_upper_case_characters
                return @password_minimum_upper_case_characters
            end
            ## 
            ## Sets the passwordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper case letter characters required for device password. Valid values 1 to 16
            ## @param value Value to set for the passwordMinimumUpperCaseCharacters property.
            ## @return a void
            ## 
            def password_minimum_upper_case_characters=(value)
                @password_minimum_upper_case_characters = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity before the screen times out.
            ## @param value Value to set for the passwordMinutesOfInactivityBeforeScreenTimeout property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_screen_timeout=(value)
                @password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passwordPreviousPasswordCountToBlock property value. Indicates the length of password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            ## @return a integer
            ## 
            def password_previous_password_count_to_block
                return @password_previous_password_count_to_block
            end
            ## 
            ## Sets the passwordPreviousPasswordCountToBlock property value. Indicates the length of password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            ## @param value Value to set for the passwordPreviousPasswordCountToBlock property.
            ## @return a void
            ## 
            def password_previous_password_count_to_block=(value)
                @password_previous_password_count_to_block = value
            end
            ## 
            ## Gets the passwordRequireUnlock property value. Indicates the timeout period after which a device must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            ## @return a android_device_owner_general_device_configuration_password_require_unlock
            ## 
            def password_require_unlock
                return @password_require_unlock
            end
            ## 
            ## Sets the passwordRequireUnlock property value. Indicates the timeout period after which a device must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            ## @param value Value to set for the passwordRequireUnlock property.
            ## @return a void
            ## 
            def password_require_unlock=(value)
                @password_require_unlock = value
            end
            ## 
            ## Gets the passwordRequiredType property value. Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @return a android_device_owner_general_device_configuration_password_required_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Indicates the minimum password quality required on the device. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @param value Value to set for the passwordRequiredType property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
            ## @return a integer
            ## 
            def password_sign_in_failure_count_before_factory_reset
                return @password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect password before the device is wiped. Valid values 4 to 11
            ## @param value Value to set for the passwordSignInFailureCountBeforeFactoryReset property.
            ## @return a void
            ## 
            def password_sign_in_failure_count_before_factory_reset=(value)
                @password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Gets the personalProfileAppsAllowInstallFromUnknownSources property value. Indicates whether the user can install apps from unknown sources on the personal profile.
            ## @return a boolean
            ## 
            def personal_profile_apps_allow_install_from_unknown_sources
                return @personal_profile_apps_allow_install_from_unknown_sources
            end
            ## 
            ## Sets the personalProfileAppsAllowInstallFromUnknownSources property value. Indicates whether the user can install apps from unknown sources on the personal profile.
            ## @param value Value to set for the personalProfileAppsAllowInstallFromUnknownSources property.
            ## @return a void
            ## 
            def personal_profile_apps_allow_install_from_unknown_sources=(value)
                @personal_profile_apps_allow_install_from_unknown_sources = value
            end
            ## 
            ## Gets the personalProfileCameraBlocked property value. Indicates whether to disable the use of the camera on the personal profile.
            ## @return a boolean
            ## 
            def personal_profile_camera_blocked
                return @personal_profile_camera_blocked
            end
            ## 
            ## Sets the personalProfileCameraBlocked property value. Indicates whether to disable the use of the camera on the personal profile.
            ## @param value Value to set for the personalProfileCameraBlocked property.
            ## @return a void
            ## 
            def personal_profile_camera_blocked=(value)
                @personal_profile_camera_blocked = value
            end
            ## 
            ## Gets the personalProfilePersonalApplications property value. Policy applied to applications in the personal profile. This collection can contain a maximum of 500 elements.
            ## @return a app_list_item
            ## 
            def personal_profile_personal_applications
                return @personal_profile_personal_applications
            end
            ## 
            ## Sets the personalProfilePersonalApplications property value. Policy applied to applications in the personal profile. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the personalProfilePersonalApplications property.
            ## @return a void
            ## 
            def personal_profile_personal_applications=(value)
                @personal_profile_personal_applications = value
            end
            ## 
            ## Gets the personalProfilePlayStoreMode property value. Used together with PersonalProfilePersonalApplications to control how apps in the personal profile are allowed or blocked. Possible values are: notConfigured, blockedApps, allowedApps.
            ## @return a android_device_owner_general_device_configuration_personal_profile_play_store_mode
            ## 
            def personal_profile_play_store_mode
                return @personal_profile_play_store_mode
            end
            ## 
            ## Sets the personalProfilePlayStoreMode property value. Used together with PersonalProfilePersonalApplications to control how apps in the personal profile are allowed or blocked. Possible values are: notConfigured, blockedApps, allowedApps.
            ## @param value Value to set for the personalProfilePlayStoreMode property.
            ## @return a void
            ## 
            def personal_profile_play_store_mode=(value)
                @personal_profile_play_store_mode = value
            end
            ## 
            ## Gets the personalProfileScreenCaptureBlocked property value. Indicates whether to disable the capability to take screenshots on the personal profile.
            ## @return a boolean
            ## 
            def personal_profile_screen_capture_blocked
                return @personal_profile_screen_capture_blocked
            end
            ## 
            ## Sets the personalProfileScreenCaptureBlocked property value. Indicates whether to disable the capability to take screenshots on the personal profile.
            ## @param value Value to set for the personalProfileScreenCaptureBlocked property.
            ## @return a void
            ## 
            def personal_profile_screen_capture_blocked=(value)
                @personal_profile_screen_capture_blocked = value
            end
            ## 
            ## Gets the playStoreMode property value. Indicates the Play Store mode of the device. Possible values are: notConfigured, allowList, blockList.
            ## @return a android_device_owner_general_device_configuration_play_store_mode
            ## 
            def play_store_mode
                return @play_store_mode
            end
            ## 
            ## Sets the playStoreMode property value. Indicates the Play Store mode of the device. Possible values are: notConfigured, allowList, blockList.
            ## @param value Value to set for the playStoreMode property.
            ## @return a void
            ## 
            def play_store_mode=(value)
                @play_store_mode = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether or not to disable the capability to take screenshots.
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether or not to disable the capability to take screenshots.
            ## @param value Value to set for the screenCaptureBlocked property.
            ## @return a void
            ## 
            def screen_capture_blocked=(value)
                @screen_capture_blocked = value
            end
            ## 
            ## Gets the securityCommonCriteriaModeEnabled property value. Represents the security common criteria mode enabled provided to users when they attempt to modify managed settings on their device.
            ## @return a boolean
            ## 
            def security_common_criteria_mode_enabled
                return @security_common_criteria_mode_enabled
            end
            ## 
            ## Sets the securityCommonCriteriaModeEnabled property value. Represents the security common criteria mode enabled provided to users when they attempt to modify managed settings on their device.
            ## @param value Value to set for the securityCommonCriteriaModeEnabled property.
            ## @return a void
            ## 
            def security_common_criteria_mode_enabled=(value)
                @security_common_criteria_mode_enabled = value
            end
            ## 
            ## Gets the securityDeveloperSettingsEnabled property value. Indicates whether or not the user is allowed to access developer settings like developer options and safe boot on the device.
            ## @return a boolean
            ## 
            def security_developer_settings_enabled
                return @security_developer_settings_enabled
            end
            ## 
            ## Sets the securityDeveloperSettingsEnabled property value. Indicates whether or not the user is allowed to access developer settings like developer options and safe boot on the device.
            ## @param value Value to set for the securityDeveloperSettingsEnabled property.
            ## @return a void
            ## 
            def security_developer_settings_enabled=(value)
                @security_developer_settings_enabled = value
            end
            ## 
            ## Gets the securityRequireVerifyApps property value. Indicates whether or not verify apps is required.
            ## @return a boolean
            ## 
            def security_require_verify_apps
                return @security_require_verify_apps
            end
            ## 
            ## Sets the securityRequireVerifyApps property value. Indicates whether or not verify apps is required.
            ## @param value Value to set for the securityRequireVerifyApps property.
            ## @return a void
            ## 
            def security_require_verify_apps=(value)
                @security_require_verify_apps = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accountsBlockModification", @accounts_block_modification)
                writer.write_collection_of_object_values("androidDeviceOwnerDelegatedScopeAppSettings", @android_device_owner_delegated_scope_app_settings)
                writer.write_boolean_value("appsAllowInstallFromUnknownSources", @apps_allow_install_from_unknown_sources)
                writer.write_enum_value("appsAutoUpdatePolicy", @apps_auto_update_policy)
                writer.write_enum_value("appsDefaultPermissionPolicy", @apps_default_permission_policy)
                writer.write_boolean_value("appsRecommendSkippingFirstUseHints", @apps_recommend_skipping_first_use_hints)
                writer.write_collection_of_object_values("azureAdSharedDeviceDataClearApps", @azure_ad_shared_device_data_clear_apps)
                writer.write_boolean_value("bluetoothBlockConfiguration", @bluetooth_block_configuration)
                writer.write_boolean_value("bluetoothBlockContactSharing", @bluetooth_block_contact_sharing)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("cellularBlockWiFiTethering", @cellular_block_wi_fi_tethering)
                writer.write_boolean_value("certificateCredentialConfigurationDisabled", @certificate_credential_configuration_disabled)
                writer.write_boolean_value("crossProfilePoliciesAllowCopyPaste", @cross_profile_policies_allow_copy_paste)
                writer.write_enum_value("crossProfilePoliciesAllowDataSharing", @cross_profile_policies_allow_data_sharing)
                writer.write_boolean_value("crossProfilePoliciesShowWorkContactsInPersonalProfile", @cross_profile_policies_show_work_contacts_in_personal_profile)
                writer.write_boolean_value("dataRoamingBlocked", @data_roaming_blocked)
                writer.write_boolean_value("dateTimeConfigurationBlocked", @date_time_configuration_blocked)
                writer.write_object_value("detailedHelpText", @detailed_help_text)
                writer.write_enum_value("deviceLocationMode", @device_location_mode)
                writer.write_object_value("deviceOwnerLockScreenMessage", @device_owner_lock_screen_message)
                writer.write_enum_value("enrollmentProfile", @enrollment_profile)
                writer.write_boolean_value("factoryResetBlocked", @factory_reset_blocked)
                writer.write_collection_of_primitive_values("factoryResetDeviceAdministratorEmails", @factory_reset_device_administrator_emails)
                writer.write_object_value("globalProxy", @global_proxy)
                writer.write_boolean_value("googleAccountsBlocked", @google_accounts_blocked)
                writer.write_boolean_value("kioskCustomizationDeviceSettingsBlocked", @kiosk_customization_device_settings_blocked)
                writer.write_boolean_value("kioskCustomizationPowerButtonActionsBlocked", @kiosk_customization_power_button_actions_blocked)
                writer.write_enum_value("kioskCustomizationStatusBar", @kiosk_customization_status_bar)
                writer.write_boolean_value("kioskCustomizationSystemErrorWarnings", @kiosk_customization_system_error_warnings)
                writer.write_enum_value("kioskCustomizationSystemNavigation", @kiosk_customization_system_navigation)
                writer.write_boolean_value("kioskModeAppOrderEnabled", @kiosk_mode_app_order_enabled)
                writer.write_collection_of_object_values("kioskModeAppPositions", @kiosk_mode_app_positions)
                writer.write_collection_of_object_values("kioskModeApps", @kiosk_mode_apps)
                writer.write_boolean_value("kioskModeAppsInFolderOrderedByName", @kiosk_mode_apps_in_folder_ordered_by_name)
                writer.write_boolean_value("kioskModeBluetoothConfigurationEnabled", @kiosk_mode_bluetooth_configuration_enabled)
                writer.write_boolean_value("kioskModeDebugMenuEasyAccessEnabled", @kiosk_mode_debug_menu_easy_access_enabled)
                writer.write_string_value("kioskModeExitCode", @kiosk_mode_exit_code)
                writer.write_boolean_value("kioskModeFlashlightConfigurationEnabled", @kiosk_mode_flashlight_configuration_enabled)
                writer.write_enum_value("kioskModeFolderIcon", @kiosk_mode_folder_icon)
                writer.write_number_value("kioskModeGridHeight", @kiosk_mode_grid_height)
                writer.write_number_value("kioskModeGridWidth", @kiosk_mode_grid_width)
                writer.write_enum_value("kioskModeIconSize", @kiosk_mode_icon_size)
                writer.write_boolean_value("kioskModeLockHomeScreen", @kiosk_mode_lock_home_screen)
                writer.write_collection_of_object_values("kioskModeManagedFolders", @kiosk_mode_managed_folders)
                writer.write_boolean_value("kioskModeManagedHomeScreenAutoSignout", @kiosk_mode_managed_home_screen_auto_signout)
                writer.write_number_value("kioskModeManagedHomeScreenInactiveSignOutDelayInSeconds", @kiosk_mode_managed_home_screen_inactive_sign_out_delay_in_seconds)
                writer.write_number_value("kioskModeManagedHomeScreenInactiveSignOutNoticeInSeconds", @kiosk_mode_managed_home_screen_inactive_sign_out_notice_in_seconds)
                writer.write_enum_value("kioskModeManagedHomeScreenPinComplexity", @kiosk_mode_managed_home_screen_pin_complexity)
                writer.write_boolean_value("kioskModeManagedHomeScreenPinRequired", @kiosk_mode_managed_home_screen_pin_required)
                writer.write_boolean_value("kioskModeManagedHomeScreenPinRequiredToResume", @kiosk_mode_managed_home_screen_pin_required_to_resume)
                writer.write_string_value("kioskModeManagedHomeScreenSignInBackground", @kiosk_mode_managed_home_screen_sign_in_background)
                writer.write_string_value("kioskModeManagedHomeScreenSignInBrandingLogo", @kiosk_mode_managed_home_screen_sign_in_branding_logo)
                writer.write_boolean_value("kioskModeManagedHomeScreenSignInEnabled", @kiosk_mode_managed_home_screen_sign_in_enabled)
                writer.write_boolean_value("kioskModeManagedSettingsEntryDisabled", @kiosk_mode_managed_settings_entry_disabled)
                writer.write_boolean_value("kioskModeMediaVolumeConfigurationEnabled", @kiosk_mode_media_volume_configuration_enabled)
                writer.write_enum_value("kioskModeScreenOrientation", @kiosk_mode_screen_orientation)
                writer.write_boolean_value("kioskModeScreenSaverConfigurationEnabled", @kiosk_mode_screen_saver_configuration_enabled)
                writer.write_boolean_value("kioskModeScreenSaverDetectMediaDisabled", @kiosk_mode_screen_saver_detect_media_disabled)
                writer.write_number_value("kioskModeScreenSaverDisplayTimeInSeconds", @kiosk_mode_screen_saver_display_time_in_seconds)
                writer.write_string_value("kioskModeScreenSaverImageUrl", @kiosk_mode_screen_saver_image_url)
                writer.write_number_value("kioskModeScreenSaverStartDelayInSeconds", @kiosk_mode_screen_saver_start_delay_in_seconds)
                writer.write_boolean_value("kioskModeShowAppNotificationBadge", @kiosk_mode_show_app_notification_badge)
                writer.write_boolean_value("kioskModeShowDeviceInfo", @kiosk_mode_show_device_info)
                writer.write_enum_value("kioskModeUseManagedHomeScreenApp", @kiosk_mode_use_managed_home_screen_app)
                writer.write_boolean_value("kioskModeVirtualHomeButtonEnabled", @kiosk_mode_virtual_home_button_enabled)
                writer.write_enum_value("kioskModeVirtualHomeButtonType", @kiosk_mode_virtual_home_button_type)
                writer.write_string_value("kioskModeWallpaperUrl", @kiosk_mode_wallpaper_url)
                writer.write_boolean_value("kioskModeWiFiConfigurationEnabled", @kiosk_mode_wi_fi_configuration_enabled)
                writer.write_collection_of_primitive_values("kioskModeWifiAllowedSsids", @kiosk_mode_wifi_allowed_ssids)
                writer.write_boolean_value("locateDeviceLostModeEnabled", @locate_device_lost_mode_enabled)
                writer.write_boolean_value("locateDeviceUserlessDisabled", @locate_device_userless_disabled)
                writer.write_boolean_value("microphoneForceMute", @microphone_force_mute)
                writer.write_boolean_value("microsoftLauncherConfigurationEnabled", @microsoft_launcher_configuration_enabled)
                writer.write_boolean_value("microsoftLauncherCustomWallpaperAllowUserModification", @microsoft_launcher_custom_wallpaper_allow_user_modification)
                writer.write_boolean_value("microsoftLauncherCustomWallpaperEnabled", @microsoft_launcher_custom_wallpaper_enabled)
                writer.write_string_value("microsoftLauncherCustomWallpaperImageUrl", @microsoft_launcher_custom_wallpaper_image_url)
                writer.write_boolean_value("microsoftLauncherDockPresenceAllowUserModification", @microsoft_launcher_dock_presence_allow_user_modification)
                writer.write_enum_value("microsoftLauncherDockPresenceConfiguration", @microsoft_launcher_dock_presence_configuration)
                writer.write_boolean_value("microsoftLauncherFeedAllowUserModification", @microsoft_launcher_feed_allow_user_modification)
                writer.write_boolean_value("microsoftLauncherFeedEnabled", @microsoft_launcher_feed_enabled)
                writer.write_enum_value("microsoftLauncherSearchBarPlacementConfiguration", @microsoft_launcher_search_bar_placement_configuration)
                writer.write_boolean_value("networkEscapeHatchAllowed", @network_escape_hatch_allowed)
                writer.write_boolean_value("nfcBlockOutgoingBeam", @nfc_block_outgoing_beam)
                writer.write_boolean_value("passwordBlockKeyguard", @password_block_keyguard)
                writer.write_collection_of_object_values("passwordBlockKeyguardFeatures", @password_block_keyguard_features)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinimumLetterCharacters", @password_minimum_letter_characters)
                writer.write_number_value("passwordMinimumLowerCaseCharacters", @password_minimum_lower_case_characters)
                writer.write_number_value("passwordMinimumNonLetterCharacters", @password_minimum_non_letter_characters)
                writer.write_number_value("passwordMinimumNumericCharacters", @password_minimum_numeric_characters)
                writer.write_number_value("passwordMinimumSymbolCharacters", @password_minimum_symbol_characters)
                writer.write_number_value("passwordMinimumUpperCaseCharacters", @password_minimum_upper_case_characters)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordCountToBlock", @password_previous_password_count_to_block)
                writer.write_enum_value("passwordRequireUnlock", @password_require_unlock)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_boolean_value("personalProfileAppsAllowInstallFromUnknownSources", @personal_profile_apps_allow_install_from_unknown_sources)
                writer.write_boolean_value("personalProfileCameraBlocked", @personal_profile_camera_blocked)
                writer.write_collection_of_object_values("personalProfilePersonalApplications", @personal_profile_personal_applications)
                writer.write_enum_value("personalProfilePlayStoreMode", @personal_profile_play_store_mode)
                writer.write_boolean_value("personalProfileScreenCaptureBlocked", @personal_profile_screen_capture_blocked)
                writer.write_enum_value("playStoreMode", @play_store_mode)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("securityCommonCriteriaModeEnabled", @security_common_criteria_mode_enabled)
                writer.write_boolean_value("securityDeveloperSettingsEnabled", @security_developer_settings_enabled)
                writer.write_boolean_value("securityRequireVerifyApps", @security_require_verify_apps)
                writer.write_boolean_value("shareDeviceLocationDisabled", @share_device_location_disabled)
                writer.write_object_value("shortHelpText", @short_help_text)
                writer.write_boolean_value("statusBarBlocked", @status_bar_blocked)
                writer.write_collection_of_object_values("stayOnModes", @stay_on_modes)
                writer.write_boolean_value("storageAllowUsb", @storage_allow_usb)
                writer.write_boolean_value("storageBlockExternalMedia", @storage_block_external_media)
                writer.write_boolean_value("storageBlockUsbFileTransfer", @storage_block_usb_file_transfer)
                writer.write_collection_of_object_values("systemUpdateFreezePeriods", @system_update_freeze_periods)
                writer.write_enum_value("systemUpdateInstallType", @system_update_install_type)
                writer.write_number_value("systemUpdateWindowEndMinutesAfterMidnight", @system_update_window_end_minutes_after_midnight)
                writer.write_number_value("systemUpdateWindowStartMinutesAfterMidnight", @system_update_window_start_minutes_after_midnight)
                writer.write_boolean_value("systemWindowsBlocked", @system_windows_blocked)
                writer.write_boolean_value("usersBlockAdd", @users_block_add)
                writer.write_boolean_value("usersBlockRemove", @users_block_remove)
                writer.write_boolean_value("volumeBlockAdjustment", @volume_block_adjustment)
                writer.write_boolean_value("vpnAlwaysOnLockdownMode", @vpn_always_on_lockdown_mode)
                writer.write_string_value("vpnAlwaysOnPackageIdentifier", @vpn_always_on_package_identifier)
                writer.write_boolean_value("wifiBlockEditConfigurations", @wifi_block_edit_configurations)
                writer.write_boolean_value("wifiBlockEditPolicyDefinedConfigurations", @wifi_block_edit_policy_defined_configurations)
                writer.write_number_value("workProfilePasswordExpirationDays", @work_profile_password_expiration_days)
                writer.write_number_value("workProfilePasswordMinimumLength", @work_profile_password_minimum_length)
                writer.write_number_value("workProfilePasswordMinimumLetterCharacters", @work_profile_password_minimum_letter_characters)
                writer.write_number_value("workProfilePasswordMinimumLowerCaseCharacters", @work_profile_password_minimum_lower_case_characters)
                writer.write_number_value("workProfilePasswordMinimumNonLetterCharacters", @work_profile_password_minimum_non_letter_characters)
                writer.write_number_value("workProfilePasswordMinimumNumericCharacters", @work_profile_password_minimum_numeric_characters)
                writer.write_number_value("workProfilePasswordMinimumSymbolCharacters", @work_profile_password_minimum_symbol_characters)
                writer.write_number_value("workProfilePasswordMinimumUpperCaseCharacters", @work_profile_password_minimum_upper_case_characters)
                writer.write_number_value("workProfilePasswordPreviousPasswordCountToBlock", @work_profile_password_previous_password_count_to_block)
                writer.write_enum_value("workProfilePasswordRequireUnlock", @work_profile_password_require_unlock)
                writer.write_enum_value("workProfilePasswordRequiredType", @work_profile_password_required_type)
                writer.write_number_value("workProfilePasswordSignInFailureCountBeforeFactoryReset", @work_profile_password_sign_in_failure_count_before_factory_reset)
            end
            ## 
            ## Gets the shareDeviceLocationDisabled property value. Indicates whether or not location sharing is disabled for fully managed devices (COBO), and corporate owned devices with a work profile (COPE)
            ## @return a boolean
            ## 
            def share_device_location_disabled
                return @share_device_location_disabled
            end
            ## 
            ## Sets the shareDeviceLocationDisabled property value. Indicates whether or not location sharing is disabled for fully managed devices (COBO), and corporate owned devices with a work profile (COPE)
            ## @param value Value to set for the shareDeviceLocationDisabled property.
            ## @return a void
            ## 
            def share_device_location_disabled=(value)
                @share_device_location_disabled = value
            end
            ## 
            ## Gets the shortHelpText property value. Represents the customized short help text provided to users when they attempt to modify managed settings on their device.
            ## @return a android_device_owner_user_facing_message
            ## 
            def short_help_text
                return @short_help_text
            end
            ## 
            ## Sets the shortHelpText property value. Represents the customized short help text provided to users when they attempt to modify managed settings on their device.
            ## @param value Value to set for the shortHelpText property.
            ## @return a void
            ## 
            def short_help_text=(value)
                @short_help_text = value
            end
            ## 
            ## Gets the statusBarBlocked property value. Indicates whether or the status bar is disabled, including notifications, quick settings and other screen overlays.
            ## @return a boolean
            ## 
            def status_bar_blocked
                return @status_bar_blocked
            end
            ## 
            ## Sets the statusBarBlocked property value. Indicates whether or the status bar is disabled, including notifications, quick settings and other screen overlays.
            ## @param value Value to set for the statusBarBlocked property.
            ## @return a void
            ## 
            def status_bar_blocked=(value)
                @status_bar_blocked = value
            end
            ## 
            ## Gets the stayOnModes property value. List of modes in which the device's display will stay powered-on. This collection can contain a maximum of 4 elements.
            ## @return a android_device_owner_battery_plugged_mode
            ## 
            def stay_on_modes
                return @stay_on_modes
            end
            ## 
            ## Sets the stayOnModes property value. List of modes in which the device's display will stay powered-on. This collection can contain a maximum of 4 elements.
            ## @param value Value to set for the stayOnModes property.
            ## @return a void
            ## 
            def stay_on_modes=(value)
                @stay_on_modes = value
            end
            ## 
            ## Gets the storageAllowUsb property value. Indicates whether or not to allow USB mass storage.
            ## @return a boolean
            ## 
            def storage_allow_usb
                return @storage_allow_usb
            end
            ## 
            ## Sets the storageAllowUsb property value. Indicates whether or not to allow USB mass storage.
            ## @param value Value to set for the storageAllowUsb property.
            ## @return a void
            ## 
            def storage_allow_usb=(value)
                @storage_allow_usb = value
            end
            ## 
            ## Gets the storageBlockExternalMedia property value. Indicates whether or not to block external media.
            ## @return a boolean
            ## 
            def storage_block_external_media
                return @storage_block_external_media
            end
            ## 
            ## Sets the storageBlockExternalMedia property value. Indicates whether or not to block external media.
            ## @param value Value to set for the storageBlockExternalMedia property.
            ## @return a void
            ## 
            def storage_block_external_media=(value)
                @storage_block_external_media = value
            end
            ## 
            ## Gets the storageBlockUsbFileTransfer property value. Indicates whether or not to block USB file transfer.
            ## @return a boolean
            ## 
            def storage_block_usb_file_transfer
                return @storage_block_usb_file_transfer
            end
            ## 
            ## Sets the storageBlockUsbFileTransfer property value. Indicates whether or not to block USB file transfer.
            ## @param value Value to set for the storageBlockUsbFileTransfer property.
            ## @return a void
            ## 
            def storage_block_usb_file_transfer=(value)
                @storage_block_usb_file_transfer = value
            end
            ## 
            ## Gets the systemUpdateFreezePeriods property value. Indicates the annually repeating time periods during which system updates are postponed. This collection can contain a maximum of 500 elements.
            ## @return a android_device_owner_system_update_freeze_period
            ## 
            def system_update_freeze_periods
                return @system_update_freeze_periods
            end
            ## 
            ## Sets the systemUpdateFreezePeriods property value. Indicates the annually repeating time periods during which system updates are postponed. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the systemUpdateFreezePeriods property.
            ## @return a void
            ## 
            def system_update_freeze_periods=(value)
                @system_update_freeze_periods = value
            end
            ## 
            ## Gets the systemUpdateInstallType property value. The type of system update configuration. Possible values are: deviceDefault, postpone, windowed, automatic.
            ## @return a android_device_owner_general_device_configuration_system_update_install_type
            ## 
            def system_update_install_type
                return @system_update_install_type
            end
            ## 
            ## Sets the systemUpdateInstallType property value. The type of system update configuration. Possible values are: deviceDefault, postpone, windowed, automatic.
            ## @param value Value to set for the systemUpdateInstallType property.
            ## @return a void
            ## 
            def system_update_install_type=(value)
                @system_update_install_type = value
            end
            ## 
            ## Gets the systemUpdateWindowEndMinutesAfterMidnight property value. Indicates the number of minutes after midnight that the system update window ends. Valid values 0 to 1440
            ## @return a integer
            ## 
            def system_update_window_end_minutes_after_midnight
                return @system_update_window_end_minutes_after_midnight
            end
            ## 
            ## Sets the systemUpdateWindowEndMinutesAfterMidnight property value. Indicates the number of minutes after midnight that the system update window ends. Valid values 0 to 1440
            ## @param value Value to set for the systemUpdateWindowEndMinutesAfterMidnight property.
            ## @return a void
            ## 
            def system_update_window_end_minutes_after_midnight=(value)
                @system_update_window_end_minutes_after_midnight = value
            end
            ## 
            ## Gets the systemUpdateWindowStartMinutesAfterMidnight property value. Indicates the number of minutes after midnight that the system update window starts. Valid values 0 to 1440
            ## @return a integer
            ## 
            def system_update_window_start_minutes_after_midnight
                return @system_update_window_start_minutes_after_midnight
            end
            ## 
            ## Sets the systemUpdateWindowStartMinutesAfterMidnight property value. Indicates the number of minutes after midnight that the system update window starts. Valid values 0 to 1440
            ## @param value Value to set for the systemUpdateWindowStartMinutesAfterMidnight property.
            ## @return a void
            ## 
            def system_update_window_start_minutes_after_midnight=(value)
                @system_update_window_start_minutes_after_midnight = value
            end
            ## 
            ## Gets the systemWindowsBlocked property value. Whether or not to block Android system prompt windows, like toasts, phone activities, and system alerts.
            ## @return a boolean
            ## 
            def system_windows_blocked
                return @system_windows_blocked
            end
            ## 
            ## Sets the systemWindowsBlocked property value. Whether or not to block Android system prompt windows, like toasts, phone activities, and system alerts.
            ## @param value Value to set for the systemWindowsBlocked property.
            ## @return a void
            ## 
            def system_windows_blocked=(value)
                @system_windows_blocked = value
            end
            ## 
            ## Gets the usersBlockAdd property value. Indicates whether or not adding users and profiles is disabled.
            ## @return a boolean
            ## 
            def users_block_add
                return @users_block_add
            end
            ## 
            ## Sets the usersBlockAdd property value. Indicates whether or not adding users and profiles is disabled.
            ## @param value Value to set for the usersBlockAdd property.
            ## @return a void
            ## 
            def users_block_add=(value)
                @users_block_add = value
            end
            ## 
            ## Gets the usersBlockRemove property value. Indicates whether or not to disable removing other users from the device.
            ## @return a boolean
            ## 
            def users_block_remove
                return @users_block_remove
            end
            ## 
            ## Sets the usersBlockRemove property value. Indicates whether or not to disable removing other users from the device.
            ## @param value Value to set for the usersBlockRemove property.
            ## @return a void
            ## 
            def users_block_remove=(value)
                @users_block_remove = value
            end
            ## 
            ## Gets the volumeBlockAdjustment property value. Indicates whether or not adjusting the master volume is disabled.
            ## @return a boolean
            ## 
            def volume_block_adjustment
                return @volume_block_adjustment
            end
            ## 
            ## Sets the volumeBlockAdjustment property value. Indicates whether or not adjusting the master volume is disabled.
            ## @param value Value to set for the volumeBlockAdjustment property.
            ## @return a void
            ## 
            def volume_block_adjustment=(value)
                @volume_block_adjustment = value
            end
            ## 
            ## Gets the vpnAlwaysOnLockdownMode property value. If an always on VPN package name is specified, whether or not to lock network traffic when that VPN is disconnected.
            ## @return a boolean
            ## 
            def vpn_always_on_lockdown_mode
                return @vpn_always_on_lockdown_mode
            end
            ## 
            ## Sets the vpnAlwaysOnLockdownMode property value. If an always on VPN package name is specified, whether or not to lock network traffic when that VPN is disconnected.
            ## @param value Value to set for the vpnAlwaysOnLockdownMode property.
            ## @return a void
            ## 
            def vpn_always_on_lockdown_mode=(value)
                @vpn_always_on_lockdown_mode = value
            end
            ## 
            ## Gets the vpnAlwaysOnPackageIdentifier property value. Android app package name for app that will handle an always-on VPN connection.
            ## @return a string
            ## 
            def vpn_always_on_package_identifier
                return @vpn_always_on_package_identifier
            end
            ## 
            ## Sets the vpnAlwaysOnPackageIdentifier property value. Android app package name for app that will handle an always-on VPN connection.
            ## @param value Value to set for the vpnAlwaysOnPackageIdentifier property.
            ## @return a void
            ## 
            def vpn_always_on_package_identifier=(value)
                @vpn_always_on_package_identifier = value
            end
            ## 
            ## Gets the wifiBlockEditConfigurations property value. Indicates whether or not to block the user from editing the wifi connection settings.
            ## @return a boolean
            ## 
            def wifi_block_edit_configurations
                return @wifi_block_edit_configurations
            end
            ## 
            ## Sets the wifiBlockEditConfigurations property value. Indicates whether or not to block the user from editing the wifi connection settings.
            ## @param value Value to set for the wifiBlockEditConfigurations property.
            ## @return a void
            ## 
            def wifi_block_edit_configurations=(value)
                @wifi_block_edit_configurations = value
            end
            ## 
            ## Gets the wifiBlockEditPolicyDefinedConfigurations property value. Indicates whether or not to block the user from editing just the networks defined by the policy.
            ## @return a boolean
            ## 
            def wifi_block_edit_policy_defined_configurations
                return @wifi_block_edit_policy_defined_configurations
            end
            ## 
            ## Sets the wifiBlockEditPolicyDefinedConfigurations property value. Indicates whether or not to block the user from editing just the networks defined by the policy.
            ## @param value Value to set for the wifiBlockEditPolicyDefinedConfigurations property.
            ## @return a void
            ## 
            def wifi_block_edit_policy_defined_configurations=(value)
                @wifi_block_edit_policy_defined_configurations = value
            end
            ## 
            ## Gets the workProfilePasswordExpirationDays property value. Indicates the number of days that a work profile password can be set before it expires and a new password will be required. Valid values 1 to 365
            ## @return a integer
            ## 
            def work_profile_password_expiration_days
                return @work_profile_password_expiration_days
            end
            ## 
            ## Sets the workProfilePasswordExpirationDays property value. Indicates the number of days that a work profile password can be set before it expires and a new password will be required. Valid values 1 to 365
            ## @param value Value to set for the workProfilePasswordExpirationDays property.
            ## @return a void
            ## 
            def work_profile_password_expiration_days=(value)
                @work_profile_password_expiration_days = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumLength property value. Indicates the minimum length of the work profile password. Valid values 4 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_length
                return @work_profile_password_minimum_length
            end
            ## 
            ## Sets the workProfilePasswordMinimumLength property value. Indicates the minimum length of the work profile password. Valid values 4 to 16
            ## @param value Value to set for the workProfilePasswordMinimumLength property.
            ## @return a void
            ## 
            def work_profile_password_minimum_length=(value)
                @work_profile_password_minimum_length = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_letter_characters
                return @work_profile_password_minimum_letter_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumLetterCharacters property value. Indicates the minimum number of letter characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumLetterCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_letter_characters=(value)
                @work_profile_password_minimum_letter_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower-case characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_lower_case_characters
                return @work_profile_password_minimum_lower_case_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumLowerCaseCharacters property value. Indicates the minimum number of lower-case characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumLowerCaseCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_lower_case_characters=(value)
                @work_profile_password_minimum_lower_case_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_non_letter_characters
                return @work_profile_password_minimum_non_letter_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumNonLetterCharacters property value. Indicates the minimum number of non-letter characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumNonLetterCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_non_letter_characters=(value)
                @work_profile_password_minimum_non_letter_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_numeric_characters
                return @work_profile_password_minimum_numeric_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumNumericCharacters property value. Indicates the minimum number of numeric characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumNumericCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_numeric_characters=(value)
                @work_profile_password_minimum_numeric_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_symbol_characters
                return @work_profile_password_minimum_symbol_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumSymbolCharacters property value. Indicates the minimum number of symbol characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumSymbolCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_symbol_characters=(value)
                @work_profile_password_minimum_symbol_characters = value
            end
            ## 
            ## Gets the workProfilePasswordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper-case letter characters required for the work profile password. Valid values 1 to 16
            ## @return a integer
            ## 
            def work_profile_password_minimum_upper_case_characters
                return @work_profile_password_minimum_upper_case_characters
            end
            ## 
            ## Sets the workProfilePasswordMinimumUpperCaseCharacters property value. Indicates the minimum number of upper-case letter characters required for the work profile password. Valid values 1 to 16
            ## @param value Value to set for the workProfilePasswordMinimumUpperCaseCharacters property.
            ## @return a void
            ## 
            def work_profile_password_minimum_upper_case_characters=(value)
                @work_profile_password_minimum_upper_case_characters = value
            end
            ## 
            ## Gets the workProfilePasswordPreviousPasswordCountToBlock property value. Indicates the length of the work profile password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            ## @return a integer
            ## 
            def work_profile_password_previous_password_count_to_block
                return @work_profile_password_previous_password_count_to_block
            end
            ## 
            ## Sets the workProfilePasswordPreviousPasswordCountToBlock property value. Indicates the length of the work profile password history, where the user will not be able to enter a new password that is the same as any password in the history. Valid values 0 to 24
            ## @param value Value to set for the workProfilePasswordPreviousPasswordCountToBlock property.
            ## @return a void
            ## 
            def work_profile_password_previous_password_count_to_block=(value)
                @work_profile_password_previous_password_count_to_block = value
            end
            ## 
            ## Gets the workProfilePasswordRequireUnlock property value. Indicates the timeout period after which a work profile must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            ## @return a android_device_owner_general_device_configuration_work_profile_password_require_unlock
            ## 
            def work_profile_password_require_unlock
                return @work_profile_password_require_unlock
            end
            ## 
            ## Sets the workProfilePasswordRequireUnlock property value. Indicates the timeout period after which a work profile must be unlocked using a form of strong authentication. Possible values are: deviceDefault, daily, unkownFutureValue.
            ## @param value Value to set for the workProfilePasswordRequireUnlock property.
            ## @return a void
            ## 
            def work_profile_password_require_unlock=(value)
                @work_profile_password_require_unlock = value
            end
            ## 
            ## Gets the workProfilePasswordRequiredType property value. Indicates the minimum password quality required on the work profile password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @return a android_device_owner_general_device_configuration_work_profile_password_required_type
            ## 
            def work_profile_password_required_type
                return @work_profile_password_required_type
            end
            ## 
            ## Sets the workProfilePasswordRequiredType property value. Indicates the minimum password quality required on the work profile password. Possible values are: deviceDefault, required, numeric, numericComplex, alphabetic, alphanumeric, alphanumericWithSymbols, lowSecurityBiometric, customPassword.
            ## @param value Value to set for the workProfilePasswordRequiredType property.
            ## @return a void
            ## 
            def work_profile_password_required_type=(value)
                @work_profile_password_required_type = value
            end
            ## 
            ## Gets the workProfilePasswordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect work profile password before the device is wiped. Valid values 4 to 11
            ## @return a integer
            ## 
            def work_profile_password_sign_in_failure_count_before_factory_reset
                return @work_profile_password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the workProfilePasswordSignInFailureCountBeforeFactoryReset property value. Indicates the number of times a user can enter an incorrect work profile password before the device is wiped. Valid values 4 to 11
            ## @param value Value to set for the workProfilePasswordSignInFailureCountBeforeFactoryReset property.
            ## @return a void
            ## 
            def work_profile_password_sign_in_failure_count_before_factory_reset=(value)
                @work_profile_password_sign_in_failure_count_before_factory_reset = value
            end
        end
    end
end
