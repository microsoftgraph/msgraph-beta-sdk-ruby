require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Windows10GeneralConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            @accounts_block_adding_non_microsoft_account_email
            ## 
            # Possible values of a property
            @activate_apps_with_voice
            ## 
            # Indicates whether or not to block the user from selecting an AntiTheft mode preference (Windows 10 Mobile only).
            @anti_theft_mode_blocked
            ## 
            # This policy setting permits users to change installation options that typically are available only to system administrators.
            @app_management_m_s_i_allow_user_control_over_install
            ## 
            # This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.
            @app_management_m_s_i_always_install_with_elevated_privileges
            ## 
            # List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are to be launched after logon.​
            @app_management_package_family_names_to_launch_after_log_on
            ## 
            # State Management Setting.
            @apps_allow_trusted_apps_sideloading
            ## 
            # Indicates whether or not to disable the launch of all apps from Windows Store that came pre-installed or were downloaded.
            @apps_block_windows_store_originated_apps
            ## 
            # Allows secondary authentication devices to work with Windows.
            @authentication_allow_secondary_device
            ## 
            # Specifies the preferred domain among available domains in the Azure AD tenant.
            @authentication_preferred_azure_a_d_tenant_domain_name
            ## 
            # Possible values of a property
            @authentication_web_sign_in
            ## 
            # Specify a list of allowed Bluetooth services and profiles in hex formatted strings.
            @bluetooth_allowed_services
            ## 
            # Whether or not to Block the user from using bluetooth advertising.
            @bluetooth_block_advertising
            ## 
            # Whether or not to Block the user from using bluetooth discoverable mode.
            @bluetooth_block_discoverable_mode
            ## 
            # Whether or not to block specific bundled Bluetooth peripherals to automatically pair with the host device.
            @bluetooth_block_pre_pairing
            ## 
            # Whether or not to block the users from using Swift Pair and other proximity based scenarios.
            @bluetooth_block_prompted_proximal_connections
            ## 
            # Whether or not to Block the user from using bluetooth.
            @bluetooth_blocked
            ## 
            # Whether or not to Block the user from accessing the camera of the device.
            @camera_blocked
            ## 
            # Whether or not to Block the user from using data over cellular while roaming.
            @cellular_block_data_when_roaming
            ## 
            # Whether or not to Block the user from using VPN over cellular.
            @cellular_block_vpn
            ## 
            # Whether or not to Block the user from using VPN when roaming over cellular.
            @cellular_block_vpn_when_roaming
            ## 
            # Possible values of the ConfigurationUsage list.
            @cellular_data
            ## 
            # Whether or not to Block the user from doing manual root certificate installation.
            @certificates_block_manual_root_certificate_installation
            ## 
            # Specifies the time zone to be applied to the device. This is the standard Windows name for the target time zone.
            @configure_time_zone
            ## 
            # Whether or not to block Connected Devices Service which enables discovery and connection to other devices, remote messaging, remote app sessions and other cross-device experiences.
            @connected_devices_service_blocked
            ## 
            # Whether or not to Block the user from using copy paste.
            @copy_paste_blocked
            ## 
            # Whether or not to Block the user from using Cortana.
            @cortana_blocked
            ## 
            # Specify whether to allow or disallow the Federal Information Processing Standard (FIPS) policy.
            @cryptography_allow_fips_algorithm_policy
            ## 
            # This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows.
            @data_protection_block_direct_memory_access
            ## 
            # Whether or not to block end user access to Defender.
            @defender_block_end_user_access
            ## 
            # Allows or disallows Windows Defender On Access Protection functionality.
            @defender_block_on_access_protection
            ## 
            # Possible values of Cloud Block Level
            @defender_cloud_block_level
            ## 
            # Timeout extension for file scanning by the cloud. Valid values 0 to 50
            @defender_cloud_extended_timeout
            ## 
            # Timeout extension for file scanning by the cloud. Valid values 0 to 50
            @defender_cloud_extended_timeout_in_seconds
            ## 
            # Number of days before deleting quarantined malware. Valid values 0 to 90
            @defender_days_before_deleting_quarantined_malware
            ## 
            # Gets or sets Defender’s actions to take on detected Malware per threat level.
            @defender_detected_malware_actions
            ## 
            # When blocked, catch-up scans for scheduled full scans will be turned off.
            @defender_disable_catchup_full_scan
            ## 
            # When blocked, catch-up scans for scheduled quick scans will be turned off.
            @defender_disable_catchup_quick_scan
            ## 
            # File extensions to exclude from scans and real time protection.
            @defender_file_extensions_to_exclude
            ## 
            # Files and folder to exclude from scans and real time protection.
            @defender_files_and_folders_to_exclude
            ## 
            # Possible values for monitoring file activity.
            @defender_monitor_file_activity
            ## 
            # Gets or sets Defender’s action to take on Potentially Unwanted Application (PUA), which includes software with behaviors of ad-injection, software bundling, persistent solicitation for payment or subscription, etc. Defender alerts user when PUA is being downloaded or attempts to install itself. Added in Windows 10 for desktop. Possible values are: deviceDefault, block, audit.
            @defender_potentially_unwanted_app_action
            ## 
            # Possible values of Defender PUA Protection
            @defender_potentially_unwanted_app_action_setting
            ## 
            # Processes to exclude from scans and real time protection.
            @defender_processes_to_exclude
            ## 
            # Possible values for prompting user for samples submission.
            @defender_prompt_for_sample_submission
            ## 
            # Indicates whether or not to require behavior monitoring.
            @defender_require_behavior_monitoring
            ## 
            # Indicates whether or not to require cloud protection.
            @defender_require_cloud_protection
            ## 
            # Indicates whether or not to require network inspection system.
            @defender_require_network_inspection_system
            ## 
            # Indicates whether or not to require real time monitoring.
            @defender_require_real_time_monitoring
            ## 
            # Indicates whether or not to scan archive files.
            @defender_scan_archive_files
            ## 
            # Indicates whether or not to scan downloads.
            @defender_scan_downloads
            ## 
            # Indicates whether or not to scan incoming mail messages.
            @defender_scan_incoming_mail
            ## 
            # Indicates whether or not to scan mapped network drives during full scan.
            @defender_scan_mapped_network_drives_during_full_scan
            ## 
            # Max CPU usage percentage during scan. Valid values 0 to 100
            @defender_scan_max_cpu
            ## 
            # Indicates whether or not to scan files opened from a network folder.
            @defender_scan_network_files
            ## 
            # Indicates whether or not to scan removable drives during full scan.
            @defender_scan_removable_drives_during_full_scan
            ## 
            # Indicates whether or not to scan scripts loaded in Internet Explorer browser.
            @defender_scan_scripts_loaded_in_internet_explorer
            ## 
            # Possible values for system scan type.
            @defender_scan_type
            ## 
            # When enabled, low CPU priority will be used during scheduled scans.
            @defender_schedule_scan_enable_low_cpu_priority
            ## 
            # The time to perform a daily quick scan.
            @defender_scheduled_quick_scan_time
            ## 
            # The defender time for the system scan.
            @defender_scheduled_scan_time
            ## 
            # The signature update interval in hours. Specify 0 not to check. Valid values 0 to 24
            @defender_signature_update_interval_in_hours
            ## 
            # Checks for the user consent level in Windows Defender to send data. Possible values are: sendSafeSamplesAutomatically, alwaysPrompt, neverSend, sendAllSamplesAutomatically.
            @defender_submit_samples_consent_type
            ## 
            # Possible values for a weekly schedule.
            @defender_system_scan_schedule
            ## 
            # State Management Setting.
            @developer_unlock_setting
            ## 
            # Indicates whether or not to Block the user from resetting their phone.
            @device_management_block_factory_reset_on_mobile
            ## 
            # Indicates whether or not to Block the user from doing manual un-enrollment from device management.
            @device_management_block_manual_unenroll
            ## 
            # Allow the device to send diagnostic and usage telemetry data, such as Watson.
            @diagnostics_data_submission_mode
            ## 
            # List of legacy applications that have GDI DPI Scaling turned off.
            @display_app_list_with_gdi_d_p_i_scaling_turned_off
            ## 
            # List of legacy applications that have GDI DPI Scaling turned on.
            @display_app_list_with_gdi_d_p_i_scaling_turned_on
            ## 
            # Allow users to change Start pages on Edge. Use the EdgeHomepageUrls to specify the Start pages that the user would see by default when they open Edge.
            @edge_allow_start_pages_modification
            ## 
            # Indicates whether or not to prevent access to about flags on Edge browser.
            @edge_block_access_to_about_flags
            ## 
            # Block the address bar dropdown functionality in Microsoft Edge. Disable this settings to minimize network connections from Microsoft Edge to Microsoft services.
            @edge_block_address_bar_dropdown
            ## 
            # Indicates whether or not to block auto fill.
            @edge_block_autofill
            ## 
            # Block Microsoft compatibility list in Microsoft Edge. This list from Microsoft helps Edge properly display sites with known compatibility issues.
            @edge_block_compatibility_list
            ## 
            # Indicates whether or not to block developer tools in the Edge browser.
            @edge_block_developer_tools
            ## 
            # Indicates whether or not to Block the user from making changes to Favorites.
            @edge_block_edit_favorites
            ## 
            # Indicates whether or not to block extensions in the Edge browser.
            @edge_block_extensions
            ## 
            # Allow or prevent Edge from entering the full screen mode.
            @edge_block_full_screen_mode
            ## 
            # Indicates whether or not to block InPrivate browsing on corporate networks, in the Edge browser.
            @edge_block_in_private_browsing
            ## 
            # Indicates whether or not to Block the user from using JavaScript.
            @edge_block_java_script
            ## 
            # Block the collection of information by Microsoft for live tile creation when users pin a site to Start from Microsoft Edge.
            @edge_block_live_tile_data_collection
            ## 
            # Indicates whether or not to Block password manager.
            @edge_block_password_manager
            ## 
            # Indicates whether or not to block popups.
            @edge_block_popups
            ## 
            # Decide whether Microsoft Edge is prelaunched at Windows startup.
            @edge_block_prelaunch
            ## 
            # Configure Edge to allow or block printing.
            @edge_block_printing
            ## 
            # Configure Edge to allow browsing history to be saved or to never save browsing history.
            @edge_block_saving_history
            ## 
            # Indicates whether or not to block the user from adding new search engine or changing the default search engine.
            @edge_block_search_engine_customization
            ## 
            # Indicates whether or not to block the user from using the search suggestions in the address bar.
            @edge_block_search_suggestions
            ## 
            # Indicates whether or not to Block the user from sending the do not track header.
            @edge_block_sending_do_not_track_header
            ## 
            # Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer. Note: the name of this property is misleading; the property is obsolete, use EdgeSendIntranetTrafficToInternetExplorer instead.
            @edge_block_sending_intranet_traffic_to_internet_explorer
            ## 
            # Indicates whether the user can sideload extensions.
            @edge_block_sideloading_extensions
            ## 
            # Configure whether Edge preloads the new tab page at Windows startup.
            @edge_block_tab_preloading
            ## 
            # Configure to load a blank page in Edge instead of the default New tab page and prevent users from changing it.
            @edge_block_web_content_on_new_tab_page
            ## 
            # Indicates whether or not to Block the user from using the Edge browser.
            @edge_blocked
            ## 
            # Clear browsing data on exiting Microsoft Edge.
            @edge_clear_browsing_data_on_exit
            ## 
            # Possible values to specify which cookies are allowed in Microsoft Edge.
            @edge_cookie_policy
            ## 
            # Block the Microsoft web page that opens on the first use of Microsoft Edge. This policy allows enterprises, like those enrolled in zero emissions configurations, to block this page.
            @edge_disable_first_run_page
            ## 
            # Indicates the enterprise mode site list location. Could be a local file, local network or http location.
            @edge_enterprise_mode_site_list_location
            ## 
            # Generic visibility state.
            @edge_favorites_bar_visibility
            ## 
            # The location of the favorites list to provision. Could be a local file, local network or http location.
            @edge_favorites_list_location
            ## 
            # The first run URL for when Edge browser is opened for the first time.
            @edge_first_run_url
            ## 
            # Causes the Home button to either hide, load the default Start page, load a New tab page, or a custom URL
            @edge_home_button_configuration
            ## 
            # Enable the Home button configuration.
            @edge_home_button_configuration_enabled
            ## 
            # The list of URLs for homepages shodwn on MDM-enrolled devices on Edge browser.
            @edge_homepage_urls
            ## 
            # Specify how the Microsoft Edge settings are restricted based on kiosk mode.
            @edge_kiosk_mode_restriction
            ## 
            # Specifies the time in minutes from the last user activity before Microsoft Edge kiosk resets.  Valid values are 0-1440. The default is 5. 0 indicates no reset. Valid values 0 to 1440
            @edge_kiosk_reset_after_idle_time_in_minutes
            ## 
            # Specify the page opened when new tabs are created.
            @edge_new_tab_page_u_r_l
            ## 
            # Possible values for the EdgeOpensWith setting.
            @edge_opens_with
            ## 
            # Allow or prevent users from overriding certificate errors.
            @edge_prevent_certificate_error_override
            ## 
            # Indicates whether or not to Require the user to use the smart screen filter.
            @edge_require_smart_screen
            ## 
            # Specify the list of package family names of browser extensions that are required and cannot be turned off by the user.
            @edge_required_extension_package_family_names
            ## 
            # Allows IT admins to set a default search engine for MDM-Controlled devices. Users can override this and change their default search engine provided the AllowSearchEngineCustomization policy is not set.
            @edge_search_engine
            ## 
            # Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer.
            @edge_send_intranet_traffic_to_internet_explorer
            ## 
            # What message will be displayed by Edge before switching to Internet Explorer.
            @edge_show_message_when_opening_internet_explorer_sites
            ## 
            # Enable favorites sync between Internet Explorer and Microsoft Edge. Additions, deletions, modifications and order changes to favorites are shared between browsers.
            @edge_sync_favorites_with_internet_explorer
            ## 
            # Type of browsing data sent to Microsoft 365 analytics
            @edge_telemetry_for_microsoft365_analytics
            ## 
            # Allow users with administrative rights to delete all user data and settings using CTRL + Win + R at the device lock screen so that the device can be automatically re-configured and re-enrolled into management.
            @enable_automatic_redeployment
            ## 
            # This setting allows you to specify battery charge level at which Energy Saver is turned on. While on battery, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            @energy_saver_on_battery_threshold_percentage
            ## 
            # This setting allows you to specify battery charge level at which Energy Saver is turned on. While plugged in, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            @energy_saver_plugged_in_threshold_percentage
            ## 
            # Endpoint for discovering cloud printers.
            @enterprise_cloud_print_discovery_end_point
            ## 
            # Maximum number of printers that should be queried from a discovery endpoint. This is a mobile only setting. Valid values 1 to 65535
            @enterprise_cloud_print_discovery_max_limit
            ## 
            # OAuth resource URI for printer discovery service as configured in Azure portal.
            @enterprise_cloud_print_mopria_discovery_resource_identifier
            ## 
            # Authentication endpoint for acquiring OAuth tokens.
            @enterprise_cloud_print_o_auth_authority
            ## 
            # GUID of a client application authorized to retrieve OAuth tokens from the OAuth Authority.
            @enterprise_cloud_print_o_auth_client_identifier
            ## 
            # OAuth resource URI for print service as configured in the Azure portal.
            @enterprise_cloud_print_resource_identifier
            ## 
            # Indicates whether or not to enable device discovery UX.
            @experience_block_device_discovery
            ## 
            # Indicates whether or not to allow the error dialog from displaying if no SIM card is detected.
            @experience_block_error_dialog_when_no_s_i_m
            ## 
            # Indicates whether or not to enable task switching on the device.
            @experience_block_task_switcher
            ## 
            # Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.
            @experience_do_not_sync_browser_settings
            ## 
            # Possible values of a property
            @find_my_files
            ## 
            # Indicates whether or not to block DVR and broadcasting.
            @game_dvr_blocked
            ## 
            # Values for the InkWorkspaceAccess setting.
            @ink_workspace_access
            ## 
            # State Management Setting.
            @ink_workspace_access_state
            ## 
            # Specify whether to show recommended app suggestions in the ink workspace.
            @ink_workspace_block_suggested_apps
            ## 
            # Indicates whether or not to Block the user from using internet sharing.
            @internet_sharing_blocked
            ## 
            # Indicates whether or not to Block the user from location services.
            @location_services_blocked
            ## 
            # Possible values of a property
            @lock_screen_activate_apps_with_voice
            ## 
            # Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices. If this policy is set to Allow, the value set by lockScreenTimeoutInSeconds is ignored.
            @lock_screen_allow_timeout_configuration
            ## 
            # Indicates whether or not to block action center notifications over lock screen.
            @lock_screen_block_action_center_notifications
            ## 
            # Indicates whether or not the user can interact with Cortana using speech while the system is locked.
            @lock_screen_block_cortana
            ## 
            # Indicates whether to allow toast notifications above the device lock screen.
            @lock_screen_block_toast_notifications
            ## 
            # Set the duration (in seconds) from the screen locking to the screen turning off for Windows 10 Mobile devices. Supported values are 11-1800. Valid values 11 to 1800
            @lock_screen_timeout_in_seconds
            ## 
            # Disables the ability to quickly switch between users that are logged on simultaneously without logging off.
            @logon_block_fast_user_switching
            ## 
            # Indicates whether or not to block the MMS send/receive functionality on the device.
            @messaging_block_m_m_s
            ## 
            # Indicates whether or not to block the RCS send/receive functionality on the device.
            @messaging_block_rich_communication_services
            ## 
            # Indicates whether or not to block text message back up and restore and Messaging Everywhere.
            @messaging_block_sync
            ## 
            # Indicates whether or not to Block Microsoft account settings sync.
            @microsoft_account_block_settings_sync
            ## 
            # Indicates whether or not to Block a Microsoft account.
            @microsoft_account_blocked
            ## 
            # Values for the SignInAssistantSettings.
            @microsoft_account_sign_in_assistant_settings
            ## 
            # If set, proxy settings will be applied to all processes and accounts in the device. Otherwise, it will be applied to the user account that’s enrolled into MDM.
            @network_proxy_apply_settings_device_wide
            ## 
            # Address to the proxy auto-config (PAC) script you want to use.
            @network_proxy_automatic_configuration_url
            ## 
            # Disable automatic detection of settings. If enabled, the system will try to find the path to a proxy auto-config (PAC) script.
            @network_proxy_disable_auto_detect
            ## 
            # Specifies manual proxy server settings.
            @network_proxy_server
            ## 
            # Indicates whether or not to Block the user from using near field communication.
            @nfc_blocked
            ## 
            # Gets or sets a value allowing IT admins to prevent apps and features from working with files on OneDrive.
            @one_drive_disable_file_sync
            ## 
            # Specify whether PINs or passwords such as '1111' or '1234' are allowed. For Windows 10 desktops, it also controls the use of picture passwords.
            @password_block_simple
            ## 
            # The password expiration in days. Valid values 0 to 730
            @password_expiration_days
            ## 
            # This security setting determines the period of time (in days) that a password must be used before the user can change it. Valid values 0 to 998
            @password_minimum_age_in_days
            ## 
            # The number of character sets required in the password.
            @password_minimum_character_set_count
            ## 
            # The minimum password length. Valid values 4 to 16
            @password_minimum_length
            ## 
            # The minutes of inactivity before the screen times out.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # The number of previous passwords to prevent reuse of. Valid values 0 to 50
            @password_previous_password_block_count
            ## 
            # Indicates whether or not to require a password upon resuming from an idle state.
            @password_require_when_resume_from_idle_state
            ## 
            # Indicates whether or not to require the user to have a password.
            @password_required
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # The number of sign in failures before factory reset. Valid values 0 to 999
            @password_sign_in_failure_count_before_factory_reset
            ## 
            # A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to used as the Desktop Image.
            @personalization_desktop_image_url
            ## 
            # A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.
            @personalization_lock_screen_image_url
            ## 
            # Power action types
            @power_button_action_on_battery
            ## 
            # Power action types
            @power_button_action_plugged_in
            ## 
            # Possible values of a property
            @power_hybrid_sleep_on_battery
            ## 
            # Possible values of a property
            @power_hybrid_sleep_plugged_in
            ## 
            # Power action types
            @power_lid_close_action_on_battery
            ## 
            # Power action types
            @power_lid_close_action_plugged_in
            ## 
            # Power action types
            @power_sleep_button_action_on_battery
            ## 
            # Power action types
            @power_sleep_button_action_plugged_in
            ## 
            # Prevent user installation of additional printers from printers settings.
            @printer_block_addition
            ## 
            # Name (network host name) of an installed printer.
            @printer_default_name
            ## 
            # Automatically provision printers based on their names (network host names).
            @printer_names
            ## 
            # Indicates a list of applications with their access control levels over privacy data categories, and/or the default access levels per category. This collection can contain a maximum of 500 elements.
            @privacy_access_controls
            ## 
            # State Management Setting.
            @privacy_advertising_id
            ## 
            # Indicates whether or not to allow the automatic acceptance of the pairing and privacy user consent dialog when launching apps.
            @privacy_auto_accept_pairing_and_consent_prompts
            ## 
            # Blocks the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            @privacy_block_activity_feed
            ## 
            # Indicates whether or not to block the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            @privacy_block_input_personalization
            ## 
            # Blocks the shared experiences/discovery of recently used resources in task switcher etc.
            @privacy_block_publish_user_activities
            ## 
            # This policy prevents the privacy experience from launching during user logon for new and upgraded users.​
            @privacy_disable_launch_experience
            ## 
            # Indicates whether or not to Block the user from reset protection mode.
            @reset_protection_mode_blocked
            ## 
            # Specifies what level of safe search (filtering adult content) is required
            @safe_search_filter
            ## 
            # Indicates whether or not to Block the user from taking Screenshots.
            @screen_capture_blocked
            ## 
            # Specifies if search can use diacritics.
            @search_block_diacritics
            ## 
            # Indicates whether or not to block the web search.
            @search_block_web_results
            ## 
            # Specifies whether to use automatic language detection when indexing content and properties.
            @search_disable_auto_language_detection
            ## 
            # Indicates whether or not to disable the search indexer backoff feature.
            @search_disable_indexer_backoff
            ## 
            # Indicates whether or not to block indexing of WIP-protected items to prevent them from appearing in search results for Cortana or Explorer.
            @search_disable_indexing_encrypted_items
            ## 
            # Indicates whether or not to allow users to add locations on removable drives to libraries and to be indexed.
            @search_disable_indexing_removable_drive
            ## 
            # Specifies if search can use location information.
            @search_disable_location
            ## 
            # Specifies if search can use location information.
            @search_disable_use_location
            ## 
            # Specifies minimum amount of hard drive space on the same drive as the index location before indexing stops.
            @search_enable_automatic_index_size_manangement
            ## 
            # Indicates whether or not to block remote queries of this computer’s index.
            @search_enable_remote_queries
            ## 
            # Specify whether to allow automatic device encryption during OOBE when the device is Azure AD joined (desktop only).
            @security_block_azure_a_d_joined_devices_auto_encryption
            ## 
            # Indicates whether or not to block access to Accounts in Settings app.
            @settings_block_accounts_page
            ## 
            # Indicates whether or not to block the user from installing provisioning packages.
            @settings_block_add_provisioning_package
            ## 
            # Indicates whether or not to block access to Apps in Settings app.
            @settings_block_apps_page
            ## 
            # Indicates whether or not to block the user from changing the language settings.
            @settings_block_change_language
            ## 
            # Indicates whether or not to block the user from changing power and sleep settings.
            @settings_block_change_power_sleep
            ## 
            # Indicates whether or not to block the user from changing the region settings.
            @settings_block_change_region
            ## 
            # Indicates whether or not to block the user from changing date and time settings.
            @settings_block_change_system_time
            ## 
            # Indicates whether or not to block access to Devices in Settings app.
            @settings_block_devices_page
            ## 
            # Indicates whether or not to block access to Ease of Access in Settings app.
            @settings_block_ease_of_access_page
            ## 
            # Indicates whether or not to block the user from editing the device name.
            @settings_block_edit_device_name
            ## 
            # Indicates whether or not to block access to Gaming in Settings app.
            @settings_block_gaming_page
            ## 
            # Indicates whether or not to block access to Network & Internet in Settings app.
            @settings_block_network_internet_page
            ## 
            # Indicates whether or not to block access to Personalization in Settings app.
            @settings_block_personalization_page
            ## 
            # Indicates whether or not to block access to Privacy in Settings app.
            @settings_block_privacy_page
            ## 
            # Indicates whether or not to block the runtime configuration agent from removing provisioning packages.
            @settings_block_remove_provisioning_package
            ## 
            # Indicates whether or not to block access to Settings app.
            @settings_block_settings_app
            ## 
            # Indicates whether or not to block access to System in Settings app.
            @settings_block_system_page
            ## 
            # Indicates whether or not to block access to Time & Language in Settings app.
            @settings_block_time_language_page
            ## 
            # Indicates whether or not to block access to Update & Security in Settings app.
            @settings_block_update_security_page
            ## 
            # Indicates whether or not to block multiple users of the same app to share data.
            @shared_user_app_data_allowed
            ## 
            # App Install control Setting
            @smart_screen_app_install_control
            ## 
            # Indicates whether or not users can override SmartScreen Filter warnings about potentially malicious websites.
            @smart_screen_block_prompt_override
            ## 
            # Indicates whether or not users can override the SmartScreen Filter warnings about downloading unverified files
            @smart_screen_block_prompt_override_for_files
            ## 
            # This property will be deprecated in July 2019 and will be replaced by property SmartScreenAppInstallControl. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.
            @smart_screen_enable_app_install_control
            ## 
            # Indicates whether or not to block the user from unpinning apps from taskbar.
            @start_block_unpinning_apps_from_taskbar
            ## 
            # Type of start menu app list visibility.
            @start_menu_app_list_visibility
            ## 
            # Enabling this policy hides the change account setting from appearing in the user tile in the start menu.
            @start_menu_hide_change_account_settings
            ## 
            # Enabling this policy hides the most used apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            @start_menu_hide_frequently_used_apps
            ## 
            # Enabling this policy hides hibernate from appearing in the power button in the start menu.
            @start_menu_hide_hibernate
            ## 
            # Enabling this policy hides lock from appearing in the user tile in the start menu.
            @start_menu_hide_lock
            ## 
            # Enabling this policy hides the power button from appearing in the start menu.
            @start_menu_hide_power_button
            ## 
            # Enabling this policy hides recent jump lists from appearing on the start menu/taskbar and disables the corresponding toggle in the Settings app.
            @start_menu_hide_recent_jump_lists
            ## 
            # Enabling this policy hides recently added apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            @start_menu_hide_recently_added_apps
            ## 
            # Enabling this policy hides 'Restart/Update and Restart' from appearing in the power button in the start menu.
            @start_menu_hide_restart_options
            ## 
            # Enabling this policy hides shut down/update and shut down from appearing in the power button in the start menu.
            @start_menu_hide_shut_down
            ## 
            # Enabling this policy hides sign out from appearing in the user tile in the start menu.
            @start_menu_hide_sign_out
            ## 
            # Enabling this policy hides sleep from appearing in the power button in the start menu.
            @start_menu_hide_sleep
            ## 
            # Enabling this policy hides switch account from appearing in the user tile in the start menu.
            @start_menu_hide_switch_account
            ## 
            # Enabling this policy hides the user tile from appearing in the start menu.
            @start_menu_hide_user_tile
            ## 
            # This policy setting allows you to import Edge assets to be used with startMenuLayoutXml policy. Start layout can contain secondary tile from Edge app which looks for Edge local asset file. Edge local asset would not exist and cause Edge secondary tile to appear empty in this case. This policy only gets applied when startMenuLayoutXml policy is modified. The value should be a UTF-8 Base64 encoded byte array.
            @start_menu_layout_edge_assets_xml
            ## 
            # Allows admins to override the default Start menu layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in a UTF8 encoded byte array format.
            @start_menu_layout_xml
            ## 
            # Type of display modes for the start menu.
            @start_menu_mode
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_documents
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_downloads
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_file_explorer
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_home_group
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_music
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_network
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_personal_folder
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_pictures
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_settings
            ## 
            # Generic visibility state.
            @start_menu_pinned_folder_videos
            ## 
            # Indicates whether or not to Block the user from using removable storage.
            @storage_block_removable_storage
            ## 
            # Indicating whether or not to require encryption on a mobile device.
            @storage_require_mobile_device_encryption
            ## 
            # Indicates whether application data is restricted to the system drive.
            @storage_restrict_app_data_to_system_volume
            ## 
            # Indicates whether the installation of applications is restricted to the system drive.
            @storage_restrict_app_install_to_system_volume
            ## 
            # Gets or sets the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests.
            @system_telemetry_proxy_server
            ## 
            # Specify whether non-administrators can use Task Manager to end tasks.
            @task_manager_block_end_task
            ## 
            # Whether the device is required to connect to the network.
            @tenant_lockdown_require_network_during_out_of_box_experience
            ## 
            # Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            @uninstall_built_in_apps
            ## 
            # Indicates whether or not to Block the user from USB connection.
            @usb_blocked
            ## 
            # Indicates whether or not to Block the user from voice recording.
            @voice_recording_blocked
            ## 
            # Indicates whether or not user's localhost IP address is displayed while making phone calls using the WebRTC
            @web_rtc_block_localhost_ip_address
            ## 
            # Indicating whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            @wi_fi_block_automatic_connect_hotspots
            ## 
            # Indicates whether or not to Block the user from using Wi-Fi manual configuration.
            @wi_fi_block_manual_configuration
            ## 
            # Indicates whether or not to Block the user from using Wi-Fi.
            @wi_fi_blocked
            ## 
            # Specify how often devices scan for Wi-Fi networks. Supported values are 1-500, where 100 = default, and 500 = low frequency. Valid values 1 to 500
            @wi_fi_scan_interval
            ## 
            # Allows IT admins to block experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.
            @windows_spotlight_block_consumer_specific_features
            ## 
            # Block suggestions from Microsoft that show after each OS clean install, upgrade or in an on-going basis to introduce users to what is new or changed
            @windows_spotlight_block_on_action_center
            ## 
            # Block personalized content in Windows spotlight based on user’s device usage.
            @windows_spotlight_block_tailored_experiences
            ## 
            # Block third party content delivered via Windows Spotlight
            @windows_spotlight_block_third_party_notifications
            ## 
            # Block Windows Spotlight Windows welcome experience
            @windows_spotlight_block_welcome_experience
            ## 
            # Allows IT admins to turn off the popup of Windows Tips.
            @windows_spotlight_block_windows_tips
            ## 
            # Allows IT admins to turn off all Windows Spotlight features
            @windows_spotlight_blocked
            ## 
            # Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            @windows_spotlight_configure_on_lock_screen
            ## 
            # Indicates whether or not to block automatic update of apps from Windows Store.
            @windows_store_block_auto_update
            ## 
            # Indicates whether or not to Block the user from using the Windows store.
            @windows_store_blocked
            ## 
            # Indicates whether or not to enable Private Store Only.
            @windows_store_enable_private_store_only
            ## 
            # Windows 10 force update schedule for Apps.
            @windows10_apps_force_update_schedule
            ## 
            # Indicates whether or not to allow other devices from discovering this PC for projection.
            @wireless_display_block_projection_to_this_device
            ## 
            # Indicates whether or not to allow user input from wireless display receiver.
            @wireless_display_block_user_input_from_receiver
            ## 
            # Indicates whether or not to require a PIN for new devices to initiate pairing.
            @wireless_display_require_pin_for_pairing
            ## 
            ## Gets the accountsBlockAddingNonMicrosoftAccountEmail property value. Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            ## @return a boolean
            ## 
            def accounts_block_adding_non_microsoft_account_email
                return @accounts_block_adding_non_microsoft_account_email
            end
            ## 
            ## Sets the accountsBlockAddingNonMicrosoftAccountEmail property value. Indicates whether or not to Block the user from adding email accounts to the device that are not associated with a Microsoft account.
            ## @param value Value to set for the accounts_block_adding_non_microsoft_account_email property.
            ## @return a void
            ## 
            def accounts_block_adding_non_microsoft_account_email=(value)
                @accounts_block_adding_non_microsoft_account_email = value
            end
            ## 
            ## Gets the activateAppsWithVoice property value. Possible values of a property
            ## @return a enablement
            ## 
            def activate_apps_with_voice
                return @activate_apps_with_voice
            end
            ## 
            ## Sets the activateAppsWithVoice property value. Possible values of a property
            ## @param value Value to set for the activate_apps_with_voice property.
            ## @return a void
            ## 
            def activate_apps_with_voice=(value)
                @activate_apps_with_voice = value
            end
            ## 
            ## Gets the antiTheftModeBlocked property value. Indicates whether or not to block the user from selecting an AntiTheft mode preference (Windows 10 Mobile only).
            ## @return a boolean
            ## 
            def anti_theft_mode_blocked
                return @anti_theft_mode_blocked
            end
            ## 
            ## Sets the antiTheftModeBlocked property value. Indicates whether or not to block the user from selecting an AntiTheft mode preference (Windows 10 Mobile only).
            ## @param value Value to set for the anti_theft_mode_blocked property.
            ## @return a void
            ## 
            def anti_theft_mode_blocked=(value)
                @anti_theft_mode_blocked = value
            end
            ## 
            ## Gets the appManagementMSIAllowUserControlOverInstall property value. This policy setting permits users to change installation options that typically are available only to system administrators.
            ## @return a boolean
            ## 
            def app_management_m_s_i_allow_user_control_over_install
                return @app_management_m_s_i_allow_user_control_over_install
            end
            ## 
            ## Sets the appManagementMSIAllowUserControlOverInstall property value. This policy setting permits users to change installation options that typically are available only to system administrators.
            ## @param value Value to set for the app_management_m_s_i_allow_user_control_over_install property.
            ## @return a void
            ## 
            def app_management_m_s_i_allow_user_control_over_install=(value)
                @app_management_m_s_i_allow_user_control_over_install = value
            end
            ## 
            ## Gets the appManagementMSIAlwaysInstallWithElevatedPrivileges property value. This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.
            ## @return a boolean
            ## 
            def app_management_m_s_i_always_install_with_elevated_privileges
                return @app_management_m_s_i_always_install_with_elevated_privileges
            end
            ## 
            ## Sets the appManagementMSIAlwaysInstallWithElevatedPrivileges property value. This policy setting directs Windows Installer to use elevated permissions when it installs any program on the system.
            ## @param value Value to set for the app_management_m_s_i_always_install_with_elevated_privileges property.
            ## @return a void
            ## 
            def app_management_m_s_i_always_install_with_elevated_privileges=(value)
                @app_management_m_s_i_always_install_with_elevated_privileges = value
            end
            ## 
            ## Gets the appManagementPackageFamilyNamesToLaunchAfterLogOn property value. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are to be launched after logon.​
            ## @return a string
            ## 
            def app_management_package_family_names_to_launch_after_log_on
                return @app_management_package_family_names_to_launch_after_log_on
            end
            ## 
            ## Sets the appManagementPackageFamilyNamesToLaunchAfterLogOn property value. List of semi-colon delimited Package Family Names of Windows apps. Listed Windows apps are to be launched after logon.​
            ## @param value Value to set for the app_management_package_family_names_to_launch_after_log_on property.
            ## @return a void
            ## 
            def app_management_package_family_names_to_launch_after_log_on=(value)
                @app_management_package_family_names_to_launch_after_log_on = value
            end
            ## 
            ## Gets the appsAllowTrustedAppsSideloading property value. State Management Setting.
            ## @return a state_management_setting
            ## 
            def apps_allow_trusted_apps_sideloading
                return @apps_allow_trusted_apps_sideloading
            end
            ## 
            ## Sets the appsAllowTrustedAppsSideloading property value. State Management Setting.
            ## @param value Value to set for the apps_allow_trusted_apps_sideloading property.
            ## @return a void
            ## 
            def apps_allow_trusted_apps_sideloading=(value)
                @apps_allow_trusted_apps_sideloading = value
            end
            ## 
            ## Gets the appsBlockWindowsStoreOriginatedApps property value. Indicates whether or not to disable the launch of all apps from Windows Store that came pre-installed or were downloaded.
            ## @return a boolean
            ## 
            def apps_block_windows_store_originated_apps
                return @apps_block_windows_store_originated_apps
            end
            ## 
            ## Sets the appsBlockWindowsStoreOriginatedApps property value. Indicates whether or not to disable the launch of all apps from Windows Store that came pre-installed or were downloaded.
            ## @param value Value to set for the apps_block_windows_store_originated_apps property.
            ## @return a void
            ## 
            def apps_block_windows_store_originated_apps=(value)
                @apps_block_windows_store_originated_apps = value
            end
            ## 
            ## Gets the authenticationAllowSecondaryDevice property value. Allows secondary authentication devices to work with Windows.
            ## @return a boolean
            ## 
            def authentication_allow_secondary_device
                return @authentication_allow_secondary_device
            end
            ## 
            ## Sets the authenticationAllowSecondaryDevice property value. Allows secondary authentication devices to work with Windows.
            ## @param value Value to set for the authentication_allow_secondary_device property.
            ## @return a void
            ## 
            def authentication_allow_secondary_device=(value)
                @authentication_allow_secondary_device = value
            end
            ## 
            ## Gets the authenticationPreferredAzureADTenantDomainName property value. Specifies the preferred domain among available domains in the Azure AD tenant.
            ## @return a string
            ## 
            def authentication_preferred_azure_a_d_tenant_domain_name
                return @authentication_preferred_azure_a_d_tenant_domain_name
            end
            ## 
            ## Sets the authenticationPreferredAzureADTenantDomainName property value. Specifies the preferred domain among available domains in the Azure AD tenant.
            ## @param value Value to set for the authentication_preferred_azure_a_d_tenant_domain_name property.
            ## @return a void
            ## 
            def authentication_preferred_azure_a_d_tenant_domain_name=(value)
                @authentication_preferred_azure_a_d_tenant_domain_name = value
            end
            ## 
            ## Gets the authenticationWebSignIn property value. Possible values of a property
            ## @return a enablement
            ## 
            def authentication_web_sign_in
                return @authentication_web_sign_in
            end
            ## 
            ## Sets the authenticationWebSignIn property value. Possible values of a property
            ## @param value Value to set for the authentication_web_sign_in property.
            ## @return a void
            ## 
            def authentication_web_sign_in=(value)
                @authentication_web_sign_in = value
            end
            ## 
            ## Gets the bluetoothAllowedServices property value. Specify a list of allowed Bluetooth services and profiles in hex formatted strings.
            ## @return a string
            ## 
            def bluetooth_allowed_services
                return @bluetooth_allowed_services
            end
            ## 
            ## Sets the bluetoothAllowedServices property value. Specify a list of allowed Bluetooth services and profiles in hex formatted strings.
            ## @param value Value to set for the bluetooth_allowed_services property.
            ## @return a void
            ## 
            def bluetooth_allowed_services=(value)
                @bluetooth_allowed_services = value
            end
            ## 
            ## Gets the bluetoothBlockAdvertising property value. Whether or not to Block the user from using bluetooth advertising.
            ## @return a boolean
            ## 
            def bluetooth_block_advertising
                return @bluetooth_block_advertising
            end
            ## 
            ## Sets the bluetoothBlockAdvertising property value. Whether or not to Block the user from using bluetooth advertising.
            ## @param value Value to set for the bluetooth_block_advertising property.
            ## @return a void
            ## 
            def bluetooth_block_advertising=(value)
                @bluetooth_block_advertising = value
            end
            ## 
            ## Gets the bluetoothBlockDiscoverableMode property value. Whether or not to Block the user from using bluetooth discoverable mode.
            ## @return a boolean
            ## 
            def bluetooth_block_discoverable_mode
                return @bluetooth_block_discoverable_mode
            end
            ## 
            ## Sets the bluetoothBlockDiscoverableMode property value. Whether or not to Block the user from using bluetooth discoverable mode.
            ## @param value Value to set for the bluetooth_block_discoverable_mode property.
            ## @return a void
            ## 
            def bluetooth_block_discoverable_mode=(value)
                @bluetooth_block_discoverable_mode = value
            end
            ## 
            ## Gets the bluetoothBlockPrePairing property value. Whether or not to block specific bundled Bluetooth peripherals to automatically pair with the host device.
            ## @return a boolean
            ## 
            def bluetooth_block_pre_pairing
                return @bluetooth_block_pre_pairing
            end
            ## 
            ## Sets the bluetoothBlockPrePairing property value. Whether or not to block specific bundled Bluetooth peripherals to automatically pair with the host device.
            ## @param value Value to set for the bluetooth_block_pre_pairing property.
            ## @return a void
            ## 
            def bluetooth_block_pre_pairing=(value)
                @bluetooth_block_pre_pairing = value
            end
            ## 
            ## Gets the bluetoothBlockPromptedProximalConnections property value. Whether or not to block the users from using Swift Pair and other proximity based scenarios.
            ## @return a boolean
            ## 
            def bluetooth_block_prompted_proximal_connections
                return @bluetooth_block_prompted_proximal_connections
            end
            ## 
            ## Sets the bluetoothBlockPromptedProximalConnections property value. Whether or not to block the users from using Swift Pair and other proximity based scenarios.
            ## @param value Value to set for the bluetooth_block_prompted_proximal_connections property.
            ## @return a void
            ## 
            def bluetooth_block_prompted_proximal_connections=(value)
                @bluetooth_block_prompted_proximal_connections = value
            end
            ## 
            ## Gets the bluetoothBlocked property value. Whether or not to Block the user from using bluetooth.
            ## @return a boolean
            ## 
            def bluetooth_blocked
                return @bluetooth_blocked
            end
            ## 
            ## Sets the bluetoothBlocked property value. Whether or not to Block the user from using bluetooth.
            ## @param value Value to set for the bluetooth_blocked property.
            ## @return a void
            ## 
            def bluetooth_blocked=(value)
                @bluetooth_blocked = value
            end
            ## 
            ## Gets the cameraBlocked property value. Whether or not to Block the user from accessing the camera of the device.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Whether or not to Block the user from accessing the camera of the device.
            ## @param value Value to set for the camera_blocked property.
            ## @return a void
            ## 
            def camera_blocked=(value)
                @camera_blocked = value
            end
            ## 
            ## Gets the cellularBlockDataWhenRoaming property value. Whether or not to Block the user from using data over cellular while roaming.
            ## @return a boolean
            ## 
            def cellular_block_data_when_roaming
                return @cellular_block_data_when_roaming
            end
            ## 
            ## Sets the cellularBlockDataWhenRoaming property value. Whether or not to Block the user from using data over cellular while roaming.
            ## @param value Value to set for the cellular_block_data_when_roaming property.
            ## @return a void
            ## 
            def cellular_block_data_when_roaming=(value)
                @cellular_block_data_when_roaming = value
            end
            ## 
            ## Gets the cellularBlockVpn property value. Whether or not to Block the user from using VPN over cellular.
            ## @return a boolean
            ## 
            def cellular_block_vpn
                return @cellular_block_vpn
            end
            ## 
            ## Sets the cellularBlockVpn property value. Whether or not to Block the user from using VPN over cellular.
            ## @param value Value to set for the cellular_block_vpn property.
            ## @return a void
            ## 
            def cellular_block_vpn=(value)
                @cellular_block_vpn = value
            end
            ## 
            ## Gets the cellularBlockVpnWhenRoaming property value. Whether or not to Block the user from using VPN when roaming over cellular.
            ## @return a boolean
            ## 
            def cellular_block_vpn_when_roaming
                return @cellular_block_vpn_when_roaming
            end
            ## 
            ## Sets the cellularBlockVpnWhenRoaming property value. Whether or not to Block the user from using VPN when roaming over cellular.
            ## @param value Value to set for the cellular_block_vpn_when_roaming property.
            ## @return a void
            ## 
            def cellular_block_vpn_when_roaming=(value)
                @cellular_block_vpn_when_roaming = value
            end
            ## 
            ## Gets the cellularData property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def cellular_data
                return @cellular_data
            end
            ## 
            ## Sets the cellularData property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the cellular_data property.
            ## @return a void
            ## 
            def cellular_data=(value)
                @cellular_data = value
            end
            ## 
            ## Gets the certificatesBlockManualRootCertificateInstallation property value. Whether or not to Block the user from doing manual root certificate installation.
            ## @return a boolean
            ## 
            def certificates_block_manual_root_certificate_installation
                return @certificates_block_manual_root_certificate_installation
            end
            ## 
            ## Sets the certificatesBlockManualRootCertificateInstallation property value. Whether or not to Block the user from doing manual root certificate installation.
            ## @param value Value to set for the certificates_block_manual_root_certificate_installation property.
            ## @return a void
            ## 
            def certificates_block_manual_root_certificate_installation=(value)
                @certificates_block_manual_root_certificate_installation = value
            end
            ## 
            ## Gets the configureTimeZone property value. Specifies the time zone to be applied to the device. This is the standard Windows name for the target time zone.
            ## @return a string
            ## 
            def configure_time_zone
                return @configure_time_zone
            end
            ## 
            ## Sets the configureTimeZone property value. Specifies the time zone to be applied to the device. This is the standard Windows name for the target time zone.
            ## @param value Value to set for the configure_time_zone property.
            ## @return a void
            ## 
            def configure_time_zone=(value)
                @configure_time_zone = value
            end
            ## 
            ## Gets the connectedDevicesServiceBlocked property value. Whether or not to block Connected Devices Service which enables discovery and connection to other devices, remote messaging, remote app sessions and other cross-device experiences.
            ## @return a boolean
            ## 
            def connected_devices_service_blocked
                return @connected_devices_service_blocked
            end
            ## 
            ## Sets the connectedDevicesServiceBlocked property value. Whether or not to block Connected Devices Service which enables discovery and connection to other devices, remote messaging, remote app sessions and other cross-device experiences.
            ## @param value Value to set for the connected_devices_service_blocked property.
            ## @return a void
            ## 
            def connected_devices_service_blocked=(value)
                @connected_devices_service_blocked = value
            end
            ## 
            ## Instantiates a new Windows10GeneralConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10GeneralConfiguration"
            end
            ## 
            ## Gets the copyPasteBlocked property value. Whether or not to Block the user from using copy paste.
            ## @return a boolean
            ## 
            def copy_paste_blocked
                return @copy_paste_blocked
            end
            ## 
            ## Sets the copyPasteBlocked property value. Whether or not to Block the user from using copy paste.
            ## @param value Value to set for the copy_paste_blocked property.
            ## @return a void
            ## 
            def copy_paste_blocked=(value)
                @copy_paste_blocked = value
            end
            ## 
            ## Gets the cortanaBlocked property value. Whether or not to Block the user from using Cortana.
            ## @return a boolean
            ## 
            def cortana_blocked
                return @cortana_blocked
            end
            ## 
            ## Sets the cortanaBlocked property value. Whether or not to Block the user from using Cortana.
            ## @param value Value to set for the cortana_blocked property.
            ## @return a void
            ## 
            def cortana_blocked=(value)
                @cortana_blocked = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows10_general_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10GeneralConfiguration.new
            end
            ## 
            ## Gets the cryptographyAllowFipsAlgorithmPolicy property value. Specify whether to allow or disallow the Federal Information Processing Standard (FIPS) policy.
            ## @return a boolean
            ## 
            def cryptography_allow_fips_algorithm_policy
                return @cryptography_allow_fips_algorithm_policy
            end
            ## 
            ## Sets the cryptographyAllowFipsAlgorithmPolicy property value. Specify whether to allow or disallow the Federal Information Processing Standard (FIPS) policy.
            ## @param value Value to set for the cryptography_allow_fips_algorithm_policy property.
            ## @return a void
            ## 
            def cryptography_allow_fips_algorithm_policy=(value)
                @cryptography_allow_fips_algorithm_policy = value
            end
            ## 
            ## Gets the dataProtectionBlockDirectMemoryAccess property value. This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows.
            ## @return a boolean
            ## 
            def data_protection_block_direct_memory_access
                return @data_protection_block_direct_memory_access
            end
            ## 
            ## Sets the dataProtectionBlockDirectMemoryAccess property value. This policy setting allows you to block direct memory access (DMA) for all hot pluggable PCI downstream ports until a user logs into Windows.
            ## @param value Value to set for the data_protection_block_direct_memory_access property.
            ## @return a void
            ## 
            def data_protection_block_direct_memory_access=(value)
                @data_protection_block_direct_memory_access = value
            end
            ## 
            ## Gets the defenderBlockEndUserAccess property value. Whether or not to block end user access to Defender.
            ## @return a boolean
            ## 
            def defender_block_end_user_access
                return @defender_block_end_user_access
            end
            ## 
            ## Sets the defenderBlockEndUserAccess property value. Whether or not to block end user access to Defender.
            ## @param value Value to set for the defender_block_end_user_access property.
            ## @return a void
            ## 
            def defender_block_end_user_access=(value)
                @defender_block_end_user_access = value
            end
            ## 
            ## Gets the defenderBlockOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @return a boolean
            ## 
            def defender_block_on_access_protection
                return @defender_block_on_access_protection
            end
            ## 
            ## Sets the defenderBlockOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @param value Value to set for the defender_block_on_access_protection property.
            ## @return a void
            ## 
            def defender_block_on_access_protection=(value)
                @defender_block_on_access_protection = value
            end
            ## 
            ## Gets the defenderCloudBlockLevel property value. Possible values of Cloud Block Level
            ## @return a defender_cloud_block_level_type
            ## 
            def defender_cloud_block_level
                return @defender_cloud_block_level
            end
            ## 
            ## Sets the defenderCloudBlockLevel property value. Possible values of Cloud Block Level
            ## @param value Value to set for the defender_cloud_block_level property.
            ## @return a void
            ## 
            def defender_cloud_block_level=(value)
                @defender_cloud_block_level = value
            end
            ## 
            ## Gets the defenderCloudExtendedTimeout property value. Timeout extension for file scanning by the cloud. Valid values 0 to 50
            ## @return a integer
            ## 
            def defender_cloud_extended_timeout
                return @defender_cloud_extended_timeout
            end
            ## 
            ## Sets the defenderCloudExtendedTimeout property value. Timeout extension for file scanning by the cloud. Valid values 0 to 50
            ## @param value Value to set for the defender_cloud_extended_timeout property.
            ## @return a void
            ## 
            def defender_cloud_extended_timeout=(value)
                @defender_cloud_extended_timeout = value
            end
            ## 
            ## Gets the defenderCloudExtendedTimeoutInSeconds property value. Timeout extension for file scanning by the cloud. Valid values 0 to 50
            ## @return a integer
            ## 
            def defender_cloud_extended_timeout_in_seconds
                return @defender_cloud_extended_timeout_in_seconds
            end
            ## 
            ## Sets the defenderCloudExtendedTimeoutInSeconds property value. Timeout extension for file scanning by the cloud. Valid values 0 to 50
            ## @param value Value to set for the defender_cloud_extended_timeout_in_seconds property.
            ## @return a void
            ## 
            def defender_cloud_extended_timeout_in_seconds=(value)
                @defender_cloud_extended_timeout_in_seconds = value
            end
            ## 
            ## Gets the defenderDaysBeforeDeletingQuarantinedMalware property value. Number of days before deleting quarantined malware. Valid values 0 to 90
            ## @return a integer
            ## 
            def defender_days_before_deleting_quarantined_malware
                return @defender_days_before_deleting_quarantined_malware
            end
            ## 
            ## Sets the defenderDaysBeforeDeletingQuarantinedMalware property value. Number of days before deleting quarantined malware. Valid values 0 to 90
            ## @param value Value to set for the defender_days_before_deleting_quarantined_malware property.
            ## @return a void
            ## 
            def defender_days_before_deleting_quarantined_malware=(value)
                @defender_days_before_deleting_quarantined_malware = value
            end
            ## 
            ## Gets the defenderDetectedMalwareActions property value. Gets or sets Defender’s actions to take on detected Malware per threat level.
            ## @return a defender_detected_malware_actions
            ## 
            def defender_detected_malware_actions
                return @defender_detected_malware_actions
            end
            ## 
            ## Sets the defenderDetectedMalwareActions property value. Gets or sets Defender’s actions to take on detected Malware per threat level.
            ## @param value Value to set for the defender_detected_malware_actions property.
            ## @return a void
            ## 
            def defender_detected_malware_actions=(value)
                @defender_detected_malware_actions = value
            end
            ## 
            ## Gets the defenderDisableCatchupFullScan property value. When blocked, catch-up scans for scheduled full scans will be turned off.
            ## @return a boolean
            ## 
            def defender_disable_catchup_full_scan
                return @defender_disable_catchup_full_scan
            end
            ## 
            ## Sets the defenderDisableCatchupFullScan property value. When blocked, catch-up scans for scheduled full scans will be turned off.
            ## @param value Value to set for the defender_disable_catchup_full_scan property.
            ## @return a void
            ## 
            def defender_disable_catchup_full_scan=(value)
                @defender_disable_catchup_full_scan = value
            end
            ## 
            ## Gets the defenderDisableCatchupQuickScan property value. When blocked, catch-up scans for scheduled quick scans will be turned off.
            ## @return a boolean
            ## 
            def defender_disable_catchup_quick_scan
                return @defender_disable_catchup_quick_scan
            end
            ## 
            ## Sets the defenderDisableCatchupQuickScan property value. When blocked, catch-up scans for scheduled quick scans will be turned off.
            ## @param value Value to set for the defender_disable_catchup_quick_scan property.
            ## @return a void
            ## 
            def defender_disable_catchup_quick_scan=(value)
                @defender_disable_catchup_quick_scan = value
            end
            ## 
            ## Gets the defenderFileExtensionsToExclude property value. File extensions to exclude from scans and real time protection.
            ## @return a string
            ## 
            def defender_file_extensions_to_exclude
                return @defender_file_extensions_to_exclude
            end
            ## 
            ## Sets the defenderFileExtensionsToExclude property value. File extensions to exclude from scans and real time protection.
            ## @param value Value to set for the defender_file_extensions_to_exclude property.
            ## @return a void
            ## 
            def defender_file_extensions_to_exclude=(value)
                @defender_file_extensions_to_exclude = value
            end
            ## 
            ## Gets the defenderFilesAndFoldersToExclude property value. Files and folder to exclude from scans and real time protection.
            ## @return a string
            ## 
            def defender_files_and_folders_to_exclude
                return @defender_files_and_folders_to_exclude
            end
            ## 
            ## Sets the defenderFilesAndFoldersToExclude property value. Files and folder to exclude from scans and real time protection.
            ## @param value Value to set for the defender_files_and_folders_to_exclude property.
            ## @return a void
            ## 
            def defender_files_and_folders_to_exclude=(value)
                @defender_files_and_folders_to_exclude = value
            end
            ## 
            ## Gets the defenderMonitorFileActivity property value. Possible values for monitoring file activity.
            ## @return a defender_monitor_file_activity
            ## 
            def defender_monitor_file_activity
                return @defender_monitor_file_activity
            end
            ## 
            ## Sets the defenderMonitorFileActivity property value. Possible values for monitoring file activity.
            ## @param value Value to set for the defender_monitor_file_activity property.
            ## @return a void
            ## 
            def defender_monitor_file_activity=(value)
                @defender_monitor_file_activity = value
            end
            ## 
            ## Gets the defenderPotentiallyUnwantedAppAction property value. Gets or sets Defender’s action to take on Potentially Unwanted Application (PUA), which includes software with behaviors of ad-injection, software bundling, persistent solicitation for payment or subscription, etc. Defender alerts user when PUA is being downloaded or attempts to install itself. Added in Windows 10 for desktop. Possible values are: deviceDefault, block, audit.
            ## @return a defender_potentially_unwanted_app_action
            ## 
            def defender_potentially_unwanted_app_action
                return @defender_potentially_unwanted_app_action
            end
            ## 
            ## Sets the defenderPotentiallyUnwantedAppAction property value. Gets or sets Defender’s action to take on Potentially Unwanted Application (PUA), which includes software with behaviors of ad-injection, software bundling, persistent solicitation for payment or subscription, etc. Defender alerts user when PUA is being downloaded or attempts to install itself. Added in Windows 10 for desktop. Possible values are: deviceDefault, block, audit.
            ## @param value Value to set for the defender_potentially_unwanted_app_action property.
            ## @return a void
            ## 
            def defender_potentially_unwanted_app_action=(value)
                @defender_potentially_unwanted_app_action = value
            end
            ## 
            ## Gets the defenderPotentiallyUnwantedAppActionSetting property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_potentially_unwanted_app_action_setting
                return @defender_potentially_unwanted_app_action_setting
            end
            ## 
            ## Sets the defenderPotentiallyUnwantedAppActionSetting property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defender_potentially_unwanted_app_action_setting property.
            ## @return a void
            ## 
            def defender_potentially_unwanted_app_action_setting=(value)
                @defender_potentially_unwanted_app_action_setting = value
            end
            ## 
            ## Gets the defenderProcessesToExclude property value. Processes to exclude from scans and real time protection.
            ## @return a string
            ## 
            def defender_processes_to_exclude
                return @defender_processes_to_exclude
            end
            ## 
            ## Sets the defenderProcessesToExclude property value. Processes to exclude from scans and real time protection.
            ## @param value Value to set for the defender_processes_to_exclude property.
            ## @return a void
            ## 
            def defender_processes_to_exclude=(value)
                @defender_processes_to_exclude = value
            end
            ## 
            ## Gets the defenderPromptForSampleSubmission property value. Possible values for prompting user for samples submission.
            ## @return a defender_prompt_for_sample_submission
            ## 
            def defender_prompt_for_sample_submission
                return @defender_prompt_for_sample_submission
            end
            ## 
            ## Sets the defenderPromptForSampleSubmission property value. Possible values for prompting user for samples submission.
            ## @param value Value to set for the defender_prompt_for_sample_submission property.
            ## @return a void
            ## 
            def defender_prompt_for_sample_submission=(value)
                @defender_prompt_for_sample_submission = value
            end
            ## 
            ## Gets the defenderRequireBehaviorMonitoring property value. Indicates whether or not to require behavior monitoring.
            ## @return a boolean
            ## 
            def defender_require_behavior_monitoring
                return @defender_require_behavior_monitoring
            end
            ## 
            ## Sets the defenderRequireBehaviorMonitoring property value. Indicates whether or not to require behavior monitoring.
            ## @param value Value to set for the defender_require_behavior_monitoring property.
            ## @return a void
            ## 
            def defender_require_behavior_monitoring=(value)
                @defender_require_behavior_monitoring = value
            end
            ## 
            ## Gets the defenderRequireCloudProtection property value. Indicates whether or not to require cloud protection.
            ## @return a boolean
            ## 
            def defender_require_cloud_protection
                return @defender_require_cloud_protection
            end
            ## 
            ## Sets the defenderRequireCloudProtection property value. Indicates whether or not to require cloud protection.
            ## @param value Value to set for the defender_require_cloud_protection property.
            ## @return a void
            ## 
            def defender_require_cloud_protection=(value)
                @defender_require_cloud_protection = value
            end
            ## 
            ## Gets the defenderRequireNetworkInspectionSystem property value. Indicates whether or not to require network inspection system.
            ## @return a boolean
            ## 
            def defender_require_network_inspection_system
                return @defender_require_network_inspection_system
            end
            ## 
            ## Sets the defenderRequireNetworkInspectionSystem property value. Indicates whether or not to require network inspection system.
            ## @param value Value to set for the defender_require_network_inspection_system property.
            ## @return a void
            ## 
            def defender_require_network_inspection_system=(value)
                @defender_require_network_inspection_system = value
            end
            ## 
            ## Gets the defenderRequireRealTimeMonitoring property value. Indicates whether or not to require real time monitoring.
            ## @return a boolean
            ## 
            def defender_require_real_time_monitoring
                return @defender_require_real_time_monitoring
            end
            ## 
            ## Sets the defenderRequireRealTimeMonitoring property value. Indicates whether or not to require real time monitoring.
            ## @param value Value to set for the defender_require_real_time_monitoring property.
            ## @return a void
            ## 
            def defender_require_real_time_monitoring=(value)
                @defender_require_real_time_monitoring = value
            end
            ## 
            ## Gets the defenderScanArchiveFiles property value. Indicates whether or not to scan archive files.
            ## @return a boolean
            ## 
            def defender_scan_archive_files
                return @defender_scan_archive_files
            end
            ## 
            ## Sets the defenderScanArchiveFiles property value. Indicates whether or not to scan archive files.
            ## @param value Value to set for the defender_scan_archive_files property.
            ## @return a void
            ## 
            def defender_scan_archive_files=(value)
                @defender_scan_archive_files = value
            end
            ## 
            ## Gets the defenderScanDownloads property value. Indicates whether or not to scan downloads.
            ## @return a boolean
            ## 
            def defender_scan_downloads
                return @defender_scan_downloads
            end
            ## 
            ## Sets the defenderScanDownloads property value. Indicates whether or not to scan downloads.
            ## @param value Value to set for the defender_scan_downloads property.
            ## @return a void
            ## 
            def defender_scan_downloads=(value)
                @defender_scan_downloads = value
            end
            ## 
            ## Gets the defenderScanIncomingMail property value. Indicates whether or not to scan incoming mail messages.
            ## @return a boolean
            ## 
            def defender_scan_incoming_mail
                return @defender_scan_incoming_mail
            end
            ## 
            ## Sets the defenderScanIncomingMail property value. Indicates whether or not to scan incoming mail messages.
            ## @param value Value to set for the defender_scan_incoming_mail property.
            ## @return a void
            ## 
            def defender_scan_incoming_mail=(value)
                @defender_scan_incoming_mail = value
            end
            ## 
            ## Gets the defenderScanMappedNetworkDrivesDuringFullScan property value. Indicates whether or not to scan mapped network drives during full scan.
            ## @return a boolean
            ## 
            def defender_scan_mapped_network_drives_during_full_scan
                return @defender_scan_mapped_network_drives_during_full_scan
            end
            ## 
            ## Sets the defenderScanMappedNetworkDrivesDuringFullScan property value. Indicates whether or not to scan mapped network drives during full scan.
            ## @param value Value to set for the defender_scan_mapped_network_drives_during_full_scan property.
            ## @return a void
            ## 
            def defender_scan_mapped_network_drives_during_full_scan=(value)
                @defender_scan_mapped_network_drives_during_full_scan = value
            end
            ## 
            ## Gets the defenderScanMaxCpu property value. Max CPU usage percentage during scan. Valid values 0 to 100
            ## @return a integer
            ## 
            def defender_scan_max_cpu
                return @defender_scan_max_cpu
            end
            ## 
            ## Sets the defenderScanMaxCpu property value. Max CPU usage percentage during scan. Valid values 0 to 100
            ## @param value Value to set for the defender_scan_max_cpu property.
            ## @return a void
            ## 
            def defender_scan_max_cpu=(value)
                @defender_scan_max_cpu = value
            end
            ## 
            ## Gets the defenderScanNetworkFiles property value. Indicates whether or not to scan files opened from a network folder.
            ## @return a boolean
            ## 
            def defender_scan_network_files
                return @defender_scan_network_files
            end
            ## 
            ## Sets the defenderScanNetworkFiles property value. Indicates whether or not to scan files opened from a network folder.
            ## @param value Value to set for the defender_scan_network_files property.
            ## @return a void
            ## 
            def defender_scan_network_files=(value)
                @defender_scan_network_files = value
            end
            ## 
            ## Gets the defenderScanRemovableDrivesDuringFullScan property value. Indicates whether or not to scan removable drives during full scan.
            ## @return a boolean
            ## 
            def defender_scan_removable_drives_during_full_scan
                return @defender_scan_removable_drives_during_full_scan
            end
            ## 
            ## Sets the defenderScanRemovableDrivesDuringFullScan property value. Indicates whether or not to scan removable drives during full scan.
            ## @param value Value to set for the defender_scan_removable_drives_during_full_scan property.
            ## @return a void
            ## 
            def defender_scan_removable_drives_during_full_scan=(value)
                @defender_scan_removable_drives_during_full_scan = value
            end
            ## 
            ## Gets the defenderScanScriptsLoadedInInternetExplorer property value. Indicates whether or not to scan scripts loaded in Internet Explorer browser.
            ## @return a boolean
            ## 
            def defender_scan_scripts_loaded_in_internet_explorer
                return @defender_scan_scripts_loaded_in_internet_explorer
            end
            ## 
            ## Sets the defenderScanScriptsLoadedInInternetExplorer property value. Indicates whether or not to scan scripts loaded in Internet Explorer browser.
            ## @param value Value to set for the defender_scan_scripts_loaded_in_internet_explorer property.
            ## @return a void
            ## 
            def defender_scan_scripts_loaded_in_internet_explorer=(value)
                @defender_scan_scripts_loaded_in_internet_explorer = value
            end
            ## 
            ## Gets the defenderScanType property value. Possible values for system scan type.
            ## @return a defender_scan_type
            ## 
            def defender_scan_type
                return @defender_scan_type
            end
            ## 
            ## Sets the defenderScanType property value. Possible values for system scan type.
            ## @param value Value to set for the defender_scan_type property.
            ## @return a void
            ## 
            def defender_scan_type=(value)
                @defender_scan_type = value
            end
            ## 
            ## Gets the defenderScheduleScanEnableLowCpuPriority property value. When enabled, low CPU priority will be used during scheduled scans.
            ## @return a boolean
            ## 
            def defender_schedule_scan_enable_low_cpu_priority
                return @defender_schedule_scan_enable_low_cpu_priority
            end
            ## 
            ## Sets the defenderScheduleScanEnableLowCpuPriority property value. When enabled, low CPU priority will be used during scheduled scans.
            ## @param value Value to set for the defender_schedule_scan_enable_low_cpu_priority property.
            ## @return a void
            ## 
            def defender_schedule_scan_enable_low_cpu_priority=(value)
                @defender_schedule_scan_enable_low_cpu_priority = value
            end
            ## 
            ## Gets the defenderScheduledQuickScanTime property value. The time to perform a daily quick scan.
            ## @return a time
            ## 
            def defender_scheduled_quick_scan_time
                return @defender_scheduled_quick_scan_time
            end
            ## 
            ## Sets the defenderScheduledQuickScanTime property value. The time to perform a daily quick scan.
            ## @param value Value to set for the defender_scheduled_quick_scan_time property.
            ## @return a void
            ## 
            def defender_scheduled_quick_scan_time=(value)
                @defender_scheduled_quick_scan_time = value
            end
            ## 
            ## Gets the defenderScheduledScanTime property value. The defender time for the system scan.
            ## @return a time
            ## 
            def defender_scheduled_scan_time
                return @defender_scheduled_scan_time
            end
            ## 
            ## Sets the defenderScheduledScanTime property value. The defender time for the system scan.
            ## @param value Value to set for the defender_scheduled_scan_time property.
            ## @return a void
            ## 
            def defender_scheduled_scan_time=(value)
                @defender_scheduled_scan_time = value
            end
            ## 
            ## Gets the defenderSignatureUpdateIntervalInHours property value. The signature update interval in hours. Specify 0 not to check. Valid values 0 to 24
            ## @return a integer
            ## 
            def defender_signature_update_interval_in_hours
                return @defender_signature_update_interval_in_hours
            end
            ## 
            ## Sets the defenderSignatureUpdateIntervalInHours property value. The signature update interval in hours. Specify 0 not to check. Valid values 0 to 24
            ## @param value Value to set for the defender_signature_update_interval_in_hours property.
            ## @return a void
            ## 
            def defender_signature_update_interval_in_hours=(value)
                @defender_signature_update_interval_in_hours = value
            end
            ## 
            ## Gets the defenderSubmitSamplesConsentType property value. Checks for the user consent level in Windows Defender to send data. Possible values are: sendSafeSamplesAutomatically, alwaysPrompt, neverSend, sendAllSamplesAutomatically.
            ## @return a defender_submit_samples_consent_type
            ## 
            def defender_submit_samples_consent_type
                return @defender_submit_samples_consent_type
            end
            ## 
            ## Sets the defenderSubmitSamplesConsentType property value. Checks for the user consent level in Windows Defender to send data. Possible values are: sendSafeSamplesAutomatically, alwaysPrompt, neverSend, sendAllSamplesAutomatically.
            ## @param value Value to set for the defender_submit_samples_consent_type property.
            ## @return a void
            ## 
            def defender_submit_samples_consent_type=(value)
                @defender_submit_samples_consent_type = value
            end
            ## 
            ## Gets the defenderSystemScanSchedule property value. Possible values for a weekly schedule.
            ## @return a weekly_schedule
            ## 
            def defender_system_scan_schedule
                return @defender_system_scan_schedule
            end
            ## 
            ## Sets the defenderSystemScanSchedule property value. Possible values for a weekly schedule.
            ## @param value Value to set for the defender_system_scan_schedule property.
            ## @return a void
            ## 
            def defender_system_scan_schedule=(value)
                @defender_system_scan_schedule = value
            end
            ## 
            ## Gets the developerUnlockSetting property value. State Management Setting.
            ## @return a state_management_setting
            ## 
            def developer_unlock_setting
                return @developer_unlock_setting
            end
            ## 
            ## Sets the developerUnlockSetting property value. State Management Setting.
            ## @param value Value to set for the developer_unlock_setting property.
            ## @return a void
            ## 
            def developer_unlock_setting=(value)
                @developer_unlock_setting = value
            end
            ## 
            ## Gets the deviceManagementBlockFactoryResetOnMobile property value. Indicates whether or not to Block the user from resetting their phone.
            ## @return a boolean
            ## 
            def device_management_block_factory_reset_on_mobile
                return @device_management_block_factory_reset_on_mobile
            end
            ## 
            ## Sets the deviceManagementBlockFactoryResetOnMobile property value. Indicates whether or not to Block the user from resetting their phone.
            ## @param value Value to set for the device_management_block_factory_reset_on_mobile property.
            ## @return a void
            ## 
            def device_management_block_factory_reset_on_mobile=(value)
                @device_management_block_factory_reset_on_mobile = value
            end
            ## 
            ## Gets the deviceManagementBlockManualUnenroll property value. Indicates whether or not to Block the user from doing manual un-enrollment from device management.
            ## @return a boolean
            ## 
            def device_management_block_manual_unenroll
                return @device_management_block_manual_unenroll
            end
            ## 
            ## Sets the deviceManagementBlockManualUnenroll property value. Indicates whether or not to Block the user from doing manual un-enrollment from device management.
            ## @param value Value to set for the device_management_block_manual_unenroll property.
            ## @return a void
            ## 
            def device_management_block_manual_unenroll=(value)
                @device_management_block_manual_unenroll = value
            end
            ## 
            ## Gets the diagnosticsDataSubmissionMode property value. Allow the device to send diagnostic and usage telemetry data, such as Watson.
            ## @return a diagnostic_data_submission_mode
            ## 
            def diagnostics_data_submission_mode
                return @diagnostics_data_submission_mode
            end
            ## 
            ## Sets the diagnosticsDataSubmissionMode property value. Allow the device to send diagnostic and usage telemetry data, such as Watson.
            ## @param value Value to set for the diagnostics_data_submission_mode property.
            ## @return a void
            ## 
            def diagnostics_data_submission_mode=(value)
                @diagnostics_data_submission_mode = value
            end
            ## 
            ## Gets the displayAppListWithGdiDPIScalingTurnedOff property value. List of legacy applications that have GDI DPI Scaling turned off.
            ## @return a string
            ## 
            def display_app_list_with_gdi_d_p_i_scaling_turned_off
                return @display_app_list_with_gdi_d_p_i_scaling_turned_off
            end
            ## 
            ## Sets the displayAppListWithGdiDPIScalingTurnedOff property value. List of legacy applications that have GDI DPI Scaling turned off.
            ## @param value Value to set for the display_app_list_with_gdi_d_p_i_scaling_turned_off property.
            ## @return a void
            ## 
            def display_app_list_with_gdi_d_p_i_scaling_turned_off=(value)
                @display_app_list_with_gdi_d_p_i_scaling_turned_off = value
            end
            ## 
            ## Gets the displayAppListWithGdiDPIScalingTurnedOn property value. List of legacy applications that have GDI DPI Scaling turned on.
            ## @return a string
            ## 
            def display_app_list_with_gdi_d_p_i_scaling_turned_on
                return @display_app_list_with_gdi_d_p_i_scaling_turned_on
            end
            ## 
            ## Sets the displayAppListWithGdiDPIScalingTurnedOn property value. List of legacy applications that have GDI DPI Scaling turned on.
            ## @param value Value to set for the display_app_list_with_gdi_d_p_i_scaling_turned_on property.
            ## @return a void
            ## 
            def display_app_list_with_gdi_d_p_i_scaling_turned_on=(value)
                @display_app_list_with_gdi_d_p_i_scaling_turned_on = value
            end
            ## 
            ## Gets the edgeAllowStartPagesModification property value. Allow users to change Start pages on Edge. Use the EdgeHomepageUrls to specify the Start pages that the user would see by default when they open Edge.
            ## @return a boolean
            ## 
            def edge_allow_start_pages_modification
                return @edge_allow_start_pages_modification
            end
            ## 
            ## Sets the edgeAllowStartPagesModification property value. Allow users to change Start pages on Edge. Use the EdgeHomepageUrls to specify the Start pages that the user would see by default when they open Edge.
            ## @param value Value to set for the edge_allow_start_pages_modification property.
            ## @return a void
            ## 
            def edge_allow_start_pages_modification=(value)
                @edge_allow_start_pages_modification = value
            end
            ## 
            ## Gets the edgeBlockAccessToAboutFlags property value. Indicates whether or not to prevent access to about flags on Edge browser.
            ## @return a boolean
            ## 
            def edge_block_access_to_about_flags
                return @edge_block_access_to_about_flags
            end
            ## 
            ## Sets the edgeBlockAccessToAboutFlags property value. Indicates whether or not to prevent access to about flags on Edge browser.
            ## @param value Value to set for the edge_block_access_to_about_flags property.
            ## @return a void
            ## 
            def edge_block_access_to_about_flags=(value)
                @edge_block_access_to_about_flags = value
            end
            ## 
            ## Gets the edgeBlockAddressBarDropdown property value. Block the address bar dropdown functionality in Microsoft Edge. Disable this settings to minimize network connections from Microsoft Edge to Microsoft services.
            ## @return a boolean
            ## 
            def edge_block_address_bar_dropdown
                return @edge_block_address_bar_dropdown
            end
            ## 
            ## Sets the edgeBlockAddressBarDropdown property value. Block the address bar dropdown functionality in Microsoft Edge. Disable this settings to minimize network connections from Microsoft Edge to Microsoft services.
            ## @param value Value to set for the edge_block_address_bar_dropdown property.
            ## @return a void
            ## 
            def edge_block_address_bar_dropdown=(value)
                @edge_block_address_bar_dropdown = value
            end
            ## 
            ## Gets the edgeBlockAutofill property value. Indicates whether or not to block auto fill.
            ## @return a boolean
            ## 
            def edge_block_autofill
                return @edge_block_autofill
            end
            ## 
            ## Sets the edgeBlockAutofill property value. Indicates whether or not to block auto fill.
            ## @param value Value to set for the edge_block_autofill property.
            ## @return a void
            ## 
            def edge_block_autofill=(value)
                @edge_block_autofill = value
            end
            ## 
            ## Gets the edgeBlockCompatibilityList property value. Block Microsoft compatibility list in Microsoft Edge. This list from Microsoft helps Edge properly display sites with known compatibility issues.
            ## @return a boolean
            ## 
            def edge_block_compatibility_list
                return @edge_block_compatibility_list
            end
            ## 
            ## Sets the edgeBlockCompatibilityList property value. Block Microsoft compatibility list in Microsoft Edge. This list from Microsoft helps Edge properly display sites with known compatibility issues.
            ## @param value Value to set for the edge_block_compatibility_list property.
            ## @return a void
            ## 
            def edge_block_compatibility_list=(value)
                @edge_block_compatibility_list = value
            end
            ## 
            ## Gets the edgeBlockDeveloperTools property value. Indicates whether or not to block developer tools in the Edge browser.
            ## @return a boolean
            ## 
            def edge_block_developer_tools
                return @edge_block_developer_tools
            end
            ## 
            ## Sets the edgeBlockDeveloperTools property value. Indicates whether or not to block developer tools in the Edge browser.
            ## @param value Value to set for the edge_block_developer_tools property.
            ## @return a void
            ## 
            def edge_block_developer_tools=(value)
                @edge_block_developer_tools = value
            end
            ## 
            ## Gets the edgeBlockEditFavorites property value. Indicates whether or not to Block the user from making changes to Favorites.
            ## @return a boolean
            ## 
            def edge_block_edit_favorites
                return @edge_block_edit_favorites
            end
            ## 
            ## Sets the edgeBlockEditFavorites property value. Indicates whether or not to Block the user from making changes to Favorites.
            ## @param value Value to set for the edge_block_edit_favorites property.
            ## @return a void
            ## 
            def edge_block_edit_favorites=(value)
                @edge_block_edit_favorites = value
            end
            ## 
            ## Gets the edgeBlockExtensions property value. Indicates whether or not to block extensions in the Edge browser.
            ## @return a boolean
            ## 
            def edge_block_extensions
                return @edge_block_extensions
            end
            ## 
            ## Sets the edgeBlockExtensions property value. Indicates whether or not to block extensions in the Edge browser.
            ## @param value Value to set for the edge_block_extensions property.
            ## @return a void
            ## 
            def edge_block_extensions=(value)
                @edge_block_extensions = value
            end
            ## 
            ## Gets the edgeBlockFullScreenMode property value. Allow or prevent Edge from entering the full screen mode.
            ## @return a boolean
            ## 
            def edge_block_full_screen_mode
                return @edge_block_full_screen_mode
            end
            ## 
            ## Sets the edgeBlockFullScreenMode property value. Allow or prevent Edge from entering the full screen mode.
            ## @param value Value to set for the edge_block_full_screen_mode property.
            ## @return a void
            ## 
            def edge_block_full_screen_mode=(value)
                @edge_block_full_screen_mode = value
            end
            ## 
            ## Gets the edgeBlockInPrivateBrowsing property value. Indicates whether or not to block InPrivate browsing on corporate networks, in the Edge browser.
            ## @return a boolean
            ## 
            def edge_block_in_private_browsing
                return @edge_block_in_private_browsing
            end
            ## 
            ## Sets the edgeBlockInPrivateBrowsing property value. Indicates whether or not to block InPrivate browsing on corporate networks, in the Edge browser.
            ## @param value Value to set for the edge_block_in_private_browsing property.
            ## @return a void
            ## 
            def edge_block_in_private_browsing=(value)
                @edge_block_in_private_browsing = value
            end
            ## 
            ## Gets the edgeBlockJavaScript property value. Indicates whether or not to Block the user from using JavaScript.
            ## @return a boolean
            ## 
            def edge_block_java_script
                return @edge_block_java_script
            end
            ## 
            ## Sets the edgeBlockJavaScript property value. Indicates whether or not to Block the user from using JavaScript.
            ## @param value Value to set for the edge_block_java_script property.
            ## @return a void
            ## 
            def edge_block_java_script=(value)
                @edge_block_java_script = value
            end
            ## 
            ## Gets the edgeBlockLiveTileDataCollection property value. Block the collection of information by Microsoft for live tile creation when users pin a site to Start from Microsoft Edge.
            ## @return a boolean
            ## 
            def edge_block_live_tile_data_collection
                return @edge_block_live_tile_data_collection
            end
            ## 
            ## Sets the edgeBlockLiveTileDataCollection property value. Block the collection of information by Microsoft for live tile creation when users pin a site to Start from Microsoft Edge.
            ## @param value Value to set for the edge_block_live_tile_data_collection property.
            ## @return a void
            ## 
            def edge_block_live_tile_data_collection=(value)
                @edge_block_live_tile_data_collection = value
            end
            ## 
            ## Gets the edgeBlockPasswordManager property value. Indicates whether or not to Block password manager.
            ## @return a boolean
            ## 
            def edge_block_password_manager
                return @edge_block_password_manager
            end
            ## 
            ## Sets the edgeBlockPasswordManager property value. Indicates whether or not to Block password manager.
            ## @param value Value to set for the edge_block_password_manager property.
            ## @return a void
            ## 
            def edge_block_password_manager=(value)
                @edge_block_password_manager = value
            end
            ## 
            ## Gets the edgeBlockPopups property value. Indicates whether or not to block popups.
            ## @return a boolean
            ## 
            def edge_block_popups
                return @edge_block_popups
            end
            ## 
            ## Sets the edgeBlockPopups property value. Indicates whether or not to block popups.
            ## @param value Value to set for the edge_block_popups property.
            ## @return a void
            ## 
            def edge_block_popups=(value)
                @edge_block_popups = value
            end
            ## 
            ## Gets the edgeBlockPrelaunch property value. Decide whether Microsoft Edge is prelaunched at Windows startup.
            ## @return a boolean
            ## 
            def edge_block_prelaunch
                return @edge_block_prelaunch
            end
            ## 
            ## Sets the edgeBlockPrelaunch property value. Decide whether Microsoft Edge is prelaunched at Windows startup.
            ## @param value Value to set for the edge_block_prelaunch property.
            ## @return a void
            ## 
            def edge_block_prelaunch=(value)
                @edge_block_prelaunch = value
            end
            ## 
            ## Gets the edgeBlockPrinting property value. Configure Edge to allow or block printing.
            ## @return a boolean
            ## 
            def edge_block_printing
                return @edge_block_printing
            end
            ## 
            ## Sets the edgeBlockPrinting property value. Configure Edge to allow or block printing.
            ## @param value Value to set for the edge_block_printing property.
            ## @return a void
            ## 
            def edge_block_printing=(value)
                @edge_block_printing = value
            end
            ## 
            ## Gets the edgeBlockSavingHistory property value. Configure Edge to allow browsing history to be saved or to never save browsing history.
            ## @return a boolean
            ## 
            def edge_block_saving_history
                return @edge_block_saving_history
            end
            ## 
            ## Sets the edgeBlockSavingHistory property value. Configure Edge to allow browsing history to be saved or to never save browsing history.
            ## @param value Value to set for the edge_block_saving_history property.
            ## @return a void
            ## 
            def edge_block_saving_history=(value)
                @edge_block_saving_history = value
            end
            ## 
            ## Gets the edgeBlockSearchEngineCustomization property value. Indicates whether or not to block the user from adding new search engine or changing the default search engine.
            ## @return a boolean
            ## 
            def edge_block_search_engine_customization
                return @edge_block_search_engine_customization
            end
            ## 
            ## Sets the edgeBlockSearchEngineCustomization property value. Indicates whether or not to block the user from adding new search engine or changing the default search engine.
            ## @param value Value to set for the edge_block_search_engine_customization property.
            ## @return a void
            ## 
            def edge_block_search_engine_customization=(value)
                @edge_block_search_engine_customization = value
            end
            ## 
            ## Gets the edgeBlockSearchSuggestions property value. Indicates whether or not to block the user from using the search suggestions in the address bar.
            ## @return a boolean
            ## 
            def edge_block_search_suggestions
                return @edge_block_search_suggestions
            end
            ## 
            ## Sets the edgeBlockSearchSuggestions property value. Indicates whether or not to block the user from using the search suggestions in the address bar.
            ## @param value Value to set for the edge_block_search_suggestions property.
            ## @return a void
            ## 
            def edge_block_search_suggestions=(value)
                @edge_block_search_suggestions = value
            end
            ## 
            ## Gets the edgeBlockSendingDoNotTrackHeader property value. Indicates whether or not to Block the user from sending the do not track header.
            ## @return a boolean
            ## 
            def edge_block_sending_do_not_track_header
                return @edge_block_sending_do_not_track_header
            end
            ## 
            ## Sets the edgeBlockSendingDoNotTrackHeader property value. Indicates whether or not to Block the user from sending the do not track header.
            ## @param value Value to set for the edge_block_sending_do_not_track_header property.
            ## @return a void
            ## 
            def edge_block_sending_do_not_track_header=(value)
                @edge_block_sending_do_not_track_header = value
            end
            ## 
            ## Gets the edgeBlockSendingIntranetTrafficToInternetExplorer property value. Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer. Note: the name of this property is misleading; the property is obsolete, use EdgeSendIntranetTrafficToInternetExplorer instead.
            ## @return a boolean
            ## 
            def edge_block_sending_intranet_traffic_to_internet_explorer
                return @edge_block_sending_intranet_traffic_to_internet_explorer
            end
            ## 
            ## Sets the edgeBlockSendingIntranetTrafficToInternetExplorer property value. Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer. Note: the name of this property is misleading; the property is obsolete, use EdgeSendIntranetTrafficToInternetExplorer instead.
            ## @param value Value to set for the edge_block_sending_intranet_traffic_to_internet_explorer property.
            ## @return a void
            ## 
            def edge_block_sending_intranet_traffic_to_internet_explorer=(value)
                @edge_block_sending_intranet_traffic_to_internet_explorer = value
            end
            ## 
            ## Gets the edgeBlockSideloadingExtensions property value. Indicates whether the user can sideload extensions.
            ## @return a boolean
            ## 
            def edge_block_sideloading_extensions
                return @edge_block_sideloading_extensions
            end
            ## 
            ## Sets the edgeBlockSideloadingExtensions property value. Indicates whether the user can sideload extensions.
            ## @param value Value to set for the edge_block_sideloading_extensions property.
            ## @return a void
            ## 
            def edge_block_sideloading_extensions=(value)
                @edge_block_sideloading_extensions = value
            end
            ## 
            ## Gets the edgeBlockTabPreloading property value. Configure whether Edge preloads the new tab page at Windows startup.
            ## @return a boolean
            ## 
            def edge_block_tab_preloading
                return @edge_block_tab_preloading
            end
            ## 
            ## Sets the edgeBlockTabPreloading property value. Configure whether Edge preloads the new tab page at Windows startup.
            ## @param value Value to set for the edge_block_tab_preloading property.
            ## @return a void
            ## 
            def edge_block_tab_preloading=(value)
                @edge_block_tab_preloading = value
            end
            ## 
            ## Gets the edgeBlockWebContentOnNewTabPage property value. Configure to load a blank page in Edge instead of the default New tab page and prevent users from changing it.
            ## @return a boolean
            ## 
            def edge_block_web_content_on_new_tab_page
                return @edge_block_web_content_on_new_tab_page
            end
            ## 
            ## Sets the edgeBlockWebContentOnNewTabPage property value. Configure to load a blank page in Edge instead of the default New tab page and prevent users from changing it.
            ## @param value Value to set for the edge_block_web_content_on_new_tab_page property.
            ## @return a void
            ## 
            def edge_block_web_content_on_new_tab_page=(value)
                @edge_block_web_content_on_new_tab_page = value
            end
            ## 
            ## Gets the edgeBlocked property value. Indicates whether or not to Block the user from using the Edge browser.
            ## @return a boolean
            ## 
            def edge_blocked
                return @edge_blocked
            end
            ## 
            ## Sets the edgeBlocked property value. Indicates whether or not to Block the user from using the Edge browser.
            ## @param value Value to set for the edge_blocked property.
            ## @return a void
            ## 
            def edge_blocked=(value)
                @edge_blocked = value
            end
            ## 
            ## Gets the edgeClearBrowsingDataOnExit property value. Clear browsing data on exiting Microsoft Edge.
            ## @return a boolean
            ## 
            def edge_clear_browsing_data_on_exit
                return @edge_clear_browsing_data_on_exit
            end
            ## 
            ## Sets the edgeClearBrowsingDataOnExit property value. Clear browsing data on exiting Microsoft Edge.
            ## @param value Value to set for the edge_clear_browsing_data_on_exit property.
            ## @return a void
            ## 
            def edge_clear_browsing_data_on_exit=(value)
                @edge_clear_browsing_data_on_exit = value
            end
            ## 
            ## Gets the edgeCookiePolicy property value. Possible values to specify which cookies are allowed in Microsoft Edge.
            ## @return a edge_cookie_policy
            ## 
            def edge_cookie_policy
                return @edge_cookie_policy
            end
            ## 
            ## Sets the edgeCookiePolicy property value. Possible values to specify which cookies are allowed in Microsoft Edge.
            ## @param value Value to set for the edge_cookie_policy property.
            ## @return a void
            ## 
            def edge_cookie_policy=(value)
                @edge_cookie_policy = value
            end
            ## 
            ## Gets the edgeDisableFirstRunPage property value. Block the Microsoft web page that opens on the first use of Microsoft Edge. This policy allows enterprises, like those enrolled in zero emissions configurations, to block this page.
            ## @return a boolean
            ## 
            def edge_disable_first_run_page
                return @edge_disable_first_run_page
            end
            ## 
            ## Sets the edgeDisableFirstRunPage property value. Block the Microsoft web page that opens on the first use of Microsoft Edge. This policy allows enterprises, like those enrolled in zero emissions configurations, to block this page.
            ## @param value Value to set for the edge_disable_first_run_page property.
            ## @return a void
            ## 
            def edge_disable_first_run_page=(value)
                @edge_disable_first_run_page = value
            end
            ## 
            ## Gets the edgeEnterpriseModeSiteListLocation property value. Indicates the enterprise mode site list location. Could be a local file, local network or http location.
            ## @return a string
            ## 
            def edge_enterprise_mode_site_list_location
                return @edge_enterprise_mode_site_list_location
            end
            ## 
            ## Sets the edgeEnterpriseModeSiteListLocation property value. Indicates the enterprise mode site list location. Could be a local file, local network or http location.
            ## @param value Value to set for the edge_enterprise_mode_site_list_location property.
            ## @return a void
            ## 
            def edge_enterprise_mode_site_list_location=(value)
                @edge_enterprise_mode_site_list_location = value
            end
            ## 
            ## Gets the edgeFavoritesBarVisibility property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def edge_favorites_bar_visibility
                return @edge_favorites_bar_visibility
            end
            ## 
            ## Sets the edgeFavoritesBarVisibility property value. Generic visibility state.
            ## @param value Value to set for the edge_favorites_bar_visibility property.
            ## @return a void
            ## 
            def edge_favorites_bar_visibility=(value)
                @edge_favorites_bar_visibility = value
            end
            ## 
            ## Gets the edgeFavoritesListLocation property value. The location of the favorites list to provision. Could be a local file, local network or http location.
            ## @return a string
            ## 
            def edge_favorites_list_location
                return @edge_favorites_list_location
            end
            ## 
            ## Sets the edgeFavoritesListLocation property value. The location of the favorites list to provision. Could be a local file, local network or http location.
            ## @param value Value to set for the edge_favorites_list_location property.
            ## @return a void
            ## 
            def edge_favorites_list_location=(value)
                @edge_favorites_list_location = value
            end
            ## 
            ## Gets the edgeFirstRunUrl property value. The first run URL for when Edge browser is opened for the first time.
            ## @return a string
            ## 
            def edge_first_run_url
                return @edge_first_run_url
            end
            ## 
            ## Sets the edgeFirstRunUrl property value. The first run URL for when Edge browser is opened for the first time.
            ## @param value Value to set for the edge_first_run_url property.
            ## @return a void
            ## 
            def edge_first_run_url=(value)
                @edge_first_run_url = value
            end
            ## 
            ## Gets the edgeHomeButtonConfiguration property value. Causes the Home button to either hide, load the default Start page, load a New tab page, or a custom URL
            ## @return a edge_home_button_configuration
            ## 
            def edge_home_button_configuration
                return @edge_home_button_configuration
            end
            ## 
            ## Sets the edgeHomeButtonConfiguration property value. Causes the Home button to either hide, load the default Start page, load a New tab page, or a custom URL
            ## @param value Value to set for the edge_home_button_configuration property.
            ## @return a void
            ## 
            def edge_home_button_configuration=(value)
                @edge_home_button_configuration = value
            end
            ## 
            ## Gets the edgeHomeButtonConfigurationEnabled property value. Enable the Home button configuration.
            ## @return a boolean
            ## 
            def edge_home_button_configuration_enabled
                return @edge_home_button_configuration_enabled
            end
            ## 
            ## Sets the edgeHomeButtonConfigurationEnabled property value. Enable the Home button configuration.
            ## @param value Value to set for the edge_home_button_configuration_enabled property.
            ## @return a void
            ## 
            def edge_home_button_configuration_enabled=(value)
                @edge_home_button_configuration_enabled = value
            end
            ## 
            ## Gets the edgeHomepageUrls property value. The list of URLs for homepages shodwn on MDM-enrolled devices on Edge browser.
            ## @return a string
            ## 
            def edge_homepage_urls
                return @edge_homepage_urls
            end
            ## 
            ## Sets the edgeHomepageUrls property value. The list of URLs for homepages shodwn on MDM-enrolled devices on Edge browser.
            ## @param value Value to set for the edge_homepage_urls property.
            ## @return a void
            ## 
            def edge_homepage_urls=(value)
                @edge_homepage_urls = value
            end
            ## 
            ## Gets the edgeKioskModeRestriction property value. Specify how the Microsoft Edge settings are restricted based on kiosk mode.
            ## @return a edge_kiosk_mode_restriction_type
            ## 
            def edge_kiosk_mode_restriction
                return @edge_kiosk_mode_restriction
            end
            ## 
            ## Sets the edgeKioskModeRestriction property value. Specify how the Microsoft Edge settings are restricted based on kiosk mode.
            ## @param value Value to set for the edge_kiosk_mode_restriction property.
            ## @return a void
            ## 
            def edge_kiosk_mode_restriction=(value)
                @edge_kiosk_mode_restriction = value
            end
            ## 
            ## Gets the edgeKioskResetAfterIdleTimeInMinutes property value. Specifies the time in minutes from the last user activity before Microsoft Edge kiosk resets.  Valid values are 0-1440. The default is 5. 0 indicates no reset. Valid values 0 to 1440
            ## @return a integer
            ## 
            def edge_kiosk_reset_after_idle_time_in_minutes
                return @edge_kiosk_reset_after_idle_time_in_minutes
            end
            ## 
            ## Sets the edgeKioskResetAfterIdleTimeInMinutes property value. Specifies the time in minutes from the last user activity before Microsoft Edge kiosk resets.  Valid values are 0-1440. The default is 5. 0 indicates no reset. Valid values 0 to 1440
            ## @param value Value to set for the edge_kiosk_reset_after_idle_time_in_minutes property.
            ## @return a void
            ## 
            def edge_kiosk_reset_after_idle_time_in_minutes=(value)
                @edge_kiosk_reset_after_idle_time_in_minutes = value
            end
            ## 
            ## Gets the edgeNewTabPageURL property value. Specify the page opened when new tabs are created.
            ## @return a string
            ## 
            def edge_new_tab_page_u_r_l
                return @edge_new_tab_page_u_r_l
            end
            ## 
            ## Sets the edgeNewTabPageURL property value. Specify the page opened when new tabs are created.
            ## @param value Value to set for the edge_new_tab_page_u_r_l property.
            ## @return a void
            ## 
            def edge_new_tab_page_u_r_l=(value)
                @edge_new_tab_page_u_r_l = value
            end
            ## 
            ## Gets the edgeOpensWith property value. Possible values for the EdgeOpensWith setting.
            ## @return a edge_open_options
            ## 
            def edge_opens_with
                return @edge_opens_with
            end
            ## 
            ## Sets the edgeOpensWith property value. Possible values for the EdgeOpensWith setting.
            ## @param value Value to set for the edge_opens_with property.
            ## @return a void
            ## 
            def edge_opens_with=(value)
                @edge_opens_with = value
            end
            ## 
            ## Gets the edgePreventCertificateErrorOverride property value. Allow or prevent users from overriding certificate errors.
            ## @return a boolean
            ## 
            def edge_prevent_certificate_error_override
                return @edge_prevent_certificate_error_override
            end
            ## 
            ## Sets the edgePreventCertificateErrorOverride property value. Allow or prevent users from overriding certificate errors.
            ## @param value Value to set for the edge_prevent_certificate_error_override property.
            ## @return a void
            ## 
            def edge_prevent_certificate_error_override=(value)
                @edge_prevent_certificate_error_override = value
            end
            ## 
            ## Gets the edgeRequireSmartScreen property value. Indicates whether or not to Require the user to use the smart screen filter.
            ## @return a boolean
            ## 
            def edge_require_smart_screen
                return @edge_require_smart_screen
            end
            ## 
            ## Sets the edgeRequireSmartScreen property value. Indicates whether or not to Require the user to use the smart screen filter.
            ## @param value Value to set for the edge_require_smart_screen property.
            ## @return a void
            ## 
            def edge_require_smart_screen=(value)
                @edge_require_smart_screen = value
            end
            ## 
            ## Gets the edgeRequiredExtensionPackageFamilyNames property value. Specify the list of package family names of browser extensions that are required and cannot be turned off by the user.
            ## @return a string
            ## 
            def edge_required_extension_package_family_names
                return @edge_required_extension_package_family_names
            end
            ## 
            ## Sets the edgeRequiredExtensionPackageFamilyNames property value. Specify the list of package family names of browser extensions that are required and cannot be turned off by the user.
            ## @param value Value to set for the edge_required_extension_package_family_names property.
            ## @return a void
            ## 
            def edge_required_extension_package_family_names=(value)
                @edge_required_extension_package_family_names = value
            end
            ## 
            ## Gets the edgeSearchEngine property value. Allows IT admins to set a default search engine for MDM-Controlled devices. Users can override this and change their default search engine provided the AllowSearchEngineCustomization policy is not set.
            ## @return a edge_search_engine_base
            ## 
            def edge_search_engine
                return @edge_search_engine
            end
            ## 
            ## Sets the edgeSearchEngine property value. Allows IT admins to set a default search engine for MDM-Controlled devices. Users can override this and change their default search engine provided the AllowSearchEngineCustomization policy is not set.
            ## @param value Value to set for the edge_search_engine property.
            ## @return a void
            ## 
            def edge_search_engine=(value)
                @edge_search_engine = value
            end
            ## 
            ## Gets the edgeSendIntranetTrafficToInternetExplorer property value. Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer.
            ## @return a boolean
            ## 
            def edge_send_intranet_traffic_to_internet_explorer
                return @edge_send_intranet_traffic_to_internet_explorer
            end
            ## 
            ## Sets the edgeSendIntranetTrafficToInternetExplorer property value. Indicates whether or not to switch the intranet traffic from Edge to Internet Explorer.
            ## @param value Value to set for the edge_send_intranet_traffic_to_internet_explorer property.
            ## @return a void
            ## 
            def edge_send_intranet_traffic_to_internet_explorer=(value)
                @edge_send_intranet_traffic_to_internet_explorer = value
            end
            ## 
            ## Gets the edgeShowMessageWhenOpeningInternetExplorerSites property value. What message will be displayed by Edge before switching to Internet Explorer.
            ## @return a internet_explorer_message_setting
            ## 
            def edge_show_message_when_opening_internet_explorer_sites
                return @edge_show_message_when_opening_internet_explorer_sites
            end
            ## 
            ## Sets the edgeShowMessageWhenOpeningInternetExplorerSites property value. What message will be displayed by Edge before switching to Internet Explorer.
            ## @param value Value to set for the edge_show_message_when_opening_internet_explorer_sites property.
            ## @return a void
            ## 
            def edge_show_message_when_opening_internet_explorer_sites=(value)
                @edge_show_message_when_opening_internet_explorer_sites = value
            end
            ## 
            ## Gets the edgeSyncFavoritesWithInternetExplorer property value. Enable favorites sync between Internet Explorer and Microsoft Edge. Additions, deletions, modifications and order changes to favorites are shared between browsers.
            ## @return a boolean
            ## 
            def edge_sync_favorites_with_internet_explorer
                return @edge_sync_favorites_with_internet_explorer
            end
            ## 
            ## Sets the edgeSyncFavoritesWithInternetExplorer property value. Enable favorites sync between Internet Explorer and Microsoft Edge. Additions, deletions, modifications and order changes to favorites are shared between browsers.
            ## @param value Value to set for the edge_sync_favorites_with_internet_explorer property.
            ## @return a void
            ## 
            def edge_sync_favorites_with_internet_explorer=(value)
                @edge_sync_favorites_with_internet_explorer = value
            end
            ## 
            ## Gets the edgeTelemetryForMicrosoft365Analytics property value. Type of browsing data sent to Microsoft 365 analytics
            ## @return a edge_telemetry_mode
            ## 
            def edge_telemetry_for_microsoft365_analytics
                return @edge_telemetry_for_microsoft365_analytics
            end
            ## 
            ## Sets the edgeTelemetryForMicrosoft365Analytics property value. Type of browsing data sent to Microsoft 365 analytics
            ## @param value Value to set for the edge_telemetry_for_microsoft365_analytics property.
            ## @return a void
            ## 
            def edge_telemetry_for_microsoft365_analytics=(value)
                @edge_telemetry_for_microsoft365_analytics = value
            end
            ## 
            ## Gets the enableAutomaticRedeployment property value. Allow users with administrative rights to delete all user data and settings using CTRL + Win + R at the device lock screen so that the device can be automatically re-configured and re-enrolled into management.
            ## @return a boolean
            ## 
            def enable_automatic_redeployment
                return @enable_automatic_redeployment
            end
            ## 
            ## Sets the enableAutomaticRedeployment property value. Allow users with administrative rights to delete all user data and settings using CTRL + Win + R at the device lock screen so that the device can be automatically re-configured and re-enrolled into management.
            ## @param value Value to set for the enable_automatic_redeployment property.
            ## @return a void
            ## 
            def enable_automatic_redeployment=(value)
                @enable_automatic_redeployment = value
            end
            ## 
            ## Gets the energySaverOnBatteryThresholdPercentage property value. This setting allows you to specify battery charge level at which Energy Saver is turned on. While on battery, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            ## @return a integer
            ## 
            def energy_saver_on_battery_threshold_percentage
                return @energy_saver_on_battery_threshold_percentage
            end
            ## 
            ## Sets the energySaverOnBatteryThresholdPercentage property value. This setting allows you to specify battery charge level at which Energy Saver is turned on. While on battery, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            ## @param value Value to set for the energy_saver_on_battery_threshold_percentage property.
            ## @return a void
            ## 
            def energy_saver_on_battery_threshold_percentage=(value)
                @energy_saver_on_battery_threshold_percentage = value
            end
            ## 
            ## Gets the energySaverPluggedInThresholdPercentage property value. This setting allows you to specify battery charge level at which Energy Saver is turned on. While plugged in, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            ## @return a integer
            ## 
            def energy_saver_plugged_in_threshold_percentage
                return @energy_saver_plugged_in_threshold_percentage
            end
            ## 
            ## Sets the energySaverPluggedInThresholdPercentage property value. This setting allows you to specify battery charge level at which Energy Saver is turned on. While plugged in, Energy Saver is automatically turned on at (and below) the specified battery charge level. Valid input range (0-100). Valid values 0 to 100
            ## @param value Value to set for the energy_saver_plugged_in_threshold_percentage property.
            ## @return a void
            ## 
            def energy_saver_plugged_in_threshold_percentage=(value)
                @energy_saver_plugged_in_threshold_percentage = value
            end
            ## 
            ## Gets the enterpriseCloudPrintDiscoveryEndPoint property value. Endpoint for discovering cloud printers.
            ## @return a string
            ## 
            def enterprise_cloud_print_discovery_end_point
                return @enterprise_cloud_print_discovery_end_point
            end
            ## 
            ## Sets the enterpriseCloudPrintDiscoveryEndPoint property value. Endpoint for discovering cloud printers.
            ## @param value Value to set for the enterprise_cloud_print_discovery_end_point property.
            ## @return a void
            ## 
            def enterprise_cloud_print_discovery_end_point=(value)
                @enterprise_cloud_print_discovery_end_point = value
            end
            ## 
            ## Gets the enterpriseCloudPrintDiscoveryMaxLimit property value. Maximum number of printers that should be queried from a discovery endpoint. This is a mobile only setting. Valid values 1 to 65535
            ## @return a integer
            ## 
            def enterprise_cloud_print_discovery_max_limit
                return @enterprise_cloud_print_discovery_max_limit
            end
            ## 
            ## Sets the enterpriseCloudPrintDiscoveryMaxLimit property value. Maximum number of printers that should be queried from a discovery endpoint. This is a mobile only setting. Valid values 1 to 65535
            ## @param value Value to set for the enterprise_cloud_print_discovery_max_limit property.
            ## @return a void
            ## 
            def enterprise_cloud_print_discovery_max_limit=(value)
                @enterprise_cloud_print_discovery_max_limit = value
            end
            ## 
            ## Gets the enterpriseCloudPrintMopriaDiscoveryResourceIdentifier property value. OAuth resource URI for printer discovery service as configured in Azure portal.
            ## @return a string
            ## 
            def enterprise_cloud_print_mopria_discovery_resource_identifier
                return @enterprise_cloud_print_mopria_discovery_resource_identifier
            end
            ## 
            ## Sets the enterpriseCloudPrintMopriaDiscoveryResourceIdentifier property value. OAuth resource URI for printer discovery service as configured in Azure portal.
            ## @param value Value to set for the enterprise_cloud_print_mopria_discovery_resource_identifier property.
            ## @return a void
            ## 
            def enterprise_cloud_print_mopria_discovery_resource_identifier=(value)
                @enterprise_cloud_print_mopria_discovery_resource_identifier = value
            end
            ## 
            ## Gets the enterpriseCloudPrintOAuthAuthority property value. Authentication endpoint for acquiring OAuth tokens.
            ## @return a string
            ## 
            def enterprise_cloud_print_o_auth_authority
                return @enterprise_cloud_print_o_auth_authority
            end
            ## 
            ## Sets the enterpriseCloudPrintOAuthAuthority property value. Authentication endpoint for acquiring OAuth tokens.
            ## @param value Value to set for the enterprise_cloud_print_o_auth_authority property.
            ## @return a void
            ## 
            def enterprise_cloud_print_o_auth_authority=(value)
                @enterprise_cloud_print_o_auth_authority = value
            end
            ## 
            ## Gets the enterpriseCloudPrintOAuthClientIdentifier property value. GUID of a client application authorized to retrieve OAuth tokens from the OAuth Authority.
            ## @return a string
            ## 
            def enterprise_cloud_print_o_auth_client_identifier
                return @enterprise_cloud_print_o_auth_client_identifier
            end
            ## 
            ## Sets the enterpriseCloudPrintOAuthClientIdentifier property value. GUID of a client application authorized to retrieve OAuth tokens from the OAuth Authority.
            ## @param value Value to set for the enterprise_cloud_print_o_auth_client_identifier property.
            ## @return a void
            ## 
            def enterprise_cloud_print_o_auth_client_identifier=(value)
                @enterprise_cloud_print_o_auth_client_identifier = value
            end
            ## 
            ## Gets the enterpriseCloudPrintResourceIdentifier property value. OAuth resource URI for print service as configured in the Azure portal.
            ## @return a string
            ## 
            def enterprise_cloud_print_resource_identifier
                return @enterprise_cloud_print_resource_identifier
            end
            ## 
            ## Sets the enterpriseCloudPrintResourceIdentifier property value. OAuth resource URI for print service as configured in the Azure portal.
            ## @param value Value to set for the enterprise_cloud_print_resource_identifier property.
            ## @return a void
            ## 
            def enterprise_cloud_print_resource_identifier=(value)
                @enterprise_cloud_print_resource_identifier = value
            end
            ## 
            ## Gets the experienceBlockDeviceDiscovery property value. Indicates whether or not to enable device discovery UX.
            ## @return a boolean
            ## 
            def experience_block_device_discovery
                return @experience_block_device_discovery
            end
            ## 
            ## Sets the experienceBlockDeviceDiscovery property value. Indicates whether or not to enable device discovery UX.
            ## @param value Value to set for the experience_block_device_discovery property.
            ## @return a void
            ## 
            def experience_block_device_discovery=(value)
                @experience_block_device_discovery = value
            end
            ## 
            ## Gets the experienceBlockErrorDialogWhenNoSIM property value. Indicates whether or not to allow the error dialog from displaying if no SIM card is detected.
            ## @return a boolean
            ## 
            def experience_block_error_dialog_when_no_s_i_m
                return @experience_block_error_dialog_when_no_s_i_m
            end
            ## 
            ## Sets the experienceBlockErrorDialogWhenNoSIM property value. Indicates whether or not to allow the error dialog from displaying if no SIM card is detected.
            ## @param value Value to set for the experience_block_error_dialog_when_no_s_i_m property.
            ## @return a void
            ## 
            def experience_block_error_dialog_when_no_s_i_m=(value)
                @experience_block_error_dialog_when_no_s_i_m = value
            end
            ## 
            ## Gets the experienceBlockTaskSwitcher property value. Indicates whether or not to enable task switching on the device.
            ## @return a boolean
            ## 
            def experience_block_task_switcher
                return @experience_block_task_switcher
            end
            ## 
            ## Sets the experienceBlockTaskSwitcher property value. Indicates whether or not to enable task switching on the device.
            ## @param value Value to set for the experience_block_task_switcher property.
            ## @return a void
            ## 
            def experience_block_task_switcher=(value)
                @experience_block_task_switcher = value
            end
            ## 
            ## Gets the experienceDoNotSyncBrowserSettings property value. Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.
            ## @return a browser_sync_setting
            ## 
            def experience_do_not_sync_browser_settings
                return @experience_do_not_sync_browser_settings
            end
            ## 
            ## Sets the experienceDoNotSyncBrowserSettings property value. Allow(Not Configured) or prevent(Block) the syncing of Microsoft Edge Browser settings. Option to prevent syncing across devices, but allow user override.
            ## @param value Value to set for the experience_do_not_sync_browser_settings property.
            ## @return a void
            ## 
            def experience_do_not_sync_browser_settings=(value)
                @experience_do_not_sync_browser_settings = value
            end
            ## 
            ## Gets the findMyFiles property value. Possible values of a property
            ## @return a enablement
            ## 
            def find_my_files
                return @find_my_files
            end
            ## 
            ## Sets the findMyFiles property value. Possible values of a property
            ## @param value Value to set for the find_my_files property.
            ## @return a void
            ## 
            def find_my_files=(value)
                @find_my_files = value
            end
            ## 
            ## Gets the gameDvrBlocked property value. Indicates whether or not to block DVR and broadcasting.
            ## @return a boolean
            ## 
            def game_dvr_blocked
                return @game_dvr_blocked
            end
            ## 
            ## Sets the gameDvrBlocked property value. Indicates whether or not to block DVR and broadcasting.
            ## @param value Value to set for the game_dvr_blocked property.
            ## @return a void
            ## 
            def game_dvr_blocked=(value)
                @game_dvr_blocked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountsBlockAddingNonMicrosoftAccountEmail" => lambda {|n| @accounts_block_adding_non_microsoft_account_email = n.get_boolean_value() },
                    "activateAppsWithVoice" => lambda {|n| @activate_apps_with_voice = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "antiTheftModeBlocked" => lambda {|n| @anti_theft_mode_blocked = n.get_boolean_value() },
                    "appManagementMSIAllowUserControlOverInstall" => lambda {|n| @app_management_m_s_i_allow_user_control_over_install = n.get_boolean_value() },
                    "appManagementMSIAlwaysInstallWithElevatedPrivileges" => lambda {|n| @app_management_m_s_i_always_install_with_elevated_privileges = n.get_boolean_value() },
                    "appManagementPackageFamilyNamesToLaunchAfterLogOn" => lambda {|n| @app_management_package_family_names_to_launch_after_log_on = n.get_collection_of_primitive_values(String) },
                    "appsAllowTrustedAppsSideloading" => lambda {|n| @apps_allow_trusted_apps_sideloading = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                    "appsBlockWindowsStoreOriginatedApps" => lambda {|n| @apps_block_windows_store_originated_apps = n.get_boolean_value() },
                    "authenticationAllowSecondaryDevice" => lambda {|n| @authentication_allow_secondary_device = n.get_boolean_value() },
                    "authenticationPreferredAzureADTenantDomainName" => lambda {|n| @authentication_preferred_azure_a_d_tenant_domain_name = n.get_string_value() },
                    "authenticationWebSignIn" => lambda {|n| @authentication_web_sign_in = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "bluetoothAllowedServices" => lambda {|n| @bluetooth_allowed_services = n.get_collection_of_primitive_values(String) },
                    "bluetoothBlockAdvertising" => lambda {|n| @bluetooth_block_advertising = n.get_boolean_value() },
                    "bluetoothBlockDiscoverableMode" => lambda {|n| @bluetooth_block_discoverable_mode = n.get_boolean_value() },
                    "bluetoothBlockPrePairing" => lambda {|n| @bluetooth_block_pre_pairing = n.get_boolean_value() },
                    "bluetoothBlockPromptedProximalConnections" => lambda {|n| @bluetooth_block_prompted_proximal_connections = n.get_boolean_value() },
                    "bluetoothBlocked" => lambda {|n| @bluetooth_blocked = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "cellularBlockDataWhenRoaming" => lambda {|n| @cellular_block_data_when_roaming = n.get_boolean_value() },
                    "cellularBlockVpn" => lambda {|n| @cellular_block_vpn = n.get_boolean_value() },
                    "cellularBlockVpnWhenRoaming" => lambda {|n| @cellular_block_vpn_when_roaming = n.get_boolean_value() },
                    "cellularData" => lambda {|n| @cellular_data = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                    "certificatesBlockManualRootCertificateInstallation" => lambda {|n| @certificates_block_manual_root_certificate_installation = n.get_boolean_value() },
                    "configureTimeZone" => lambda {|n| @configure_time_zone = n.get_string_value() },
                    "connectedDevicesServiceBlocked" => lambda {|n| @connected_devices_service_blocked = n.get_boolean_value() },
                    "copyPasteBlocked" => lambda {|n| @copy_paste_blocked = n.get_boolean_value() },
                    "cortanaBlocked" => lambda {|n| @cortana_blocked = n.get_boolean_value() },
                    "cryptographyAllowFipsAlgorithmPolicy" => lambda {|n| @cryptography_allow_fips_algorithm_policy = n.get_boolean_value() },
                    "dataProtectionBlockDirectMemoryAccess" => lambda {|n| @data_protection_block_direct_memory_access = n.get_boolean_value() },
                    "defenderBlockEndUserAccess" => lambda {|n| @defender_block_end_user_access = n.get_boolean_value() },
                    "defenderBlockOnAccessProtection" => lambda {|n| @defender_block_on_access_protection = n.get_boolean_value() },
                    "defenderCloudBlockLevel" => lambda {|n| @defender_cloud_block_level = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderCloudBlockLevelType) },
                    "defenderCloudExtendedTimeout" => lambda {|n| @defender_cloud_extended_timeout = n.get_number_value() },
                    "defenderCloudExtendedTimeoutInSeconds" => lambda {|n| @defender_cloud_extended_timeout_in_seconds = n.get_number_value() },
                    "defenderDaysBeforeDeletingQuarantinedMalware" => lambda {|n| @defender_days_before_deleting_quarantined_malware = n.get_number_value() },
                    "defenderDetectedMalwareActions" => lambda {|n| @defender_detected_malware_actions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DefenderDetectedMalwareActions.create_from_discriminator_value(pn) }) },
                    "defenderDisableCatchupFullScan" => lambda {|n| @defender_disable_catchup_full_scan = n.get_boolean_value() },
                    "defenderDisableCatchupQuickScan" => lambda {|n| @defender_disable_catchup_quick_scan = n.get_boolean_value() },
                    "defenderFileExtensionsToExclude" => lambda {|n| @defender_file_extensions_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderFilesAndFoldersToExclude" => lambda {|n| @defender_files_and_folders_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderMonitorFileActivity" => lambda {|n| @defender_monitor_file_activity = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderMonitorFileActivity) },
                    "defenderPotentiallyUnwantedAppAction" => lambda {|n| @defender_potentially_unwanted_app_action = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderPotentiallyUnwantedAppAction) },
                    "defenderPotentiallyUnwantedAppActionSetting" => lambda {|n| @defender_potentially_unwanted_app_action_setting = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderProcessesToExclude" => lambda {|n| @defender_processes_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderPromptForSampleSubmission" => lambda {|n| @defender_prompt_for_sample_submission = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderPromptForSampleSubmission) },
                    "defenderRequireBehaviorMonitoring" => lambda {|n| @defender_require_behavior_monitoring = n.get_boolean_value() },
                    "defenderRequireCloudProtection" => lambda {|n| @defender_require_cloud_protection = n.get_boolean_value() },
                    "defenderRequireNetworkInspectionSystem" => lambda {|n| @defender_require_network_inspection_system = n.get_boolean_value() },
                    "defenderRequireRealTimeMonitoring" => lambda {|n| @defender_require_real_time_monitoring = n.get_boolean_value() },
                    "defenderScanArchiveFiles" => lambda {|n| @defender_scan_archive_files = n.get_boolean_value() },
                    "defenderScanDownloads" => lambda {|n| @defender_scan_downloads = n.get_boolean_value() },
                    "defenderScanIncomingMail" => lambda {|n| @defender_scan_incoming_mail = n.get_boolean_value() },
                    "defenderScanMappedNetworkDrivesDuringFullScan" => lambda {|n| @defender_scan_mapped_network_drives_during_full_scan = n.get_boolean_value() },
                    "defenderScanMaxCpu" => lambda {|n| @defender_scan_max_cpu = n.get_number_value() },
                    "defenderScanNetworkFiles" => lambda {|n| @defender_scan_network_files = n.get_boolean_value() },
                    "defenderScanRemovableDrivesDuringFullScan" => lambda {|n| @defender_scan_removable_drives_during_full_scan = n.get_boolean_value() },
                    "defenderScanScriptsLoadedInInternetExplorer" => lambda {|n| @defender_scan_scripts_loaded_in_internet_explorer = n.get_boolean_value() },
                    "defenderScanType" => lambda {|n| @defender_scan_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderScanType) },
                    "defenderScheduleScanEnableLowCpuPriority" => lambda {|n| @defender_schedule_scan_enable_low_cpu_priority = n.get_boolean_value() },
                    "defenderScheduledQuickScanTime" => lambda {|n| @defender_scheduled_quick_scan_time = n.get_time_value() },
                    "defenderScheduledScanTime" => lambda {|n| @defender_scheduled_scan_time = n.get_time_value() },
                    "defenderSignatureUpdateIntervalInHours" => lambda {|n| @defender_signature_update_interval_in_hours = n.get_number_value() },
                    "defenderSubmitSamplesConsentType" => lambda {|n| @defender_submit_samples_consent_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderSubmitSamplesConsentType) },
                    "defenderSystemScanSchedule" => lambda {|n| @defender_system_scan_schedule = n.get_enum_value(MicrosoftGraphBeta::Models::WeeklySchedule) },
                    "developerUnlockSetting" => lambda {|n| @developer_unlock_setting = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                    "deviceManagementBlockFactoryResetOnMobile" => lambda {|n| @device_management_block_factory_reset_on_mobile = n.get_boolean_value() },
                    "deviceManagementBlockManualUnenroll" => lambda {|n| @device_management_block_manual_unenroll = n.get_boolean_value() },
                    "diagnosticsDataSubmissionMode" => lambda {|n| @diagnostics_data_submission_mode = n.get_enum_value(MicrosoftGraphBeta::Models::DiagnosticDataSubmissionMode) },
                    "displayAppListWithGdiDPIScalingTurnedOff" => lambda {|n| @display_app_list_with_gdi_d_p_i_scaling_turned_off = n.get_collection_of_primitive_values(String) },
                    "displayAppListWithGdiDPIScalingTurnedOn" => lambda {|n| @display_app_list_with_gdi_d_p_i_scaling_turned_on = n.get_collection_of_primitive_values(String) },
                    "edgeAllowStartPagesModification" => lambda {|n| @edge_allow_start_pages_modification = n.get_boolean_value() },
                    "edgeBlockAccessToAboutFlags" => lambda {|n| @edge_block_access_to_about_flags = n.get_boolean_value() },
                    "edgeBlockAddressBarDropdown" => lambda {|n| @edge_block_address_bar_dropdown = n.get_boolean_value() },
                    "edgeBlockAutofill" => lambda {|n| @edge_block_autofill = n.get_boolean_value() },
                    "edgeBlockCompatibilityList" => lambda {|n| @edge_block_compatibility_list = n.get_boolean_value() },
                    "edgeBlockDeveloperTools" => lambda {|n| @edge_block_developer_tools = n.get_boolean_value() },
                    "edgeBlockEditFavorites" => lambda {|n| @edge_block_edit_favorites = n.get_boolean_value() },
                    "edgeBlockExtensions" => lambda {|n| @edge_block_extensions = n.get_boolean_value() },
                    "edgeBlockFullScreenMode" => lambda {|n| @edge_block_full_screen_mode = n.get_boolean_value() },
                    "edgeBlockInPrivateBrowsing" => lambda {|n| @edge_block_in_private_browsing = n.get_boolean_value() },
                    "edgeBlockJavaScript" => lambda {|n| @edge_block_java_script = n.get_boolean_value() },
                    "edgeBlockLiveTileDataCollection" => lambda {|n| @edge_block_live_tile_data_collection = n.get_boolean_value() },
                    "edgeBlockPasswordManager" => lambda {|n| @edge_block_password_manager = n.get_boolean_value() },
                    "edgeBlockPopups" => lambda {|n| @edge_block_popups = n.get_boolean_value() },
                    "edgeBlockPrelaunch" => lambda {|n| @edge_block_prelaunch = n.get_boolean_value() },
                    "edgeBlockPrinting" => lambda {|n| @edge_block_printing = n.get_boolean_value() },
                    "edgeBlockSavingHistory" => lambda {|n| @edge_block_saving_history = n.get_boolean_value() },
                    "edgeBlockSearchEngineCustomization" => lambda {|n| @edge_block_search_engine_customization = n.get_boolean_value() },
                    "edgeBlockSearchSuggestions" => lambda {|n| @edge_block_search_suggestions = n.get_boolean_value() },
                    "edgeBlockSendingDoNotTrackHeader" => lambda {|n| @edge_block_sending_do_not_track_header = n.get_boolean_value() },
                    "edgeBlockSendingIntranetTrafficToInternetExplorer" => lambda {|n| @edge_block_sending_intranet_traffic_to_internet_explorer = n.get_boolean_value() },
                    "edgeBlockSideloadingExtensions" => lambda {|n| @edge_block_sideloading_extensions = n.get_boolean_value() },
                    "edgeBlockTabPreloading" => lambda {|n| @edge_block_tab_preloading = n.get_boolean_value() },
                    "edgeBlockWebContentOnNewTabPage" => lambda {|n| @edge_block_web_content_on_new_tab_page = n.get_boolean_value() },
                    "edgeBlocked" => lambda {|n| @edge_blocked = n.get_boolean_value() },
                    "edgeClearBrowsingDataOnExit" => lambda {|n| @edge_clear_browsing_data_on_exit = n.get_boolean_value() },
                    "edgeCookiePolicy" => lambda {|n| @edge_cookie_policy = n.get_enum_value(MicrosoftGraphBeta::Models::EdgeCookiePolicy) },
                    "edgeDisableFirstRunPage" => lambda {|n| @edge_disable_first_run_page = n.get_boolean_value() },
                    "edgeEnterpriseModeSiteListLocation" => lambda {|n| @edge_enterprise_mode_site_list_location = n.get_string_value() },
                    "edgeFavoritesBarVisibility" => lambda {|n| @edge_favorites_bar_visibility = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "edgeFavoritesListLocation" => lambda {|n| @edge_favorites_list_location = n.get_string_value() },
                    "edgeFirstRunUrl" => lambda {|n| @edge_first_run_url = n.get_string_value() },
                    "edgeHomeButtonConfiguration" => lambda {|n| @edge_home_button_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdgeHomeButtonConfiguration.create_from_discriminator_value(pn) }) },
                    "edgeHomeButtonConfigurationEnabled" => lambda {|n| @edge_home_button_configuration_enabled = n.get_boolean_value() },
                    "edgeHomepageUrls" => lambda {|n| @edge_homepage_urls = n.get_collection_of_primitive_values(String) },
                    "edgeKioskModeRestriction" => lambda {|n| @edge_kiosk_mode_restriction = n.get_enum_value(MicrosoftGraphBeta::Models::EdgeKioskModeRestrictionType) },
                    "edgeKioskResetAfterIdleTimeInMinutes" => lambda {|n| @edge_kiosk_reset_after_idle_time_in_minutes = n.get_number_value() },
                    "edgeNewTabPageURL" => lambda {|n| @edge_new_tab_page_u_r_l = n.get_string_value() },
                    "edgeOpensWith" => lambda {|n| @edge_opens_with = n.get_enum_value(MicrosoftGraphBeta::Models::EdgeOpenOptions) },
                    "edgePreventCertificateErrorOverride" => lambda {|n| @edge_prevent_certificate_error_override = n.get_boolean_value() },
                    "edgeRequireSmartScreen" => lambda {|n| @edge_require_smart_screen = n.get_boolean_value() },
                    "edgeRequiredExtensionPackageFamilyNames" => lambda {|n| @edge_required_extension_package_family_names = n.get_collection_of_primitive_values(String) },
                    "edgeSearchEngine" => lambda {|n| @edge_search_engine = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdgeSearchEngineBase.create_from_discriminator_value(pn) }) },
                    "edgeSendIntranetTrafficToInternetExplorer" => lambda {|n| @edge_send_intranet_traffic_to_internet_explorer = n.get_boolean_value() },
                    "edgeShowMessageWhenOpeningInternetExplorerSites" => lambda {|n| @edge_show_message_when_opening_internet_explorer_sites = n.get_enum_value(MicrosoftGraphBeta::Models::InternetExplorerMessageSetting) },
                    "edgeSyncFavoritesWithInternetExplorer" => lambda {|n| @edge_sync_favorites_with_internet_explorer = n.get_boolean_value() },
                    "edgeTelemetryForMicrosoft365Analytics" => lambda {|n| @edge_telemetry_for_microsoft365_analytics = n.get_enum_value(MicrosoftGraphBeta::Models::EdgeTelemetryMode) },
                    "enableAutomaticRedeployment" => lambda {|n| @enable_automatic_redeployment = n.get_boolean_value() },
                    "energySaverOnBatteryThresholdPercentage" => lambda {|n| @energy_saver_on_battery_threshold_percentage = n.get_number_value() },
                    "energySaverPluggedInThresholdPercentage" => lambda {|n| @energy_saver_plugged_in_threshold_percentage = n.get_number_value() },
                    "enterpriseCloudPrintDiscoveryEndPoint" => lambda {|n| @enterprise_cloud_print_discovery_end_point = n.get_string_value() },
                    "enterpriseCloudPrintDiscoveryMaxLimit" => lambda {|n| @enterprise_cloud_print_discovery_max_limit = n.get_number_value() },
                    "enterpriseCloudPrintMopriaDiscoveryResourceIdentifier" => lambda {|n| @enterprise_cloud_print_mopria_discovery_resource_identifier = n.get_string_value() },
                    "enterpriseCloudPrintOAuthAuthority" => lambda {|n| @enterprise_cloud_print_o_auth_authority = n.get_string_value() },
                    "enterpriseCloudPrintOAuthClientIdentifier" => lambda {|n| @enterprise_cloud_print_o_auth_client_identifier = n.get_string_value() },
                    "enterpriseCloudPrintResourceIdentifier" => lambda {|n| @enterprise_cloud_print_resource_identifier = n.get_string_value() },
                    "experienceBlockDeviceDiscovery" => lambda {|n| @experience_block_device_discovery = n.get_boolean_value() },
                    "experienceBlockErrorDialogWhenNoSIM" => lambda {|n| @experience_block_error_dialog_when_no_s_i_m = n.get_boolean_value() },
                    "experienceBlockTaskSwitcher" => lambda {|n| @experience_block_task_switcher = n.get_boolean_value() },
                    "experienceDoNotSyncBrowserSettings" => lambda {|n| @experience_do_not_sync_browser_settings = n.get_enum_value(MicrosoftGraphBeta::Models::BrowserSyncSetting) },
                    "findMyFiles" => lambda {|n| @find_my_files = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "gameDvrBlocked" => lambda {|n| @game_dvr_blocked = n.get_boolean_value() },
                    "inkWorkspaceAccess" => lambda {|n| @ink_workspace_access = n.get_enum_value(MicrosoftGraphBeta::Models::InkAccessSetting) },
                    "inkWorkspaceAccessState" => lambda {|n| @ink_workspace_access_state = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                    "inkWorkspaceBlockSuggestedApps" => lambda {|n| @ink_workspace_block_suggested_apps = n.get_boolean_value() },
                    "internetSharingBlocked" => lambda {|n| @internet_sharing_blocked = n.get_boolean_value() },
                    "locationServicesBlocked" => lambda {|n| @location_services_blocked = n.get_boolean_value() },
                    "lockScreenActivateAppsWithVoice" => lambda {|n| @lock_screen_activate_apps_with_voice = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "lockScreenAllowTimeoutConfiguration" => lambda {|n| @lock_screen_allow_timeout_configuration = n.get_boolean_value() },
                    "lockScreenBlockActionCenterNotifications" => lambda {|n| @lock_screen_block_action_center_notifications = n.get_boolean_value() },
                    "lockScreenBlockCortana" => lambda {|n| @lock_screen_block_cortana = n.get_boolean_value() },
                    "lockScreenBlockToastNotifications" => lambda {|n| @lock_screen_block_toast_notifications = n.get_boolean_value() },
                    "lockScreenTimeoutInSeconds" => lambda {|n| @lock_screen_timeout_in_seconds = n.get_number_value() },
                    "logonBlockFastUserSwitching" => lambda {|n| @logon_block_fast_user_switching = n.get_boolean_value() },
                    "messagingBlockMMS" => lambda {|n| @messaging_block_m_m_s = n.get_boolean_value() },
                    "messagingBlockRichCommunicationServices" => lambda {|n| @messaging_block_rich_communication_services = n.get_boolean_value() },
                    "messagingBlockSync" => lambda {|n| @messaging_block_sync = n.get_boolean_value() },
                    "microsoftAccountBlockSettingsSync" => lambda {|n| @microsoft_account_block_settings_sync = n.get_boolean_value() },
                    "microsoftAccountBlocked" => lambda {|n| @microsoft_account_blocked = n.get_boolean_value() },
                    "microsoftAccountSignInAssistantSettings" => lambda {|n| @microsoft_account_sign_in_assistant_settings = n.get_enum_value(MicrosoftGraphBeta::Models::SignInAssistantOptions) },
                    "networkProxyApplySettingsDeviceWide" => lambda {|n| @network_proxy_apply_settings_device_wide = n.get_boolean_value() },
                    "networkProxyAutomaticConfigurationUrl" => lambda {|n| @network_proxy_automatic_configuration_url = n.get_string_value() },
                    "networkProxyDisableAutoDetect" => lambda {|n| @network_proxy_disable_auto_detect = n.get_boolean_value() },
                    "networkProxyServer" => lambda {|n| @network_proxy_server = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows10NetworkProxyServer.create_from_discriminator_value(pn) }) },
                    "nfcBlocked" => lambda {|n| @nfc_blocked = n.get_boolean_value() },
                    "oneDriveDisableFileSync" => lambda {|n| @one_drive_disable_file_sync = n.get_boolean_value() },
                    "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMinimumAgeInDays" => lambda {|n| @password_minimum_age_in_days = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequireWhenResumeFromIdleState" => lambda {|n| @password_require_when_resume_from_idle_state = n.get_boolean_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::RequiredPasswordType) },
                    "passwordSignInFailureCountBeforeFactoryReset" => lambda {|n| @password_sign_in_failure_count_before_factory_reset = n.get_number_value() },
                    "personalizationDesktopImageUrl" => lambda {|n| @personalization_desktop_image_url = n.get_string_value() },
                    "personalizationLockScreenImageUrl" => lambda {|n| @personalization_lock_screen_image_url = n.get_string_value() },
                    "powerButtonActionOnBattery" => lambda {|n| @power_button_action_on_battery = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "powerButtonActionPluggedIn" => lambda {|n| @power_button_action_plugged_in = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "powerHybridSleepOnBattery" => lambda {|n| @power_hybrid_sleep_on_battery = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "powerHybridSleepPluggedIn" => lambda {|n| @power_hybrid_sleep_plugged_in = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "powerLidCloseActionOnBattery" => lambda {|n| @power_lid_close_action_on_battery = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "powerLidCloseActionPluggedIn" => lambda {|n| @power_lid_close_action_plugged_in = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "powerSleepButtonActionOnBattery" => lambda {|n| @power_sleep_button_action_on_battery = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "powerSleepButtonActionPluggedIn" => lambda {|n| @power_sleep_button_action_plugged_in = n.get_enum_value(MicrosoftGraphBeta::Models::PowerActionType) },
                    "printerBlockAddition" => lambda {|n| @printer_block_addition = n.get_boolean_value() },
                    "printerDefaultName" => lambda {|n| @printer_default_name = n.get_string_value() },
                    "printerNames" => lambda {|n| @printer_names = n.get_collection_of_primitive_values(String) },
                    "privacyAccessControls" => lambda {|n| @privacy_access_controls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsPrivacyDataAccessControlItem.create_from_discriminator_value(pn) }) },
                    "privacyAdvertisingId" => lambda {|n| @privacy_advertising_id = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                    "privacyAutoAcceptPairingAndConsentPrompts" => lambda {|n| @privacy_auto_accept_pairing_and_consent_prompts = n.get_boolean_value() },
                    "privacyBlockActivityFeed" => lambda {|n| @privacy_block_activity_feed = n.get_boolean_value() },
                    "privacyBlockInputPersonalization" => lambda {|n| @privacy_block_input_personalization = n.get_boolean_value() },
                    "privacyBlockPublishUserActivities" => lambda {|n| @privacy_block_publish_user_activities = n.get_boolean_value() },
                    "privacyDisableLaunchExperience" => lambda {|n| @privacy_disable_launch_experience = n.get_boolean_value() },
                    "resetProtectionModeBlocked" => lambda {|n| @reset_protection_mode_blocked = n.get_boolean_value() },
                    "safeSearchFilter" => lambda {|n| @safe_search_filter = n.get_enum_value(MicrosoftGraphBeta::Models::SafeSearchFilterType) },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "searchBlockDiacritics" => lambda {|n| @search_block_diacritics = n.get_boolean_value() },
                    "searchBlockWebResults" => lambda {|n| @search_block_web_results = n.get_boolean_value() },
                    "searchDisableAutoLanguageDetection" => lambda {|n| @search_disable_auto_language_detection = n.get_boolean_value() },
                    "searchDisableIndexerBackoff" => lambda {|n| @search_disable_indexer_backoff = n.get_boolean_value() },
                    "searchDisableIndexingEncryptedItems" => lambda {|n| @search_disable_indexing_encrypted_items = n.get_boolean_value() },
                    "searchDisableIndexingRemovableDrive" => lambda {|n| @search_disable_indexing_removable_drive = n.get_boolean_value() },
                    "searchDisableLocation" => lambda {|n| @search_disable_location = n.get_boolean_value() },
                    "searchDisableUseLocation" => lambda {|n| @search_disable_use_location = n.get_boolean_value() },
                    "searchEnableAutomaticIndexSizeManangement" => lambda {|n| @search_enable_automatic_index_size_manangement = n.get_boolean_value() },
                    "searchEnableRemoteQueries" => lambda {|n| @search_enable_remote_queries = n.get_boolean_value() },
                    "securityBlockAzureADJoinedDevicesAutoEncryption" => lambda {|n| @security_block_azure_a_d_joined_devices_auto_encryption = n.get_boolean_value() },
                    "settingsBlockAccountsPage" => lambda {|n| @settings_block_accounts_page = n.get_boolean_value() },
                    "settingsBlockAddProvisioningPackage" => lambda {|n| @settings_block_add_provisioning_package = n.get_boolean_value() },
                    "settingsBlockAppsPage" => lambda {|n| @settings_block_apps_page = n.get_boolean_value() },
                    "settingsBlockChangeLanguage" => lambda {|n| @settings_block_change_language = n.get_boolean_value() },
                    "settingsBlockChangePowerSleep" => lambda {|n| @settings_block_change_power_sleep = n.get_boolean_value() },
                    "settingsBlockChangeRegion" => lambda {|n| @settings_block_change_region = n.get_boolean_value() },
                    "settingsBlockChangeSystemTime" => lambda {|n| @settings_block_change_system_time = n.get_boolean_value() },
                    "settingsBlockDevicesPage" => lambda {|n| @settings_block_devices_page = n.get_boolean_value() },
                    "settingsBlockEaseOfAccessPage" => lambda {|n| @settings_block_ease_of_access_page = n.get_boolean_value() },
                    "settingsBlockEditDeviceName" => lambda {|n| @settings_block_edit_device_name = n.get_boolean_value() },
                    "settingsBlockGamingPage" => lambda {|n| @settings_block_gaming_page = n.get_boolean_value() },
                    "settingsBlockNetworkInternetPage" => lambda {|n| @settings_block_network_internet_page = n.get_boolean_value() },
                    "settingsBlockPersonalizationPage" => lambda {|n| @settings_block_personalization_page = n.get_boolean_value() },
                    "settingsBlockPrivacyPage" => lambda {|n| @settings_block_privacy_page = n.get_boolean_value() },
                    "settingsBlockRemoveProvisioningPackage" => lambda {|n| @settings_block_remove_provisioning_package = n.get_boolean_value() },
                    "settingsBlockSettingsApp" => lambda {|n| @settings_block_settings_app = n.get_boolean_value() },
                    "settingsBlockSystemPage" => lambda {|n| @settings_block_system_page = n.get_boolean_value() },
                    "settingsBlockTimeLanguagePage" => lambda {|n| @settings_block_time_language_page = n.get_boolean_value() },
                    "settingsBlockUpdateSecurityPage" => lambda {|n| @settings_block_update_security_page = n.get_boolean_value() },
                    "sharedUserAppDataAllowed" => lambda {|n| @shared_user_app_data_allowed = n.get_boolean_value() },
                    "smartScreenAppInstallControl" => lambda {|n| @smart_screen_app_install_control = n.get_enum_value(MicrosoftGraphBeta::Models::AppInstallControlType) },
                    "smartScreenBlockPromptOverride" => lambda {|n| @smart_screen_block_prompt_override = n.get_boolean_value() },
                    "smartScreenBlockPromptOverrideForFiles" => lambda {|n| @smart_screen_block_prompt_override_for_files = n.get_boolean_value() },
                    "smartScreenEnableAppInstallControl" => lambda {|n| @smart_screen_enable_app_install_control = n.get_boolean_value() },
                    "startBlockUnpinningAppsFromTaskbar" => lambda {|n| @start_block_unpinning_apps_from_taskbar = n.get_boolean_value() },
                    "startMenuAppListVisibility" => lambda {|n| @start_menu_app_list_visibility = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsStartMenuAppListVisibilityType) },
                    "startMenuHideChangeAccountSettings" => lambda {|n| @start_menu_hide_change_account_settings = n.get_boolean_value() },
                    "startMenuHideFrequentlyUsedApps" => lambda {|n| @start_menu_hide_frequently_used_apps = n.get_boolean_value() },
                    "startMenuHideHibernate" => lambda {|n| @start_menu_hide_hibernate = n.get_boolean_value() },
                    "startMenuHideLock" => lambda {|n| @start_menu_hide_lock = n.get_boolean_value() },
                    "startMenuHidePowerButton" => lambda {|n| @start_menu_hide_power_button = n.get_boolean_value() },
                    "startMenuHideRecentJumpLists" => lambda {|n| @start_menu_hide_recent_jump_lists = n.get_boolean_value() },
                    "startMenuHideRecentlyAddedApps" => lambda {|n| @start_menu_hide_recently_added_apps = n.get_boolean_value() },
                    "startMenuHideRestartOptions" => lambda {|n| @start_menu_hide_restart_options = n.get_boolean_value() },
                    "startMenuHideShutDown" => lambda {|n| @start_menu_hide_shut_down = n.get_boolean_value() },
                    "startMenuHideSignOut" => lambda {|n| @start_menu_hide_sign_out = n.get_boolean_value() },
                    "startMenuHideSleep" => lambda {|n| @start_menu_hide_sleep = n.get_boolean_value() },
                    "startMenuHideSwitchAccount" => lambda {|n| @start_menu_hide_switch_account = n.get_boolean_value() },
                    "startMenuHideUserTile" => lambda {|n| @start_menu_hide_user_tile = n.get_boolean_value() },
                    "startMenuLayoutEdgeAssetsXml" => lambda {|n| @start_menu_layout_edge_assets_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "startMenuLayoutXml" => lambda {|n| @start_menu_layout_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "startMenuMode" => lambda {|n| @start_menu_mode = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsStartMenuModeType) },
                    "startMenuPinnedFolderDocuments" => lambda {|n| @start_menu_pinned_folder_documents = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderDownloads" => lambda {|n| @start_menu_pinned_folder_downloads = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderFileExplorer" => lambda {|n| @start_menu_pinned_folder_file_explorer = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderHomeGroup" => lambda {|n| @start_menu_pinned_folder_home_group = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderMusic" => lambda {|n| @start_menu_pinned_folder_music = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderNetwork" => lambda {|n| @start_menu_pinned_folder_network = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderPersonalFolder" => lambda {|n| @start_menu_pinned_folder_personal_folder = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderPictures" => lambda {|n| @start_menu_pinned_folder_pictures = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderSettings" => lambda {|n| @start_menu_pinned_folder_settings = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "startMenuPinnedFolderVideos" => lambda {|n| @start_menu_pinned_folder_videos = n.get_enum_value(MicrosoftGraphBeta::Models::VisibilitySetting) },
                    "storageBlockRemovableStorage" => lambda {|n| @storage_block_removable_storage = n.get_boolean_value() },
                    "storageRequireMobileDeviceEncryption" => lambda {|n| @storage_require_mobile_device_encryption = n.get_boolean_value() },
                    "storageRestrictAppDataToSystemVolume" => lambda {|n| @storage_restrict_app_data_to_system_volume = n.get_boolean_value() },
                    "storageRestrictAppInstallToSystemVolume" => lambda {|n| @storage_restrict_app_install_to_system_volume = n.get_boolean_value() },
                    "systemTelemetryProxyServer" => lambda {|n| @system_telemetry_proxy_server = n.get_string_value() },
                    "taskManagerBlockEndTask" => lambda {|n| @task_manager_block_end_task = n.get_boolean_value() },
                    "tenantLockdownRequireNetworkDuringOutOfBoxExperience" => lambda {|n| @tenant_lockdown_require_network_during_out_of_box_experience = n.get_boolean_value() },
                    "uninstallBuiltInApps" => lambda {|n| @uninstall_built_in_apps = n.get_boolean_value() },
                    "usbBlocked" => lambda {|n| @usb_blocked = n.get_boolean_value() },
                    "voiceRecordingBlocked" => lambda {|n| @voice_recording_blocked = n.get_boolean_value() },
                    "webRtcBlockLocalhostIpAddress" => lambda {|n| @web_rtc_block_localhost_ip_address = n.get_boolean_value() },
                    "wiFiBlockAutomaticConnectHotspots" => lambda {|n| @wi_fi_block_automatic_connect_hotspots = n.get_boolean_value() },
                    "wiFiBlockManualConfiguration" => lambda {|n| @wi_fi_block_manual_configuration = n.get_boolean_value() },
                    "wiFiBlocked" => lambda {|n| @wi_fi_blocked = n.get_boolean_value() },
                    "wiFiScanInterval" => lambda {|n| @wi_fi_scan_interval = n.get_number_value() },
                    "windowsSpotlightBlockConsumerSpecificFeatures" => lambda {|n| @windows_spotlight_block_consumer_specific_features = n.get_boolean_value() },
                    "windowsSpotlightBlockOnActionCenter" => lambda {|n| @windows_spotlight_block_on_action_center = n.get_boolean_value() },
                    "windowsSpotlightBlockTailoredExperiences" => lambda {|n| @windows_spotlight_block_tailored_experiences = n.get_boolean_value() },
                    "windowsSpotlightBlockThirdPartyNotifications" => lambda {|n| @windows_spotlight_block_third_party_notifications = n.get_boolean_value() },
                    "windowsSpotlightBlockWelcomeExperience" => lambda {|n| @windows_spotlight_block_welcome_experience = n.get_boolean_value() },
                    "windowsSpotlightBlockWindowsTips" => lambda {|n| @windows_spotlight_block_windows_tips = n.get_boolean_value() },
                    "windowsSpotlightBlocked" => lambda {|n| @windows_spotlight_blocked = n.get_boolean_value() },
                    "windowsSpotlightConfigureOnLockScreen" => lambda {|n| @windows_spotlight_configure_on_lock_screen = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsSpotlightEnablementSettings) },
                    "windowsStoreBlockAutoUpdate" => lambda {|n| @windows_store_block_auto_update = n.get_boolean_value() },
                    "windowsStoreBlocked" => lambda {|n| @windows_store_blocked = n.get_boolean_value() },
                    "windowsStoreEnablePrivateStoreOnly" => lambda {|n| @windows_store_enable_private_store_only = n.get_boolean_value() },
                    "windows10AppsForceUpdateSchedule" => lambda {|n| @windows10_apps_force_update_schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Windows10AppsForceUpdateSchedule.create_from_discriminator_value(pn) }) },
                    "wirelessDisplayBlockProjectionToThisDevice" => lambda {|n| @wireless_display_block_projection_to_this_device = n.get_boolean_value() },
                    "wirelessDisplayBlockUserInputFromReceiver" => lambda {|n| @wireless_display_block_user_input_from_receiver = n.get_boolean_value() },
                    "wirelessDisplayRequirePinForPairing" => lambda {|n| @wireless_display_require_pin_for_pairing = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the inkWorkspaceAccess property value. Values for the InkWorkspaceAccess setting.
            ## @return a ink_access_setting
            ## 
            def ink_workspace_access
                return @ink_workspace_access
            end
            ## 
            ## Sets the inkWorkspaceAccess property value. Values for the InkWorkspaceAccess setting.
            ## @param value Value to set for the ink_workspace_access property.
            ## @return a void
            ## 
            def ink_workspace_access=(value)
                @ink_workspace_access = value
            end
            ## 
            ## Gets the inkWorkspaceAccessState property value. State Management Setting.
            ## @return a state_management_setting
            ## 
            def ink_workspace_access_state
                return @ink_workspace_access_state
            end
            ## 
            ## Sets the inkWorkspaceAccessState property value. State Management Setting.
            ## @param value Value to set for the ink_workspace_access_state property.
            ## @return a void
            ## 
            def ink_workspace_access_state=(value)
                @ink_workspace_access_state = value
            end
            ## 
            ## Gets the inkWorkspaceBlockSuggestedApps property value. Specify whether to show recommended app suggestions in the ink workspace.
            ## @return a boolean
            ## 
            def ink_workspace_block_suggested_apps
                return @ink_workspace_block_suggested_apps
            end
            ## 
            ## Sets the inkWorkspaceBlockSuggestedApps property value. Specify whether to show recommended app suggestions in the ink workspace.
            ## @param value Value to set for the ink_workspace_block_suggested_apps property.
            ## @return a void
            ## 
            def ink_workspace_block_suggested_apps=(value)
                @ink_workspace_block_suggested_apps = value
            end
            ## 
            ## Gets the internetSharingBlocked property value. Indicates whether or not to Block the user from using internet sharing.
            ## @return a boolean
            ## 
            def internet_sharing_blocked
                return @internet_sharing_blocked
            end
            ## 
            ## Sets the internetSharingBlocked property value. Indicates whether or not to Block the user from using internet sharing.
            ## @param value Value to set for the internet_sharing_blocked property.
            ## @return a void
            ## 
            def internet_sharing_blocked=(value)
                @internet_sharing_blocked = value
            end
            ## 
            ## Gets the locationServicesBlocked property value. Indicates whether or not to Block the user from location services.
            ## @return a boolean
            ## 
            def location_services_blocked
                return @location_services_blocked
            end
            ## 
            ## Sets the locationServicesBlocked property value. Indicates whether or not to Block the user from location services.
            ## @param value Value to set for the location_services_blocked property.
            ## @return a void
            ## 
            def location_services_blocked=(value)
                @location_services_blocked = value
            end
            ## 
            ## Gets the lockScreenActivateAppsWithVoice property value. Possible values of a property
            ## @return a enablement
            ## 
            def lock_screen_activate_apps_with_voice
                return @lock_screen_activate_apps_with_voice
            end
            ## 
            ## Sets the lockScreenActivateAppsWithVoice property value. Possible values of a property
            ## @param value Value to set for the lock_screen_activate_apps_with_voice property.
            ## @return a void
            ## 
            def lock_screen_activate_apps_with_voice=(value)
                @lock_screen_activate_apps_with_voice = value
            end
            ## 
            ## Gets the lockScreenAllowTimeoutConfiguration property value. Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices. If this policy is set to Allow, the value set by lockScreenTimeoutInSeconds is ignored.
            ## @return a boolean
            ## 
            def lock_screen_allow_timeout_configuration
                return @lock_screen_allow_timeout_configuration
            end
            ## 
            ## Sets the lockScreenAllowTimeoutConfiguration property value. Specify whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices. If this policy is set to Allow, the value set by lockScreenTimeoutInSeconds is ignored.
            ## @param value Value to set for the lock_screen_allow_timeout_configuration property.
            ## @return a void
            ## 
            def lock_screen_allow_timeout_configuration=(value)
                @lock_screen_allow_timeout_configuration = value
            end
            ## 
            ## Gets the lockScreenBlockActionCenterNotifications property value. Indicates whether or not to block action center notifications over lock screen.
            ## @return a boolean
            ## 
            def lock_screen_block_action_center_notifications
                return @lock_screen_block_action_center_notifications
            end
            ## 
            ## Sets the lockScreenBlockActionCenterNotifications property value. Indicates whether or not to block action center notifications over lock screen.
            ## @param value Value to set for the lock_screen_block_action_center_notifications property.
            ## @return a void
            ## 
            def lock_screen_block_action_center_notifications=(value)
                @lock_screen_block_action_center_notifications = value
            end
            ## 
            ## Gets the lockScreenBlockCortana property value. Indicates whether or not the user can interact with Cortana using speech while the system is locked.
            ## @return a boolean
            ## 
            def lock_screen_block_cortana
                return @lock_screen_block_cortana
            end
            ## 
            ## Sets the lockScreenBlockCortana property value. Indicates whether or not the user can interact with Cortana using speech while the system is locked.
            ## @param value Value to set for the lock_screen_block_cortana property.
            ## @return a void
            ## 
            def lock_screen_block_cortana=(value)
                @lock_screen_block_cortana = value
            end
            ## 
            ## Gets the lockScreenBlockToastNotifications property value. Indicates whether to allow toast notifications above the device lock screen.
            ## @return a boolean
            ## 
            def lock_screen_block_toast_notifications
                return @lock_screen_block_toast_notifications
            end
            ## 
            ## Sets the lockScreenBlockToastNotifications property value. Indicates whether to allow toast notifications above the device lock screen.
            ## @param value Value to set for the lock_screen_block_toast_notifications property.
            ## @return a void
            ## 
            def lock_screen_block_toast_notifications=(value)
                @lock_screen_block_toast_notifications = value
            end
            ## 
            ## Gets the lockScreenTimeoutInSeconds property value. Set the duration (in seconds) from the screen locking to the screen turning off for Windows 10 Mobile devices. Supported values are 11-1800. Valid values 11 to 1800
            ## @return a integer
            ## 
            def lock_screen_timeout_in_seconds
                return @lock_screen_timeout_in_seconds
            end
            ## 
            ## Sets the lockScreenTimeoutInSeconds property value. Set the duration (in seconds) from the screen locking to the screen turning off for Windows 10 Mobile devices. Supported values are 11-1800. Valid values 11 to 1800
            ## @param value Value to set for the lock_screen_timeout_in_seconds property.
            ## @return a void
            ## 
            def lock_screen_timeout_in_seconds=(value)
                @lock_screen_timeout_in_seconds = value
            end
            ## 
            ## Gets the logonBlockFastUserSwitching property value. Disables the ability to quickly switch between users that are logged on simultaneously without logging off.
            ## @return a boolean
            ## 
            def logon_block_fast_user_switching
                return @logon_block_fast_user_switching
            end
            ## 
            ## Sets the logonBlockFastUserSwitching property value. Disables the ability to quickly switch between users that are logged on simultaneously without logging off.
            ## @param value Value to set for the logon_block_fast_user_switching property.
            ## @return a void
            ## 
            def logon_block_fast_user_switching=(value)
                @logon_block_fast_user_switching = value
            end
            ## 
            ## Gets the messagingBlockMMS property value. Indicates whether or not to block the MMS send/receive functionality on the device.
            ## @return a boolean
            ## 
            def messaging_block_m_m_s
                return @messaging_block_m_m_s
            end
            ## 
            ## Sets the messagingBlockMMS property value. Indicates whether or not to block the MMS send/receive functionality on the device.
            ## @param value Value to set for the messaging_block_m_m_s property.
            ## @return a void
            ## 
            def messaging_block_m_m_s=(value)
                @messaging_block_m_m_s = value
            end
            ## 
            ## Gets the messagingBlockRichCommunicationServices property value. Indicates whether or not to block the RCS send/receive functionality on the device.
            ## @return a boolean
            ## 
            def messaging_block_rich_communication_services
                return @messaging_block_rich_communication_services
            end
            ## 
            ## Sets the messagingBlockRichCommunicationServices property value. Indicates whether or not to block the RCS send/receive functionality on the device.
            ## @param value Value to set for the messaging_block_rich_communication_services property.
            ## @return a void
            ## 
            def messaging_block_rich_communication_services=(value)
                @messaging_block_rich_communication_services = value
            end
            ## 
            ## Gets the messagingBlockSync property value. Indicates whether or not to block text message back up and restore and Messaging Everywhere.
            ## @return a boolean
            ## 
            def messaging_block_sync
                return @messaging_block_sync
            end
            ## 
            ## Sets the messagingBlockSync property value. Indicates whether or not to block text message back up and restore and Messaging Everywhere.
            ## @param value Value to set for the messaging_block_sync property.
            ## @return a void
            ## 
            def messaging_block_sync=(value)
                @messaging_block_sync = value
            end
            ## 
            ## Gets the microsoftAccountBlockSettingsSync property value. Indicates whether or not to Block Microsoft account settings sync.
            ## @return a boolean
            ## 
            def microsoft_account_block_settings_sync
                return @microsoft_account_block_settings_sync
            end
            ## 
            ## Sets the microsoftAccountBlockSettingsSync property value. Indicates whether or not to Block Microsoft account settings sync.
            ## @param value Value to set for the microsoft_account_block_settings_sync property.
            ## @return a void
            ## 
            def microsoft_account_block_settings_sync=(value)
                @microsoft_account_block_settings_sync = value
            end
            ## 
            ## Gets the microsoftAccountBlocked property value. Indicates whether or not to Block a Microsoft account.
            ## @return a boolean
            ## 
            def microsoft_account_blocked
                return @microsoft_account_blocked
            end
            ## 
            ## Sets the microsoftAccountBlocked property value. Indicates whether or not to Block a Microsoft account.
            ## @param value Value to set for the microsoft_account_blocked property.
            ## @return a void
            ## 
            def microsoft_account_blocked=(value)
                @microsoft_account_blocked = value
            end
            ## 
            ## Gets the microsoftAccountSignInAssistantSettings property value. Values for the SignInAssistantSettings.
            ## @return a sign_in_assistant_options
            ## 
            def microsoft_account_sign_in_assistant_settings
                return @microsoft_account_sign_in_assistant_settings
            end
            ## 
            ## Sets the microsoftAccountSignInAssistantSettings property value. Values for the SignInAssistantSettings.
            ## @param value Value to set for the microsoft_account_sign_in_assistant_settings property.
            ## @return a void
            ## 
            def microsoft_account_sign_in_assistant_settings=(value)
                @microsoft_account_sign_in_assistant_settings = value
            end
            ## 
            ## Gets the networkProxyApplySettingsDeviceWide property value. If set, proxy settings will be applied to all processes and accounts in the device. Otherwise, it will be applied to the user account that’s enrolled into MDM.
            ## @return a boolean
            ## 
            def network_proxy_apply_settings_device_wide
                return @network_proxy_apply_settings_device_wide
            end
            ## 
            ## Sets the networkProxyApplySettingsDeviceWide property value. If set, proxy settings will be applied to all processes and accounts in the device. Otherwise, it will be applied to the user account that’s enrolled into MDM.
            ## @param value Value to set for the network_proxy_apply_settings_device_wide property.
            ## @return a void
            ## 
            def network_proxy_apply_settings_device_wide=(value)
                @network_proxy_apply_settings_device_wide = value
            end
            ## 
            ## Gets the networkProxyAutomaticConfigurationUrl property value. Address to the proxy auto-config (PAC) script you want to use.
            ## @return a string
            ## 
            def network_proxy_automatic_configuration_url
                return @network_proxy_automatic_configuration_url
            end
            ## 
            ## Sets the networkProxyAutomaticConfigurationUrl property value. Address to the proxy auto-config (PAC) script you want to use.
            ## @param value Value to set for the network_proxy_automatic_configuration_url property.
            ## @return a void
            ## 
            def network_proxy_automatic_configuration_url=(value)
                @network_proxy_automatic_configuration_url = value
            end
            ## 
            ## Gets the networkProxyDisableAutoDetect property value. Disable automatic detection of settings. If enabled, the system will try to find the path to a proxy auto-config (PAC) script.
            ## @return a boolean
            ## 
            def network_proxy_disable_auto_detect
                return @network_proxy_disable_auto_detect
            end
            ## 
            ## Sets the networkProxyDisableAutoDetect property value. Disable automatic detection of settings. If enabled, the system will try to find the path to a proxy auto-config (PAC) script.
            ## @param value Value to set for the network_proxy_disable_auto_detect property.
            ## @return a void
            ## 
            def network_proxy_disable_auto_detect=(value)
                @network_proxy_disable_auto_detect = value
            end
            ## 
            ## Gets the networkProxyServer property value. Specifies manual proxy server settings.
            ## @return a windows10_network_proxy_server
            ## 
            def network_proxy_server
                return @network_proxy_server
            end
            ## 
            ## Sets the networkProxyServer property value. Specifies manual proxy server settings.
            ## @param value Value to set for the network_proxy_server property.
            ## @return a void
            ## 
            def network_proxy_server=(value)
                @network_proxy_server = value
            end
            ## 
            ## Gets the nfcBlocked property value. Indicates whether or not to Block the user from using near field communication.
            ## @return a boolean
            ## 
            def nfc_blocked
                return @nfc_blocked
            end
            ## 
            ## Sets the nfcBlocked property value. Indicates whether or not to Block the user from using near field communication.
            ## @param value Value to set for the nfc_blocked property.
            ## @return a void
            ## 
            def nfc_blocked=(value)
                @nfc_blocked = value
            end
            ## 
            ## Gets the oneDriveDisableFileSync property value. Gets or sets a value allowing IT admins to prevent apps and features from working with files on OneDrive.
            ## @return a boolean
            ## 
            def one_drive_disable_file_sync
                return @one_drive_disable_file_sync
            end
            ## 
            ## Sets the oneDriveDisableFileSync property value. Gets or sets a value allowing IT admins to prevent apps and features from working with files on OneDrive.
            ## @param value Value to set for the one_drive_disable_file_sync property.
            ## @return a void
            ## 
            def one_drive_disable_file_sync=(value)
                @one_drive_disable_file_sync = value
            end
            ## 
            ## Gets the passwordBlockSimple property value. Specify whether PINs or passwords such as '1111' or '1234' are allowed. For Windows 10 desktops, it also controls the use of picture passwords.
            ## @return a boolean
            ## 
            def password_block_simple
                return @password_block_simple
            end
            ## 
            ## Sets the passwordBlockSimple property value. Specify whether PINs or passwords such as '1111' or '1234' are allowed. For Windows 10 desktops, it also controls the use of picture passwords.
            ## @param value Value to set for the password_block_simple property.
            ## @return a void
            ## 
            def password_block_simple=(value)
                @password_block_simple = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. The password expiration in days. Valid values 0 to 730
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. The password expiration in days. Valid values 0 to 730
            ## @param value Value to set for the password_expiration_days property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMinimumAgeInDays property value. This security setting determines the period of time (in days) that a password must be used before the user can change it. Valid values 0 to 998
            ## @return a integer
            ## 
            def password_minimum_age_in_days
                return @password_minimum_age_in_days
            end
            ## 
            ## Sets the passwordMinimumAgeInDays property value. This security setting determines the period of time (in days) that a password must be used before the user can change it. Valid values 0 to 998
            ## @param value Value to set for the password_minimum_age_in_days property.
            ## @return a void
            ## 
            def password_minimum_age_in_days=(value)
                @password_minimum_age_in_days = value
            end
            ## 
            ## Gets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
            ## @return a integer
            ## 
            def password_minimum_character_set_count
                return @password_minimum_character_set_count
            end
            ## 
            ## Sets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
            ## @param value Value to set for the password_minimum_character_set_count property.
            ## @return a void
            ## 
            def password_minimum_character_set_count=(value)
                @password_minimum_character_set_count = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. The minimum password length. Valid values 4 to 16
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. The minimum password length. Valid values 4 to 16
            ## @param value Value to set for the password_minimum_length property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. The minutes of inactivity before the screen times out.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. The minutes of inactivity before the screen times out.
            ## @param value Value to set for the password_minutes_of_inactivity_before_screen_timeout property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_screen_timeout=(value)
                @password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent reuse of. Valid values 0 to 50
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent reuse of. Valid values 0 to 50
            ## @param value Value to set for the password_previous_password_block_count property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
            end
            ## 
            ## Gets the passwordRequireWhenResumeFromIdleState property value. Indicates whether or not to require a password upon resuming from an idle state.
            ## @return a boolean
            ## 
            def password_require_when_resume_from_idle_state
                return @password_require_when_resume_from_idle_state
            end
            ## 
            ## Sets the passwordRequireWhenResumeFromIdleState property value. Indicates whether or not to require a password upon resuming from an idle state.
            ## @param value Value to set for the password_require_when_resume_from_idle_state property.
            ## @return a void
            ## 
            def password_require_when_resume_from_idle_state=(value)
                @password_require_when_resume_from_idle_state = value
            end
            ## 
            ## Gets the passwordRequired property value. Indicates whether or not to require the user to have a password.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Indicates whether or not to require the user to have a password.
            ## @param value Value to set for the password_required property.
            ## @return a void
            ## 
            def password_required=(value)
                @password_required = value
            end
            ## 
            ## Gets the passwordRequiredType property value. Possible values of required passwords.
            ## @return a required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Possible values of required passwords.
            ## @param value Value to set for the password_required_type property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the passwordSignInFailureCountBeforeFactoryReset property value. The number of sign in failures before factory reset. Valid values 0 to 999
            ## @return a integer
            ## 
            def password_sign_in_failure_count_before_factory_reset
                return @password_sign_in_failure_count_before_factory_reset
            end
            ## 
            ## Sets the passwordSignInFailureCountBeforeFactoryReset property value. The number of sign in failures before factory reset. Valid values 0 to 999
            ## @param value Value to set for the password_sign_in_failure_count_before_factory_reset property.
            ## @return a void
            ## 
            def password_sign_in_failure_count_before_factory_reset=(value)
                @password_sign_in_failure_count_before_factory_reset = value
            end
            ## 
            ## Gets the personalizationDesktopImageUrl property value. A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to used as the Desktop Image.
            ## @return a string
            ## 
            def personalization_desktop_image_url
                return @personalization_desktop_image_url
            end
            ## 
            ## Sets the personalizationDesktopImageUrl property value. A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to used as the Desktop Image.
            ## @param value Value to set for the personalization_desktop_image_url property.
            ## @return a void
            ## 
            def personalization_desktop_image_url=(value)
                @personalization_desktop_image_url = value
            end
            ## 
            ## Gets the personalizationLockScreenImageUrl property value. A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.
            ## @return a string
            ## 
            def personalization_lock_screen_image_url
                return @personalization_lock_screen_image_url
            end
            ## 
            ## Sets the personalizationLockScreenImageUrl property value. A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.
            ## @param value Value to set for the personalization_lock_screen_image_url property.
            ## @return a void
            ## 
            def personalization_lock_screen_image_url=(value)
                @personalization_lock_screen_image_url = value
            end
            ## 
            ## Gets the powerButtonActionOnBattery property value. Power action types
            ## @return a power_action_type
            ## 
            def power_button_action_on_battery
                return @power_button_action_on_battery
            end
            ## 
            ## Sets the powerButtonActionOnBattery property value. Power action types
            ## @param value Value to set for the power_button_action_on_battery property.
            ## @return a void
            ## 
            def power_button_action_on_battery=(value)
                @power_button_action_on_battery = value
            end
            ## 
            ## Gets the powerButtonActionPluggedIn property value. Power action types
            ## @return a power_action_type
            ## 
            def power_button_action_plugged_in
                return @power_button_action_plugged_in
            end
            ## 
            ## Sets the powerButtonActionPluggedIn property value. Power action types
            ## @param value Value to set for the power_button_action_plugged_in property.
            ## @return a void
            ## 
            def power_button_action_plugged_in=(value)
                @power_button_action_plugged_in = value
            end
            ## 
            ## Gets the powerHybridSleepOnBattery property value. Possible values of a property
            ## @return a enablement
            ## 
            def power_hybrid_sleep_on_battery
                return @power_hybrid_sleep_on_battery
            end
            ## 
            ## Sets the powerHybridSleepOnBattery property value. Possible values of a property
            ## @param value Value to set for the power_hybrid_sleep_on_battery property.
            ## @return a void
            ## 
            def power_hybrid_sleep_on_battery=(value)
                @power_hybrid_sleep_on_battery = value
            end
            ## 
            ## Gets the powerHybridSleepPluggedIn property value. Possible values of a property
            ## @return a enablement
            ## 
            def power_hybrid_sleep_plugged_in
                return @power_hybrid_sleep_plugged_in
            end
            ## 
            ## Sets the powerHybridSleepPluggedIn property value. Possible values of a property
            ## @param value Value to set for the power_hybrid_sleep_plugged_in property.
            ## @return a void
            ## 
            def power_hybrid_sleep_plugged_in=(value)
                @power_hybrid_sleep_plugged_in = value
            end
            ## 
            ## Gets the powerLidCloseActionOnBattery property value. Power action types
            ## @return a power_action_type
            ## 
            def power_lid_close_action_on_battery
                return @power_lid_close_action_on_battery
            end
            ## 
            ## Sets the powerLidCloseActionOnBattery property value. Power action types
            ## @param value Value to set for the power_lid_close_action_on_battery property.
            ## @return a void
            ## 
            def power_lid_close_action_on_battery=(value)
                @power_lid_close_action_on_battery = value
            end
            ## 
            ## Gets the powerLidCloseActionPluggedIn property value. Power action types
            ## @return a power_action_type
            ## 
            def power_lid_close_action_plugged_in
                return @power_lid_close_action_plugged_in
            end
            ## 
            ## Sets the powerLidCloseActionPluggedIn property value. Power action types
            ## @param value Value to set for the power_lid_close_action_plugged_in property.
            ## @return a void
            ## 
            def power_lid_close_action_plugged_in=(value)
                @power_lid_close_action_plugged_in = value
            end
            ## 
            ## Gets the powerSleepButtonActionOnBattery property value. Power action types
            ## @return a power_action_type
            ## 
            def power_sleep_button_action_on_battery
                return @power_sleep_button_action_on_battery
            end
            ## 
            ## Sets the powerSleepButtonActionOnBattery property value. Power action types
            ## @param value Value to set for the power_sleep_button_action_on_battery property.
            ## @return a void
            ## 
            def power_sleep_button_action_on_battery=(value)
                @power_sleep_button_action_on_battery = value
            end
            ## 
            ## Gets the powerSleepButtonActionPluggedIn property value. Power action types
            ## @return a power_action_type
            ## 
            def power_sleep_button_action_plugged_in
                return @power_sleep_button_action_plugged_in
            end
            ## 
            ## Sets the powerSleepButtonActionPluggedIn property value. Power action types
            ## @param value Value to set for the power_sleep_button_action_plugged_in property.
            ## @return a void
            ## 
            def power_sleep_button_action_plugged_in=(value)
                @power_sleep_button_action_plugged_in = value
            end
            ## 
            ## Gets the printerBlockAddition property value. Prevent user installation of additional printers from printers settings.
            ## @return a boolean
            ## 
            def printer_block_addition
                return @printer_block_addition
            end
            ## 
            ## Sets the printerBlockAddition property value. Prevent user installation of additional printers from printers settings.
            ## @param value Value to set for the printer_block_addition property.
            ## @return a void
            ## 
            def printer_block_addition=(value)
                @printer_block_addition = value
            end
            ## 
            ## Gets the printerDefaultName property value. Name (network host name) of an installed printer.
            ## @return a string
            ## 
            def printer_default_name
                return @printer_default_name
            end
            ## 
            ## Sets the printerDefaultName property value. Name (network host name) of an installed printer.
            ## @param value Value to set for the printer_default_name property.
            ## @return a void
            ## 
            def printer_default_name=(value)
                @printer_default_name = value
            end
            ## 
            ## Gets the printerNames property value. Automatically provision printers based on their names (network host names).
            ## @return a string
            ## 
            def printer_names
                return @printer_names
            end
            ## 
            ## Sets the printerNames property value. Automatically provision printers based on their names (network host names).
            ## @param value Value to set for the printer_names property.
            ## @return a void
            ## 
            def printer_names=(value)
                @printer_names = value
            end
            ## 
            ## Gets the privacyAccessControls property value. Indicates a list of applications with their access control levels over privacy data categories, and/or the default access levels per category. This collection can contain a maximum of 500 elements.
            ## @return a windows_privacy_data_access_control_item
            ## 
            def privacy_access_controls
                return @privacy_access_controls
            end
            ## 
            ## Sets the privacyAccessControls property value. Indicates a list of applications with their access control levels over privacy data categories, and/or the default access levels per category. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the privacy_access_controls property.
            ## @return a void
            ## 
            def privacy_access_controls=(value)
                @privacy_access_controls = value
            end
            ## 
            ## Gets the privacyAdvertisingId property value. State Management Setting.
            ## @return a state_management_setting
            ## 
            def privacy_advertising_id
                return @privacy_advertising_id
            end
            ## 
            ## Sets the privacyAdvertisingId property value. State Management Setting.
            ## @param value Value to set for the privacy_advertising_id property.
            ## @return a void
            ## 
            def privacy_advertising_id=(value)
                @privacy_advertising_id = value
            end
            ## 
            ## Gets the privacyAutoAcceptPairingAndConsentPrompts property value. Indicates whether or not to allow the automatic acceptance of the pairing and privacy user consent dialog when launching apps.
            ## @return a boolean
            ## 
            def privacy_auto_accept_pairing_and_consent_prompts
                return @privacy_auto_accept_pairing_and_consent_prompts
            end
            ## 
            ## Sets the privacyAutoAcceptPairingAndConsentPrompts property value. Indicates whether or not to allow the automatic acceptance of the pairing and privacy user consent dialog when launching apps.
            ## @param value Value to set for the privacy_auto_accept_pairing_and_consent_prompts property.
            ## @return a void
            ## 
            def privacy_auto_accept_pairing_and_consent_prompts=(value)
                @privacy_auto_accept_pairing_and_consent_prompts = value
            end
            ## 
            ## Gets the privacyBlockActivityFeed property value. Blocks the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            ## @return a boolean
            ## 
            def privacy_block_activity_feed
                return @privacy_block_activity_feed
            end
            ## 
            ## Sets the privacyBlockActivityFeed property value. Blocks the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            ## @param value Value to set for the privacy_block_activity_feed property.
            ## @return a void
            ## 
            def privacy_block_activity_feed=(value)
                @privacy_block_activity_feed = value
            end
            ## 
            ## Gets the privacyBlockInputPersonalization property value. Indicates whether or not to block the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            ## @return a boolean
            ## 
            def privacy_block_input_personalization
                return @privacy_block_input_personalization
            end
            ## 
            ## Sets the privacyBlockInputPersonalization property value. Indicates whether or not to block the usage of cloud based speech services for Cortana, Dictation, or Store applications.
            ## @param value Value to set for the privacy_block_input_personalization property.
            ## @return a void
            ## 
            def privacy_block_input_personalization=(value)
                @privacy_block_input_personalization = value
            end
            ## 
            ## Gets the privacyBlockPublishUserActivities property value. Blocks the shared experiences/discovery of recently used resources in task switcher etc.
            ## @return a boolean
            ## 
            def privacy_block_publish_user_activities
                return @privacy_block_publish_user_activities
            end
            ## 
            ## Sets the privacyBlockPublishUserActivities property value. Blocks the shared experiences/discovery of recently used resources in task switcher etc.
            ## @param value Value to set for the privacy_block_publish_user_activities property.
            ## @return a void
            ## 
            def privacy_block_publish_user_activities=(value)
                @privacy_block_publish_user_activities = value
            end
            ## 
            ## Gets the privacyDisableLaunchExperience property value. This policy prevents the privacy experience from launching during user logon for new and upgraded users.​
            ## @return a boolean
            ## 
            def privacy_disable_launch_experience
                return @privacy_disable_launch_experience
            end
            ## 
            ## Sets the privacyDisableLaunchExperience property value. This policy prevents the privacy experience from launching during user logon for new and upgraded users.​
            ## @param value Value to set for the privacy_disable_launch_experience property.
            ## @return a void
            ## 
            def privacy_disable_launch_experience=(value)
                @privacy_disable_launch_experience = value
            end
            ## 
            ## Gets the resetProtectionModeBlocked property value. Indicates whether or not to Block the user from reset protection mode.
            ## @return a boolean
            ## 
            def reset_protection_mode_blocked
                return @reset_protection_mode_blocked
            end
            ## 
            ## Sets the resetProtectionModeBlocked property value. Indicates whether or not to Block the user from reset protection mode.
            ## @param value Value to set for the reset_protection_mode_blocked property.
            ## @return a void
            ## 
            def reset_protection_mode_blocked=(value)
                @reset_protection_mode_blocked = value
            end
            ## 
            ## Gets the safeSearchFilter property value. Specifies what level of safe search (filtering adult content) is required
            ## @return a safe_search_filter_type
            ## 
            def safe_search_filter
                return @safe_search_filter
            end
            ## 
            ## Sets the safeSearchFilter property value. Specifies what level of safe search (filtering adult content) is required
            ## @param value Value to set for the safe_search_filter property.
            ## @return a void
            ## 
            def safe_search_filter=(value)
                @safe_search_filter = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether or not to Block the user from taking Screenshots.
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether or not to Block the user from taking Screenshots.
            ## @param value Value to set for the screen_capture_blocked property.
            ## @return a void
            ## 
            def screen_capture_blocked=(value)
                @screen_capture_blocked = value
            end
            ## 
            ## Gets the searchBlockDiacritics property value. Specifies if search can use diacritics.
            ## @return a boolean
            ## 
            def search_block_diacritics
                return @search_block_diacritics
            end
            ## 
            ## Sets the searchBlockDiacritics property value. Specifies if search can use diacritics.
            ## @param value Value to set for the search_block_diacritics property.
            ## @return a void
            ## 
            def search_block_diacritics=(value)
                @search_block_diacritics = value
            end
            ## 
            ## Gets the searchBlockWebResults property value. Indicates whether or not to block the web search.
            ## @return a boolean
            ## 
            def search_block_web_results
                return @search_block_web_results
            end
            ## 
            ## Sets the searchBlockWebResults property value. Indicates whether or not to block the web search.
            ## @param value Value to set for the search_block_web_results property.
            ## @return a void
            ## 
            def search_block_web_results=(value)
                @search_block_web_results = value
            end
            ## 
            ## Gets the searchDisableAutoLanguageDetection property value. Specifies whether to use automatic language detection when indexing content and properties.
            ## @return a boolean
            ## 
            def search_disable_auto_language_detection
                return @search_disable_auto_language_detection
            end
            ## 
            ## Sets the searchDisableAutoLanguageDetection property value. Specifies whether to use automatic language detection when indexing content and properties.
            ## @param value Value to set for the search_disable_auto_language_detection property.
            ## @return a void
            ## 
            def search_disable_auto_language_detection=(value)
                @search_disable_auto_language_detection = value
            end
            ## 
            ## Gets the searchDisableIndexerBackoff property value. Indicates whether or not to disable the search indexer backoff feature.
            ## @return a boolean
            ## 
            def search_disable_indexer_backoff
                return @search_disable_indexer_backoff
            end
            ## 
            ## Sets the searchDisableIndexerBackoff property value. Indicates whether or not to disable the search indexer backoff feature.
            ## @param value Value to set for the search_disable_indexer_backoff property.
            ## @return a void
            ## 
            def search_disable_indexer_backoff=(value)
                @search_disable_indexer_backoff = value
            end
            ## 
            ## Gets the searchDisableIndexingEncryptedItems property value. Indicates whether or not to block indexing of WIP-protected items to prevent them from appearing in search results for Cortana or Explorer.
            ## @return a boolean
            ## 
            def search_disable_indexing_encrypted_items
                return @search_disable_indexing_encrypted_items
            end
            ## 
            ## Sets the searchDisableIndexingEncryptedItems property value. Indicates whether or not to block indexing of WIP-protected items to prevent them from appearing in search results for Cortana or Explorer.
            ## @param value Value to set for the search_disable_indexing_encrypted_items property.
            ## @return a void
            ## 
            def search_disable_indexing_encrypted_items=(value)
                @search_disable_indexing_encrypted_items = value
            end
            ## 
            ## Gets the searchDisableIndexingRemovableDrive property value. Indicates whether or not to allow users to add locations on removable drives to libraries and to be indexed.
            ## @return a boolean
            ## 
            def search_disable_indexing_removable_drive
                return @search_disable_indexing_removable_drive
            end
            ## 
            ## Sets the searchDisableIndexingRemovableDrive property value. Indicates whether or not to allow users to add locations on removable drives to libraries and to be indexed.
            ## @param value Value to set for the search_disable_indexing_removable_drive property.
            ## @return a void
            ## 
            def search_disable_indexing_removable_drive=(value)
                @search_disable_indexing_removable_drive = value
            end
            ## 
            ## Gets the searchDisableLocation property value. Specifies if search can use location information.
            ## @return a boolean
            ## 
            def search_disable_location
                return @search_disable_location
            end
            ## 
            ## Sets the searchDisableLocation property value. Specifies if search can use location information.
            ## @param value Value to set for the search_disable_location property.
            ## @return a void
            ## 
            def search_disable_location=(value)
                @search_disable_location = value
            end
            ## 
            ## Gets the searchDisableUseLocation property value. Specifies if search can use location information.
            ## @return a boolean
            ## 
            def search_disable_use_location
                return @search_disable_use_location
            end
            ## 
            ## Sets the searchDisableUseLocation property value. Specifies if search can use location information.
            ## @param value Value to set for the search_disable_use_location property.
            ## @return a void
            ## 
            def search_disable_use_location=(value)
                @search_disable_use_location = value
            end
            ## 
            ## Gets the searchEnableAutomaticIndexSizeManangement property value. Specifies minimum amount of hard drive space on the same drive as the index location before indexing stops.
            ## @return a boolean
            ## 
            def search_enable_automatic_index_size_manangement
                return @search_enable_automatic_index_size_manangement
            end
            ## 
            ## Sets the searchEnableAutomaticIndexSizeManangement property value. Specifies minimum amount of hard drive space on the same drive as the index location before indexing stops.
            ## @param value Value to set for the search_enable_automatic_index_size_manangement property.
            ## @return a void
            ## 
            def search_enable_automatic_index_size_manangement=(value)
                @search_enable_automatic_index_size_manangement = value
            end
            ## 
            ## Gets the searchEnableRemoteQueries property value. Indicates whether or not to block remote queries of this computer’s index.
            ## @return a boolean
            ## 
            def search_enable_remote_queries
                return @search_enable_remote_queries
            end
            ## 
            ## Sets the searchEnableRemoteQueries property value. Indicates whether or not to block remote queries of this computer’s index.
            ## @param value Value to set for the search_enable_remote_queries property.
            ## @return a void
            ## 
            def search_enable_remote_queries=(value)
                @search_enable_remote_queries = value
            end
            ## 
            ## Gets the securityBlockAzureADJoinedDevicesAutoEncryption property value. Specify whether to allow automatic device encryption during OOBE when the device is Azure AD joined (desktop only).
            ## @return a boolean
            ## 
            def security_block_azure_a_d_joined_devices_auto_encryption
                return @security_block_azure_a_d_joined_devices_auto_encryption
            end
            ## 
            ## Sets the securityBlockAzureADJoinedDevicesAutoEncryption property value. Specify whether to allow automatic device encryption during OOBE when the device is Azure AD joined (desktop only).
            ## @param value Value to set for the security_block_azure_a_d_joined_devices_auto_encryption property.
            ## @return a void
            ## 
            def security_block_azure_a_d_joined_devices_auto_encryption=(value)
                @security_block_azure_a_d_joined_devices_auto_encryption = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accountsBlockAddingNonMicrosoftAccountEmail", @accounts_block_adding_non_microsoft_account_email)
                writer.write_enum_value("activateAppsWithVoice", @activate_apps_with_voice)
                writer.write_boolean_value("antiTheftModeBlocked", @anti_theft_mode_blocked)
                writer.write_boolean_value("appManagementMSIAllowUserControlOverInstall", @app_management_m_s_i_allow_user_control_over_install)
                writer.write_boolean_value("appManagementMSIAlwaysInstallWithElevatedPrivileges", @app_management_m_s_i_always_install_with_elevated_privileges)
                writer.write_collection_of_primitive_values("appManagementPackageFamilyNamesToLaunchAfterLogOn", @app_management_package_family_names_to_launch_after_log_on)
                writer.write_enum_value("appsAllowTrustedAppsSideloading", @apps_allow_trusted_apps_sideloading)
                writer.write_boolean_value("appsBlockWindowsStoreOriginatedApps", @apps_block_windows_store_originated_apps)
                writer.write_boolean_value("authenticationAllowSecondaryDevice", @authentication_allow_secondary_device)
                writer.write_string_value("authenticationPreferredAzureADTenantDomainName", @authentication_preferred_azure_a_d_tenant_domain_name)
                writer.write_enum_value("authenticationWebSignIn", @authentication_web_sign_in)
                writer.write_collection_of_primitive_values("bluetoothAllowedServices", @bluetooth_allowed_services)
                writer.write_boolean_value("bluetoothBlockAdvertising", @bluetooth_block_advertising)
                writer.write_boolean_value("bluetoothBlockDiscoverableMode", @bluetooth_block_discoverable_mode)
                writer.write_boolean_value("bluetoothBlockPrePairing", @bluetooth_block_pre_pairing)
                writer.write_boolean_value("bluetoothBlockPromptedProximalConnections", @bluetooth_block_prompted_proximal_connections)
                writer.write_boolean_value("bluetoothBlocked", @bluetooth_blocked)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("cellularBlockDataWhenRoaming", @cellular_block_data_when_roaming)
                writer.write_boolean_value("cellularBlockVpn", @cellular_block_vpn)
                writer.write_boolean_value("cellularBlockVpnWhenRoaming", @cellular_block_vpn_when_roaming)
                writer.write_enum_value("cellularData", @cellular_data)
                writer.write_boolean_value("certificatesBlockManualRootCertificateInstallation", @certificates_block_manual_root_certificate_installation)
                writer.write_string_value("configureTimeZone", @configure_time_zone)
                writer.write_boolean_value("connectedDevicesServiceBlocked", @connected_devices_service_blocked)
                writer.write_boolean_value("copyPasteBlocked", @copy_paste_blocked)
                writer.write_boolean_value("cortanaBlocked", @cortana_blocked)
                writer.write_boolean_value("cryptographyAllowFipsAlgorithmPolicy", @cryptography_allow_fips_algorithm_policy)
                writer.write_boolean_value("dataProtectionBlockDirectMemoryAccess", @data_protection_block_direct_memory_access)
                writer.write_boolean_value("defenderBlockEndUserAccess", @defender_block_end_user_access)
                writer.write_boolean_value("defenderBlockOnAccessProtection", @defender_block_on_access_protection)
                writer.write_enum_value("defenderCloudBlockLevel", @defender_cloud_block_level)
                writer.write_number_value("defenderCloudExtendedTimeout", @defender_cloud_extended_timeout)
                writer.write_number_value("defenderCloudExtendedTimeoutInSeconds", @defender_cloud_extended_timeout_in_seconds)
                writer.write_number_value("defenderDaysBeforeDeletingQuarantinedMalware", @defender_days_before_deleting_quarantined_malware)
                writer.write_object_value("defenderDetectedMalwareActions", @defender_detected_malware_actions)
                writer.write_boolean_value("defenderDisableCatchupFullScan", @defender_disable_catchup_full_scan)
                writer.write_boolean_value("defenderDisableCatchupQuickScan", @defender_disable_catchup_quick_scan)
                writer.write_collection_of_primitive_values("defenderFileExtensionsToExclude", @defender_file_extensions_to_exclude)
                writer.write_collection_of_primitive_values("defenderFilesAndFoldersToExclude", @defender_files_and_folders_to_exclude)
                writer.write_enum_value("defenderMonitorFileActivity", @defender_monitor_file_activity)
                writer.write_enum_value("defenderPotentiallyUnwantedAppAction", @defender_potentially_unwanted_app_action)
                writer.write_enum_value("defenderPotentiallyUnwantedAppActionSetting", @defender_potentially_unwanted_app_action_setting)
                writer.write_collection_of_primitive_values("defenderProcessesToExclude", @defender_processes_to_exclude)
                writer.write_enum_value("defenderPromptForSampleSubmission", @defender_prompt_for_sample_submission)
                writer.write_boolean_value("defenderRequireBehaviorMonitoring", @defender_require_behavior_monitoring)
                writer.write_boolean_value("defenderRequireCloudProtection", @defender_require_cloud_protection)
                writer.write_boolean_value("defenderRequireNetworkInspectionSystem", @defender_require_network_inspection_system)
                writer.write_boolean_value("defenderRequireRealTimeMonitoring", @defender_require_real_time_monitoring)
                writer.write_boolean_value("defenderScanArchiveFiles", @defender_scan_archive_files)
                writer.write_boolean_value("defenderScanDownloads", @defender_scan_downloads)
                writer.write_boolean_value("defenderScanIncomingMail", @defender_scan_incoming_mail)
                writer.write_boolean_value("defenderScanMappedNetworkDrivesDuringFullScan", @defender_scan_mapped_network_drives_during_full_scan)
                writer.write_number_value("defenderScanMaxCpu", @defender_scan_max_cpu)
                writer.write_boolean_value("defenderScanNetworkFiles", @defender_scan_network_files)
                writer.write_boolean_value("defenderScanRemovableDrivesDuringFullScan", @defender_scan_removable_drives_during_full_scan)
                writer.write_boolean_value("defenderScanScriptsLoadedInInternetExplorer", @defender_scan_scripts_loaded_in_internet_explorer)
                writer.write_enum_value("defenderScanType", @defender_scan_type)
                writer.write_boolean_value("defenderScheduleScanEnableLowCpuPriority", @defender_schedule_scan_enable_low_cpu_priority)
                writer.write_time_value("defenderScheduledQuickScanTime", @defender_scheduled_quick_scan_time)
                writer.write_time_value("defenderScheduledScanTime", @defender_scheduled_scan_time)
                writer.write_number_value("defenderSignatureUpdateIntervalInHours", @defender_signature_update_interval_in_hours)
                writer.write_enum_value("defenderSubmitSamplesConsentType", @defender_submit_samples_consent_type)
                writer.write_enum_value("defenderSystemScanSchedule", @defender_system_scan_schedule)
                writer.write_enum_value("developerUnlockSetting", @developer_unlock_setting)
                writer.write_boolean_value("deviceManagementBlockFactoryResetOnMobile", @device_management_block_factory_reset_on_mobile)
                writer.write_boolean_value("deviceManagementBlockManualUnenroll", @device_management_block_manual_unenroll)
                writer.write_enum_value("diagnosticsDataSubmissionMode", @diagnostics_data_submission_mode)
                writer.write_collection_of_primitive_values("displayAppListWithGdiDPIScalingTurnedOff", @display_app_list_with_gdi_d_p_i_scaling_turned_off)
                writer.write_collection_of_primitive_values("displayAppListWithGdiDPIScalingTurnedOn", @display_app_list_with_gdi_d_p_i_scaling_turned_on)
                writer.write_boolean_value("edgeAllowStartPagesModification", @edge_allow_start_pages_modification)
                writer.write_boolean_value("edgeBlockAccessToAboutFlags", @edge_block_access_to_about_flags)
                writer.write_boolean_value("edgeBlockAddressBarDropdown", @edge_block_address_bar_dropdown)
                writer.write_boolean_value("edgeBlockAutofill", @edge_block_autofill)
                writer.write_boolean_value("edgeBlockCompatibilityList", @edge_block_compatibility_list)
                writer.write_boolean_value("edgeBlockDeveloperTools", @edge_block_developer_tools)
                writer.write_boolean_value("edgeBlockEditFavorites", @edge_block_edit_favorites)
                writer.write_boolean_value("edgeBlockExtensions", @edge_block_extensions)
                writer.write_boolean_value("edgeBlockFullScreenMode", @edge_block_full_screen_mode)
                writer.write_boolean_value("edgeBlockInPrivateBrowsing", @edge_block_in_private_browsing)
                writer.write_boolean_value("edgeBlockJavaScript", @edge_block_java_script)
                writer.write_boolean_value("edgeBlockLiveTileDataCollection", @edge_block_live_tile_data_collection)
                writer.write_boolean_value("edgeBlockPasswordManager", @edge_block_password_manager)
                writer.write_boolean_value("edgeBlockPopups", @edge_block_popups)
                writer.write_boolean_value("edgeBlockPrelaunch", @edge_block_prelaunch)
                writer.write_boolean_value("edgeBlockPrinting", @edge_block_printing)
                writer.write_boolean_value("edgeBlockSavingHistory", @edge_block_saving_history)
                writer.write_boolean_value("edgeBlockSearchEngineCustomization", @edge_block_search_engine_customization)
                writer.write_boolean_value("edgeBlockSearchSuggestions", @edge_block_search_suggestions)
                writer.write_boolean_value("edgeBlockSendingDoNotTrackHeader", @edge_block_sending_do_not_track_header)
                writer.write_boolean_value("edgeBlockSendingIntranetTrafficToInternetExplorer", @edge_block_sending_intranet_traffic_to_internet_explorer)
                writer.write_boolean_value("edgeBlockSideloadingExtensions", @edge_block_sideloading_extensions)
                writer.write_boolean_value("edgeBlockTabPreloading", @edge_block_tab_preloading)
                writer.write_boolean_value("edgeBlockWebContentOnNewTabPage", @edge_block_web_content_on_new_tab_page)
                writer.write_boolean_value("edgeBlocked", @edge_blocked)
                writer.write_boolean_value("edgeClearBrowsingDataOnExit", @edge_clear_browsing_data_on_exit)
                writer.write_enum_value("edgeCookiePolicy", @edge_cookie_policy)
                writer.write_boolean_value("edgeDisableFirstRunPage", @edge_disable_first_run_page)
                writer.write_string_value("edgeEnterpriseModeSiteListLocation", @edge_enterprise_mode_site_list_location)
                writer.write_enum_value("edgeFavoritesBarVisibility", @edge_favorites_bar_visibility)
                writer.write_string_value("edgeFavoritesListLocation", @edge_favorites_list_location)
                writer.write_string_value("edgeFirstRunUrl", @edge_first_run_url)
                writer.write_object_value("edgeHomeButtonConfiguration", @edge_home_button_configuration)
                writer.write_boolean_value("edgeHomeButtonConfigurationEnabled", @edge_home_button_configuration_enabled)
                writer.write_collection_of_primitive_values("edgeHomepageUrls", @edge_homepage_urls)
                writer.write_enum_value("edgeKioskModeRestriction", @edge_kiosk_mode_restriction)
                writer.write_number_value("edgeKioskResetAfterIdleTimeInMinutes", @edge_kiosk_reset_after_idle_time_in_minutes)
                writer.write_string_value("edgeNewTabPageURL", @edge_new_tab_page_u_r_l)
                writer.write_enum_value("edgeOpensWith", @edge_opens_with)
                writer.write_boolean_value("edgePreventCertificateErrorOverride", @edge_prevent_certificate_error_override)
                writer.write_boolean_value("edgeRequireSmartScreen", @edge_require_smart_screen)
                writer.write_collection_of_primitive_values("edgeRequiredExtensionPackageFamilyNames", @edge_required_extension_package_family_names)
                writer.write_object_value("edgeSearchEngine", @edge_search_engine)
                writer.write_boolean_value("edgeSendIntranetTrafficToInternetExplorer", @edge_send_intranet_traffic_to_internet_explorer)
                writer.write_enum_value("edgeShowMessageWhenOpeningInternetExplorerSites", @edge_show_message_when_opening_internet_explorer_sites)
                writer.write_boolean_value("edgeSyncFavoritesWithInternetExplorer", @edge_sync_favorites_with_internet_explorer)
                writer.write_enum_value("edgeTelemetryForMicrosoft365Analytics", @edge_telemetry_for_microsoft365_analytics)
                writer.write_boolean_value("enableAutomaticRedeployment", @enable_automatic_redeployment)
                writer.write_number_value("energySaverOnBatteryThresholdPercentage", @energy_saver_on_battery_threshold_percentage)
                writer.write_number_value("energySaverPluggedInThresholdPercentage", @energy_saver_plugged_in_threshold_percentage)
                writer.write_string_value("enterpriseCloudPrintDiscoveryEndPoint", @enterprise_cloud_print_discovery_end_point)
                writer.write_number_value("enterpriseCloudPrintDiscoveryMaxLimit", @enterprise_cloud_print_discovery_max_limit)
                writer.write_string_value("enterpriseCloudPrintMopriaDiscoveryResourceIdentifier", @enterprise_cloud_print_mopria_discovery_resource_identifier)
                writer.write_string_value("enterpriseCloudPrintOAuthAuthority", @enterprise_cloud_print_o_auth_authority)
                writer.write_string_value("enterpriseCloudPrintOAuthClientIdentifier", @enterprise_cloud_print_o_auth_client_identifier)
                writer.write_string_value("enterpriseCloudPrintResourceIdentifier", @enterprise_cloud_print_resource_identifier)
                writer.write_boolean_value("experienceBlockDeviceDiscovery", @experience_block_device_discovery)
                writer.write_boolean_value("experienceBlockErrorDialogWhenNoSIM", @experience_block_error_dialog_when_no_s_i_m)
                writer.write_boolean_value("experienceBlockTaskSwitcher", @experience_block_task_switcher)
                writer.write_enum_value("experienceDoNotSyncBrowserSettings", @experience_do_not_sync_browser_settings)
                writer.write_enum_value("findMyFiles", @find_my_files)
                writer.write_boolean_value("gameDvrBlocked", @game_dvr_blocked)
                writer.write_enum_value("inkWorkspaceAccess", @ink_workspace_access)
                writer.write_enum_value("inkWorkspaceAccessState", @ink_workspace_access_state)
                writer.write_boolean_value("inkWorkspaceBlockSuggestedApps", @ink_workspace_block_suggested_apps)
                writer.write_boolean_value("internetSharingBlocked", @internet_sharing_blocked)
                writer.write_boolean_value("locationServicesBlocked", @location_services_blocked)
                writer.write_enum_value("lockScreenActivateAppsWithVoice", @lock_screen_activate_apps_with_voice)
                writer.write_boolean_value("lockScreenAllowTimeoutConfiguration", @lock_screen_allow_timeout_configuration)
                writer.write_boolean_value("lockScreenBlockActionCenterNotifications", @lock_screen_block_action_center_notifications)
                writer.write_boolean_value("lockScreenBlockCortana", @lock_screen_block_cortana)
                writer.write_boolean_value("lockScreenBlockToastNotifications", @lock_screen_block_toast_notifications)
                writer.write_number_value("lockScreenTimeoutInSeconds", @lock_screen_timeout_in_seconds)
                writer.write_boolean_value("logonBlockFastUserSwitching", @logon_block_fast_user_switching)
                writer.write_boolean_value("messagingBlockMMS", @messaging_block_m_m_s)
                writer.write_boolean_value("messagingBlockRichCommunicationServices", @messaging_block_rich_communication_services)
                writer.write_boolean_value("messagingBlockSync", @messaging_block_sync)
                writer.write_boolean_value("microsoftAccountBlockSettingsSync", @microsoft_account_block_settings_sync)
                writer.write_boolean_value("microsoftAccountBlocked", @microsoft_account_blocked)
                writer.write_enum_value("microsoftAccountSignInAssistantSettings", @microsoft_account_sign_in_assistant_settings)
                writer.write_boolean_value("networkProxyApplySettingsDeviceWide", @network_proxy_apply_settings_device_wide)
                writer.write_string_value("networkProxyAutomaticConfigurationUrl", @network_proxy_automatic_configuration_url)
                writer.write_boolean_value("networkProxyDisableAutoDetect", @network_proxy_disable_auto_detect)
                writer.write_object_value("networkProxyServer", @network_proxy_server)
                writer.write_boolean_value("nfcBlocked", @nfc_blocked)
                writer.write_boolean_value("oneDriveDisableFileSync", @one_drive_disable_file_sync)
                writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMinimumAgeInDays", @password_minimum_age_in_days)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequireWhenResumeFromIdleState", @password_require_when_resume_from_idle_state)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_number_value("passwordSignInFailureCountBeforeFactoryReset", @password_sign_in_failure_count_before_factory_reset)
                writer.write_string_value("personalizationDesktopImageUrl", @personalization_desktop_image_url)
                writer.write_string_value("personalizationLockScreenImageUrl", @personalization_lock_screen_image_url)
                writer.write_enum_value("powerButtonActionOnBattery", @power_button_action_on_battery)
                writer.write_enum_value("powerButtonActionPluggedIn", @power_button_action_plugged_in)
                writer.write_enum_value("powerHybridSleepOnBattery", @power_hybrid_sleep_on_battery)
                writer.write_enum_value("powerHybridSleepPluggedIn", @power_hybrid_sleep_plugged_in)
                writer.write_enum_value("powerLidCloseActionOnBattery", @power_lid_close_action_on_battery)
                writer.write_enum_value("powerLidCloseActionPluggedIn", @power_lid_close_action_plugged_in)
                writer.write_enum_value("powerSleepButtonActionOnBattery", @power_sleep_button_action_on_battery)
                writer.write_enum_value("powerSleepButtonActionPluggedIn", @power_sleep_button_action_plugged_in)
                writer.write_boolean_value("printerBlockAddition", @printer_block_addition)
                writer.write_string_value("printerDefaultName", @printer_default_name)
                writer.write_collection_of_primitive_values("printerNames", @printer_names)
                writer.write_collection_of_object_values("privacyAccessControls", @privacy_access_controls)
                writer.write_enum_value("privacyAdvertisingId", @privacy_advertising_id)
                writer.write_boolean_value("privacyAutoAcceptPairingAndConsentPrompts", @privacy_auto_accept_pairing_and_consent_prompts)
                writer.write_boolean_value("privacyBlockActivityFeed", @privacy_block_activity_feed)
                writer.write_boolean_value("privacyBlockInputPersonalization", @privacy_block_input_personalization)
                writer.write_boolean_value("privacyBlockPublishUserActivities", @privacy_block_publish_user_activities)
                writer.write_boolean_value("privacyDisableLaunchExperience", @privacy_disable_launch_experience)
                writer.write_boolean_value("resetProtectionModeBlocked", @reset_protection_mode_blocked)
                writer.write_enum_value("safeSearchFilter", @safe_search_filter)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_boolean_value("searchBlockDiacritics", @search_block_diacritics)
                writer.write_boolean_value("searchBlockWebResults", @search_block_web_results)
                writer.write_boolean_value("searchDisableAutoLanguageDetection", @search_disable_auto_language_detection)
                writer.write_boolean_value("searchDisableIndexerBackoff", @search_disable_indexer_backoff)
                writer.write_boolean_value("searchDisableIndexingEncryptedItems", @search_disable_indexing_encrypted_items)
                writer.write_boolean_value("searchDisableIndexingRemovableDrive", @search_disable_indexing_removable_drive)
                writer.write_boolean_value("searchDisableLocation", @search_disable_location)
                writer.write_boolean_value("searchDisableUseLocation", @search_disable_use_location)
                writer.write_boolean_value("searchEnableAutomaticIndexSizeManangement", @search_enable_automatic_index_size_manangement)
                writer.write_boolean_value("searchEnableRemoteQueries", @search_enable_remote_queries)
                writer.write_boolean_value("securityBlockAzureADJoinedDevicesAutoEncryption", @security_block_azure_a_d_joined_devices_auto_encryption)
                writer.write_boolean_value("settingsBlockAccountsPage", @settings_block_accounts_page)
                writer.write_boolean_value("settingsBlockAddProvisioningPackage", @settings_block_add_provisioning_package)
                writer.write_boolean_value("settingsBlockAppsPage", @settings_block_apps_page)
                writer.write_boolean_value("settingsBlockChangeLanguage", @settings_block_change_language)
                writer.write_boolean_value("settingsBlockChangePowerSleep", @settings_block_change_power_sleep)
                writer.write_boolean_value("settingsBlockChangeRegion", @settings_block_change_region)
                writer.write_boolean_value("settingsBlockChangeSystemTime", @settings_block_change_system_time)
                writer.write_boolean_value("settingsBlockDevicesPage", @settings_block_devices_page)
                writer.write_boolean_value("settingsBlockEaseOfAccessPage", @settings_block_ease_of_access_page)
                writer.write_boolean_value("settingsBlockEditDeviceName", @settings_block_edit_device_name)
                writer.write_boolean_value("settingsBlockGamingPage", @settings_block_gaming_page)
                writer.write_boolean_value("settingsBlockNetworkInternetPage", @settings_block_network_internet_page)
                writer.write_boolean_value("settingsBlockPersonalizationPage", @settings_block_personalization_page)
                writer.write_boolean_value("settingsBlockPrivacyPage", @settings_block_privacy_page)
                writer.write_boolean_value("settingsBlockRemoveProvisioningPackage", @settings_block_remove_provisioning_package)
                writer.write_boolean_value("settingsBlockSettingsApp", @settings_block_settings_app)
                writer.write_boolean_value("settingsBlockSystemPage", @settings_block_system_page)
                writer.write_boolean_value("settingsBlockTimeLanguagePage", @settings_block_time_language_page)
                writer.write_boolean_value("settingsBlockUpdateSecurityPage", @settings_block_update_security_page)
                writer.write_boolean_value("sharedUserAppDataAllowed", @shared_user_app_data_allowed)
                writer.write_enum_value("smartScreenAppInstallControl", @smart_screen_app_install_control)
                writer.write_boolean_value("smartScreenBlockPromptOverride", @smart_screen_block_prompt_override)
                writer.write_boolean_value("smartScreenBlockPromptOverrideForFiles", @smart_screen_block_prompt_override_for_files)
                writer.write_boolean_value("smartScreenEnableAppInstallControl", @smart_screen_enable_app_install_control)
                writer.write_boolean_value("startBlockUnpinningAppsFromTaskbar", @start_block_unpinning_apps_from_taskbar)
                writer.write_enum_value("startMenuAppListVisibility", @start_menu_app_list_visibility)
                writer.write_boolean_value("startMenuHideChangeAccountSettings", @start_menu_hide_change_account_settings)
                writer.write_boolean_value("startMenuHideFrequentlyUsedApps", @start_menu_hide_frequently_used_apps)
                writer.write_boolean_value("startMenuHideHibernate", @start_menu_hide_hibernate)
                writer.write_boolean_value("startMenuHideLock", @start_menu_hide_lock)
                writer.write_boolean_value("startMenuHidePowerButton", @start_menu_hide_power_button)
                writer.write_boolean_value("startMenuHideRecentJumpLists", @start_menu_hide_recent_jump_lists)
                writer.write_boolean_value("startMenuHideRecentlyAddedApps", @start_menu_hide_recently_added_apps)
                writer.write_boolean_value("startMenuHideRestartOptions", @start_menu_hide_restart_options)
                writer.write_boolean_value("startMenuHideShutDown", @start_menu_hide_shut_down)
                writer.write_boolean_value("startMenuHideSignOut", @start_menu_hide_sign_out)
                writer.write_boolean_value("startMenuHideSleep", @start_menu_hide_sleep)
                writer.write_boolean_value("startMenuHideSwitchAccount", @start_menu_hide_switch_account)
                writer.write_boolean_value("startMenuHideUserTile", @start_menu_hide_user_tile)
                writer.write_object_value("startMenuLayoutEdgeAssetsXml", @start_menu_layout_edge_assets_xml)
                writer.write_object_value("startMenuLayoutXml", @start_menu_layout_xml)
                writer.write_enum_value("startMenuMode", @start_menu_mode)
                writer.write_enum_value("startMenuPinnedFolderDocuments", @start_menu_pinned_folder_documents)
                writer.write_enum_value("startMenuPinnedFolderDownloads", @start_menu_pinned_folder_downloads)
                writer.write_enum_value("startMenuPinnedFolderFileExplorer", @start_menu_pinned_folder_file_explorer)
                writer.write_enum_value("startMenuPinnedFolderHomeGroup", @start_menu_pinned_folder_home_group)
                writer.write_enum_value("startMenuPinnedFolderMusic", @start_menu_pinned_folder_music)
                writer.write_enum_value("startMenuPinnedFolderNetwork", @start_menu_pinned_folder_network)
                writer.write_enum_value("startMenuPinnedFolderPersonalFolder", @start_menu_pinned_folder_personal_folder)
                writer.write_enum_value("startMenuPinnedFolderPictures", @start_menu_pinned_folder_pictures)
                writer.write_enum_value("startMenuPinnedFolderSettings", @start_menu_pinned_folder_settings)
                writer.write_enum_value("startMenuPinnedFolderVideos", @start_menu_pinned_folder_videos)
                writer.write_boolean_value("storageBlockRemovableStorage", @storage_block_removable_storage)
                writer.write_boolean_value("storageRequireMobileDeviceEncryption", @storage_require_mobile_device_encryption)
                writer.write_boolean_value("storageRestrictAppDataToSystemVolume", @storage_restrict_app_data_to_system_volume)
                writer.write_boolean_value("storageRestrictAppInstallToSystemVolume", @storage_restrict_app_install_to_system_volume)
                writer.write_string_value("systemTelemetryProxyServer", @system_telemetry_proxy_server)
                writer.write_boolean_value("taskManagerBlockEndTask", @task_manager_block_end_task)
                writer.write_boolean_value("tenantLockdownRequireNetworkDuringOutOfBoxExperience", @tenant_lockdown_require_network_during_out_of_box_experience)
                writer.write_boolean_value("uninstallBuiltInApps", @uninstall_built_in_apps)
                writer.write_boolean_value("usbBlocked", @usb_blocked)
                writer.write_boolean_value("voiceRecordingBlocked", @voice_recording_blocked)
                writer.write_boolean_value("webRtcBlockLocalhostIpAddress", @web_rtc_block_localhost_ip_address)
                writer.write_boolean_value("wiFiBlockAutomaticConnectHotspots", @wi_fi_block_automatic_connect_hotspots)
                writer.write_boolean_value("wiFiBlockManualConfiguration", @wi_fi_block_manual_configuration)
                writer.write_boolean_value("wiFiBlocked", @wi_fi_blocked)
                writer.write_number_value("wiFiScanInterval", @wi_fi_scan_interval)
                writer.write_boolean_value("windowsSpotlightBlockConsumerSpecificFeatures", @windows_spotlight_block_consumer_specific_features)
                writer.write_boolean_value("windowsSpotlightBlockOnActionCenter", @windows_spotlight_block_on_action_center)
                writer.write_boolean_value("windowsSpotlightBlockTailoredExperiences", @windows_spotlight_block_tailored_experiences)
                writer.write_boolean_value("windowsSpotlightBlockThirdPartyNotifications", @windows_spotlight_block_third_party_notifications)
                writer.write_boolean_value("windowsSpotlightBlockWelcomeExperience", @windows_spotlight_block_welcome_experience)
                writer.write_boolean_value("windowsSpotlightBlockWindowsTips", @windows_spotlight_block_windows_tips)
                writer.write_boolean_value("windowsSpotlightBlocked", @windows_spotlight_blocked)
                writer.write_enum_value("windowsSpotlightConfigureOnLockScreen", @windows_spotlight_configure_on_lock_screen)
                writer.write_boolean_value("windowsStoreBlockAutoUpdate", @windows_store_block_auto_update)
                writer.write_boolean_value("windowsStoreBlocked", @windows_store_blocked)
                writer.write_boolean_value("windowsStoreEnablePrivateStoreOnly", @windows_store_enable_private_store_only)
                writer.write_object_value("windows10AppsForceUpdateSchedule", @windows10_apps_force_update_schedule)
                writer.write_boolean_value("wirelessDisplayBlockProjectionToThisDevice", @wireless_display_block_projection_to_this_device)
                writer.write_boolean_value("wirelessDisplayBlockUserInputFromReceiver", @wireless_display_block_user_input_from_receiver)
                writer.write_boolean_value("wirelessDisplayRequirePinForPairing", @wireless_display_require_pin_for_pairing)
            end
            ## 
            ## Gets the settingsBlockAccountsPage property value. Indicates whether or not to block access to Accounts in Settings app.
            ## @return a boolean
            ## 
            def settings_block_accounts_page
                return @settings_block_accounts_page
            end
            ## 
            ## Sets the settingsBlockAccountsPage property value. Indicates whether or not to block access to Accounts in Settings app.
            ## @param value Value to set for the settings_block_accounts_page property.
            ## @return a void
            ## 
            def settings_block_accounts_page=(value)
                @settings_block_accounts_page = value
            end
            ## 
            ## Gets the settingsBlockAddProvisioningPackage property value. Indicates whether or not to block the user from installing provisioning packages.
            ## @return a boolean
            ## 
            def settings_block_add_provisioning_package
                return @settings_block_add_provisioning_package
            end
            ## 
            ## Sets the settingsBlockAddProvisioningPackage property value. Indicates whether or not to block the user from installing provisioning packages.
            ## @param value Value to set for the settings_block_add_provisioning_package property.
            ## @return a void
            ## 
            def settings_block_add_provisioning_package=(value)
                @settings_block_add_provisioning_package = value
            end
            ## 
            ## Gets the settingsBlockAppsPage property value. Indicates whether or not to block access to Apps in Settings app.
            ## @return a boolean
            ## 
            def settings_block_apps_page
                return @settings_block_apps_page
            end
            ## 
            ## Sets the settingsBlockAppsPage property value. Indicates whether or not to block access to Apps in Settings app.
            ## @param value Value to set for the settings_block_apps_page property.
            ## @return a void
            ## 
            def settings_block_apps_page=(value)
                @settings_block_apps_page = value
            end
            ## 
            ## Gets the settingsBlockChangeLanguage property value. Indicates whether or not to block the user from changing the language settings.
            ## @return a boolean
            ## 
            def settings_block_change_language
                return @settings_block_change_language
            end
            ## 
            ## Sets the settingsBlockChangeLanguage property value. Indicates whether or not to block the user from changing the language settings.
            ## @param value Value to set for the settings_block_change_language property.
            ## @return a void
            ## 
            def settings_block_change_language=(value)
                @settings_block_change_language = value
            end
            ## 
            ## Gets the settingsBlockChangePowerSleep property value. Indicates whether or not to block the user from changing power and sleep settings.
            ## @return a boolean
            ## 
            def settings_block_change_power_sleep
                return @settings_block_change_power_sleep
            end
            ## 
            ## Sets the settingsBlockChangePowerSleep property value. Indicates whether or not to block the user from changing power and sleep settings.
            ## @param value Value to set for the settings_block_change_power_sleep property.
            ## @return a void
            ## 
            def settings_block_change_power_sleep=(value)
                @settings_block_change_power_sleep = value
            end
            ## 
            ## Gets the settingsBlockChangeRegion property value. Indicates whether or not to block the user from changing the region settings.
            ## @return a boolean
            ## 
            def settings_block_change_region
                return @settings_block_change_region
            end
            ## 
            ## Sets the settingsBlockChangeRegion property value. Indicates whether or not to block the user from changing the region settings.
            ## @param value Value to set for the settings_block_change_region property.
            ## @return a void
            ## 
            def settings_block_change_region=(value)
                @settings_block_change_region = value
            end
            ## 
            ## Gets the settingsBlockChangeSystemTime property value. Indicates whether or not to block the user from changing date and time settings.
            ## @return a boolean
            ## 
            def settings_block_change_system_time
                return @settings_block_change_system_time
            end
            ## 
            ## Sets the settingsBlockChangeSystemTime property value. Indicates whether or not to block the user from changing date and time settings.
            ## @param value Value to set for the settings_block_change_system_time property.
            ## @return a void
            ## 
            def settings_block_change_system_time=(value)
                @settings_block_change_system_time = value
            end
            ## 
            ## Gets the settingsBlockDevicesPage property value. Indicates whether or not to block access to Devices in Settings app.
            ## @return a boolean
            ## 
            def settings_block_devices_page
                return @settings_block_devices_page
            end
            ## 
            ## Sets the settingsBlockDevicesPage property value. Indicates whether or not to block access to Devices in Settings app.
            ## @param value Value to set for the settings_block_devices_page property.
            ## @return a void
            ## 
            def settings_block_devices_page=(value)
                @settings_block_devices_page = value
            end
            ## 
            ## Gets the settingsBlockEaseOfAccessPage property value. Indicates whether or not to block access to Ease of Access in Settings app.
            ## @return a boolean
            ## 
            def settings_block_ease_of_access_page
                return @settings_block_ease_of_access_page
            end
            ## 
            ## Sets the settingsBlockEaseOfAccessPage property value. Indicates whether or not to block access to Ease of Access in Settings app.
            ## @param value Value to set for the settings_block_ease_of_access_page property.
            ## @return a void
            ## 
            def settings_block_ease_of_access_page=(value)
                @settings_block_ease_of_access_page = value
            end
            ## 
            ## Gets the settingsBlockEditDeviceName property value. Indicates whether or not to block the user from editing the device name.
            ## @return a boolean
            ## 
            def settings_block_edit_device_name
                return @settings_block_edit_device_name
            end
            ## 
            ## Sets the settingsBlockEditDeviceName property value. Indicates whether or not to block the user from editing the device name.
            ## @param value Value to set for the settings_block_edit_device_name property.
            ## @return a void
            ## 
            def settings_block_edit_device_name=(value)
                @settings_block_edit_device_name = value
            end
            ## 
            ## Gets the settingsBlockGamingPage property value. Indicates whether or not to block access to Gaming in Settings app.
            ## @return a boolean
            ## 
            def settings_block_gaming_page
                return @settings_block_gaming_page
            end
            ## 
            ## Sets the settingsBlockGamingPage property value. Indicates whether or not to block access to Gaming in Settings app.
            ## @param value Value to set for the settings_block_gaming_page property.
            ## @return a void
            ## 
            def settings_block_gaming_page=(value)
                @settings_block_gaming_page = value
            end
            ## 
            ## Gets the settingsBlockNetworkInternetPage property value. Indicates whether or not to block access to Network & Internet in Settings app.
            ## @return a boolean
            ## 
            def settings_block_network_internet_page
                return @settings_block_network_internet_page
            end
            ## 
            ## Sets the settingsBlockNetworkInternetPage property value. Indicates whether or not to block access to Network & Internet in Settings app.
            ## @param value Value to set for the settings_block_network_internet_page property.
            ## @return a void
            ## 
            def settings_block_network_internet_page=(value)
                @settings_block_network_internet_page = value
            end
            ## 
            ## Gets the settingsBlockPersonalizationPage property value. Indicates whether or not to block access to Personalization in Settings app.
            ## @return a boolean
            ## 
            def settings_block_personalization_page
                return @settings_block_personalization_page
            end
            ## 
            ## Sets the settingsBlockPersonalizationPage property value. Indicates whether or not to block access to Personalization in Settings app.
            ## @param value Value to set for the settings_block_personalization_page property.
            ## @return a void
            ## 
            def settings_block_personalization_page=(value)
                @settings_block_personalization_page = value
            end
            ## 
            ## Gets the settingsBlockPrivacyPage property value. Indicates whether or not to block access to Privacy in Settings app.
            ## @return a boolean
            ## 
            def settings_block_privacy_page
                return @settings_block_privacy_page
            end
            ## 
            ## Sets the settingsBlockPrivacyPage property value. Indicates whether or not to block access to Privacy in Settings app.
            ## @param value Value to set for the settings_block_privacy_page property.
            ## @return a void
            ## 
            def settings_block_privacy_page=(value)
                @settings_block_privacy_page = value
            end
            ## 
            ## Gets the settingsBlockRemoveProvisioningPackage property value. Indicates whether or not to block the runtime configuration agent from removing provisioning packages.
            ## @return a boolean
            ## 
            def settings_block_remove_provisioning_package
                return @settings_block_remove_provisioning_package
            end
            ## 
            ## Sets the settingsBlockRemoveProvisioningPackage property value. Indicates whether or not to block the runtime configuration agent from removing provisioning packages.
            ## @param value Value to set for the settings_block_remove_provisioning_package property.
            ## @return a void
            ## 
            def settings_block_remove_provisioning_package=(value)
                @settings_block_remove_provisioning_package = value
            end
            ## 
            ## Gets the settingsBlockSettingsApp property value. Indicates whether or not to block access to Settings app.
            ## @return a boolean
            ## 
            def settings_block_settings_app
                return @settings_block_settings_app
            end
            ## 
            ## Sets the settingsBlockSettingsApp property value. Indicates whether or not to block access to Settings app.
            ## @param value Value to set for the settings_block_settings_app property.
            ## @return a void
            ## 
            def settings_block_settings_app=(value)
                @settings_block_settings_app = value
            end
            ## 
            ## Gets the settingsBlockSystemPage property value. Indicates whether or not to block access to System in Settings app.
            ## @return a boolean
            ## 
            def settings_block_system_page
                return @settings_block_system_page
            end
            ## 
            ## Sets the settingsBlockSystemPage property value. Indicates whether or not to block access to System in Settings app.
            ## @param value Value to set for the settings_block_system_page property.
            ## @return a void
            ## 
            def settings_block_system_page=(value)
                @settings_block_system_page = value
            end
            ## 
            ## Gets the settingsBlockTimeLanguagePage property value. Indicates whether or not to block access to Time & Language in Settings app.
            ## @return a boolean
            ## 
            def settings_block_time_language_page
                return @settings_block_time_language_page
            end
            ## 
            ## Sets the settingsBlockTimeLanguagePage property value. Indicates whether or not to block access to Time & Language in Settings app.
            ## @param value Value to set for the settings_block_time_language_page property.
            ## @return a void
            ## 
            def settings_block_time_language_page=(value)
                @settings_block_time_language_page = value
            end
            ## 
            ## Gets the settingsBlockUpdateSecurityPage property value. Indicates whether or not to block access to Update & Security in Settings app.
            ## @return a boolean
            ## 
            def settings_block_update_security_page
                return @settings_block_update_security_page
            end
            ## 
            ## Sets the settingsBlockUpdateSecurityPage property value. Indicates whether or not to block access to Update & Security in Settings app.
            ## @param value Value to set for the settings_block_update_security_page property.
            ## @return a void
            ## 
            def settings_block_update_security_page=(value)
                @settings_block_update_security_page = value
            end
            ## 
            ## Gets the sharedUserAppDataAllowed property value. Indicates whether or not to block multiple users of the same app to share data.
            ## @return a boolean
            ## 
            def shared_user_app_data_allowed
                return @shared_user_app_data_allowed
            end
            ## 
            ## Sets the sharedUserAppDataAllowed property value. Indicates whether or not to block multiple users of the same app to share data.
            ## @param value Value to set for the shared_user_app_data_allowed property.
            ## @return a void
            ## 
            def shared_user_app_data_allowed=(value)
                @shared_user_app_data_allowed = value
            end
            ## 
            ## Gets the smartScreenAppInstallControl property value. App Install control Setting
            ## @return a app_install_control_type
            ## 
            def smart_screen_app_install_control
                return @smart_screen_app_install_control
            end
            ## 
            ## Sets the smartScreenAppInstallControl property value. App Install control Setting
            ## @param value Value to set for the smart_screen_app_install_control property.
            ## @return a void
            ## 
            def smart_screen_app_install_control=(value)
                @smart_screen_app_install_control = value
            end
            ## 
            ## Gets the smartScreenBlockPromptOverride property value. Indicates whether or not users can override SmartScreen Filter warnings about potentially malicious websites.
            ## @return a boolean
            ## 
            def smart_screen_block_prompt_override
                return @smart_screen_block_prompt_override
            end
            ## 
            ## Sets the smartScreenBlockPromptOverride property value. Indicates whether or not users can override SmartScreen Filter warnings about potentially malicious websites.
            ## @param value Value to set for the smart_screen_block_prompt_override property.
            ## @return a void
            ## 
            def smart_screen_block_prompt_override=(value)
                @smart_screen_block_prompt_override = value
            end
            ## 
            ## Gets the smartScreenBlockPromptOverrideForFiles property value. Indicates whether or not users can override the SmartScreen Filter warnings about downloading unverified files
            ## @return a boolean
            ## 
            def smart_screen_block_prompt_override_for_files
                return @smart_screen_block_prompt_override_for_files
            end
            ## 
            ## Sets the smartScreenBlockPromptOverrideForFiles property value. Indicates whether or not users can override the SmartScreen Filter warnings about downloading unverified files
            ## @param value Value to set for the smart_screen_block_prompt_override_for_files property.
            ## @return a void
            ## 
            def smart_screen_block_prompt_override_for_files=(value)
                @smart_screen_block_prompt_override_for_files = value
            end
            ## 
            ## Gets the smartScreenEnableAppInstallControl property value. This property will be deprecated in July 2019 and will be replaced by property SmartScreenAppInstallControl. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.
            ## @return a boolean
            ## 
            def smart_screen_enable_app_install_control
                return @smart_screen_enable_app_install_control
            end
            ## 
            ## Sets the smartScreenEnableAppInstallControl property value. This property will be deprecated in July 2019 and will be replaced by property SmartScreenAppInstallControl. Allows IT Admins to control whether users are allowed to install apps from places other than the Store.
            ## @param value Value to set for the smart_screen_enable_app_install_control property.
            ## @return a void
            ## 
            def smart_screen_enable_app_install_control=(value)
                @smart_screen_enable_app_install_control = value
            end
            ## 
            ## Gets the startBlockUnpinningAppsFromTaskbar property value. Indicates whether or not to block the user from unpinning apps from taskbar.
            ## @return a boolean
            ## 
            def start_block_unpinning_apps_from_taskbar
                return @start_block_unpinning_apps_from_taskbar
            end
            ## 
            ## Sets the startBlockUnpinningAppsFromTaskbar property value. Indicates whether or not to block the user from unpinning apps from taskbar.
            ## @param value Value to set for the start_block_unpinning_apps_from_taskbar property.
            ## @return a void
            ## 
            def start_block_unpinning_apps_from_taskbar=(value)
                @start_block_unpinning_apps_from_taskbar = value
            end
            ## 
            ## Gets the startMenuAppListVisibility property value. Type of start menu app list visibility.
            ## @return a windows_start_menu_app_list_visibility_type
            ## 
            def start_menu_app_list_visibility
                return @start_menu_app_list_visibility
            end
            ## 
            ## Sets the startMenuAppListVisibility property value. Type of start menu app list visibility.
            ## @param value Value to set for the start_menu_app_list_visibility property.
            ## @return a void
            ## 
            def start_menu_app_list_visibility=(value)
                @start_menu_app_list_visibility = value
            end
            ## 
            ## Gets the startMenuHideChangeAccountSettings property value. Enabling this policy hides the change account setting from appearing in the user tile in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_change_account_settings
                return @start_menu_hide_change_account_settings
            end
            ## 
            ## Sets the startMenuHideChangeAccountSettings property value. Enabling this policy hides the change account setting from appearing in the user tile in the start menu.
            ## @param value Value to set for the start_menu_hide_change_account_settings property.
            ## @return a void
            ## 
            def start_menu_hide_change_account_settings=(value)
                @start_menu_hide_change_account_settings = value
            end
            ## 
            ## Gets the startMenuHideFrequentlyUsedApps property value. Enabling this policy hides the most used apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            ## @return a boolean
            ## 
            def start_menu_hide_frequently_used_apps
                return @start_menu_hide_frequently_used_apps
            end
            ## 
            ## Sets the startMenuHideFrequentlyUsedApps property value. Enabling this policy hides the most used apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            ## @param value Value to set for the start_menu_hide_frequently_used_apps property.
            ## @return a void
            ## 
            def start_menu_hide_frequently_used_apps=(value)
                @start_menu_hide_frequently_used_apps = value
            end
            ## 
            ## Gets the startMenuHideHibernate property value. Enabling this policy hides hibernate from appearing in the power button in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_hibernate
                return @start_menu_hide_hibernate
            end
            ## 
            ## Sets the startMenuHideHibernate property value. Enabling this policy hides hibernate from appearing in the power button in the start menu.
            ## @param value Value to set for the start_menu_hide_hibernate property.
            ## @return a void
            ## 
            def start_menu_hide_hibernate=(value)
                @start_menu_hide_hibernate = value
            end
            ## 
            ## Gets the startMenuHideLock property value. Enabling this policy hides lock from appearing in the user tile in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_lock
                return @start_menu_hide_lock
            end
            ## 
            ## Sets the startMenuHideLock property value. Enabling this policy hides lock from appearing in the user tile in the start menu.
            ## @param value Value to set for the start_menu_hide_lock property.
            ## @return a void
            ## 
            def start_menu_hide_lock=(value)
                @start_menu_hide_lock = value
            end
            ## 
            ## Gets the startMenuHidePowerButton property value. Enabling this policy hides the power button from appearing in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_power_button
                return @start_menu_hide_power_button
            end
            ## 
            ## Sets the startMenuHidePowerButton property value. Enabling this policy hides the power button from appearing in the start menu.
            ## @param value Value to set for the start_menu_hide_power_button property.
            ## @return a void
            ## 
            def start_menu_hide_power_button=(value)
                @start_menu_hide_power_button = value
            end
            ## 
            ## Gets the startMenuHideRecentJumpLists property value. Enabling this policy hides recent jump lists from appearing on the start menu/taskbar and disables the corresponding toggle in the Settings app.
            ## @return a boolean
            ## 
            def start_menu_hide_recent_jump_lists
                return @start_menu_hide_recent_jump_lists
            end
            ## 
            ## Sets the startMenuHideRecentJumpLists property value. Enabling this policy hides recent jump lists from appearing on the start menu/taskbar and disables the corresponding toggle in the Settings app.
            ## @param value Value to set for the start_menu_hide_recent_jump_lists property.
            ## @return a void
            ## 
            def start_menu_hide_recent_jump_lists=(value)
                @start_menu_hide_recent_jump_lists = value
            end
            ## 
            ## Gets the startMenuHideRecentlyAddedApps property value. Enabling this policy hides recently added apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            ## @return a boolean
            ## 
            def start_menu_hide_recently_added_apps
                return @start_menu_hide_recently_added_apps
            end
            ## 
            ## Sets the startMenuHideRecentlyAddedApps property value. Enabling this policy hides recently added apps from appearing on the start menu and disables the corresponding toggle in the Settings app.
            ## @param value Value to set for the start_menu_hide_recently_added_apps property.
            ## @return a void
            ## 
            def start_menu_hide_recently_added_apps=(value)
                @start_menu_hide_recently_added_apps = value
            end
            ## 
            ## Gets the startMenuHideRestartOptions property value. Enabling this policy hides 'Restart/Update and Restart' from appearing in the power button in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_restart_options
                return @start_menu_hide_restart_options
            end
            ## 
            ## Sets the startMenuHideRestartOptions property value. Enabling this policy hides 'Restart/Update and Restart' from appearing in the power button in the start menu.
            ## @param value Value to set for the start_menu_hide_restart_options property.
            ## @return a void
            ## 
            def start_menu_hide_restart_options=(value)
                @start_menu_hide_restart_options = value
            end
            ## 
            ## Gets the startMenuHideShutDown property value. Enabling this policy hides shut down/update and shut down from appearing in the power button in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_shut_down
                return @start_menu_hide_shut_down
            end
            ## 
            ## Sets the startMenuHideShutDown property value. Enabling this policy hides shut down/update and shut down from appearing in the power button in the start menu.
            ## @param value Value to set for the start_menu_hide_shut_down property.
            ## @return a void
            ## 
            def start_menu_hide_shut_down=(value)
                @start_menu_hide_shut_down = value
            end
            ## 
            ## Gets the startMenuHideSignOut property value. Enabling this policy hides sign out from appearing in the user tile in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_sign_out
                return @start_menu_hide_sign_out
            end
            ## 
            ## Sets the startMenuHideSignOut property value. Enabling this policy hides sign out from appearing in the user tile in the start menu.
            ## @param value Value to set for the start_menu_hide_sign_out property.
            ## @return a void
            ## 
            def start_menu_hide_sign_out=(value)
                @start_menu_hide_sign_out = value
            end
            ## 
            ## Gets the startMenuHideSleep property value. Enabling this policy hides sleep from appearing in the power button in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_sleep
                return @start_menu_hide_sleep
            end
            ## 
            ## Sets the startMenuHideSleep property value. Enabling this policy hides sleep from appearing in the power button in the start menu.
            ## @param value Value to set for the start_menu_hide_sleep property.
            ## @return a void
            ## 
            def start_menu_hide_sleep=(value)
                @start_menu_hide_sleep = value
            end
            ## 
            ## Gets the startMenuHideSwitchAccount property value. Enabling this policy hides switch account from appearing in the user tile in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_switch_account
                return @start_menu_hide_switch_account
            end
            ## 
            ## Sets the startMenuHideSwitchAccount property value. Enabling this policy hides switch account from appearing in the user tile in the start menu.
            ## @param value Value to set for the start_menu_hide_switch_account property.
            ## @return a void
            ## 
            def start_menu_hide_switch_account=(value)
                @start_menu_hide_switch_account = value
            end
            ## 
            ## Gets the startMenuHideUserTile property value. Enabling this policy hides the user tile from appearing in the start menu.
            ## @return a boolean
            ## 
            def start_menu_hide_user_tile
                return @start_menu_hide_user_tile
            end
            ## 
            ## Sets the startMenuHideUserTile property value. Enabling this policy hides the user tile from appearing in the start menu.
            ## @param value Value to set for the start_menu_hide_user_tile property.
            ## @return a void
            ## 
            def start_menu_hide_user_tile=(value)
                @start_menu_hide_user_tile = value
            end
            ## 
            ## Gets the startMenuLayoutEdgeAssetsXml property value. This policy setting allows you to import Edge assets to be used with startMenuLayoutXml policy. Start layout can contain secondary tile from Edge app which looks for Edge local asset file. Edge local asset would not exist and cause Edge secondary tile to appear empty in this case. This policy only gets applied when startMenuLayoutXml policy is modified. The value should be a UTF-8 Base64 encoded byte array.
            ## @return a base64url
            ## 
            def start_menu_layout_edge_assets_xml
                return @start_menu_layout_edge_assets_xml
            end
            ## 
            ## Sets the startMenuLayoutEdgeAssetsXml property value. This policy setting allows you to import Edge assets to be used with startMenuLayoutXml policy. Start layout can contain secondary tile from Edge app which looks for Edge local asset file. Edge local asset would not exist and cause Edge secondary tile to appear empty in this case. This policy only gets applied when startMenuLayoutXml policy is modified. The value should be a UTF-8 Base64 encoded byte array.
            ## @param value Value to set for the start_menu_layout_edge_assets_xml property.
            ## @return a void
            ## 
            def start_menu_layout_edge_assets_xml=(value)
                @start_menu_layout_edge_assets_xml = value
            end
            ## 
            ## Gets the startMenuLayoutXml property value. Allows admins to override the default Start menu layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in a UTF8 encoded byte array format.
            ## @return a base64url
            ## 
            def start_menu_layout_xml
                return @start_menu_layout_xml
            end
            ## 
            ## Sets the startMenuLayoutXml property value. Allows admins to override the default Start menu layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in a UTF8 encoded byte array format.
            ## @param value Value to set for the start_menu_layout_xml property.
            ## @return a void
            ## 
            def start_menu_layout_xml=(value)
                @start_menu_layout_xml = value
            end
            ## 
            ## Gets the startMenuMode property value. Type of display modes for the start menu.
            ## @return a windows_start_menu_mode_type
            ## 
            def start_menu_mode
                return @start_menu_mode
            end
            ## 
            ## Sets the startMenuMode property value. Type of display modes for the start menu.
            ## @param value Value to set for the start_menu_mode property.
            ## @return a void
            ## 
            def start_menu_mode=(value)
                @start_menu_mode = value
            end
            ## 
            ## Gets the startMenuPinnedFolderDocuments property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_documents
                return @start_menu_pinned_folder_documents
            end
            ## 
            ## Sets the startMenuPinnedFolderDocuments property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_documents property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_documents=(value)
                @start_menu_pinned_folder_documents = value
            end
            ## 
            ## Gets the startMenuPinnedFolderDownloads property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_downloads
                return @start_menu_pinned_folder_downloads
            end
            ## 
            ## Sets the startMenuPinnedFolderDownloads property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_downloads property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_downloads=(value)
                @start_menu_pinned_folder_downloads = value
            end
            ## 
            ## Gets the startMenuPinnedFolderFileExplorer property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_file_explorer
                return @start_menu_pinned_folder_file_explorer
            end
            ## 
            ## Sets the startMenuPinnedFolderFileExplorer property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_file_explorer property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_file_explorer=(value)
                @start_menu_pinned_folder_file_explorer = value
            end
            ## 
            ## Gets the startMenuPinnedFolderHomeGroup property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_home_group
                return @start_menu_pinned_folder_home_group
            end
            ## 
            ## Sets the startMenuPinnedFolderHomeGroup property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_home_group property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_home_group=(value)
                @start_menu_pinned_folder_home_group = value
            end
            ## 
            ## Gets the startMenuPinnedFolderMusic property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_music
                return @start_menu_pinned_folder_music
            end
            ## 
            ## Sets the startMenuPinnedFolderMusic property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_music property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_music=(value)
                @start_menu_pinned_folder_music = value
            end
            ## 
            ## Gets the startMenuPinnedFolderNetwork property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_network
                return @start_menu_pinned_folder_network
            end
            ## 
            ## Sets the startMenuPinnedFolderNetwork property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_network property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_network=(value)
                @start_menu_pinned_folder_network = value
            end
            ## 
            ## Gets the startMenuPinnedFolderPersonalFolder property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_personal_folder
                return @start_menu_pinned_folder_personal_folder
            end
            ## 
            ## Sets the startMenuPinnedFolderPersonalFolder property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_personal_folder property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_personal_folder=(value)
                @start_menu_pinned_folder_personal_folder = value
            end
            ## 
            ## Gets the startMenuPinnedFolderPictures property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_pictures
                return @start_menu_pinned_folder_pictures
            end
            ## 
            ## Sets the startMenuPinnedFolderPictures property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_pictures property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_pictures=(value)
                @start_menu_pinned_folder_pictures = value
            end
            ## 
            ## Gets the startMenuPinnedFolderSettings property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_settings
                return @start_menu_pinned_folder_settings
            end
            ## 
            ## Sets the startMenuPinnedFolderSettings property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_settings property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_settings=(value)
                @start_menu_pinned_folder_settings = value
            end
            ## 
            ## Gets the startMenuPinnedFolderVideos property value. Generic visibility state.
            ## @return a visibility_setting
            ## 
            def start_menu_pinned_folder_videos
                return @start_menu_pinned_folder_videos
            end
            ## 
            ## Sets the startMenuPinnedFolderVideos property value. Generic visibility state.
            ## @param value Value to set for the start_menu_pinned_folder_videos property.
            ## @return a void
            ## 
            def start_menu_pinned_folder_videos=(value)
                @start_menu_pinned_folder_videos = value
            end
            ## 
            ## Gets the storageBlockRemovableStorage property value. Indicates whether or not to Block the user from using removable storage.
            ## @return a boolean
            ## 
            def storage_block_removable_storage
                return @storage_block_removable_storage
            end
            ## 
            ## Sets the storageBlockRemovableStorage property value. Indicates whether or not to Block the user from using removable storage.
            ## @param value Value to set for the storage_block_removable_storage property.
            ## @return a void
            ## 
            def storage_block_removable_storage=(value)
                @storage_block_removable_storage = value
            end
            ## 
            ## Gets the storageRequireMobileDeviceEncryption property value. Indicating whether or not to require encryption on a mobile device.
            ## @return a boolean
            ## 
            def storage_require_mobile_device_encryption
                return @storage_require_mobile_device_encryption
            end
            ## 
            ## Sets the storageRequireMobileDeviceEncryption property value. Indicating whether or not to require encryption on a mobile device.
            ## @param value Value to set for the storage_require_mobile_device_encryption property.
            ## @return a void
            ## 
            def storage_require_mobile_device_encryption=(value)
                @storage_require_mobile_device_encryption = value
            end
            ## 
            ## Gets the storageRestrictAppDataToSystemVolume property value. Indicates whether application data is restricted to the system drive.
            ## @return a boolean
            ## 
            def storage_restrict_app_data_to_system_volume
                return @storage_restrict_app_data_to_system_volume
            end
            ## 
            ## Sets the storageRestrictAppDataToSystemVolume property value. Indicates whether application data is restricted to the system drive.
            ## @param value Value to set for the storage_restrict_app_data_to_system_volume property.
            ## @return a void
            ## 
            def storage_restrict_app_data_to_system_volume=(value)
                @storage_restrict_app_data_to_system_volume = value
            end
            ## 
            ## Gets the storageRestrictAppInstallToSystemVolume property value. Indicates whether the installation of applications is restricted to the system drive.
            ## @return a boolean
            ## 
            def storage_restrict_app_install_to_system_volume
                return @storage_restrict_app_install_to_system_volume
            end
            ## 
            ## Sets the storageRestrictAppInstallToSystemVolume property value. Indicates whether the installation of applications is restricted to the system drive.
            ## @param value Value to set for the storage_restrict_app_install_to_system_volume property.
            ## @return a void
            ## 
            def storage_restrict_app_install_to_system_volume=(value)
                @storage_restrict_app_install_to_system_volume = value
            end
            ## 
            ## Gets the systemTelemetryProxyServer property value. Gets or sets the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests.
            ## @return a string
            ## 
            def system_telemetry_proxy_server
                return @system_telemetry_proxy_server
            end
            ## 
            ## Sets the systemTelemetryProxyServer property value. Gets or sets the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests.
            ## @param value Value to set for the system_telemetry_proxy_server property.
            ## @return a void
            ## 
            def system_telemetry_proxy_server=(value)
                @system_telemetry_proxy_server = value
            end
            ## 
            ## Gets the taskManagerBlockEndTask property value. Specify whether non-administrators can use Task Manager to end tasks.
            ## @return a boolean
            ## 
            def task_manager_block_end_task
                return @task_manager_block_end_task
            end
            ## 
            ## Sets the taskManagerBlockEndTask property value. Specify whether non-administrators can use Task Manager to end tasks.
            ## @param value Value to set for the task_manager_block_end_task property.
            ## @return a void
            ## 
            def task_manager_block_end_task=(value)
                @task_manager_block_end_task = value
            end
            ## 
            ## Gets the tenantLockdownRequireNetworkDuringOutOfBoxExperience property value. Whether the device is required to connect to the network.
            ## @return a boolean
            ## 
            def tenant_lockdown_require_network_during_out_of_box_experience
                return @tenant_lockdown_require_network_during_out_of_box_experience
            end
            ## 
            ## Sets the tenantLockdownRequireNetworkDuringOutOfBoxExperience property value. Whether the device is required to connect to the network.
            ## @param value Value to set for the tenant_lockdown_require_network_during_out_of_box_experience property.
            ## @return a void
            ## 
            def tenant_lockdown_require_network_during_out_of_box_experience=(value)
                @tenant_lockdown_require_network_during_out_of_box_experience = value
            end
            ## 
            ## Gets the uninstallBuiltInApps property value. Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            ## @return a boolean
            ## 
            def uninstall_built_in_apps
                return @uninstall_built_in_apps
            end
            ## 
            ## Sets the uninstallBuiltInApps property value. Indicates whether or not to uninstall a fixed list of built-in Windows apps.
            ## @param value Value to set for the uninstall_built_in_apps property.
            ## @return a void
            ## 
            def uninstall_built_in_apps=(value)
                @uninstall_built_in_apps = value
            end
            ## 
            ## Gets the usbBlocked property value. Indicates whether or not to Block the user from USB connection.
            ## @return a boolean
            ## 
            def usb_blocked
                return @usb_blocked
            end
            ## 
            ## Sets the usbBlocked property value. Indicates whether or not to Block the user from USB connection.
            ## @param value Value to set for the usb_blocked property.
            ## @return a void
            ## 
            def usb_blocked=(value)
                @usb_blocked = value
            end
            ## 
            ## Gets the voiceRecordingBlocked property value. Indicates whether or not to Block the user from voice recording.
            ## @return a boolean
            ## 
            def voice_recording_blocked
                return @voice_recording_blocked
            end
            ## 
            ## Sets the voiceRecordingBlocked property value. Indicates whether or not to Block the user from voice recording.
            ## @param value Value to set for the voice_recording_blocked property.
            ## @return a void
            ## 
            def voice_recording_blocked=(value)
                @voice_recording_blocked = value
            end
            ## 
            ## Gets the webRtcBlockLocalhostIpAddress property value. Indicates whether or not user's localhost IP address is displayed while making phone calls using the WebRTC
            ## @return a boolean
            ## 
            def web_rtc_block_localhost_ip_address
                return @web_rtc_block_localhost_ip_address
            end
            ## 
            ## Sets the webRtcBlockLocalhostIpAddress property value. Indicates whether or not user's localhost IP address is displayed while making phone calls using the WebRTC
            ## @param value Value to set for the web_rtc_block_localhost_ip_address property.
            ## @return a void
            ## 
            def web_rtc_block_localhost_ip_address=(value)
                @web_rtc_block_localhost_ip_address = value
            end
            ## 
            ## Gets the wiFiBlockAutomaticConnectHotspots property value. Indicating whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            ## @return a boolean
            ## 
            def wi_fi_block_automatic_connect_hotspots
                return @wi_fi_block_automatic_connect_hotspots
            end
            ## 
            ## Sets the wiFiBlockAutomaticConnectHotspots property value. Indicating whether or not to block automatically connecting to Wi-Fi hotspots. Has no impact if Wi-Fi is blocked.
            ## @param value Value to set for the wi_fi_block_automatic_connect_hotspots property.
            ## @return a void
            ## 
            def wi_fi_block_automatic_connect_hotspots=(value)
                @wi_fi_block_automatic_connect_hotspots = value
            end
            ## 
            ## Gets the wiFiBlockManualConfiguration property value. Indicates whether or not to Block the user from using Wi-Fi manual configuration.
            ## @return a boolean
            ## 
            def wi_fi_block_manual_configuration
                return @wi_fi_block_manual_configuration
            end
            ## 
            ## Sets the wiFiBlockManualConfiguration property value. Indicates whether or not to Block the user from using Wi-Fi manual configuration.
            ## @param value Value to set for the wi_fi_block_manual_configuration property.
            ## @return a void
            ## 
            def wi_fi_block_manual_configuration=(value)
                @wi_fi_block_manual_configuration = value
            end
            ## 
            ## Gets the wiFiBlocked property value. Indicates whether or not to Block the user from using Wi-Fi.
            ## @return a boolean
            ## 
            def wi_fi_blocked
                return @wi_fi_blocked
            end
            ## 
            ## Sets the wiFiBlocked property value. Indicates whether or not to Block the user from using Wi-Fi.
            ## @param value Value to set for the wi_fi_blocked property.
            ## @return a void
            ## 
            def wi_fi_blocked=(value)
                @wi_fi_blocked = value
            end
            ## 
            ## Gets the wiFiScanInterval property value. Specify how often devices scan for Wi-Fi networks. Supported values are 1-500, where 100 = default, and 500 = low frequency. Valid values 1 to 500
            ## @return a integer
            ## 
            def wi_fi_scan_interval
                return @wi_fi_scan_interval
            end
            ## 
            ## Sets the wiFiScanInterval property value. Specify how often devices scan for Wi-Fi networks. Supported values are 1-500, where 100 = default, and 500 = low frequency. Valid values 1 to 500
            ## @param value Value to set for the wi_fi_scan_interval property.
            ## @return a void
            ## 
            def wi_fi_scan_interval=(value)
                @wi_fi_scan_interval = value
            end
            ## 
            ## Gets the windowsSpotlightBlockConsumerSpecificFeatures property value. Allows IT admins to block experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.
            ## @return a boolean
            ## 
            def windows_spotlight_block_consumer_specific_features
                return @windows_spotlight_block_consumer_specific_features
            end
            ## 
            ## Sets the windowsSpotlightBlockConsumerSpecificFeatures property value. Allows IT admins to block experiences that are typically for consumers only, such as Start suggestions, Membership notifications, Post-OOBE app install and redirect tiles.
            ## @param value Value to set for the windows_spotlight_block_consumer_specific_features property.
            ## @return a void
            ## 
            def windows_spotlight_block_consumer_specific_features=(value)
                @windows_spotlight_block_consumer_specific_features = value
            end
            ## 
            ## Gets the windowsSpotlightBlockOnActionCenter property value. Block suggestions from Microsoft that show after each OS clean install, upgrade or in an on-going basis to introduce users to what is new or changed
            ## @return a boolean
            ## 
            def windows_spotlight_block_on_action_center
                return @windows_spotlight_block_on_action_center
            end
            ## 
            ## Sets the windowsSpotlightBlockOnActionCenter property value. Block suggestions from Microsoft that show after each OS clean install, upgrade or in an on-going basis to introduce users to what is new or changed
            ## @param value Value to set for the windows_spotlight_block_on_action_center property.
            ## @return a void
            ## 
            def windows_spotlight_block_on_action_center=(value)
                @windows_spotlight_block_on_action_center = value
            end
            ## 
            ## Gets the windowsSpotlightBlockTailoredExperiences property value. Block personalized content in Windows spotlight based on user’s device usage.
            ## @return a boolean
            ## 
            def windows_spotlight_block_tailored_experiences
                return @windows_spotlight_block_tailored_experiences
            end
            ## 
            ## Sets the windowsSpotlightBlockTailoredExperiences property value. Block personalized content in Windows spotlight based on user’s device usage.
            ## @param value Value to set for the windows_spotlight_block_tailored_experiences property.
            ## @return a void
            ## 
            def windows_spotlight_block_tailored_experiences=(value)
                @windows_spotlight_block_tailored_experiences = value
            end
            ## 
            ## Gets the windowsSpotlightBlockThirdPartyNotifications property value. Block third party content delivered via Windows Spotlight
            ## @return a boolean
            ## 
            def windows_spotlight_block_third_party_notifications
                return @windows_spotlight_block_third_party_notifications
            end
            ## 
            ## Sets the windowsSpotlightBlockThirdPartyNotifications property value. Block third party content delivered via Windows Spotlight
            ## @param value Value to set for the windows_spotlight_block_third_party_notifications property.
            ## @return a void
            ## 
            def windows_spotlight_block_third_party_notifications=(value)
                @windows_spotlight_block_third_party_notifications = value
            end
            ## 
            ## Gets the windowsSpotlightBlockWelcomeExperience property value. Block Windows Spotlight Windows welcome experience
            ## @return a boolean
            ## 
            def windows_spotlight_block_welcome_experience
                return @windows_spotlight_block_welcome_experience
            end
            ## 
            ## Sets the windowsSpotlightBlockWelcomeExperience property value. Block Windows Spotlight Windows welcome experience
            ## @param value Value to set for the windows_spotlight_block_welcome_experience property.
            ## @return a void
            ## 
            def windows_spotlight_block_welcome_experience=(value)
                @windows_spotlight_block_welcome_experience = value
            end
            ## 
            ## Gets the windowsSpotlightBlockWindowsTips property value. Allows IT admins to turn off the popup of Windows Tips.
            ## @return a boolean
            ## 
            def windows_spotlight_block_windows_tips
                return @windows_spotlight_block_windows_tips
            end
            ## 
            ## Sets the windowsSpotlightBlockWindowsTips property value. Allows IT admins to turn off the popup of Windows Tips.
            ## @param value Value to set for the windows_spotlight_block_windows_tips property.
            ## @return a void
            ## 
            def windows_spotlight_block_windows_tips=(value)
                @windows_spotlight_block_windows_tips = value
            end
            ## 
            ## Gets the windowsSpotlightBlocked property value. Allows IT admins to turn off all Windows Spotlight features
            ## @return a boolean
            ## 
            def windows_spotlight_blocked
                return @windows_spotlight_blocked
            end
            ## 
            ## Sets the windowsSpotlightBlocked property value. Allows IT admins to turn off all Windows Spotlight features
            ## @param value Value to set for the windows_spotlight_blocked property.
            ## @return a void
            ## 
            def windows_spotlight_blocked=(value)
                @windows_spotlight_blocked = value
            end
            ## 
            ## Gets the windowsSpotlightConfigureOnLockScreen property value. Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            ## @return a windows_spotlight_enablement_settings
            ## 
            def windows_spotlight_configure_on_lock_screen
                return @windows_spotlight_configure_on_lock_screen
            end
            ## 
            ## Sets the windowsSpotlightConfigureOnLockScreen property value. Allows IT admind to set a predefined default search engine for MDM-Controlled devices
            ## @param value Value to set for the windows_spotlight_configure_on_lock_screen property.
            ## @return a void
            ## 
            def windows_spotlight_configure_on_lock_screen=(value)
                @windows_spotlight_configure_on_lock_screen = value
            end
            ## 
            ## Gets the windowsStoreBlockAutoUpdate property value. Indicates whether or not to block automatic update of apps from Windows Store.
            ## @return a boolean
            ## 
            def windows_store_block_auto_update
                return @windows_store_block_auto_update
            end
            ## 
            ## Sets the windowsStoreBlockAutoUpdate property value. Indicates whether or not to block automatic update of apps from Windows Store.
            ## @param value Value to set for the windows_store_block_auto_update property.
            ## @return a void
            ## 
            def windows_store_block_auto_update=(value)
                @windows_store_block_auto_update = value
            end
            ## 
            ## Gets the windowsStoreBlocked property value. Indicates whether or not to Block the user from using the Windows store.
            ## @return a boolean
            ## 
            def windows_store_blocked
                return @windows_store_blocked
            end
            ## 
            ## Sets the windowsStoreBlocked property value. Indicates whether or not to Block the user from using the Windows store.
            ## @param value Value to set for the windows_store_blocked property.
            ## @return a void
            ## 
            def windows_store_blocked=(value)
                @windows_store_blocked = value
            end
            ## 
            ## Gets the windowsStoreEnablePrivateStoreOnly property value. Indicates whether or not to enable Private Store Only.
            ## @return a boolean
            ## 
            def windows_store_enable_private_store_only
                return @windows_store_enable_private_store_only
            end
            ## 
            ## Sets the windowsStoreEnablePrivateStoreOnly property value. Indicates whether or not to enable Private Store Only.
            ## @param value Value to set for the windows_store_enable_private_store_only property.
            ## @return a void
            ## 
            def windows_store_enable_private_store_only=(value)
                @windows_store_enable_private_store_only = value
            end
            ## 
            ## Gets the windows10AppsForceUpdateSchedule property value. Windows 10 force update schedule for Apps.
            ## @return a windows10_apps_force_update_schedule
            ## 
            def windows10_apps_force_update_schedule
                return @windows10_apps_force_update_schedule
            end
            ## 
            ## Sets the windows10AppsForceUpdateSchedule property value. Windows 10 force update schedule for Apps.
            ## @param value Value to set for the windows10_apps_force_update_schedule property.
            ## @return a void
            ## 
            def windows10_apps_force_update_schedule=(value)
                @windows10_apps_force_update_schedule = value
            end
            ## 
            ## Gets the wirelessDisplayBlockProjectionToThisDevice property value. Indicates whether or not to allow other devices from discovering this PC for projection.
            ## @return a boolean
            ## 
            def wireless_display_block_projection_to_this_device
                return @wireless_display_block_projection_to_this_device
            end
            ## 
            ## Sets the wirelessDisplayBlockProjectionToThisDevice property value. Indicates whether or not to allow other devices from discovering this PC for projection.
            ## @param value Value to set for the wireless_display_block_projection_to_this_device property.
            ## @return a void
            ## 
            def wireless_display_block_projection_to_this_device=(value)
                @wireless_display_block_projection_to_this_device = value
            end
            ## 
            ## Gets the wirelessDisplayBlockUserInputFromReceiver property value. Indicates whether or not to allow user input from wireless display receiver.
            ## @return a boolean
            ## 
            def wireless_display_block_user_input_from_receiver
                return @wireless_display_block_user_input_from_receiver
            end
            ## 
            ## Sets the wirelessDisplayBlockUserInputFromReceiver property value. Indicates whether or not to allow user input from wireless display receiver.
            ## @param value Value to set for the wireless_display_block_user_input_from_receiver property.
            ## @return a void
            ## 
            def wireless_display_block_user_input_from_receiver=(value)
                @wireless_display_block_user_input_from_receiver = value
            end
            ## 
            ## Gets the wirelessDisplayRequirePinForPairing property value. Indicates whether or not to require a PIN for new devices to initiate pairing.
            ## @return a boolean
            ## 
            def wireless_display_require_pin_for_pairing
                return @wireless_display_require_pin_for_pairing
            end
            ## 
            ## Sets the wirelessDisplayRequirePinForPairing property value. Indicates whether or not to require a PIN for new devices to initiate pairing.
            ## @param value Value to set for the wireless_display_require_pin_for_pairing property.
            ## @return a void
            ## 
            def wireless_display_require_pin_for_pairing=(value)
                @wireless_display_require_pin_for_pairing = value
            end
        end
    end
end
