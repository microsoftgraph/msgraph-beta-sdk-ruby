require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This topic provides descriptions of the declared methods, properties and relationships exposed by the Windows10EndpointProtectionConfiguration resource.
        class Windows10EndpointProtectionConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of AppLocker Application Control Types
            @app_locker_application_control
            ## 
            # Gets or sets whether applications inside Microsoft Defender Application Guard can access the device’s camera and microphone.
            @application_guard_allow_camera_microphone_redirection
            ## 
            # Allow users to download files from Edge in the application guard container and save them on the host file system
            @application_guard_allow_file_save_on_host
            ## 
            # Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            @application_guard_allow_persistence
            ## 
            # Allow printing to Local Printers from Container
            @application_guard_allow_print_to_local_printers
            ## 
            # Allow printing to Network Printers from Container
            @application_guard_allow_print_to_network_printers
            ## 
            # Allow printing to PDF from Container
            @application_guard_allow_print_to_p_d_f
            ## 
            # Allow printing to XPS from Container
            @application_guard_allow_print_to_x_p_s
            ## 
            # Allow application guard to use virtual GPU
            @application_guard_allow_virtual_g_p_u
            ## 
            # Possible values for applicationGuardBlockClipboardSharingType
            @application_guard_block_clipboard_sharing
            ## 
            # Possible values for applicationGuardBlockFileTransfer
            @application_guard_block_file_transfer
            ## 
            # Block enterprise sites to load non-enterprise content, such as third party plug-ins
            @application_guard_block_non_enterprise_content
            ## 
            # Allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container.
            @application_guard_certificate_thumbprints
            ## 
            # Enable Windows Defender Application Guard
            @application_guard_enabled
            ## 
            # Possible values for ApplicationGuardEnabledOptions
            @application_guard_enabled_options
            ## 
            # Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            @application_guard_force_auditing
            ## 
            # Allows the admin to allow standard users to enable encrpytion during Azure AD Join.
            @bit_locker_allow_standard_user_encryption
            ## 
            # Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            @bit_locker_disable_warning_for_other_disk_encryption
            ## 
            # Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            @bit_locker_enable_storage_card_encryption_on_mobile
            ## 
            # Allows the admin to require encryption to be turned on using BitLocker.
            @bit_locker_encrypt_device
            ## 
            # BitLocker Fixed Drive Policy.
            @bit_locker_fixed_drive_policy
            ## 
            # BitLocker recovery password rotation type
            @bit_locker_recovery_password_rotation
            ## 
            # BitLocker Removable Drive Policy.
            @bit_locker_removable_drive_policy
            ## 
            # BitLocker System Drive Policy.
            @bit_locker_system_drive_policy
            ## 
            # List of folder paths to be added to the list of protected folders
            @defender_additional_guarded_folders
            ## 
            # Possible values of Defender PUA Protection
            @defender_adobe_reader_launch_child_process
            ## 
            # Possible values of Defender PUA Protection
            @defender_advanced_ransomeware_protection_type
            ## 
            # Allows or disallows Windows Defender Behavior Monitoring functionality.
            @defender_allow_behavior_monitoring
            ## 
            # To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            @defender_allow_cloud_protection
            ## 
            # Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            @defender_allow_end_user_access
            ## 
            # Allows or disallows Windows Defender Intrusion Prevention functionality.
            @defender_allow_intrusion_prevention_system
            ## 
            # Allows or disallows Windows Defender On Access Protection functionality.
            @defender_allow_on_access_protection
            ## 
            # Allows or disallows Windows Defender Realtime Monitoring functionality.
            @defender_allow_real_time_monitoring
            ## 
            # Allows or disallows scanning of archives.
            @defender_allow_scan_archive_files
            ## 
            # Allows or disallows Windows Defender IOAVP Protection functionality.
            @defender_allow_scan_downloads
            ## 
            # Allows or disallows a scanning of network files.
            @defender_allow_scan_network_files
            ## 
            # Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            @defender_allow_scan_removable_drives_during_full_scan
            ## 
            # Allows or disallows Windows Defender Script Scanning functionality.
            @defender_allow_scan_scripts_loaded_in_internet_explorer
            ## 
            # List of exe files and folders to be excluded from attack surface reduction rules
            @defender_attack_surface_reduction_excluded_paths
            ## 
            # Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            @defender_block_end_user_access
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_block_persistence_through_wmi_type
            ## 
            # This policy setting allows you to manage whether a check for new virus and spyware definitions will occur before running a scan.
            @defender_check_for_signatures_before_running_scan
            ## 
            # Added in Windows 10, version 1709. This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer. This feature requires the 'Join Microsoft MAPS' setting enabled in order to function. Possible values are: notConfigured, high, highPlus, zeroTolerance.
            @defender_cloud_block_level
            ## 
            # Added in Windows 10, version 1709. This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50. This feature depends on three other MAPS settings the must all be enabled- 'Configure the 'Block at First Sight' feature; 'Join Microsoft MAPS'; 'Send file samples when further analysis is required'. Valid values 0 to 50
            @defender_cloud_extended_timeout_in_seconds
            ## 
            # Time period (in days) that quarantine items will be stored on the system. Valid values 0 to 90
            @defender_days_before_deleting_quarantined_malware
            ## 
            # Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.
            @defender_detected_malware_actions
            ## 
            # Allows or disallows Windows Defender Behavior Monitoring functionality.
            @defender_disable_behavior_monitoring
            ## 
            # This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            @defender_disable_catchup_full_scan
            ## 
            # This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            @defender_disable_catchup_quick_scan
            ## 
            # To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            @defender_disable_cloud_protection
            ## 
            # Allows or disallows Windows Defender Intrusion Prevention functionality.
            @defender_disable_intrusion_prevention_system
            ## 
            # Allows or disallows Windows Defender On Access Protection functionality.
            @defender_disable_on_access_protection
            ## 
            # Allows or disallows Windows Defender Realtime Monitoring functionality.
            @defender_disable_real_time_monitoring
            ## 
            # Allows or disallows scanning of archives.
            @defender_disable_scan_archive_files
            ## 
            # Allows or disallows Windows Defender IOAVP Protection functionality.
            @defender_disable_scan_downloads
            ## 
            # Allows or disallows a scanning of network files.
            @defender_disable_scan_network_files
            ## 
            # Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            @defender_disable_scan_removable_drives_during_full_scan
            ## 
            # Allows or disallows Windows Defender Script Scanning functionality.
            @defender_disable_scan_scripts_loaded_in_internet_explorer
            ## 
            # Possible values of Defender PUA Protection
            @defender_email_content_execution
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_email_content_execution_type
            ## 
            # This policy setting allows you to enable or disable low CPU priority for scheduled scans.
            @defender_enable_low_cpu_priority
            ## 
            # Allows or disallows scanning of email.
            @defender_enable_scan_incoming_mail
            ## 
            # Allows or disallows a full scan of mapped network drives.
            @defender_enable_scan_mapped_network_drives_during_full_scan
            ## 
            # Xml content containing information regarding exploit protection details.
            @defender_exploit_protection_xml
            ## 
            # Name of the file from which DefenderExploitProtectionXml was obtained.
            @defender_exploit_protection_xml_file_name
            ## 
            # File extensions to exclude from scans and real time protection.
            @defender_file_extensions_to_exclude
            ## 
            # Files and folder to exclude from scans and real time protection.
            @defender_files_and_folders_to_exclude
            ## 
            # Possible values of Folder Protection
            @defender_guard_my_folders_type
            ## 
            # List of paths to exe that are allowed to access protected folders
            @defender_guarded_folders_allowed_app_paths
            ## 
            # Possible values of Defender PUA Protection
            @defender_network_protection_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_office_apps_executable_content_creation_or_launch
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_office_apps_executable_content_creation_or_launch_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_office_apps_launch_child_process
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_office_apps_launch_child_process_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_office_apps_other_process_injection
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_office_apps_other_process_injection_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_office_communication_apps_launch_child_process
            ## 
            # Possible values of Defender PUA Protection
            @defender_office_macro_code_allow_win32_imports
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_office_macro_code_allow_win32_imports_type
            ## 
            # Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer. Possible values are: userDefined, enable, auditMode, warn, notConfigured.
            @defender_potentially_unwanted_app_action
            ## 
            # Possible values of Defender PUA Protection
            @defender_prevent_credential_stealing_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_process_creation
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_process_creation_type
            ## 
            # Processes to exclude from scans and real time protection.
            @defender_processes_to_exclude
            ## 
            # Controls which sets of files should be monitored. Possible values are: monitorAllFiles, monitorIncomingFilesOnly, monitorOutgoingFilesOnly.
            @defender_scan_direction
            ## 
            # Represents the average CPU load factor for the Windows Defender scan (in percent). The default value is 50. Valid values 0 to 100
            @defender_scan_max_cpu_percentage
            ## 
            # Selects whether to perform a quick scan or full scan. Possible values are: userDefined, disabled, quick, full.
            @defender_scan_type
            ## 
            # Selects the time of day that the Windows Defender quick scan should run. For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM. The default value is 120
            @defender_scheduled_quick_scan_time
            ## 
            # Selects the day that the Windows Defender scan should run. Possible values are: userDefined, everyday, sunday, monday, tuesday, wednesday, thursday, friday, saturday, noScheduledScan.
            @defender_scheduled_scan_day
            ## 
            # Selects the time of day that the Windows Defender scan should run.
            @defender_scheduled_scan_time
            ## 
            # Possible values of Defender PUA Protection
            @defender_script_downloaded_payload_execution
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_script_downloaded_payload_execution_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_script_obfuscated_macro_code
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_script_obfuscated_macro_code_type
            ## 
            # Indicates whether or not to block user from overriding Exploit Protection settings.
            @defender_security_center_block_exploit_protection_override
            ## 
            # Used to disable the display of the account protection area.
            @defender_security_center_disable_account_u_i
            ## 
            # Used to disable the display of the app and browser protection area.
            @defender_security_center_disable_app_browser_u_i
            ## 
            # Used to disable the display of the Clear TPM button.
            @defender_security_center_disable_clear_tpm_u_i
            ## 
            # Used to disable the display of the family options area.
            @defender_security_center_disable_family_u_i
            ## 
            # Used to disable the display of the hardware protection area.
            @defender_security_center_disable_hardware_u_i
            ## 
            # Used to disable the display of the device performance and health area.
            @defender_security_center_disable_health_u_i
            ## 
            # Used to disable the display of the firewall and network protection area.
            @defender_security_center_disable_network_u_i
            ## 
            # Used to disable the display of the notification area control. The user needs to either sign out and sign in or reboot the computer for this setting to take effect.
            @defender_security_center_disable_notification_area_u_i
            ## 
            # Used to disable the display of the ransomware protection area.
            @defender_security_center_disable_ransomware_u_i
            ## 
            # Used to disable the display of the secure boot area under Device security.
            @defender_security_center_disable_secure_boot_u_i
            ## 
            # Used to disable the display of the security process troubleshooting under Device security.
            @defender_security_center_disable_troubleshooting_u_i
            ## 
            # Used to disable the display of the virus and threat protection area.
            @defender_security_center_disable_virus_u_i
            ## 
            # Used to disable the display of update TPM Firmware when a vulnerable firmware is detected.
            @defender_security_center_disable_vulnerable_tpm_firmware_update_u_i
            ## 
            # The email address that is displayed to users.
            @defender_security_center_help_email
            ## 
            # The phone number or Skype ID that is displayed to users.
            @defender_security_center_help_phone
            ## 
            # The help portal URL this is displayed to users.
            @defender_security_center_help_u_r_l
            ## 
            # Possible values for defenderSecurityCenterITContactDisplay
            @defender_security_center_i_t_contact_display
            ## 
            # Possible values for defenderSecurityCenterNotificationsFromApp
            @defender_security_center_notifications_from_app
            ## 
            # The company name that is displayed to the users.
            @defender_security_center_organization_display_name
            ## 
            # Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. Valid values 0 to 24
            @defender_signature_update_interval_in_hours
            ## 
            # Checks for the user consent level in Windows Defender to send data. Possible values are: sendSafeSamplesAutomatically, alwaysPrompt, neverSend, sendAllSamplesAutomatically.
            @defender_submit_samples_consent_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_untrusted_executable
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_untrusted_executable_type
            ## 
            # Possible values of Defender PUA Protection
            @defender_untrusted_u_s_b_process
            ## 
            # Possible values of Defender Attack Surface Reduction Rules
            @defender_untrusted_u_s_b_process_type
            ## 
            # This property will be deprecated in May 2019 and will be replaced with property DeviceGuardSecureBootWithDMA. Specifies whether Platform Security Level is enabled at next reboot.
            @device_guard_enable_secure_boot_with_d_m_a
            ## 
            # Turns On Virtualization Based Security(VBS).
            @device_guard_enable_virtualization_based_security
            ## 
            # Possible values of a property
            @device_guard_launch_system_guard
            ## 
            # Possible values of Credential Guard settings.
            @device_guard_local_system_authority_credential_guard_settings
            ## 
            # Possible values of Secure Boot with DMA
            @device_guard_secure_boot_with_d_m_a
            ## 
            # Possible values of the DmaGuardDeviceEnumerationPolicy.
            @dma_guard_device_enumeration_policy
            ## 
            # Blocks stateful FTP connections to the device
            @firewall_block_stateful_f_t_p
            ## 
            # Possible values for firewallCertificateRevocationListCheckMethod
            @firewall_certificate_revocation_list_check_method
            ## 
            # Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            @firewall_i_p_sec_exemptions_allow_d_h_c_p
            ## 
            # Configures IPSec exemptions to allow ICMP
            @firewall_i_p_sec_exemptions_allow_i_c_m_p
            ## 
            # Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            @firewall_i_p_sec_exemptions_allow_neighbor_discovery
            ## 
            # Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            @firewall_i_p_sec_exemptions_allow_router_discovery
            ## 
            # Configures IPSec exemptions to no exemptions
            @firewall_i_p_sec_exemptions_none
            ## 
            # Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            @firewall_idle_timeout_for_security_association_in_seconds
            ## 
            # If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            @firewall_merge_keying_module_settings
            ## 
            # Possible values for firewallPacketQueueingMethod
            @firewall_packet_queueing_method
            ## 
            # Possible values for firewallPreSharedKeyEncodingMethod
            @firewall_pre_shared_key_encoding_method
            ## 
            # Configures the firewall profile settings for domain networks
            @firewall_profile_domain
            ## 
            # Configures the firewall profile settings for private networks
            @firewall_profile_private
            ## 
            # Configures the firewall profile settings for public networks
            @firewall_profile_public
            ## 
            # Configures the firewall rule settings. This collection can contain a maximum of 150 elements.
            @firewall_rules
            ## 
            # Possible values for LanManagerAuthenticationLevel
            @lan_manager_authentication_level
            ## 
            # If enabled,the SMB client will allow insecure guest logons. If not configured, the SMB client will reject insecure guest logons.
            @lan_manager_workstation_disable_insecure_guest_logons
            ## 
            # Define a different account name to be associated with the security identifier (SID) for the account 'Administrator'.
            @local_security_options_administrator_account_name
            ## 
            # Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior
            @local_security_options_administrator_elevation_prompt_behavior
            ## 
            # This security setting determines whether to allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares.
            @local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares
            ## 
            # Block PKU2U authentication requests to this device to use online identities.
            @local_security_options_allow_p_k_u2_u_authentication_requests
            ## 
            # Edit the default Security Descriptor Definition Language string to allow or deny users and groups to make remote calls to the SAM.
            @local_security_options_allow_remote_calls_to_security_accounts_manager
            ## 
            # UI helper boolean for LocalSecurityOptionsAllowRemoteCallsToSecurityAccountsManager entity
            @local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool
            ## 
            # This security setting determines whether a computer can be shut down without having to log on to Windows.
            @local_security_options_allow_system_to_be_shut_down_without_having_to_log_on
            ## 
            # Allow UIAccess apps to prompt for elevation without using the secure desktop.
            @local_security_options_allow_u_i_access_application_elevation
            ## 
            # Allow UIAccess apps to prompt for elevation without using the secure desktop.Default is enabled
            @local_security_options_allow_u_i_access_applications_for_secure_locations
            ## 
            # Prevent a portable computer from being undocked without having to log in.
            @local_security_options_allow_undock_without_having_to_logon
            ## 
            # Prevent users from adding new Microsoft accounts to this computer.
            @local_security_options_block_microsoft_accounts
            ## 
            # Enable Local accounts that are not password protected to log on from locations other than the physical device.Default is enabled
            @local_security_options_block_remote_logon_with_blank_password
            ## 
            # Enabling this settings allows only interactively logged on user to access CD-ROM media.
            @local_security_options_block_remote_optical_drive_access
            ## 
            # Restrict installing printer drivers as part of connecting to a shared printer to admins only.
            @local_security_options_block_users_installing_printer_drivers
            ## 
            # This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.
            @local_security_options_clear_virtual_memory_page_file
            ## 
            # This security setting determines whether packet signing is required by the SMB client component.
            @local_security_options_client_digitally_sign_communications_always
            ## 
            # If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that do not support password encryption during authentication.
            @local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers
            ## 
            # App installations requiring elevated privileges will prompt for admin credentials.Default is enabled
            @local_security_options_detect_application_installations_and_prompt_for_elevation
            ## 
            # Determines whether the Local Administrator account is enabled or disabled.
            @local_security_options_disable_administrator_account
            ## 
            # This security setting determines whether the SMB client attempts to negotiate SMB packet signing.
            @local_security_options_disable_client_digitally_sign_communications_if_server_agrees
            ## 
            # Determines if the Guest account is enabled or disabled.
            @local_security_options_disable_guest_account
            ## 
            # This security setting determines whether packet signing is required by the SMB server component.
            @local_security_options_disable_server_digitally_sign_communications_always
            ## 
            # This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.
            @local_security_options_disable_server_digitally_sign_communications_if_client_agrees
            ## 
            # This security setting determines what additional permissions will be granted for anonymous connections to the computer.
            @local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts
            ## 
            # Require CTRL+ALT+DEL to be pressed before a user can log on.
            @local_security_options_do_not_require_ctrl_alt_del
            ## 
            # This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. It’s not stored by default.
            @local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change
            ## 
            # Possible values for LocalSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser
            @local_security_options_format_and_eject_of_removable_media_allowed_user
            ## 
            # Define a different account name to be associated with the security identifier (SID) for the account 'Guest'.
            @local_security_options_guest_account_name
            ## 
            # Do not display the username of the last person who signed in on this device.
            @local_security_options_hide_last_signed_in_user
            ## 
            # Do not display the username of the person signing in to this device after credentials are entered and before the device’s desktop is shown.
            @local_security_options_hide_username_at_sign_in
            ## 
            # Possible values for LocalSecurityOptionsInformationDisplayedOnLockScreen
            @local_security_options_information_displayed_on_lock_screen
            ## 
            # Possible values for LocalSecurityOptionsInformationShownOnLockScreenType
            @local_security_options_information_shown_on_lock_screen
            ## 
            # Set message text for users attempting to log in.
            @local_security_options_log_on_message_text
            ## 
            # Set message title for users attempting to log in.
            @local_security_options_log_on_message_title
            ## 
            # Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            @local_security_options_machine_inactivity_limit
            ## 
            # Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            @local_security_options_machine_inactivity_limit_in_minutes
            ## 
            # Possible values for LocalSecurityOptionsMinimumSessionSecurity
            @local_security_options_minimum_session_security_for_ntlm_ssp_based_clients
            ## 
            # Possible values for LocalSecurityOptionsMinimumSessionSecurity
            @local_security_options_minimum_session_security_for_ntlm_ssp_based_servers
            ## 
            # Enforce PKI certification path validation for a given executable file before it is permitted to run.
            @local_security_options_only_elevate_signed_executables
            ## 
            # By default, this security setting restricts anonymous access to shares and pipes to the settings for named pipes that can be accessed anonymously and Shares that can be accessed anonymously
            @local_security_options_restrict_anonymous_access_to_named_pipes_and_shares
            ## 
            # Possible values for LocalSecurityOptionsSmartCardRemovalBehaviorType
            @local_security_options_smart_card_removal_behavior
            ## 
            # Possible values for LocalSecurityOptionsStandardUserElevationPromptBehavior
            @local_security_options_standard_user_elevation_prompt_behavior
            ## 
            # Enable all elevation requests to go to the interactive user's desktop rather than the secure desktop. Prompt behavior policy settings for admins and standard users are used.
            @local_security_options_switch_to_secure_desktop_when_prompting_for_elevation
            ## 
            # Defines whether the built-in admin account uses Admin Approval Mode or runs all apps with full admin privileges.Default is enabled
            @local_security_options_use_admin_approval_mode
            ## 
            # Define whether Admin Approval Mode and all UAC policy settings are enabled, default is enabled
            @local_security_options_use_admin_approval_mode_for_administrators
            ## 
            # Virtualize file and registry write failures to per user locations
            @local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations
            ## 
            # Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            @smart_screen_block_override_for_files
            ## 
            # Allows IT Admins to configure SmartScreen for Windows.
            @smart_screen_enable_in_shell
            ## 
            # This user right is used by Credential Manager during Backup/Restore. Users' saved credentials might be compromised if this privilege is given to other entities. Only states NotConfigured and Allowed are supported
            @user_rights_access_credential_manager_as_trusted_caller
            ## 
            # This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Only states NotConfigured and Allowed are supported
            @user_rights_act_as_part_of_the_operating_system
            ## 
            # This user right determines which users and groups are allowed to connect to the computer over the network. State Allowed is supported.
            @user_rights_allow_access_from_network
            ## 
            # This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Only states NotConfigured and Allowed are supported
            @user_rights_backup_data
            ## 
            # This user right determines which users and groups are block from connecting to the computer over the network. State Block is supported.
            @user_rights_block_access_from_network
            ## 
            # This user right determines which users and groups can change the time and date on the internal clock of the computer. Only states NotConfigured and Allowed are supported
            @user_rights_change_system_time
            ## 
            # This security setting determines whether users can create global objects that are available to all sessions. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption. Only states NotConfigured and Allowed are supported
            @user_rights_create_global_objects
            ## 
            # This user right determines which users and groups can call an internal API to create and change the size of a page file. Only states NotConfigured and Allowed are supported
            @user_rights_create_page_file
            ## 
            # This user right determines which accounts can be used by processes to create a directory object using the object manager. Only states NotConfigured and Allowed are supported
            @user_rights_create_permanent_shared_objects
            ## 
            # This user right determines if the user can create a symbolic link from the computer to which they are logged on. Only states NotConfigured and Allowed are supported
            @user_rights_create_symbolic_links
            ## 
            # This user right determines which users/groups can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal API to create an access token. Only states NotConfigured and Allowed are supported
            @user_rights_create_token
            ## 
            # This user right determines which users can attach a debugger to any process or to the kernel. Only states NotConfigured and Allowed are supported
            @user_rights_debug_programs
            ## 
            # This user right determines which users can set the Trusted for Delegation setting on a user or computer object. Only states NotConfigured and Allowed are supported.
            @user_rights_delegation
            ## 
            # This user right determines which users cannot log on to the computer. States NotConfigured, Blocked are supported
            @user_rights_deny_local_log_on
            ## 
            # This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access.  Only states NotConfigured and Allowed are supported.
            @user_rights_generate_security_audits
            ## 
            # Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect to a service that they have created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels. Only states NotConfigured and Allowed are supported.
            @user_rights_impersonate_client
            ## 
            # This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. Only states NotConfigured and Allowed are supported.
            @user_rights_increase_scheduling_priority
            ## 
            # This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. Only states NotConfigured and Allowed are supported.
            @user_rights_load_unload_drivers
            ## 
            # This user right determines which users can log on to the computer. States NotConfigured, Allowed are supported
            @user_rights_local_log_on
            ## 
            # This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Only states NotConfigured and Allowed are supported.
            @user_rights_lock_memory
            ## 
            # This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. Only states NotConfigured and Allowed are supported.
            @user_rights_manage_auditing_and_security_logs
            ## 
            # This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Only states NotConfigured and Allowed are supported.
            @user_rights_manage_volumes
            ## 
            # This user right determines who can modify firmware environment values. Only states NotConfigured and Allowed are supported.
            @user_rights_modify_firmware_environment
            ## 
            # This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Only states NotConfigured and Allowed are supported.
            @user_rights_modify_object_labels
            ## 
            # This user right determines which users can use performance monitoring tools to monitor the performance of system processes. Only states NotConfigured and Allowed are supported.
            @user_rights_profile_single_process
            ## 
            # This user right determines which users and groups are prohibited from logging on as a Remote Desktop Services client. Only states NotConfigured and Blocked are supported
            @user_rights_remote_desktop_services_log_on
            ## 
            # This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service. Only states NotConfigured and Allowed are supported.
            @user_rights_remote_shutdown
            ## 
            # This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and determines which users can set any valid security principal as the owner of an object. Only states NotConfigured and Allowed are supported.
            @user_rights_restore_data
            ## 
            # This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads. Only states NotConfigured and Allowed are supported.
            @user_rights_take_ownership
            ## 
            # Defender TamperProtection setting options
            @windows_defender_tamper_protection
            ## 
            # Possible values of xbox service start type
            @xbox_services_accessory_management_service_startup_mode
            ## 
            # This setting determines whether xbox game save is enabled (1) or disabled (0).
            @xbox_services_enable_xbox_game_save_task
            ## 
            # Possible values of xbox service start type
            @xbox_services_live_auth_manager_service_startup_mode
            ## 
            # Possible values of xbox service start type
            @xbox_services_live_game_save_service_startup_mode
            ## 
            # Possible values of xbox service start type
            @xbox_services_live_networking_service_startup_mode
            ## 
            ## Gets the appLockerApplicationControl property value. Possible values of AppLocker Application Control Types
            ## @return a app_locker_application_control_type
            ## 
            def app_locker_application_control
                return @app_locker_application_control
            end
            ## 
            ## Sets the appLockerApplicationControl property value. Possible values of AppLocker Application Control Types
            ## @param value Value to set for the appLockerApplicationControl property.
            ## @return a void
            ## 
            def app_locker_application_control=(value)
                @app_locker_application_control = value
            end
            ## 
            ## Gets the applicationGuardAllowCameraMicrophoneRedirection property value. Gets or sets whether applications inside Microsoft Defender Application Guard can access the device’s camera and microphone.
            ## @return a boolean
            ## 
            def application_guard_allow_camera_microphone_redirection
                return @application_guard_allow_camera_microphone_redirection
            end
            ## 
            ## Sets the applicationGuardAllowCameraMicrophoneRedirection property value. Gets or sets whether applications inside Microsoft Defender Application Guard can access the device’s camera and microphone.
            ## @param value Value to set for the applicationGuardAllowCameraMicrophoneRedirection property.
            ## @return a void
            ## 
            def application_guard_allow_camera_microphone_redirection=(value)
                @application_guard_allow_camera_microphone_redirection = value
            end
            ## 
            ## Gets the applicationGuardAllowFileSaveOnHost property value. Allow users to download files from Edge in the application guard container and save them on the host file system
            ## @return a boolean
            ## 
            def application_guard_allow_file_save_on_host
                return @application_guard_allow_file_save_on_host
            end
            ## 
            ## Sets the applicationGuardAllowFileSaveOnHost property value. Allow users to download files from Edge in the application guard container and save them on the host file system
            ## @param value Value to set for the applicationGuardAllowFileSaveOnHost property.
            ## @return a void
            ## 
            def application_guard_allow_file_save_on_host=(value)
                @application_guard_allow_file_save_on_host = value
            end
            ## 
            ## Gets the applicationGuardAllowPersistence property value. Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            ## @return a boolean
            ## 
            def application_guard_allow_persistence
                return @application_guard_allow_persistence
            end
            ## 
            ## Sets the applicationGuardAllowPersistence property value. Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)
            ## @param value Value to set for the applicationGuardAllowPersistence property.
            ## @return a void
            ## 
            def application_guard_allow_persistence=(value)
                @application_guard_allow_persistence = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToLocalPrinters property value. Allow printing to Local Printers from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_local_printers
                return @application_guard_allow_print_to_local_printers
            end
            ## 
            ## Sets the applicationGuardAllowPrintToLocalPrinters property value. Allow printing to Local Printers from Container
            ## @param value Value to set for the applicationGuardAllowPrintToLocalPrinters property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_local_printers=(value)
                @application_guard_allow_print_to_local_printers = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToNetworkPrinters property value. Allow printing to Network Printers from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_network_printers
                return @application_guard_allow_print_to_network_printers
            end
            ## 
            ## Sets the applicationGuardAllowPrintToNetworkPrinters property value. Allow printing to Network Printers from Container
            ## @param value Value to set for the applicationGuardAllowPrintToNetworkPrinters property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_network_printers=(value)
                @application_guard_allow_print_to_network_printers = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToPDF property value. Allow printing to PDF from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_p_d_f
                return @application_guard_allow_print_to_p_d_f
            end
            ## 
            ## Sets the applicationGuardAllowPrintToPDF property value. Allow printing to PDF from Container
            ## @param value Value to set for the applicationGuardAllowPrintToPDF property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_p_d_f=(value)
                @application_guard_allow_print_to_p_d_f = value
            end
            ## 
            ## Gets the applicationGuardAllowPrintToXPS property value. Allow printing to XPS from Container
            ## @return a boolean
            ## 
            def application_guard_allow_print_to_x_p_s
                return @application_guard_allow_print_to_x_p_s
            end
            ## 
            ## Sets the applicationGuardAllowPrintToXPS property value. Allow printing to XPS from Container
            ## @param value Value to set for the applicationGuardAllowPrintToXPS property.
            ## @return a void
            ## 
            def application_guard_allow_print_to_x_p_s=(value)
                @application_guard_allow_print_to_x_p_s = value
            end
            ## 
            ## Gets the applicationGuardAllowVirtualGPU property value. Allow application guard to use virtual GPU
            ## @return a boolean
            ## 
            def application_guard_allow_virtual_g_p_u
                return @application_guard_allow_virtual_g_p_u
            end
            ## 
            ## Sets the applicationGuardAllowVirtualGPU property value. Allow application guard to use virtual GPU
            ## @param value Value to set for the applicationGuardAllowVirtualGPU property.
            ## @return a void
            ## 
            def application_guard_allow_virtual_g_p_u=(value)
                @application_guard_allow_virtual_g_p_u = value
            end
            ## 
            ## Gets the applicationGuardBlockClipboardSharing property value. Possible values for applicationGuardBlockClipboardSharingType
            ## @return a application_guard_block_clipboard_sharing_type
            ## 
            def application_guard_block_clipboard_sharing
                return @application_guard_block_clipboard_sharing
            end
            ## 
            ## Sets the applicationGuardBlockClipboardSharing property value. Possible values for applicationGuardBlockClipboardSharingType
            ## @param value Value to set for the applicationGuardBlockClipboardSharing property.
            ## @return a void
            ## 
            def application_guard_block_clipboard_sharing=(value)
                @application_guard_block_clipboard_sharing = value
            end
            ## 
            ## Gets the applicationGuardBlockFileTransfer property value. Possible values for applicationGuardBlockFileTransfer
            ## @return a application_guard_block_file_transfer_type
            ## 
            def application_guard_block_file_transfer
                return @application_guard_block_file_transfer
            end
            ## 
            ## Sets the applicationGuardBlockFileTransfer property value. Possible values for applicationGuardBlockFileTransfer
            ## @param value Value to set for the applicationGuardBlockFileTransfer property.
            ## @return a void
            ## 
            def application_guard_block_file_transfer=(value)
                @application_guard_block_file_transfer = value
            end
            ## 
            ## Gets the applicationGuardBlockNonEnterpriseContent property value. Block enterprise sites to load non-enterprise content, such as third party plug-ins
            ## @return a boolean
            ## 
            def application_guard_block_non_enterprise_content
                return @application_guard_block_non_enterprise_content
            end
            ## 
            ## Sets the applicationGuardBlockNonEnterpriseContent property value. Block enterprise sites to load non-enterprise content, such as third party plug-ins
            ## @param value Value to set for the applicationGuardBlockNonEnterpriseContent property.
            ## @return a void
            ## 
            def application_guard_block_non_enterprise_content=(value)
                @application_guard_block_non_enterprise_content = value
            end
            ## 
            ## Gets the applicationGuardCertificateThumbprints property value. Allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container.
            ## @return a string
            ## 
            def application_guard_certificate_thumbprints
                return @application_guard_certificate_thumbprints
            end
            ## 
            ## Sets the applicationGuardCertificateThumbprints property value. Allows certain device level Root Certificates to be shared with the Microsoft Defender Application Guard container.
            ## @param value Value to set for the applicationGuardCertificateThumbprints property.
            ## @return a void
            ## 
            def application_guard_certificate_thumbprints=(value)
                @application_guard_certificate_thumbprints = value
            end
            ## 
            ## Gets the applicationGuardEnabled property value. Enable Windows Defender Application Guard
            ## @return a boolean
            ## 
            def application_guard_enabled
                return @application_guard_enabled
            end
            ## 
            ## Sets the applicationGuardEnabled property value. Enable Windows Defender Application Guard
            ## @param value Value to set for the applicationGuardEnabled property.
            ## @return a void
            ## 
            def application_guard_enabled=(value)
                @application_guard_enabled = value
            end
            ## 
            ## Gets the applicationGuardEnabledOptions property value. Possible values for ApplicationGuardEnabledOptions
            ## @return a application_guard_enabled_options
            ## 
            def application_guard_enabled_options
                return @application_guard_enabled_options
            end
            ## 
            ## Sets the applicationGuardEnabledOptions property value. Possible values for ApplicationGuardEnabledOptions
            ## @param value Value to set for the applicationGuardEnabledOptions property.
            ## @return a void
            ## 
            def application_guard_enabled_options=(value)
                @application_guard_enabled_options = value
            end
            ## 
            ## Gets the applicationGuardForceAuditing property value. Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            ## @return a boolean
            ## 
            def application_guard_force_auditing
                return @application_guard_force_auditing
            end
            ## 
            ## Sets the applicationGuardForceAuditing property value. Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)
            ## @param value Value to set for the applicationGuardForceAuditing property.
            ## @return a void
            ## 
            def application_guard_force_auditing=(value)
                @application_guard_force_auditing = value
            end
            ## 
            ## Gets the bitLockerAllowStandardUserEncryption property value. Allows the admin to allow standard users to enable encrpytion during Azure AD Join.
            ## @return a boolean
            ## 
            def bit_locker_allow_standard_user_encryption
                return @bit_locker_allow_standard_user_encryption
            end
            ## 
            ## Sets the bitLockerAllowStandardUserEncryption property value. Allows the admin to allow standard users to enable encrpytion during Azure AD Join.
            ## @param value Value to set for the bitLockerAllowStandardUserEncryption property.
            ## @return a void
            ## 
            def bit_locker_allow_standard_user_encryption=(value)
                @bit_locker_allow_standard_user_encryption = value
            end
            ## 
            ## Gets the bitLockerDisableWarningForOtherDiskEncryption property value. Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            ## @return a boolean
            ## 
            def bit_locker_disable_warning_for_other_disk_encryption
                return @bit_locker_disable_warning_for_other_disk_encryption
            end
            ## 
            ## Sets the bitLockerDisableWarningForOtherDiskEncryption property value. Allows the Admin to disable the warning prompt for other disk encryption on the user machines.
            ## @param value Value to set for the bitLockerDisableWarningForOtherDiskEncryption property.
            ## @return a void
            ## 
            def bit_locker_disable_warning_for_other_disk_encryption=(value)
                @bit_locker_disable_warning_for_other_disk_encryption = value
            end
            ## 
            ## Gets the bitLockerEnableStorageCardEncryptionOnMobile property value. Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            ## @return a boolean
            ## 
            def bit_locker_enable_storage_card_encryption_on_mobile
                return @bit_locker_enable_storage_card_encryption_on_mobile
            end
            ## 
            ## Sets the bitLockerEnableStorageCardEncryptionOnMobile property value. Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.
            ## @param value Value to set for the bitLockerEnableStorageCardEncryptionOnMobile property.
            ## @return a void
            ## 
            def bit_locker_enable_storage_card_encryption_on_mobile=(value)
                @bit_locker_enable_storage_card_encryption_on_mobile = value
            end
            ## 
            ## Gets the bitLockerEncryptDevice property value. Allows the admin to require encryption to be turned on using BitLocker.
            ## @return a boolean
            ## 
            def bit_locker_encrypt_device
                return @bit_locker_encrypt_device
            end
            ## 
            ## Sets the bitLockerEncryptDevice property value. Allows the admin to require encryption to be turned on using BitLocker.
            ## @param value Value to set for the bitLockerEncryptDevice property.
            ## @return a void
            ## 
            def bit_locker_encrypt_device=(value)
                @bit_locker_encrypt_device = value
            end
            ## 
            ## Gets the bitLockerFixedDrivePolicy property value. BitLocker Fixed Drive Policy.
            ## @return a bit_locker_fixed_drive_policy
            ## 
            def bit_locker_fixed_drive_policy
                return @bit_locker_fixed_drive_policy
            end
            ## 
            ## Sets the bitLockerFixedDrivePolicy property value. BitLocker Fixed Drive Policy.
            ## @param value Value to set for the bitLockerFixedDrivePolicy property.
            ## @return a void
            ## 
            def bit_locker_fixed_drive_policy=(value)
                @bit_locker_fixed_drive_policy = value
            end
            ## 
            ## Gets the bitLockerRecoveryPasswordRotation property value. BitLocker recovery password rotation type
            ## @return a bit_locker_recovery_password_rotation_type
            ## 
            def bit_locker_recovery_password_rotation
                return @bit_locker_recovery_password_rotation
            end
            ## 
            ## Sets the bitLockerRecoveryPasswordRotation property value. BitLocker recovery password rotation type
            ## @param value Value to set for the bitLockerRecoveryPasswordRotation property.
            ## @return a void
            ## 
            def bit_locker_recovery_password_rotation=(value)
                @bit_locker_recovery_password_rotation = value
            end
            ## 
            ## Gets the bitLockerRemovableDrivePolicy property value. BitLocker Removable Drive Policy.
            ## @return a bit_locker_removable_drive_policy
            ## 
            def bit_locker_removable_drive_policy
                return @bit_locker_removable_drive_policy
            end
            ## 
            ## Sets the bitLockerRemovableDrivePolicy property value. BitLocker Removable Drive Policy.
            ## @param value Value to set for the bitLockerRemovableDrivePolicy property.
            ## @return a void
            ## 
            def bit_locker_removable_drive_policy=(value)
                @bit_locker_removable_drive_policy = value
            end
            ## 
            ## Gets the bitLockerSystemDrivePolicy property value. BitLocker System Drive Policy.
            ## @return a bit_locker_system_drive_policy
            ## 
            def bit_locker_system_drive_policy
                return @bit_locker_system_drive_policy
            end
            ## 
            ## Sets the bitLockerSystemDrivePolicy property value. BitLocker System Drive Policy.
            ## @param value Value to set for the bitLockerSystemDrivePolicy property.
            ## @return a void
            ## 
            def bit_locker_system_drive_policy=(value)
                @bit_locker_system_drive_policy = value
            end
            ## 
            ## Instantiates a new Windows10EndpointProtectionConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windows10EndpointProtectionConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows10_endpoint_protection_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Windows10EndpointProtectionConfiguration.new
            end
            ## 
            ## Gets the defenderAdditionalGuardedFolders property value. List of folder paths to be added to the list of protected folders
            ## @return a string
            ## 
            def defender_additional_guarded_folders
                return @defender_additional_guarded_folders
            end
            ## 
            ## Sets the defenderAdditionalGuardedFolders property value. List of folder paths to be added to the list of protected folders
            ## @param value Value to set for the defenderAdditionalGuardedFolders property.
            ## @return a void
            ## 
            def defender_additional_guarded_folders=(value)
                @defender_additional_guarded_folders = value
            end
            ## 
            ## Gets the defenderAdobeReaderLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_adobe_reader_launch_child_process
                return @defender_adobe_reader_launch_child_process
            end
            ## 
            ## Sets the defenderAdobeReaderLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderAdobeReaderLaunchChildProcess property.
            ## @return a void
            ## 
            def defender_adobe_reader_launch_child_process=(value)
                @defender_adobe_reader_launch_child_process = value
            end
            ## 
            ## Gets the defenderAdvancedRansomewareProtectionType property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_advanced_ransomeware_protection_type
                return @defender_advanced_ransomeware_protection_type
            end
            ## 
            ## Sets the defenderAdvancedRansomewareProtectionType property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderAdvancedRansomewareProtectionType property.
            ## @return a void
            ## 
            def defender_advanced_ransomeware_protection_type=(value)
                @defender_advanced_ransomeware_protection_type = value
            end
            ## 
            ## Gets the defenderAllowBehaviorMonitoring property value. Allows or disallows Windows Defender Behavior Monitoring functionality.
            ## @return a boolean
            ## 
            def defender_allow_behavior_monitoring
                return @defender_allow_behavior_monitoring
            end
            ## 
            ## Sets the defenderAllowBehaviorMonitoring property value. Allows or disallows Windows Defender Behavior Monitoring functionality.
            ## @param value Value to set for the defenderAllowBehaviorMonitoring property.
            ## @return a void
            ## 
            def defender_allow_behavior_monitoring=(value)
                @defender_allow_behavior_monitoring = value
            end
            ## 
            ## Gets the defenderAllowCloudProtection property value. To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            ## @return a boolean
            ## 
            def defender_allow_cloud_protection
                return @defender_allow_cloud_protection
            end
            ## 
            ## Sets the defenderAllowCloudProtection property value. To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            ## @param value Value to set for the defenderAllowCloudProtection property.
            ## @return a void
            ## 
            def defender_allow_cloud_protection=(value)
                @defender_allow_cloud_protection = value
            end
            ## 
            ## Gets the defenderAllowEndUserAccess property value. Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            ## @return a boolean
            ## 
            def defender_allow_end_user_access
                return @defender_allow_end_user_access
            end
            ## 
            ## Sets the defenderAllowEndUserAccess property value. Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            ## @param value Value to set for the defenderAllowEndUserAccess property.
            ## @return a void
            ## 
            def defender_allow_end_user_access=(value)
                @defender_allow_end_user_access = value
            end
            ## 
            ## Gets the defenderAllowIntrusionPreventionSystem property value. Allows or disallows Windows Defender Intrusion Prevention functionality.
            ## @return a boolean
            ## 
            def defender_allow_intrusion_prevention_system
                return @defender_allow_intrusion_prevention_system
            end
            ## 
            ## Sets the defenderAllowIntrusionPreventionSystem property value. Allows or disallows Windows Defender Intrusion Prevention functionality.
            ## @param value Value to set for the defenderAllowIntrusionPreventionSystem property.
            ## @return a void
            ## 
            def defender_allow_intrusion_prevention_system=(value)
                @defender_allow_intrusion_prevention_system = value
            end
            ## 
            ## Gets the defenderAllowOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @return a boolean
            ## 
            def defender_allow_on_access_protection
                return @defender_allow_on_access_protection
            end
            ## 
            ## Sets the defenderAllowOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @param value Value to set for the defenderAllowOnAccessProtection property.
            ## @return a void
            ## 
            def defender_allow_on_access_protection=(value)
                @defender_allow_on_access_protection = value
            end
            ## 
            ## Gets the defenderAllowRealTimeMonitoring property value. Allows or disallows Windows Defender Realtime Monitoring functionality.
            ## @return a boolean
            ## 
            def defender_allow_real_time_monitoring
                return @defender_allow_real_time_monitoring
            end
            ## 
            ## Sets the defenderAllowRealTimeMonitoring property value. Allows or disallows Windows Defender Realtime Monitoring functionality.
            ## @param value Value to set for the defenderAllowRealTimeMonitoring property.
            ## @return a void
            ## 
            def defender_allow_real_time_monitoring=(value)
                @defender_allow_real_time_monitoring = value
            end
            ## 
            ## Gets the defenderAllowScanArchiveFiles property value. Allows or disallows scanning of archives.
            ## @return a boolean
            ## 
            def defender_allow_scan_archive_files
                return @defender_allow_scan_archive_files
            end
            ## 
            ## Sets the defenderAllowScanArchiveFiles property value. Allows or disallows scanning of archives.
            ## @param value Value to set for the defenderAllowScanArchiveFiles property.
            ## @return a void
            ## 
            def defender_allow_scan_archive_files=(value)
                @defender_allow_scan_archive_files = value
            end
            ## 
            ## Gets the defenderAllowScanDownloads property value. Allows or disallows Windows Defender IOAVP Protection functionality.
            ## @return a boolean
            ## 
            def defender_allow_scan_downloads
                return @defender_allow_scan_downloads
            end
            ## 
            ## Sets the defenderAllowScanDownloads property value. Allows or disallows Windows Defender IOAVP Protection functionality.
            ## @param value Value to set for the defenderAllowScanDownloads property.
            ## @return a void
            ## 
            def defender_allow_scan_downloads=(value)
                @defender_allow_scan_downloads = value
            end
            ## 
            ## Gets the defenderAllowScanNetworkFiles property value. Allows or disallows a scanning of network files.
            ## @return a boolean
            ## 
            def defender_allow_scan_network_files
                return @defender_allow_scan_network_files
            end
            ## 
            ## Sets the defenderAllowScanNetworkFiles property value. Allows or disallows a scanning of network files.
            ## @param value Value to set for the defenderAllowScanNetworkFiles property.
            ## @return a void
            ## 
            def defender_allow_scan_network_files=(value)
                @defender_allow_scan_network_files = value
            end
            ## 
            ## Gets the defenderAllowScanRemovableDrivesDuringFullScan property value. Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            ## @return a boolean
            ## 
            def defender_allow_scan_removable_drives_during_full_scan
                return @defender_allow_scan_removable_drives_during_full_scan
            end
            ## 
            ## Sets the defenderAllowScanRemovableDrivesDuringFullScan property value. Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            ## @param value Value to set for the defenderAllowScanRemovableDrivesDuringFullScan property.
            ## @return a void
            ## 
            def defender_allow_scan_removable_drives_during_full_scan=(value)
                @defender_allow_scan_removable_drives_during_full_scan = value
            end
            ## 
            ## Gets the defenderAllowScanScriptsLoadedInInternetExplorer property value. Allows or disallows Windows Defender Script Scanning functionality.
            ## @return a boolean
            ## 
            def defender_allow_scan_scripts_loaded_in_internet_explorer
                return @defender_allow_scan_scripts_loaded_in_internet_explorer
            end
            ## 
            ## Sets the defenderAllowScanScriptsLoadedInInternetExplorer property value. Allows or disallows Windows Defender Script Scanning functionality.
            ## @param value Value to set for the defenderAllowScanScriptsLoadedInInternetExplorer property.
            ## @return a void
            ## 
            def defender_allow_scan_scripts_loaded_in_internet_explorer=(value)
                @defender_allow_scan_scripts_loaded_in_internet_explorer = value
            end
            ## 
            ## Gets the defenderAttackSurfaceReductionExcludedPaths property value. List of exe files and folders to be excluded from attack surface reduction rules
            ## @return a string
            ## 
            def defender_attack_surface_reduction_excluded_paths
                return @defender_attack_surface_reduction_excluded_paths
            end
            ## 
            ## Sets the defenderAttackSurfaceReductionExcludedPaths property value. List of exe files and folders to be excluded from attack surface reduction rules
            ## @param value Value to set for the defenderAttackSurfaceReductionExcludedPaths property.
            ## @return a void
            ## 
            def defender_attack_surface_reduction_excluded_paths=(value)
                @defender_attack_surface_reduction_excluded_paths = value
            end
            ## 
            ## Gets the defenderBlockEndUserAccess property value. Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            ## @return a boolean
            ## 
            def defender_block_end_user_access
                return @defender_block_end_user_access
            end
            ## 
            ## Sets the defenderBlockEndUserAccess property value. Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.
            ## @param value Value to set for the defenderBlockEndUserAccess property.
            ## @return a void
            ## 
            def defender_block_end_user_access=(value)
                @defender_block_end_user_access = value
            end
            ## 
            ## Gets the defenderBlockPersistenceThroughWmiType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_block_persistence_through_wmi_type
                return @defender_block_persistence_through_wmi_type
            end
            ## 
            ## Sets the defenderBlockPersistenceThroughWmiType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderBlockPersistenceThroughWmiType property.
            ## @return a void
            ## 
            def defender_block_persistence_through_wmi_type=(value)
                @defender_block_persistence_through_wmi_type = value
            end
            ## 
            ## Gets the defenderCheckForSignaturesBeforeRunningScan property value. This policy setting allows you to manage whether a check for new virus and spyware definitions will occur before running a scan.
            ## @return a boolean
            ## 
            def defender_check_for_signatures_before_running_scan
                return @defender_check_for_signatures_before_running_scan
            end
            ## 
            ## Sets the defenderCheckForSignaturesBeforeRunningScan property value. This policy setting allows you to manage whether a check for new virus and spyware definitions will occur before running a scan.
            ## @param value Value to set for the defenderCheckForSignaturesBeforeRunningScan property.
            ## @return a void
            ## 
            def defender_check_for_signatures_before_running_scan=(value)
                @defender_check_for_signatures_before_running_scan = value
            end
            ## 
            ## Gets the defenderCloudBlockLevel property value. Added in Windows 10, version 1709. This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer. This feature requires the 'Join Microsoft MAPS' setting enabled in order to function. Possible values are: notConfigured, high, highPlus, zeroTolerance.
            ## @return a defender_cloud_block_level_type
            ## 
            def defender_cloud_block_level
                return @defender_cloud_block_level
            end
            ## 
            ## Sets the defenderCloudBlockLevel property value. Added in Windows 10, version 1709. This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer. This feature requires the 'Join Microsoft MAPS' setting enabled in order to function. Possible values are: notConfigured, high, highPlus, zeroTolerance.
            ## @param value Value to set for the defenderCloudBlockLevel property.
            ## @return a void
            ## 
            def defender_cloud_block_level=(value)
                @defender_cloud_block_level = value
            end
            ## 
            ## Gets the defenderCloudExtendedTimeoutInSeconds property value. Added in Windows 10, version 1709. This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50. This feature depends on three other MAPS settings the must all be enabled- 'Configure the 'Block at First Sight' feature; 'Join Microsoft MAPS'; 'Send file samples when further analysis is required'. Valid values 0 to 50
            ## @return a integer
            ## 
            def defender_cloud_extended_timeout_in_seconds
                return @defender_cloud_extended_timeout_in_seconds
            end
            ## 
            ## Sets the defenderCloudExtendedTimeoutInSeconds property value. Added in Windows 10, version 1709. This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50. This feature depends on three other MAPS settings the must all be enabled- 'Configure the 'Block at First Sight' feature; 'Join Microsoft MAPS'; 'Send file samples when further analysis is required'. Valid values 0 to 50
            ## @param value Value to set for the defenderCloudExtendedTimeoutInSeconds property.
            ## @return a void
            ## 
            def defender_cloud_extended_timeout_in_seconds=(value)
                @defender_cloud_extended_timeout_in_seconds = value
            end
            ## 
            ## Gets the defenderDaysBeforeDeletingQuarantinedMalware property value. Time period (in days) that quarantine items will be stored on the system. Valid values 0 to 90
            ## @return a integer
            ## 
            def defender_days_before_deleting_quarantined_malware
                return @defender_days_before_deleting_quarantined_malware
            end
            ## 
            ## Sets the defenderDaysBeforeDeletingQuarantinedMalware property value. Time period (in days) that quarantine items will be stored on the system. Valid values 0 to 90
            ## @param value Value to set for the defenderDaysBeforeDeletingQuarantinedMalware property.
            ## @return a void
            ## 
            def defender_days_before_deleting_quarantined_malware=(value)
                @defender_days_before_deleting_quarantined_malware = value
            end
            ## 
            ## Gets the defenderDetectedMalwareActions property value. Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.
            ## @return a defender_detected_malware_actions
            ## 
            def defender_detected_malware_actions
                return @defender_detected_malware_actions
            end
            ## 
            ## Sets the defenderDetectedMalwareActions property value. Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.
            ## @param value Value to set for the defenderDetectedMalwareActions property.
            ## @return a void
            ## 
            def defender_detected_malware_actions=(value)
                @defender_detected_malware_actions = value
            end
            ## 
            ## Gets the defenderDisableBehaviorMonitoring property value. Allows or disallows Windows Defender Behavior Monitoring functionality.
            ## @return a boolean
            ## 
            def defender_disable_behavior_monitoring
                return @defender_disable_behavior_monitoring
            end
            ## 
            ## Sets the defenderDisableBehaviorMonitoring property value. Allows or disallows Windows Defender Behavior Monitoring functionality.
            ## @param value Value to set for the defenderDisableBehaviorMonitoring property.
            ## @return a void
            ## 
            def defender_disable_behavior_monitoring=(value)
                @defender_disable_behavior_monitoring = value
            end
            ## 
            ## Gets the defenderDisableCatchupFullScan property value. This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            ## @return a boolean
            ## 
            def defender_disable_catchup_full_scan
                return @defender_disable_catchup_full_scan
            end
            ## 
            ## Sets the defenderDisableCatchupFullScan property value. This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            ## @param value Value to set for the defenderDisableCatchupFullScan property.
            ## @return a void
            ## 
            def defender_disable_catchup_full_scan=(value)
                @defender_disable_catchup_full_scan = value
            end
            ## 
            ## Gets the defenderDisableCatchupQuickScan property value. This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            ## @return a boolean
            ## 
            def defender_disable_catchup_quick_scan
                return @defender_disable_catchup_quick_scan
            end
            ## 
            ## Sets the defenderDisableCatchupQuickScan property value. This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.
            ## @param value Value to set for the defenderDisableCatchupQuickScan property.
            ## @return a void
            ## 
            def defender_disable_catchup_quick_scan=(value)
                @defender_disable_catchup_quick_scan = value
            end
            ## 
            ## Gets the defenderDisableCloudProtection property value. To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            ## @return a boolean
            ## 
            def defender_disable_cloud_protection
                return @defender_disable_cloud_protection
            end
            ## 
            ## Sets the defenderDisableCloudProtection property value. To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.
            ## @param value Value to set for the defenderDisableCloudProtection property.
            ## @return a void
            ## 
            def defender_disable_cloud_protection=(value)
                @defender_disable_cloud_protection = value
            end
            ## 
            ## Gets the defenderDisableIntrusionPreventionSystem property value. Allows or disallows Windows Defender Intrusion Prevention functionality.
            ## @return a boolean
            ## 
            def defender_disable_intrusion_prevention_system
                return @defender_disable_intrusion_prevention_system
            end
            ## 
            ## Sets the defenderDisableIntrusionPreventionSystem property value. Allows or disallows Windows Defender Intrusion Prevention functionality.
            ## @param value Value to set for the defenderDisableIntrusionPreventionSystem property.
            ## @return a void
            ## 
            def defender_disable_intrusion_prevention_system=(value)
                @defender_disable_intrusion_prevention_system = value
            end
            ## 
            ## Gets the defenderDisableOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @return a boolean
            ## 
            def defender_disable_on_access_protection
                return @defender_disable_on_access_protection
            end
            ## 
            ## Sets the defenderDisableOnAccessProtection property value. Allows or disallows Windows Defender On Access Protection functionality.
            ## @param value Value to set for the defenderDisableOnAccessProtection property.
            ## @return a void
            ## 
            def defender_disable_on_access_protection=(value)
                @defender_disable_on_access_protection = value
            end
            ## 
            ## Gets the defenderDisableRealTimeMonitoring property value. Allows or disallows Windows Defender Realtime Monitoring functionality.
            ## @return a boolean
            ## 
            def defender_disable_real_time_monitoring
                return @defender_disable_real_time_monitoring
            end
            ## 
            ## Sets the defenderDisableRealTimeMonitoring property value. Allows or disallows Windows Defender Realtime Monitoring functionality.
            ## @param value Value to set for the defenderDisableRealTimeMonitoring property.
            ## @return a void
            ## 
            def defender_disable_real_time_monitoring=(value)
                @defender_disable_real_time_monitoring = value
            end
            ## 
            ## Gets the defenderDisableScanArchiveFiles property value. Allows or disallows scanning of archives.
            ## @return a boolean
            ## 
            def defender_disable_scan_archive_files
                return @defender_disable_scan_archive_files
            end
            ## 
            ## Sets the defenderDisableScanArchiveFiles property value. Allows or disallows scanning of archives.
            ## @param value Value to set for the defenderDisableScanArchiveFiles property.
            ## @return a void
            ## 
            def defender_disable_scan_archive_files=(value)
                @defender_disable_scan_archive_files = value
            end
            ## 
            ## Gets the defenderDisableScanDownloads property value. Allows or disallows Windows Defender IOAVP Protection functionality.
            ## @return a boolean
            ## 
            def defender_disable_scan_downloads
                return @defender_disable_scan_downloads
            end
            ## 
            ## Sets the defenderDisableScanDownloads property value. Allows or disallows Windows Defender IOAVP Protection functionality.
            ## @param value Value to set for the defenderDisableScanDownloads property.
            ## @return a void
            ## 
            def defender_disable_scan_downloads=(value)
                @defender_disable_scan_downloads = value
            end
            ## 
            ## Gets the defenderDisableScanNetworkFiles property value. Allows or disallows a scanning of network files.
            ## @return a boolean
            ## 
            def defender_disable_scan_network_files
                return @defender_disable_scan_network_files
            end
            ## 
            ## Sets the defenderDisableScanNetworkFiles property value. Allows or disallows a scanning of network files.
            ## @param value Value to set for the defenderDisableScanNetworkFiles property.
            ## @return a void
            ## 
            def defender_disable_scan_network_files=(value)
                @defender_disable_scan_network_files = value
            end
            ## 
            ## Gets the defenderDisableScanRemovableDrivesDuringFullScan property value. Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            ## @return a boolean
            ## 
            def defender_disable_scan_removable_drives_during_full_scan
                return @defender_disable_scan_removable_drives_during_full_scan
            end
            ## 
            ## Sets the defenderDisableScanRemovableDrivesDuringFullScan property value. Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.
            ## @param value Value to set for the defenderDisableScanRemovableDrivesDuringFullScan property.
            ## @return a void
            ## 
            def defender_disable_scan_removable_drives_during_full_scan=(value)
                @defender_disable_scan_removable_drives_during_full_scan = value
            end
            ## 
            ## Gets the defenderDisableScanScriptsLoadedInInternetExplorer property value. Allows or disallows Windows Defender Script Scanning functionality.
            ## @return a boolean
            ## 
            def defender_disable_scan_scripts_loaded_in_internet_explorer
                return @defender_disable_scan_scripts_loaded_in_internet_explorer
            end
            ## 
            ## Sets the defenderDisableScanScriptsLoadedInInternetExplorer property value. Allows or disallows Windows Defender Script Scanning functionality.
            ## @param value Value to set for the defenderDisableScanScriptsLoadedInInternetExplorer property.
            ## @return a void
            ## 
            def defender_disable_scan_scripts_loaded_in_internet_explorer=(value)
                @defender_disable_scan_scripts_loaded_in_internet_explorer = value
            end
            ## 
            ## Gets the defenderEmailContentExecution property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_email_content_execution
                return @defender_email_content_execution
            end
            ## 
            ## Sets the defenderEmailContentExecution property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderEmailContentExecution property.
            ## @return a void
            ## 
            def defender_email_content_execution=(value)
                @defender_email_content_execution = value
            end
            ## 
            ## Gets the defenderEmailContentExecutionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_email_content_execution_type
                return @defender_email_content_execution_type
            end
            ## 
            ## Sets the defenderEmailContentExecutionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderEmailContentExecutionType property.
            ## @return a void
            ## 
            def defender_email_content_execution_type=(value)
                @defender_email_content_execution_type = value
            end
            ## 
            ## Gets the defenderEnableLowCpuPriority property value. This policy setting allows you to enable or disable low CPU priority for scheduled scans.
            ## @return a boolean
            ## 
            def defender_enable_low_cpu_priority
                return @defender_enable_low_cpu_priority
            end
            ## 
            ## Sets the defenderEnableLowCpuPriority property value. This policy setting allows you to enable or disable low CPU priority for scheduled scans.
            ## @param value Value to set for the defenderEnableLowCpuPriority property.
            ## @return a void
            ## 
            def defender_enable_low_cpu_priority=(value)
                @defender_enable_low_cpu_priority = value
            end
            ## 
            ## Gets the defenderEnableScanIncomingMail property value. Allows or disallows scanning of email.
            ## @return a boolean
            ## 
            def defender_enable_scan_incoming_mail
                return @defender_enable_scan_incoming_mail
            end
            ## 
            ## Sets the defenderEnableScanIncomingMail property value. Allows or disallows scanning of email.
            ## @param value Value to set for the defenderEnableScanIncomingMail property.
            ## @return a void
            ## 
            def defender_enable_scan_incoming_mail=(value)
                @defender_enable_scan_incoming_mail = value
            end
            ## 
            ## Gets the defenderEnableScanMappedNetworkDrivesDuringFullScan property value. Allows or disallows a full scan of mapped network drives.
            ## @return a boolean
            ## 
            def defender_enable_scan_mapped_network_drives_during_full_scan
                return @defender_enable_scan_mapped_network_drives_during_full_scan
            end
            ## 
            ## Sets the defenderEnableScanMappedNetworkDrivesDuringFullScan property value. Allows or disallows a full scan of mapped network drives.
            ## @param value Value to set for the defenderEnableScanMappedNetworkDrivesDuringFullScan property.
            ## @return a void
            ## 
            def defender_enable_scan_mapped_network_drives_during_full_scan=(value)
                @defender_enable_scan_mapped_network_drives_during_full_scan = value
            end
            ## 
            ## Gets the defenderExploitProtectionXml property value. Xml content containing information regarding exploit protection details.
            ## @return a base64url
            ## 
            def defender_exploit_protection_xml
                return @defender_exploit_protection_xml
            end
            ## 
            ## Sets the defenderExploitProtectionXml property value. Xml content containing information regarding exploit protection details.
            ## @param value Value to set for the defenderExploitProtectionXml property.
            ## @return a void
            ## 
            def defender_exploit_protection_xml=(value)
                @defender_exploit_protection_xml = value
            end
            ## 
            ## Gets the defenderExploitProtectionXmlFileName property value. Name of the file from which DefenderExploitProtectionXml was obtained.
            ## @return a string
            ## 
            def defender_exploit_protection_xml_file_name
                return @defender_exploit_protection_xml_file_name
            end
            ## 
            ## Sets the defenderExploitProtectionXmlFileName property value. Name of the file from which DefenderExploitProtectionXml was obtained.
            ## @param value Value to set for the defenderExploitProtectionXmlFileName property.
            ## @return a void
            ## 
            def defender_exploit_protection_xml_file_name=(value)
                @defender_exploit_protection_xml_file_name = value
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
            ## @param value Value to set for the defenderFileExtensionsToExclude property.
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
            ## @param value Value to set for the defenderFilesAndFoldersToExclude property.
            ## @return a void
            ## 
            def defender_files_and_folders_to_exclude=(value)
                @defender_files_and_folders_to_exclude = value
            end
            ## 
            ## Gets the defenderGuardMyFoldersType property value. Possible values of Folder Protection
            ## @return a folder_protection_type
            ## 
            def defender_guard_my_folders_type
                return @defender_guard_my_folders_type
            end
            ## 
            ## Sets the defenderGuardMyFoldersType property value. Possible values of Folder Protection
            ## @param value Value to set for the defenderGuardMyFoldersType property.
            ## @return a void
            ## 
            def defender_guard_my_folders_type=(value)
                @defender_guard_my_folders_type = value
            end
            ## 
            ## Gets the defenderGuardedFoldersAllowedAppPaths property value. List of paths to exe that are allowed to access protected folders
            ## @return a string
            ## 
            def defender_guarded_folders_allowed_app_paths
                return @defender_guarded_folders_allowed_app_paths
            end
            ## 
            ## Sets the defenderGuardedFoldersAllowedAppPaths property value. List of paths to exe that are allowed to access protected folders
            ## @param value Value to set for the defenderGuardedFoldersAllowedAppPaths property.
            ## @return a void
            ## 
            def defender_guarded_folders_allowed_app_paths=(value)
                @defender_guarded_folders_allowed_app_paths = value
            end
            ## 
            ## Gets the defenderNetworkProtectionType property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_network_protection_type
                return @defender_network_protection_type
            end
            ## 
            ## Sets the defenderNetworkProtectionType property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderNetworkProtectionType property.
            ## @return a void
            ## 
            def defender_network_protection_type=(value)
                @defender_network_protection_type = value
            end
            ## 
            ## Gets the defenderOfficeAppsExecutableContentCreationOrLaunch property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_office_apps_executable_content_creation_or_launch
                return @defender_office_apps_executable_content_creation_or_launch
            end
            ## 
            ## Sets the defenderOfficeAppsExecutableContentCreationOrLaunch property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderOfficeAppsExecutableContentCreationOrLaunch property.
            ## @return a void
            ## 
            def defender_office_apps_executable_content_creation_or_launch=(value)
                @defender_office_apps_executable_content_creation_or_launch = value
            end
            ## 
            ## Gets the defenderOfficeAppsExecutableContentCreationOrLaunchType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_office_apps_executable_content_creation_or_launch_type
                return @defender_office_apps_executable_content_creation_or_launch_type
            end
            ## 
            ## Sets the defenderOfficeAppsExecutableContentCreationOrLaunchType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderOfficeAppsExecutableContentCreationOrLaunchType property.
            ## @return a void
            ## 
            def defender_office_apps_executable_content_creation_or_launch_type=(value)
                @defender_office_apps_executable_content_creation_or_launch_type = value
            end
            ## 
            ## Gets the defenderOfficeAppsLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_office_apps_launch_child_process
                return @defender_office_apps_launch_child_process
            end
            ## 
            ## Sets the defenderOfficeAppsLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderOfficeAppsLaunchChildProcess property.
            ## @return a void
            ## 
            def defender_office_apps_launch_child_process=(value)
                @defender_office_apps_launch_child_process = value
            end
            ## 
            ## Gets the defenderOfficeAppsLaunchChildProcessType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_office_apps_launch_child_process_type
                return @defender_office_apps_launch_child_process_type
            end
            ## 
            ## Sets the defenderOfficeAppsLaunchChildProcessType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderOfficeAppsLaunchChildProcessType property.
            ## @return a void
            ## 
            def defender_office_apps_launch_child_process_type=(value)
                @defender_office_apps_launch_child_process_type = value
            end
            ## 
            ## Gets the defenderOfficeAppsOtherProcessInjection property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_office_apps_other_process_injection
                return @defender_office_apps_other_process_injection
            end
            ## 
            ## Sets the defenderOfficeAppsOtherProcessInjection property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderOfficeAppsOtherProcessInjection property.
            ## @return a void
            ## 
            def defender_office_apps_other_process_injection=(value)
                @defender_office_apps_other_process_injection = value
            end
            ## 
            ## Gets the defenderOfficeAppsOtherProcessInjectionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_office_apps_other_process_injection_type
                return @defender_office_apps_other_process_injection_type
            end
            ## 
            ## Sets the defenderOfficeAppsOtherProcessInjectionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderOfficeAppsOtherProcessInjectionType property.
            ## @return a void
            ## 
            def defender_office_apps_other_process_injection_type=(value)
                @defender_office_apps_other_process_injection_type = value
            end
            ## 
            ## Gets the defenderOfficeCommunicationAppsLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_office_communication_apps_launch_child_process
                return @defender_office_communication_apps_launch_child_process
            end
            ## 
            ## Sets the defenderOfficeCommunicationAppsLaunchChildProcess property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderOfficeCommunicationAppsLaunchChildProcess property.
            ## @return a void
            ## 
            def defender_office_communication_apps_launch_child_process=(value)
                @defender_office_communication_apps_launch_child_process = value
            end
            ## 
            ## Gets the defenderOfficeMacroCodeAllowWin32Imports property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_office_macro_code_allow_win32_imports
                return @defender_office_macro_code_allow_win32_imports
            end
            ## 
            ## Sets the defenderOfficeMacroCodeAllowWin32Imports property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderOfficeMacroCodeAllowWin32Imports property.
            ## @return a void
            ## 
            def defender_office_macro_code_allow_win32_imports=(value)
                @defender_office_macro_code_allow_win32_imports = value
            end
            ## 
            ## Gets the defenderOfficeMacroCodeAllowWin32ImportsType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_office_macro_code_allow_win32_imports_type
                return @defender_office_macro_code_allow_win32_imports_type
            end
            ## 
            ## Sets the defenderOfficeMacroCodeAllowWin32ImportsType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderOfficeMacroCodeAllowWin32ImportsType property.
            ## @return a void
            ## 
            def defender_office_macro_code_allow_win32_imports_type=(value)
                @defender_office_macro_code_allow_win32_imports_type = value
            end
            ## 
            ## Gets the defenderPotentiallyUnwantedAppAction property value. Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer. Possible values are: userDefined, enable, auditMode, warn, notConfigured.
            ## @return a defender_protection_type
            ## 
            def defender_potentially_unwanted_app_action
                return @defender_potentially_unwanted_app_action
            end
            ## 
            ## Sets the defenderPotentiallyUnwantedAppAction property value. Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer. Possible values are: userDefined, enable, auditMode, warn, notConfigured.
            ## @param value Value to set for the defenderPotentiallyUnwantedAppAction property.
            ## @return a void
            ## 
            def defender_potentially_unwanted_app_action=(value)
                @defender_potentially_unwanted_app_action = value
            end
            ## 
            ## Gets the defenderPreventCredentialStealingType property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_prevent_credential_stealing_type
                return @defender_prevent_credential_stealing_type
            end
            ## 
            ## Sets the defenderPreventCredentialStealingType property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderPreventCredentialStealingType property.
            ## @return a void
            ## 
            def defender_prevent_credential_stealing_type=(value)
                @defender_prevent_credential_stealing_type = value
            end
            ## 
            ## Gets the defenderProcessCreation property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_process_creation
                return @defender_process_creation
            end
            ## 
            ## Sets the defenderProcessCreation property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderProcessCreation property.
            ## @return a void
            ## 
            def defender_process_creation=(value)
                @defender_process_creation = value
            end
            ## 
            ## Gets the defenderProcessCreationType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_process_creation_type
                return @defender_process_creation_type
            end
            ## 
            ## Sets the defenderProcessCreationType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderProcessCreationType property.
            ## @return a void
            ## 
            def defender_process_creation_type=(value)
                @defender_process_creation_type = value
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
            ## @param value Value to set for the defenderProcessesToExclude property.
            ## @return a void
            ## 
            def defender_processes_to_exclude=(value)
                @defender_processes_to_exclude = value
            end
            ## 
            ## Gets the defenderScanDirection property value. Controls which sets of files should be monitored. Possible values are: monitorAllFiles, monitorIncomingFilesOnly, monitorOutgoingFilesOnly.
            ## @return a defender_realtime_scan_direction
            ## 
            def defender_scan_direction
                return @defender_scan_direction
            end
            ## 
            ## Sets the defenderScanDirection property value. Controls which sets of files should be monitored. Possible values are: monitorAllFiles, monitorIncomingFilesOnly, monitorOutgoingFilesOnly.
            ## @param value Value to set for the defenderScanDirection property.
            ## @return a void
            ## 
            def defender_scan_direction=(value)
                @defender_scan_direction = value
            end
            ## 
            ## Gets the defenderScanMaxCpuPercentage property value. Represents the average CPU load factor for the Windows Defender scan (in percent). The default value is 50. Valid values 0 to 100
            ## @return a integer
            ## 
            def defender_scan_max_cpu_percentage
                return @defender_scan_max_cpu_percentage
            end
            ## 
            ## Sets the defenderScanMaxCpuPercentage property value. Represents the average CPU load factor for the Windows Defender scan (in percent). The default value is 50. Valid values 0 to 100
            ## @param value Value to set for the defenderScanMaxCpuPercentage property.
            ## @return a void
            ## 
            def defender_scan_max_cpu_percentage=(value)
                @defender_scan_max_cpu_percentage = value
            end
            ## 
            ## Gets the defenderScanType property value. Selects whether to perform a quick scan or full scan. Possible values are: userDefined, disabled, quick, full.
            ## @return a defender_scan_type
            ## 
            def defender_scan_type
                return @defender_scan_type
            end
            ## 
            ## Sets the defenderScanType property value. Selects whether to perform a quick scan or full scan. Possible values are: userDefined, disabled, quick, full.
            ## @param value Value to set for the defenderScanType property.
            ## @return a void
            ## 
            def defender_scan_type=(value)
                @defender_scan_type = value
            end
            ## 
            ## Gets the defenderScheduledQuickScanTime property value. Selects the time of day that the Windows Defender quick scan should run. For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM. The default value is 120
            ## @return a time
            ## 
            def defender_scheduled_quick_scan_time
                return @defender_scheduled_quick_scan_time
            end
            ## 
            ## Sets the defenderScheduledQuickScanTime property value. Selects the time of day that the Windows Defender quick scan should run. For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM. The default value is 120
            ## @param value Value to set for the defenderScheduledQuickScanTime property.
            ## @return a void
            ## 
            def defender_scheduled_quick_scan_time=(value)
                @defender_scheduled_quick_scan_time = value
            end
            ## 
            ## Gets the defenderScheduledScanDay property value. Selects the day that the Windows Defender scan should run. Possible values are: userDefined, everyday, sunday, monday, tuesday, wednesday, thursday, friday, saturday, noScheduledScan.
            ## @return a weekly_schedule
            ## 
            def defender_scheduled_scan_day
                return @defender_scheduled_scan_day
            end
            ## 
            ## Sets the defenderScheduledScanDay property value. Selects the day that the Windows Defender scan should run. Possible values are: userDefined, everyday, sunday, monday, tuesday, wednesday, thursday, friday, saturday, noScheduledScan.
            ## @param value Value to set for the defenderScheduledScanDay property.
            ## @return a void
            ## 
            def defender_scheduled_scan_day=(value)
                @defender_scheduled_scan_day = value
            end
            ## 
            ## Gets the defenderScheduledScanTime property value. Selects the time of day that the Windows Defender scan should run.
            ## @return a time
            ## 
            def defender_scheduled_scan_time
                return @defender_scheduled_scan_time
            end
            ## 
            ## Sets the defenderScheduledScanTime property value. Selects the time of day that the Windows Defender scan should run.
            ## @param value Value to set for the defenderScheduledScanTime property.
            ## @return a void
            ## 
            def defender_scheduled_scan_time=(value)
                @defender_scheduled_scan_time = value
            end
            ## 
            ## Gets the defenderScriptDownloadedPayloadExecution property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_script_downloaded_payload_execution
                return @defender_script_downloaded_payload_execution
            end
            ## 
            ## Sets the defenderScriptDownloadedPayloadExecution property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderScriptDownloadedPayloadExecution property.
            ## @return a void
            ## 
            def defender_script_downloaded_payload_execution=(value)
                @defender_script_downloaded_payload_execution = value
            end
            ## 
            ## Gets the defenderScriptDownloadedPayloadExecutionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_script_downloaded_payload_execution_type
                return @defender_script_downloaded_payload_execution_type
            end
            ## 
            ## Sets the defenderScriptDownloadedPayloadExecutionType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderScriptDownloadedPayloadExecutionType property.
            ## @return a void
            ## 
            def defender_script_downloaded_payload_execution_type=(value)
                @defender_script_downloaded_payload_execution_type = value
            end
            ## 
            ## Gets the defenderScriptObfuscatedMacroCode property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_script_obfuscated_macro_code
                return @defender_script_obfuscated_macro_code
            end
            ## 
            ## Sets the defenderScriptObfuscatedMacroCode property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderScriptObfuscatedMacroCode property.
            ## @return a void
            ## 
            def defender_script_obfuscated_macro_code=(value)
                @defender_script_obfuscated_macro_code = value
            end
            ## 
            ## Gets the defenderScriptObfuscatedMacroCodeType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_script_obfuscated_macro_code_type
                return @defender_script_obfuscated_macro_code_type
            end
            ## 
            ## Sets the defenderScriptObfuscatedMacroCodeType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderScriptObfuscatedMacroCodeType property.
            ## @return a void
            ## 
            def defender_script_obfuscated_macro_code_type=(value)
                @defender_script_obfuscated_macro_code_type = value
            end
            ## 
            ## Gets the defenderSecurityCenterBlockExploitProtectionOverride property value. Indicates whether or not to block user from overriding Exploit Protection settings.
            ## @return a boolean
            ## 
            def defender_security_center_block_exploit_protection_override
                return @defender_security_center_block_exploit_protection_override
            end
            ## 
            ## Sets the defenderSecurityCenterBlockExploitProtectionOverride property value. Indicates whether or not to block user from overriding Exploit Protection settings.
            ## @param value Value to set for the defenderSecurityCenterBlockExploitProtectionOverride property.
            ## @return a void
            ## 
            def defender_security_center_block_exploit_protection_override=(value)
                @defender_security_center_block_exploit_protection_override = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableAccountUI property value. Used to disable the display of the account protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_account_u_i
                return @defender_security_center_disable_account_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableAccountUI property value. Used to disable the display of the account protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableAccountUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_account_u_i=(value)
                @defender_security_center_disable_account_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableAppBrowserUI property value. Used to disable the display of the app and browser protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_app_browser_u_i
                return @defender_security_center_disable_app_browser_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableAppBrowserUI property value. Used to disable the display of the app and browser protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableAppBrowserUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_app_browser_u_i=(value)
                @defender_security_center_disable_app_browser_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableClearTpmUI property value. Used to disable the display of the Clear TPM button.
            ## @return a boolean
            ## 
            def defender_security_center_disable_clear_tpm_u_i
                return @defender_security_center_disable_clear_tpm_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableClearTpmUI property value. Used to disable the display of the Clear TPM button.
            ## @param value Value to set for the defenderSecurityCenterDisableClearTpmUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_clear_tpm_u_i=(value)
                @defender_security_center_disable_clear_tpm_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableFamilyUI property value. Used to disable the display of the family options area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_family_u_i
                return @defender_security_center_disable_family_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableFamilyUI property value. Used to disable the display of the family options area.
            ## @param value Value to set for the defenderSecurityCenterDisableFamilyUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_family_u_i=(value)
                @defender_security_center_disable_family_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableHardwareUI property value. Used to disable the display of the hardware protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_hardware_u_i
                return @defender_security_center_disable_hardware_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableHardwareUI property value. Used to disable the display of the hardware protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableHardwareUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_hardware_u_i=(value)
                @defender_security_center_disable_hardware_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableHealthUI property value. Used to disable the display of the device performance and health area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_health_u_i
                return @defender_security_center_disable_health_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableHealthUI property value. Used to disable the display of the device performance and health area.
            ## @param value Value to set for the defenderSecurityCenterDisableHealthUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_health_u_i=(value)
                @defender_security_center_disable_health_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableNetworkUI property value. Used to disable the display of the firewall and network protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_network_u_i
                return @defender_security_center_disable_network_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableNetworkUI property value. Used to disable the display of the firewall and network protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableNetworkUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_network_u_i=(value)
                @defender_security_center_disable_network_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableNotificationAreaUI property value. Used to disable the display of the notification area control. The user needs to either sign out and sign in or reboot the computer for this setting to take effect.
            ## @return a boolean
            ## 
            def defender_security_center_disable_notification_area_u_i
                return @defender_security_center_disable_notification_area_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableNotificationAreaUI property value. Used to disable the display of the notification area control. The user needs to either sign out and sign in or reboot the computer for this setting to take effect.
            ## @param value Value to set for the defenderSecurityCenterDisableNotificationAreaUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_notification_area_u_i=(value)
                @defender_security_center_disable_notification_area_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableRansomwareUI property value. Used to disable the display of the ransomware protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_ransomware_u_i
                return @defender_security_center_disable_ransomware_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableRansomwareUI property value. Used to disable the display of the ransomware protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableRansomwareUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_ransomware_u_i=(value)
                @defender_security_center_disable_ransomware_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableSecureBootUI property value. Used to disable the display of the secure boot area under Device security.
            ## @return a boolean
            ## 
            def defender_security_center_disable_secure_boot_u_i
                return @defender_security_center_disable_secure_boot_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableSecureBootUI property value. Used to disable the display of the secure boot area under Device security.
            ## @param value Value to set for the defenderSecurityCenterDisableSecureBootUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_secure_boot_u_i=(value)
                @defender_security_center_disable_secure_boot_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableTroubleshootingUI property value. Used to disable the display of the security process troubleshooting under Device security.
            ## @return a boolean
            ## 
            def defender_security_center_disable_troubleshooting_u_i
                return @defender_security_center_disable_troubleshooting_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableTroubleshootingUI property value. Used to disable the display of the security process troubleshooting under Device security.
            ## @param value Value to set for the defenderSecurityCenterDisableTroubleshootingUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_troubleshooting_u_i=(value)
                @defender_security_center_disable_troubleshooting_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableVirusUI property value. Used to disable the display of the virus and threat protection area.
            ## @return a boolean
            ## 
            def defender_security_center_disable_virus_u_i
                return @defender_security_center_disable_virus_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableVirusUI property value. Used to disable the display of the virus and threat protection area.
            ## @param value Value to set for the defenderSecurityCenterDisableVirusUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_virus_u_i=(value)
                @defender_security_center_disable_virus_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI property value. Used to disable the display of update TPM Firmware when a vulnerable firmware is detected.
            ## @return a boolean
            ## 
            def defender_security_center_disable_vulnerable_tpm_firmware_update_u_i
                return @defender_security_center_disable_vulnerable_tpm_firmware_update_u_i
            end
            ## 
            ## Sets the defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI property value. Used to disable the display of update TPM Firmware when a vulnerable firmware is detected.
            ## @param value Value to set for the defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI property.
            ## @return a void
            ## 
            def defender_security_center_disable_vulnerable_tpm_firmware_update_u_i=(value)
                @defender_security_center_disable_vulnerable_tpm_firmware_update_u_i = value
            end
            ## 
            ## Gets the defenderSecurityCenterHelpEmail property value. The email address that is displayed to users.
            ## @return a string
            ## 
            def defender_security_center_help_email
                return @defender_security_center_help_email
            end
            ## 
            ## Sets the defenderSecurityCenterHelpEmail property value. The email address that is displayed to users.
            ## @param value Value to set for the defenderSecurityCenterHelpEmail property.
            ## @return a void
            ## 
            def defender_security_center_help_email=(value)
                @defender_security_center_help_email = value
            end
            ## 
            ## Gets the defenderSecurityCenterHelpPhone property value. The phone number or Skype ID that is displayed to users.
            ## @return a string
            ## 
            def defender_security_center_help_phone
                return @defender_security_center_help_phone
            end
            ## 
            ## Sets the defenderSecurityCenterHelpPhone property value. The phone number or Skype ID that is displayed to users.
            ## @param value Value to set for the defenderSecurityCenterHelpPhone property.
            ## @return a void
            ## 
            def defender_security_center_help_phone=(value)
                @defender_security_center_help_phone = value
            end
            ## 
            ## Gets the defenderSecurityCenterHelpURL property value. The help portal URL this is displayed to users.
            ## @return a string
            ## 
            def defender_security_center_help_u_r_l
                return @defender_security_center_help_u_r_l
            end
            ## 
            ## Sets the defenderSecurityCenterHelpURL property value. The help portal URL this is displayed to users.
            ## @param value Value to set for the defenderSecurityCenterHelpURL property.
            ## @return a void
            ## 
            def defender_security_center_help_u_r_l=(value)
                @defender_security_center_help_u_r_l = value
            end
            ## 
            ## Gets the defenderSecurityCenterITContactDisplay property value. Possible values for defenderSecurityCenterITContactDisplay
            ## @return a defender_security_center_i_t_contact_display_type
            ## 
            def defender_security_center_i_t_contact_display
                return @defender_security_center_i_t_contact_display
            end
            ## 
            ## Sets the defenderSecurityCenterITContactDisplay property value. Possible values for defenderSecurityCenterITContactDisplay
            ## @param value Value to set for the defenderSecurityCenterITContactDisplay property.
            ## @return a void
            ## 
            def defender_security_center_i_t_contact_display=(value)
                @defender_security_center_i_t_contact_display = value
            end
            ## 
            ## Gets the defenderSecurityCenterNotificationsFromApp property value. Possible values for defenderSecurityCenterNotificationsFromApp
            ## @return a defender_security_center_notifications_from_app_type
            ## 
            def defender_security_center_notifications_from_app
                return @defender_security_center_notifications_from_app
            end
            ## 
            ## Sets the defenderSecurityCenterNotificationsFromApp property value. Possible values for defenderSecurityCenterNotificationsFromApp
            ## @param value Value to set for the defenderSecurityCenterNotificationsFromApp property.
            ## @return a void
            ## 
            def defender_security_center_notifications_from_app=(value)
                @defender_security_center_notifications_from_app = value
            end
            ## 
            ## Gets the defenderSecurityCenterOrganizationDisplayName property value. The company name that is displayed to the users.
            ## @return a string
            ## 
            def defender_security_center_organization_display_name
                return @defender_security_center_organization_display_name
            end
            ## 
            ## Sets the defenderSecurityCenterOrganizationDisplayName property value. The company name that is displayed to the users.
            ## @param value Value to set for the defenderSecurityCenterOrganizationDisplayName property.
            ## @return a void
            ## 
            def defender_security_center_organization_display_name=(value)
                @defender_security_center_organization_display_name = value
            end
            ## 
            ## Gets the defenderSignatureUpdateIntervalInHours property value. Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. Valid values 0 to 24
            ## @return a integer
            ## 
            def defender_signature_update_interval_in_hours
                return @defender_signature_update_interval_in_hours
            end
            ## 
            ## Sets the defenderSignatureUpdateIntervalInHours property value. Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. Valid values 0 to 24
            ## @param value Value to set for the defenderSignatureUpdateIntervalInHours property.
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
            ## @param value Value to set for the defenderSubmitSamplesConsentType property.
            ## @return a void
            ## 
            def defender_submit_samples_consent_type=(value)
                @defender_submit_samples_consent_type = value
            end
            ## 
            ## Gets the defenderUntrustedExecutable property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_untrusted_executable
                return @defender_untrusted_executable
            end
            ## 
            ## Sets the defenderUntrustedExecutable property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderUntrustedExecutable property.
            ## @return a void
            ## 
            def defender_untrusted_executable=(value)
                @defender_untrusted_executable = value
            end
            ## 
            ## Gets the defenderUntrustedExecutableType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_untrusted_executable_type
                return @defender_untrusted_executable_type
            end
            ## 
            ## Sets the defenderUntrustedExecutableType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderUntrustedExecutableType property.
            ## @return a void
            ## 
            def defender_untrusted_executable_type=(value)
                @defender_untrusted_executable_type = value
            end
            ## 
            ## Gets the defenderUntrustedUSBProcess property value. Possible values of Defender PUA Protection
            ## @return a defender_protection_type
            ## 
            def defender_untrusted_u_s_b_process
                return @defender_untrusted_u_s_b_process
            end
            ## 
            ## Sets the defenderUntrustedUSBProcess property value. Possible values of Defender PUA Protection
            ## @param value Value to set for the defenderUntrustedUSBProcess property.
            ## @return a void
            ## 
            def defender_untrusted_u_s_b_process=(value)
                @defender_untrusted_u_s_b_process = value
            end
            ## 
            ## Gets the defenderUntrustedUSBProcessType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @return a defender_attack_surface_type
            ## 
            def defender_untrusted_u_s_b_process_type
                return @defender_untrusted_u_s_b_process_type
            end
            ## 
            ## Sets the defenderUntrustedUSBProcessType property value. Possible values of Defender Attack Surface Reduction Rules
            ## @param value Value to set for the defenderUntrustedUSBProcessType property.
            ## @return a void
            ## 
            def defender_untrusted_u_s_b_process_type=(value)
                @defender_untrusted_u_s_b_process_type = value
            end
            ## 
            ## Gets the deviceGuardEnableSecureBootWithDMA property value. This property will be deprecated in May 2019 and will be replaced with property DeviceGuardSecureBootWithDMA. Specifies whether Platform Security Level is enabled at next reboot.
            ## @return a boolean
            ## 
            def device_guard_enable_secure_boot_with_d_m_a
                return @device_guard_enable_secure_boot_with_d_m_a
            end
            ## 
            ## Sets the deviceGuardEnableSecureBootWithDMA property value. This property will be deprecated in May 2019 and will be replaced with property DeviceGuardSecureBootWithDMA. Specifies whether Platform Security Level is enabled at next reboot.
            ## @param value Value to set for the deviceGuardEnableSecureBootWithDMA property.
            ## @return a void
            ## 
            def device_guard_enable_secure_boot_with_d_m_a=(value)
                @device_guard_enable_secure_boot_with_d_m_a = value
            end
            ## 
            ## Gets the deviceGuardEnableVirtualizationBasedSecurity property value. Turns On Virtualization Based Security(VBS).
            ## @return a boolean
            ## 
            def device_guard_enable_virtualization_based_security
                return @device_guard_enable_virtualization_based_security
            end
            ## 
            ## Sets the deviceGuardEnableVirtualizationBasedSecurity property value. Turns On Virtualization Based Security(VBS).
            ## @param value Value to set for the deviceGuardEnableVirtualizationBasedSecurity property.
            ## @return a void
            ## 
            def device_guard_enable_virtualization_based_security=(value)
                @device_guard_enable_virtualization_based_security = value
            end
            ## 
            ## Gets the deviceGuardLaunchSystemGuard property value. Possible values of a property
            ## @return a enablement
            ## 
            def device_guard_launch_system_guard
                return @device_guard_launch_system_guard
            end
            ## 
            ## Sets the deviceGuardLaunchSystemGuard property value. Possible values of a property
            ## @param value Value to set for the deviceGuardLaunchSystemGuard property.
            ## @return a void
            ## 
            def device_guard_launch_system_guard=(value)
                @device_guard_launch_system_guard = value
            end
            ## 
            ## Gets the deviceGuardLocalSystemAuthorityCredentialGuardSettings property value. Possible values of Credential Guard settings.
            ## @return a device_guard_local_system_authority_credential_guard_type
            ## 
            def device_guard_local_system_authority_credential_guard_settings
                return @device_guard_local_system_authority_credential_guard_settings
            end
            ## 
            ## Sets the deviceGuardLocalSystemAuthorityCredentialGuardSettings property value. Possible values of Credential Guard settings.
            ## @param value Value to set for the deviceGuardLocalSystemAuthorityCredentialGuardSettings property.
            ## @return a void
            ## 
            def device_guard_local_system_authority_credential_guard_settings=(value)
                @device_guard_local_system_authority_credential_guard_settings = value
            end
            ## 
            ## Gets the deviceGuardSecureBootWithDMA property value. Possible values of Secure Boot with DMA
            ## @return a secure_boot_with_d_m_a_type
            ## 
            def device_guard_secure_boot_with_d_m_a
                return @device_guard_secure_boot_with_d_m_a
            end
            ## 
            ## Sets the deviceGuardSecureBootWithDMA property value. Possible values of Secure Boot with DMA
            ## @param value Value to set for the deviceGuardSecureBootWithDMA property.
            ## @return a void
            ## 
            def device_guard_secure_boot_with_d_m_a=(value)
                @device_guard_secure_boot_with_d_m_a = value
            end
            ## 
            ## Gets the dmaGuardDeviceEnumerationPolicy property value. Possible values of the DmaGuardDeviceEnumerationPolicy.
            ## @return a dma_guard_device_enumeration_policy_type
            ## 
            def dma_guard_device_enumeration_policy
                return @dma_guard_device_enumeration_policy
            end
            ## 
            ## Sets the dmaGuardDeviceEnumerationPolicy property value. Possible values of the DmaGuardDeviceEnumerationPolicy.
            ## @param value Value to set for the dmaGuardDeviceEnumerationPolicy property.
            ## @return a void
            ## 
            def dma_guard_device_enumeration_policy=(value)
                @dma_guard_device_enumeration_policy = value
            end
            ## 
            ## Gets the firewallBlockStatefulFTP property value. Blocks stateful FTP connections to the device
            ## @return a boolean
            ## 
            def firewall_block_stateful_f_t_p
                return @firewall_block_stateful_f_t_p
            end
            ## 
            ## Sets the firewallBlockStatefulFTP property value. Blocks stateful FTP connections to the device
            ## @param value Value to set for the firewallBlockStatefulFTP property.
            ## @return a void
            ## 
            def firewall_block_stateful_f_t_p=(value)
                @firewall_block_stateful_f_t_p = value
            end
            ## 
            ## Gets the firewallCertificateRevocationListCheckMethod property value. Possible values for firewallCertificateRevocationListCheckMethod
            ## @return a firewall_certificate_revocation_list_check_method_type
            ## 
            def firewall_certificate_revocation_list_check_method
                return @firewall_certificate_revocation_list_check_method
            end
            ## 
            ## Sets the firewallCertificateRevocationListCheckMethod property value. Possible values for firewallCertificateRevocationListCheckMethod
            ## @param value Value to set for the firewallCertificateRevocationListCheckMethod property.
            ## @return a void
            ## 
            def firewall_certificate_revocation_list_check_method=(value)
                @firewall_certificate_revocation_list_check_method = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowDHCP property value. Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_d_h_c_p
                return @firewall_i_p_sec_exemptions_allow_d_h_c_p
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowDHCP property value. Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic
            ## @param value Value to set for the firewallIPSecExemptionsAllowDHCP property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_d_h_c_p=(value)
                @firewall_i_p_sec_exemptions_allow_d_h_c_p = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowICMP property value. Configures IPSec exemptions to allow ICMP
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_i_c_m_p
                return @firewall_i_p_sec_exemptions_allow_i_c_m_p
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowICMP property value. Configures IPSec exemptions to allow ICMP
            ## @param value Value to set for the firewallIPSecExemptionsAllowICMP property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_i_c_m_p=(value)
                @firewall_i_p_sec_exemptions_allow_i_c_m_p = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowNeighborDiscovery property value. Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_neighbor_discovery
                return @firewall_i_p_sec_exemptions_allow_neighbor_discovery
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowNeighborDiscovery property value. Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes
            ## @param value Value to set for the firewallIPSecExemptionsAllowNeighborDiscovery property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_neighbor_discovery=(value)
                @firewall_i_p_sec_exemptions_allow_neighbor_discovery = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsAllowRouterDiscovery property value. Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_allow_router_discovery
                return @firewall_i_p_sec_exemptions_allow_router_discovery
            end
            ## 
            ## Sets the firewallIPSecExemptionsAllowRouterDiscovery property value. Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes
            ## @param value Value to set for the firewallIPSecExemptionsAllowRouterDiscovery property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_allow_router_discovery=(value)
                @firewall_i_p_sec_exemptions_allow_router_discovery = value
            end
            ## 
            ## Gets the firewallIPSecExemptionsNone property value. Configures IPSec exemptions to no exemptions
            ## @return a boolean
            ## 
            def firewall_i_p_sec_exemptions_none
                return @firewall_i_p_sec_exemptions_none
            end
            ## 
            ## Sets the firewallIPSecExemptionsNone property value. Configures IPSec exemptions to no exemptions
            ## @param value Value to set for the firewallIPSecExemptionsNone property.
            ## @return a void
            ## 
            def firewall_i_p_sec_exemptions_none=(value)
                @firewall_i_p_sec_exemptions_none = value
            end
            ## 
            ## Gets the firewallIdleTimeoutForSecurityAssociationInSeconds property value. Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            ## @return a integer
            ## 
            def firewall_idle_timeout_for_security_association_in_seconds
                return @firewall_idle_timeout_for_security_association_in_seconds
            end
            ## 
            ## Sets the firewallIdleTimeoutForSecurityAssociationInSeconds property value. Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600
            ## @param value Value to set for the firewallIdleTimeoutForSecurityAssociationInSeconds property.
            ## @return a void
            ## 
            def firewall_idle_timeout_for_security_association_in_seconds=(value)
                @firewall_idle_timeout_for_security_association_in_seconds = value
            end
            ## 
            ## Gets the firewallMergeKeyingModuleSettings property value. If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            ## @return a boolean
            ## 
            def firewall_merge_keying_module_settings
                return @firewall_merge_keying_module_settings
            end
            ## 
            ## Sets the firewallMergeKeyingModuleSettings property value. If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set
            ## @param value Value to set for the firewallMergeKeyingModuleSettings property.
            ## @return a void
            ## 
            def firewall_merge_keying_module_settings=(value)
                @firewall_merge_keying_module_settings = value
            end
            ## 
            ## Gets the firewallPacketQueueingMethod property value. Possible values for firewallPacketQueueingMethod
            ## @return a firewall_packet_queueing_method_type
            ## 
            def firewall_packet_queueing_method
                return @firewall_packet_queueing_method
            end
            ## 
            ## Sets the firewallPacketQueueingMethod property value. Possible values for firewallPacketQueueingMethod
            ## @param value Value to set for the firewallPacketQueueingMethod property.
            ## @return a void
            ## 
            def firewall_packet_queueing_method=(value)
                @firewall_packet_queueing_method = value
            end
            ## 
            ## Gets the firewallPreSharedKeyEncodingMethod property value. Possible values for firewallPreSharedKeyEncodingMethod
            ## @return a firewall_pre_shared_key_encoding_method_type
            ## 
            def firewall_pre_shared_key_encoding_method
                return @firewall_pre_shared_key_encoding_method
            end
            ## 
            ## Sets the firewallPreSharedKeyEncodingMethod property value. Possible values for firewallPreSharedKeyEncodingMethod
            ## @param value Value to set for the firewallPreSharedKeyEncodingMethod property.
            ## @return a void
            ## 
            def firewall_pre_shared_key_encoding_method=(value)
                @firewall_pre_shared_key_encoding_method = value
            end
            ## 
            ## Gets the firewallProfileDomain property value. Configures the firewall profile settings for domain networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_domain
                return @firewall_profile_domain
            end
            ## 
            ## Sets the firewallProfileDomain property value. Configures the firewall profile settings for domain networks
            ## @param value Value to set for the firewallProfileDomain property.
            ## @return a void
            ## 
            def firewall_profile_domain=(value)
                @firewall_profile_domain = value
            end
            ## 
            ## Gets the firewallProfilePrivate property value. Configures the firewall profile settings for private networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_private
                return @firewall_profile_private
            end
            ## 
            ## Sets the firewallProfilePrivate property value. Configures the firewall profile settings for private networks
            ## @param value Value to set for the firewallProfilePrivate property.
            ## @return a void
            ## 
            def firewall_profile_private=(value)
                @firewall_profile_private = value
            end
            ## 
            ## Gets the firewallProfilePublic property value. Configures the firewall profile settings for public networks
            ## @return a windows_firewall_network_profile
            ## 
            def firewall_profile_public
                return @firewall_profile_public
            end
            ## 
            ## Sets the firewallProfilePublic property value. Configures the firewall profile settings for public networks
            ## @param value Value to set for the firewallProfilePublic property.
            ## @return a void
            ## 
            def firewall_profile_public=(value)
                @firewall_profile_public = value
            end
            ## 
            ## Gets the firewallRules property value. Configures the firewall rule settings. This collection can contain a maximum of 150 elements.
            ## @return a windows_firewall_rule
            ## 
            def firewall_rules
                return @firewall_rules
            end
            ## 
            ## Sets the firewallRules property value. Configures the firewall rule settings. This collection can contain a maximum of 150 elements.
            ## @param value Value to set for the firewallRules property.
            ## @return a void
            ## 
            def firewall_rules=(value)
                @firewall_rules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appLockerApplicationControl" => lambda {|n| @app_locker_application_control = n.get_enum_value(MicrosoftGraphBeta::Models::AppLockerApplicationControlType) },
                    "applicationGuardAllowCameraMicrophoneRedirection" => lambda {|n| @application_guard_allow_camera_microphone_redirection = n.get_boolean_value() },
                    "applicationGuardAllowFileSaveOnHost" => lambda {|n| @application_guard_allow_file_save_on_host = n.get_boolean_value() },
                    "applicationGuardAllowPersistence" => lambda {|n| @application_guard_allow_persistence = n.get_boolean_value() },
                    "applicationGuardAllowPrintToLocalPrinters" => lambda {|n| @application_guard_allow_print_to_local_printers = n.get_boolean_value() },
                    "applicationGuardAllowPrintToNetworkPrinters" => lambda {|n| @application_guard_allow_print_to_network_printers = n.get_boolean_value() },
                    "applicationGuardAllowPrintToPDF" => lambda {|n| @application_guard_allow_print_to_p_d_f = n.get_boolean_value() },
                    "applicationGuardAllowPrintToXPS" => lambda {|n| @application_guard_allow_print_to_x_p_s = n.get_boolean_value() },
                    "applicationGuardAllowVirtualGPU" => lambda {|n| @application_guard_allow_virtual_g_p_u = n.get_boolean_value() },
                    "applicationGuardBlockClipboardSharing" => lambda {|n| @application_guard_block_clipboard_sharing = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationGuardBlockClipboardSharingType) },
                    "applicationGuardBlockFileTransfer" => lambda {|n| @application_guard_block_file_transfer = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationGuardBlockFileTransferType) },
                    "applicationGuardBlockNonEnterpriseContent" => lambda {|n| @application_guard_block_non_enterprise_content = n.get_boolean_value() },
                    "applicationGuardCertificateThumbprints" => lambda {|n| @application_guard_certificate_thumbprints = n.get_collection_of_primitive_values(String) },
                    "applicationGuardEnabled" => lambda {|n| @application_guard_enabled = n.get_boolean_value() },
                    "applicationGuardEnabledOptions" => lambda {|n| @application_guard_enabled_options = n.get_enum_value(MicrosoftGraphBeta::Models::ApplicationGuardEnabledOptions) },
                    "applicationGuardForceAuditing" => lambda {|n| @application_guard_force_auditing = n.get_boolean_value() },
                    "bitLockerAllowStandardUserEncryption" => lambda {|n| @bit_locker_allow_standard_user_encryption = n.get_boolean_value() },
                    "bitLockerDisableWarningForOtherDiskEncryption" => lambda {|n| @bit_locker_disable_warning_for_other_disk_encryption = n.get_boolean_value() },
                    "bitLockerEnableStorageCardEncryptionOnMobile" => lambda {|n| @bit_locker_enable_storage_card_encryption_on_mobile = n.get_boolean_value() },
                    "bitLockerEncryptDevice" => lambda {|n| @bit_locker_encrypt_device = n.get_boolean_value() },
                    "bitLockerFixedDrivePolicy" => lambda {|n| @bit_locker_fixed_drive_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BitLockerFixedDrivePolicy.create_from_discriminator_value(pn) }) },
                    "bitLockerRecoveryPasswordRotation" => lambda {|n| @bit_locker_recovery_password_rotation = n.get_enum_value(MicrosoftGraphBeta::Models::BitLockerRecoveryPasswordRotationType) },
                    "bitLockerRemovableDrivePolicy" => lambda {|n| @bit_locker_removable_drive_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BitLockerRemovableDrivePolicy.create_from_discriminator_value(pn) }) },
                    "bitLockerSystemDrivePolicy" => lambda {|n| @bit_locker_system_drive_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BitLockerSystemDrivePolicy.create_from_discriminator_value(pn) }) },
                    "defenderAdditionalGuardedFolders" => lambda {|n| @defender_additional_guarded_folders = n.get_collection_of_primitive_values(String) },
                    "defenderAdobeReaderLaunchChildProcess" => lambda {|n| @defender_adobe_reader_launch_child_process = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderAdvancedRansomewareProtectionType" => lambda {|n| @defender_advanced_ransomeware_protection_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderAllowBehaviorMonitoring" => lambda {|n| @defender_allow_behavior_monitoring = n.get_boolean_value() },
                    "defenderAllowCloudProtection" => lambda {|n| @defender_allow_cloud_protection = n.get_boolean_value() },
                    "defenderAllowEndUserAccess" => lambda {|n| @defender_allow_end_user_access = n.get_boolean_value() },
                    "defenderAllowIntrusionPreventionSystem" => lambda {|n| @defender_allow_intrusion_prevention_system = n.get_boolean_value() },
                    "defenderAllowOnAccessProtection" => lambda {|n| @defender_allow_on_access_protection = n.get_boolean_value() },
                    "defenderAllowRealTimeMonitoring" => lambda {|n| @defender_allow_real_time_monitoring = n.get_boolean_value() },
                    "defenderAllowScanArchiveFiles" => lambda {|n| @defender_allow_scan_archive_files = n.get_boolean_value() },
                    "defenderAllowScanDownloads" => lambda {|n| @defender_allow_scan_downloads = n.get_boolean_value() },
                    "defenderAllowScanNetworkFiles" => lambda {|n| @defender_allow_scan_network_files = n.get_boolean_value() },
                    "defenderAllowScanRemovableDrivesDuringFullScan" => lambda {|n| @defender_allow_scan_removable_drives_during_full_scan = n.get_boolean_value() },
                    "defenderAllowScanScriptsLoadedInInternetExplorer" => lambda {|n| @defender_allow_scan_scripts_loaded_in_internet_explorer = n.get_boolean_value() },
                    "defenderAttackSurfaceReductionExcludedPaths" => lambda {|n| @defender_attack_surface_reduction_excluded_paths = n.get_collection_of_primitive_values(String) },
                    "defenderBlockEndUserAccess" => lambda {|n| @defender_block_end_user_access = n.get_boolean_value() },
                    "defenderBlockPersistenceThroughWmiType" => lambda {|n| @defender_block_persistence_through_wmi_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderCheckForSignaturesBeforeRunningScan" => lambda {|n| @defender_check_for_signatures_before_running_scan = n.get_boolean_value() },
                    "defenderCloudBlockLevel" => lambda {|n| @defender_cloud_block_level = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderCloudBlockLevelType) },
                    "defenderCloudExtendedTimeoutInSeconds" => lambda {|n| @defender_cloud_extended_timeout_in_seconds = n.get_number_value() },
                    "defenderDaysBeforeDeletingQuarantinedMalware" => lambda {|n| @defender_days_before_deleting_quarantined_malware = n.get_number_value() },
                    "defenderDetectedMalwareActions" => lambda {|n| @defender_detected_malware_actions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DefenderDetectedMalwareActions.create_from_discriminator_value(pn) }) },
                    "defenderDisableBehaviorMonitoring" => lambda {|n| @defender_disable_behavior_monitoring = n.get_boolean_value() },
                    "defenderDisableCatchupFullScan" => lambda {|n| @defender_disable_catchup_full_scan = n.get_boolean_value() },
                    "defenderDisableCatchupQuickScan" => lambda {|n| @defender_disable_catchup_quick_scan = n.get_boolean_value() },
                    "defenderDisableCloudProtection" => lambda {|n| @defender_disable_cloud_protection = n.get_boolean_value() },
                    "defenderDisableIntrusionPreventionSystem" => lambda {|n| @defender_disable_intrusion_prevention_system = n.get_boolean_value() },
                    "defenderDisableOnAccessProtection" => lambda {|n| @defender_disable_on_access_protection = n.get_boolean_value() },
                    "defenderDisableRealTimeMonitoring" => lambda {|n| @defender_disable_real_time_monitoring = n.get_boolean_value() },
                    "defenderDisableScanArchiveFiles" => lambda {|n| @defender_disable_scan_archive_files = n.get_boolean_value() },
                    "defenderDisableScanDownloads" => lambda {|n| @defender_disable_scan_downloads = n.get_boolean_value() },
                    "defenderDisableScanNetworkFiles" => lambda {|n| @defender_disable_scan_network_files = n.get_boolean_value() },
                    "defenderDisableScanRemovableDrivesDuringFullScan" => lambda {|n| @defender_disable_scan_removable_drives_during_full_scan = n.get_boolean_value() },
                    "defenderDisableScanScriptsLoadedInInternetExplorer" => lambda {|n| @defender_disable_scan_scripts_loaded_in_internet_explorer = n.get_boolean_value() },
                    "defenderEmailContentExecution" => lambda {|n| @defender_email_content_execution = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderEmailContentExecutionType" => lambda {|n| @defender_email_content_execution_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderEnableLowCpuPriority" => lambda {|n| @defender_enable_low_cpu_priority = n.get_boolean_value() },
                    "defenderEnableScanIncomingMail" => lambda {|n| @defender_enable_scan_incoming_mail = n.get_boolean_value() },
                    "defenderEnableScanMappedNetworkDrivesDuringFullScan" => lambda {|n| @defender_enable_scan_mapped_network_drives_during_full_scan = n.get_boolean_value() },
                    "defenderExploitProtectionXml" => lambda {|n| @defender_exploit_protection_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "defenderExploitProtectionXmlFileName" => lambda {|n| @defender_exploit_protection_xml_file_name = n.get_string_value() },
                    "defenderFileExtensionsToExclude" => lambda {|n| @defender_file_extensions_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderFilesAndFoldersToExclude" => lambda {|n| @defender_files_and_folders_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderGuardMyFoldersType" => lambda {|n| @defender_guard_my_folders_type = n.get_enum_value(MicrosoftGraphBeta::Models::FolderProtectionType) },
                    "defenderGuardedFoldersAllowedAppPaths" => lambda {|n| @defender_guarded_folders_allowed_app_paths = n.get_collection_of_primitive_values(String) },
                    "defenderNetworkProtectionType" => lambda {|n| @defender_network_protection_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeAppsExecutableContentCreationOrLaunch" => lambda {|n| @defender_office_apps_executable_content_creation_or_launch = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeAppsExecutableContentCreationOrLaunchType" => lambda {|n| @defender_office_apps_executable_content_creation_or_launch_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderOfficeAppsLaunchChildProcess" => lambda {|n| @defender_office_apps_launch_child_process = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeAppsLaunchChildProcessType" => lambda {|n| @defender_office_apps_launch_child_process_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderOfficeAppsOtherProcessInjection" => lambda {|n| @defender_office_apps_other_process_injection = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeAppsOtherProcessInjectionType" => lambda {|n| @defender_office_apps_other_process_injection_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderOfficeCommunicationAppsLaunchChildProcess" => lambda {|n| @defender_office_communication_apps_launch_child_process = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeMacroCodeAllowWin32Imports" => lambda {|n| @defender_office_macro_code_allow_win32_imports = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderOfficeMacroCodeAllowWin32ImportsType" => lambda {|n| @defender_office_macro_code_allow_win32_imports_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderPotentiallyUnwantedAppAction" => lambda {|n| @defender_potentially_unwanted_app_action = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderPreventCredentialStealingType" => lambda {|n| @defender_prevent_credential_stealing_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderProcessCreation" => lambda {|n| @defender_process_creation = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderProcessCreationType" => lambda {|n| @defender_process_creation_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderProcessesToExclude" => lambda {|n| @defender_processes_to_exclude = n.get_collection_of_primitive_values(String) },
                    "defenderScanDirection" => lambda {|n| @defender_scan_direction = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderRealtimeScanDirection) },
                    "defenderScanMaxCpuPercentage" => lambda {|n| @defender_scan_max_cpu_percentage = n.get_number_value() },
                    "defenderScanType" => lambda {|n| @defender_scan_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderScanType) },
                    "defenderScheduledQuickScanTime" => lambda {|n| @defender_scheduled_quick_scan_time = n.get_time_value() },
                    "defenderScheduledScanDay" => lambda {|n| @defender_scheduled_scan_day = n.get_enum_value(MicrosoftGraphBeta::Models::WeeklySchedule) },
                    "defenderScheduledScanTime" => lambda {|n| @defender_scheduled_scan_time = n.get_time_value() },
                    "defenderScriptDownloadedPayloadExecution" => lambda {|n| @defender_script_downloaded_payload_execution = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderScriptDownloadedPayloadExecutionType" => lambda {|n| @defender_script_downloaded_payload_execution_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderScriptObfuscatedMacroCode" => lambda {|n| @defender_script_obfuscated_macro_code = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderScriptObfuscatedMacroCodeType" => lambda {|n| @defender_script_obfuscated_macro_code_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderSecurityCenterBlockExploitProtectionOverride" => lambda {|n| @defender_security_center_block_exploit_protection_override = n.get_boolean_value() },
                    "defenderSecurityCenterDisableAccountUI" => lambda {|n| @defender_security_center_disable_account_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableAppBrowserUI" => lambda {|n| @defender_security_center_disable_app_browser_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableClearTpmUI" => lambda {|n| @defender_security_center_disable_clear_tpm_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableFamilyUI" => lambda {|n| @defender_security_center_disable_family_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableHardwareUI" => lambda {|n| @defender_security_center_disable_hardware_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableHealthUI" => lambda {|n| @defender_security_center_disable_health_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableNetworkUI" => lambda {|n| @defender_security_center_disable_network_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableNotificationAreaUI" => lambda {|n| @defender_security_center_disable_notification_area_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableRansomwareUI" => lambda {|n| @defender_security_center_disable_ransomware_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableSecureBootUI" => lambda {|n| @defender_security_center_disable_secure_boot_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableTroubleshootingUI" => lambda {|n| @defender_security_center_disable_troubleshooting_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableVirusUI" => lambda {|n| @defender_security_center_disable_virus_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI" => lambda {|n| @defender_security_center_disable_vulnerable_tpm_firmware_update_u_i = n.get_boolean_value() },
                    "defenderSecurityCenterHelpEmail" => lambda {|n| @defender_security_center_help_email = n.get_string_value() },
                    "defenderSecurityCenterHelpPhone" => lambda {|n| @defender_security_center_help_phone = n.get_string_value() },
                    "defenderSecurityCenterHelpURL" => lambda {|n| @defender_security_center_help_u_r_l = n.get_string_value() },
                    "defenderSecurityCenterITContactDisplay" => lambda {|n| @defender_security_center_i_t_contact_display = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderSecurityCenterITContactDisplayType) },
                    "defenderSecurityCenterNotificationsFromApp" => lambda {|n| @defender_security_center_notifications_from_app = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderSecurityCenterNotificationsFromAppType) },
                    "defenderSecurityCenterOrganizationDisplayName" => lambda {|n| @defender_security_center_organization_display_name = n.get_string_value() },
                    "defenderSignatureUpdateIntervalInHours" => lambda {|n| @defender_signature_update_interval_in_hours = n.get_number_value() },
                    "defenderSubmitSamplesConsentType" => lambda {|n| @defender_submit_samples_consent_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderSubmitSamplesConsentType) },
                    "defenderUntrustedExecutable" => lambda {|n| @defender_untrusted_executable = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderUntrustedExecutableType" => lambda {|n| @defender_untrusted_executable_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "defenderUntrustedUSBProcess" => lambda {|n| @defender_untrusted_u_s_b_process = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderProtectionType) },
                    "defenderUntrustedUSBProcessType" => lambda {|n| @defender_untrusted_u_s_b_process_type = n.get_enum_value(MicrosoftGraphBeta::Models::DefenderAttackSurfaceType) },
                    "deviceGuardEnableSecureBootWithDMA" => lambda {|n| @device_guard_enable_secure_boot_with_d_m_a = n.get_boolean_value() },
                    "deviceGuardEnableVirtualizationBasedSecurity" => lambda {|n| @device_guard_enable_virtualization_based_security = n.get_boolean_value() },
                    "deviceGuardLaunchSystemGuard" => lambda {|n| @device_guard_launch_system_guard = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "deviceGuardLocalSystemAuthorityCredentialGuardSettings" => lambda {|n| @device_guard_local_system_authority_credential_guard_settings = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceGuardLocalSystemAuthorityCredentialGuardType) },
                    "deviceGuardSecureBootWithDMA" => lambda {|n| @device_guard_secure_boot_with_d_m_a = n.get_enum_value(MicrosoftGraphBeta::Models::SecureBootWithDMAType) },
                    "dmaGuardDeviceEnumerationPolicy" => lambda {|n| @dma_guard_device_enumeration_policy = n.get_enum_value(MicrosoftGraphBeta::Models::DmaGuardDeviceEnumerationPolicyType) },
                    "firewallBlockStatefulFTP" => lambda {|n| @firewall_block_stateful_f_t_p = n.get_boolean_value() },
                    "firewallCertificateRevocationListCheckMethod" => lambda {|n| @firewall_certificate_revocation_list_check_method = n.get_enum_value(MicrosoftGraphBeta::Models::FirewallCertificateRevocationListCheckMethodType) },
                    "firewallIPSecExemptionsAllowDHCP" => lambda {|n| @firewall_i_p_sec_exemptions_allow_d_h_c_p = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowICMP" => lambda {|n| @firewall_i_p_sec_exemptions_allow_i_c_m_p = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowNeighborDiscovery" => lambda {|n| @firewall_i_p_sec_exemptions_allow_neighbor_discovery = n.get_boolean_value() },
                    "firewallIPSecExemptionsAllowRouterDiscovery" => lambda {|n| @firewall_i_p_sec_exemptions_allow_router_discovery = n.get_boolean_value() },
                    "firewallIPSecExemptionsNone" => lambda {|n| @firewall_i_p_sec_exemptions_none = n.get_boolean_value() },
                    "firewallIdleTimeoutForSecurityAssociationInSeconds" => lambda {|n| @firewall_idle_timeout_for_security_association_in_seconds = n.get_number_value() },
                    "firewallMergeKeyingModuleSettings" => lambda {|n| @firewall_merge_keying_module_settings = n.get_boolean_value() },
                    "firewallPacketQueueingMethod" => lambda {|n| @firewall_packet_queueing_method = n.get_enum_value(MicrosoftGraphBeta::Models::FirewallPacketQueueingMethodType) },
                    "firewallPreSharedKeyEncodingMethod" => lambda {|n| @firewall_pre_shared_key_encoding_method = n.get_enum_value(MicrosoftGraphBeta::Models::FirewallPreSharedKeyEncodingMethodType) },
                    "firewallProfileDomain" => lambda {|n| @firewall_profile_domain = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "firewallProfilePrivate" => lambda {|n| @firewall_profile_private = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "firewallProfilePublic" => lambda {|n| @firewall_profile_public = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFirewallNetworkProfile.create_from_discriminator_value(pn) }) },
                    "firewallRules" => lambda {|n| @firewall_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFirewallRule.create_from_discriminator_value(pn) }) },
                    "lanManagerAuthenticationLevel" => lambda {|n| @lan_manager_authentication_level = n.get_enum_value(MicrosoftGraphBeta::Models::LanManagerAuthenticationLevel) },
                    "lanManagerWorkstationDisableInsecureGuestLogons" => lambda {|n| @lan_manager_workstation_disable_insecure_guest_logons = n.get_boolean_value() },
                    "localSecurityOptionsAdministratorAccountName" => lambda {|n| @local_security_options_administrator_account_name = n.get_string_value() },
                    "localSecurityOptionsAdministratorElevationPromptBehavior" => lambda {|n| @local_security_options_administrator_elevation_prompt_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsAdministratorElevationPromptBehaviorType) },
                    "localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares" => lambda {|n| @local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares = n.get_boolean_value() },
                    "localSecurityOptionsAllowPKU2UAuthenticationRequests" => lambda {|n| @local_security_options_allow_p_k_u2_u_authentication_requests = n.get_boolean_value() },
                    "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager" => lambda {|n| @local_security_options_allow_remote_calls_to_security_accounts_manager = n.get_string_value() },
                    "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool" => lambda {|n| @local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool = n.get_boolean_value() },
                    "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn" => lambda {|n| @local_security_options_allow_system_to_be_shut_down_without_having_to_log_on = n.get_boolean_value() },
                    "localSecurityOptionsAllowUIAccessApplicationElevation" => lambda {|n| @local_security_options_allow_u_i_access_application_elevation = n.get_boolean_value() },
                    "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations" => lambda {|n| @local_security_options_allow_u_i_access_applications_for_secure_locations = n.get_boolean_value() },
                    "localSecurityOptionsAllowUndockWithoutHavingToLogon" => lambda {|n| @local_security_options_allow_undock_without_having_to_logon = n.get_boolean_value() },
                    "localSecurityOptionsBlockMicrosoftAccounts" => lambda {|n| @local_security_options_block_microsoft_accounts = n.get_boolean_value() },
                    "localSecurityOptionsBlockRemoteLogonWithBlankPassword" => lambda {|n| @local_security_options_block_remote_logon_with_blank_password = n.get_boolean_value() },
                    "localSecurityOptionsBlockRemoteOpticalDriveAccess" => lambda {|n| @local_security_options_block_remote_optical_drive_access = n.get_boolean_value() },
                    "localSecurityOptionsBlockUsersInstallingPrinterDrivers" => lambda {|n| @local_security_options_block_users_installing_printer_drivers = n.get_boolean_value() },
                    "localSecurityOptionsClearVirtualMemoryPageFile" => lambda {|n| @local_security_options_clear_virtual_memory_page_file = n.get_boolean_value() },
                    "localSecurityOptionsClientDigitallySignCommunicationsAlways" => lambda {|n| @local_security_options_client_digitally_sign_communications_always = n.get_boolean_value() },
                    "localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers" => lambda {|n| @local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers = n.get_boolean_value() },
                    "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation" => lambda {|n| @local_security_options_detect_application_installations_and_prompt_for_elevation = n.get_boolean_value() },
                    "localSecurityOptionsDisableAdministratorAccount" => lambda {|n| @local_security_options_disable_administrator_account = n.get_boolean_value() },
                    "localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees" => lambda {|n| @local_security_options_disable_client_digitally_sign_communications_if_server_agrees = n.get_boolean_value() },
                    "localSecurityOptionsDisableGuestAccount" => lambda {|n| @local_security_options_disable_guest_account = n.get_boolean_value() },
                    "localSecurityOptionsDisableServerDigitallySignCommunicationsAlways" => lambda {|n| @local_security_options_disable_server_digitally_sign_communications_always = n.get_boolean_value() },
                    "localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees" => lambda {|n| @local_security_options_disable_server_digitally_sign_communications_if_client_agrees = n.get_boolean_value() },
                    "localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts" => lambda {|n| @local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts = n.get_boolean_value() },
                    "localSecurityOptionsDoNotRequireCtrlAltDel" => lambda {|n| @local_security_options_do_not_require_ctrl_alt_del = n.get_boolean_value() },
                    "localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange" => lambda {|n| @local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change = n.get_boolean_value() },
                    "localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser" => lambda {|n| @local_security_options_format_and_eject_of_removable_media_allowed_user = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUserType) },
                    "localSecurityOptionsGuestAccountName" => lambda {|n| @local_security_options_guest_account_name = n.get_string_value() },
                    "localSecurityOptionsHideLastSignedInUser" => lambda {|n| @local_security_options_hide_last_signed_in_user = n.get_boolean_value() },
                    "localSecurityOptionsHideUsernameAtSignIn" => lambda {|n| @local_security_options_hide_username_at_sign_in = n.get_boolean_value() },
                    "localSecurityOptionsInformationDisplayedOnLockScreen" => lambda {|n| @local_security_options_information_displayed_on_lock_screen = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsInformationDisplayedOnLockScreenType) },
                    "localSecurityOptionsInformationShownOnLockScreen" => lambda {|n| @local_security_options_information_shown_on_lock_screen = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsInformationShownOnLockScreenType) },
                    "localSecurityOptionsLogOnMessageText" => lambda {|n| @local_security_options_log_on_message_text = n.get_string_value() },
                    "localSecurityOptionsLogOnMessageTitle" => lambda {|n| @local_security_options_log_on_message_title = n.get_string_value() },
                    "localSecurityOptionsMachineInactivityLimit" => lambda {|n| @local_security_options_machine_inactivity_limit = n.get_number_value() },
                    "localSecurityOptionsMachineInactivityLimitInMinutes" => lambda {|n| @local_security_options_machine_inactivity_limit_in_minutes = n.get_number_value() },
                    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients" => lambda {|n| @local_security_options_minimum_session_security_for_ntlm_ssp_based_clients = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsMinimumSessionSecurity) },
                    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers" => lambda {|n| @local_security_options_minimum_session_security_for_ntlm_ssp_based_servers = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsMinimumSessionSecurity) },
                    "localSecurityOptionsOnlyElevateSignedExecutables" => lambda {|n| @local_security_options_only_elevate_signed_executables = n.get_boolean_value() },
                    "localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares" => lambda {|n| @local_security_options_restrict_anonymous_access_to_named_pipes_and_shares = n.get_boolean_value() },
                    "localSecurityOptionsSmartCardRemovalBehavior" => lambda {|n| @local_security_options_smart_card_removal_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsSmartCardRemovalBehaviorType) },
                    "localSecurityOptionsStandardUserElevationPromptBehavior" => lambda {|n| @local_security_options_standard_user_elevation_prompt_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::LocalSecurityOptionsStandardUserElevationPromptBehaviorType) },
                    "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation" => lambda {|n| @local_security_options_switch_to_secure_desktop_when_prompting_for_elevation = n.get_boolean_value() },
                    "localSecurityOptionsUseAdminApprovalMode" => lambda {|n| @local_security_options_use_admin_approval_mode = n.get_boolean_value() },
                    "localSecurityOptionsUseAdminApprovalModeForAdministrators" => lambda {|n| @local_security_options_use_admin_approval_mode_for_administrators = n.get_boolean_value() },
                    "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations" => lambda {|n| @local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations = n.get_boolean_value() },
                    "smartScreenBlockOverrideForFiles" => lambda {|n| @smart_screen_block_override_for_files = n.get_boolean_value() },
                    "smartScreenEnableInShell" => lambda {|n| @smart_screen_enable_in_shell = n.get_boolean_value() },
                    "userRightsAccessCredentialManagerAsTrustedCaller" => lambda {|n| @user_rights_access_credential_manager_as_trusted_caller = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsActAsPartOfTheOperatingSystem" => lambda {|n| @user_rights_act_as_part_of_the_operating_system = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsAllowAccessFromNetwork" => lambda {|n| @user_rights_allow_access_from_network = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsBackupData" => lambda {|n| @user_rights_backup_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsBlockAccessFromNetwork" => lambda {|n| @user_rights_block_access_from_network = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsChangeSystemTime" => lambda {|n| @user_rights_change_system_time = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsCreateGlobalObjects" => lambda {|n| @user_rights_create_global_objects = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsCreatePageFile" => lambda {|n| @user_rights_create_page_file = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsCreatePermanentSharedObjects" => lambda {|n| @user_rights_create_permanent_shared_objects = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsCreateSymbolicLinks" => lambda {|n| @user_rights_create_symbolic_links = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsCreateToken" => lambda {|n| @user_rights_create_token = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsDebugPrograms" => lambda {|n| @user_rights_debug_programs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsDelegation" => lambda {|n| @user_rights_delegation = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsDenyLocalLogOn" => lambda {|n| @user_rights_deny_local_log_on = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsGenerateSecurityAudits" => lambda {|n| @user_rights_generate_security_audits = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsImpersonateClient" => lambda {|n| @user_rights_impersonate_client = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsIncreaseSchedulingPriority" => lambda {|n| @user_rights_increase_scheduling_priority = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsLoadUnloadDrivers" => lambda {|n| @user_rights_load_unload_drivers = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsLocalLogOn" => lambda {|n| @user_rights_local_log_on = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsLockMemory" => lambda {|n| @user_rights_lock_memory = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsManageAuditingAndSecurityLogs" => lambda {|n| @user_rights_manage_auditing_and_security_logs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsManageVolumes" => lambda {|n| @user_rights_manage_volumes = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsModifyFirmwareEnvironment" => lambda {|n| @user_rights_modify_firmware_environment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsModifyObjectLabels" => lambda {|n| @user_rights_modify_object_labels = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsProfileSingleProcess" => lambda {|n| @user_rights_profile_single_process = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsRemoteDesktopServicesLogOn" => lambda {|n| @user_rights_remote_desktop_services_log_on = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsRemoteShutdown" => lambda {|n| @user_rights_remote_shutdown = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsRestoreData" => lambda {|n| @user_rights_restore_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "userRightsTakeOwnership" => lambda {|n| @user_rights_take_ownership = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementUserRightsSetting.create_from_discriminator_value(pn) }) },
                    "windowsDefenderTamperProtection" => lambda {|n| @windows_defender_tamper_protection = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDefenderTamperProtectionOptions) },
                    "xboxServicesAccessoryManagementServiceStartupMode" => lambda {|n| @xbox_services_accessory_management_service_startup_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ServiceStartType) },
                    "xboxServicesEnableXboxGameSaveTask" => lambda {|n| @xbox_services_enable_xbox_game_save_task = n.get_boolean_value() },
                    "xboxServicesLiveAuthManagerServiceStartupMode" => lambda {|n| @xbox_services_live_auth_manager_service_startup_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ServiceStartType) },
                    "xboxServicesLiveGameSaveServiceStartupMode" => lambda {|n| @xbox_services_live_game_save_service_startup_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ServiceStartType) },
                    "xboxServicesLiveNetworkingServiceStartupMode" => lambda {|n| @xbox_services_live_networking_service_startup_mode = n.get_enum_value(MicrosoftGraphBeta::Models::ServiceStartType) },
                })
            end
            ## 
            ## Gets the lanManagerAuthenticationLevel property value. Possible values for LanManagerAuthenticationLevel
            ## @return a lan_manager_authentication_level
            ## 
            def lan_manager_authentication_level
                return @lan_manager_authentication_level
            end
            ## 
            ## Sets the lanManagerAuthenticationLevel property value. Possible values for LanManagerAuthenticationLevel
            ## @param value Value to set for the lanManagerAuthenticationLevel property.
            ## @return a void
            ## 
            def lan_manager_authentication_level=(value)
                @lan_manager_authentication_level = value
            end
            ## 
            ## Gets the lanManagerWorkstationDisableInsecureGuestLogons property value. If enabled,the SMB client will allow insecure guest logons. If not configured, the SMB client will reject insecure guest logons.
            ## @return a boolean
            ## 
            def lan_manager_workstation_disable_insecure_guest_logons
                return @lan_manager_workstation_disable_insecure_guest_logons
            end
            ## 
            ## Sets the lanManagerWorkstationDisableInsecureGuestLogons property value. If enabled,the SMB client will allow insecure guest logons. If not configured, the SMB client will reject insecure guest logons.
            ## @param value Value to set for the lanManagerWorkstationDisableInsecureGuestLogons property.
            ## @return a void
            ## 
            def lan_manager_workstation_disable_insecure_guest_logons=(value)
                @lan_manager_workstation_disable_insecure_guest_logons = value
            end
            ## 
            ## Gets the localSecurityOptionsAdministratorAccountName property value. Define a different account name to be associated with the security identifier (SID) for the account 'Administrator'.
            ## @return a string
            ## 
            def local_security_options_administrator_account_name
                return @local_security_options_administrator_account_name
            end
            ## 
            ## Sets the localSecurityOptionsAdministratorAccountName property value. Define a different account name to be associated with the security identifier (SID) for the account 'Administrator'.
            ## @param value Value to set for the localSecurityOptionsAdministratorAccountName property.
            ## @return a void
            ## 
            def local_security_options_administrator_account_name=(value)
                @local_security_options_administrator_account_name = value
            end
            ## 
            ## Gets the localSecurityOptionsAdministratorElevationPromptBehavior property value. Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior
            ## @return a local_security_options_administrator_elevation_prompt_behavior_type
            ## 
            def local_security_options_administrator_elevation_prompt_behavior
                return @local_security_options_administrator_elevation_prompt_behavior
            end
            ## 
            ## Sets the localSecurityOptionsAdministratorElevationPromptBehavior property value. Possible values for LocalSecurityOptionsAdministratorElevationPromptBehavior
            ## @param value Value to set for the localSecurityOptionsAdministratorElevationPromptBehavior property.
            ## @return a void
            ## 
            def local_security_options_administrator_elevation_prompt_behavior=(value)
                @local_security_options_administrator_elevation_prompt_behavior = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares property value. This security setting determines whether to allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares.
            ## @return a boolean
            ## 
            def local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares
                return @local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares
            end
            ## 
            ## Sets the localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares property value. This security setting determines whether to allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares.
            ## @param value Value to set for the localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares property.
            ## @return a void
            ## 
            def local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares=(value)
                @local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowPKU2UAuthenticationRequests property value. Block PKU2U authentication requests to this device to use online identities.
            ## @return a boolean
            ## 
            def local_security_options_allow_p_k_u2_u_authentication_requests
                return @local_security_options_allow_p_k_u2_u_authentication_requests
            end
            ## 
            ## Sets the localSecurityOptionsAllowPKU2UAuthenticationRequests property value. Block PKU2U authentication requests to this device to use online identities.
            ## @param value Value to set for the localSecurityOptionsAllowPKU2UAuthenticationRequests property.
            ## @return a void
            ## 
            def local_security_options_allow_p_k_u2_u_authentication_requests=(value)
                @local_security_options_allow_p_k_u2_u_authentication_requests = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager property value. Edit the default Security Descriptor Definition Language string to allow or deny users and groups to make remote calls to the SAM.
            ## @return a string
            ## 
            def local_security_options_allow_remote_calls_to_security_accounts_manager
                return @local_security_options_allow_remote_calls_to_security_accounts_manager
            end
            ## 
            ## Sets the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager property value. Edit the default Security Descriptor Definition Language string to allow or deny users and groups to make remote calls to the SAM.
            ## @param value Value to set for the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager property.
            ## @return a void
            ## 
            def local_security_options_allow_remote_calls_to_security_accounts_manager=(value)
                @local_security_options_allow_remote_calls_to_security_accounts_manager = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool property value. UI helper boolean for LocalSecurityOptionsAllowRemoteCallsToSecurityAccountsManager entity
            ## @return a boolean
            ## 
            def local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool
                return @local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool
            end
            ## 
            ## Sets the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool property value. UI helper boolean for LocalSecurityOptionsAllowRemoteCallsToSecurityAccountsManager entity
            ## @param value Value to set for the localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool property.
            ## @return a void
            ## 
            def local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool=(value)
                @local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn property value. This security setting determines whether a computer can be shut down without having to log on to Windows.
            ## @return a boolean
            ## 
            def local_security_options_allow_system_to_be_shut_down_without_having_to_log_on
                return @local_security_options_allow_system_to_be_shut_down_without_having_to_log_on
            end
            ## 
            ## Sets the localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn property value. This security setting determines whether a computer can be shut down without having to log on to Windows.
            ## @param value Value to set for the localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn property.
            ## @return a void
            ## 
            def local_security_options_allow_system_to_be_shut_down_without_having_to_log_on=(value)
                @local_security_options_allow_system_to_be_shut_down_without_having_to_log_on = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowUIAccessApplicationElevation property value. Allow UIAccess apps to prompt for elevation without using the secure desktop.
            ## @return a boolean
            ## 
            def local_security_options_allow_u_i_access_application_elevation
                return @local_security_options_allow_u_i_access_application_elevation
            end
            ## 
            ## Sets the localSecurityOptionsAllowUIAccessApplicationElevation property value. Allow UIAccess apps to prompt for elevation without using the secure desktop.
            ## @param value Value to set for the localSecurityOptionsAllowUIAccessApplicationElevation property.
            ## @return a void
            ## 
            def local_security_options_allow_u_i_access_application_elevation=(value)
                @local_security_options_allow_u_i_access_application_elevation = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowUIAccessApplicationsForSecureLocations property value. Allow UIAccess apps to prompt for elevation without using the secure desktop.Default is enabled
            ## @return a boolean
            ## 
            def local_security_options_allow_u_i_access_applications_for_secure_locations
                return @local_security_options_allow_u_i_access_applications_for_secure_locations
            end
            ## 
            ## Sets the localSecurityOptionsAllowUIAccessApplicationsForSecureLocations property value. Allow UIAccess apps to prompt for elevation without using the secure desktop.Default is enabled
            ## @param value Value to set for the localSecurityOptionsAllowUIAccessApplicationsForSecureLocations property.
            ## @return a void
            ## 
            def local_security_options_allow_u_i_access_applications_for_secure_locations=(value)
                @local_security_options_allow_u_i_access_applications_for_secure_locations = value
            end
            ## 
            ## Gets the localSecurityOptionsAllowUndockWithoutHavingToLogon property value. Prevent a portable computer from being undocked without having to log in.
            ## @return a boolean
            ## 
            def local_security_options_allow_undock_without_having_to_logon
                return @local_security_options_allow_undock_without_having_to_logon
            end
            ## 
            ## Sets the localSecurityOptionsAllowUndockWithoutHavingToLogon property value. Prevent a portable computer from being undocked without having to log in.
            ## @param value Value to set for the localSecurityOptionsAllowUndockWithoutHavingToLogon property.
            ## @return a void
            ## 
            def local_security_options_allow_undock_without_having_to_logon=(value)
                @local_security_options_allow_undock_without_having_to_logon = value
            end
            ## 
            ## Gets the localSecurityOptionsBlockMicrosoftAccounts property value. Prevent users from adding new Microsoft accounts to this computer.
            ## @return a boolean
            ## 
            def local_security_options_block_microsoft_accounts
                return @local_security_options_block_microsoft_accounts
            end
            ## 
            ## Sets the localSecurityOptionsBlockMicrosoftAccounts property value. Prevent users from adding new Microsoft accounts to this computer.
            ## @param value Value to set for the localSecurityOptionsBlockMicrosoftAccounts property.
            ## @return a void
            ## 
            def local_security_options_block_microsoft_accounts=(value)
                @local_security_options_block_microsoft_accounts = value
            end
            ## 
            ## Gets the localSecurityOptionsBlockRemoteLogonWithBlankPassword property value. Enable Local accounts that are not password protected to log on from locations other than the physical device.Default is enabled
            ## @return a boolean
            ## 
            def local_security_options_block_remote_logon_with_blank_password
                return @local_security_options_block_remote_logon_with_blank_password
            end
            ## 
            ## Sets the localSecurityOptionsBlockRemoteLogonWithBlankPassword property value. Enable Local accounts that are not password protected to log on from locations other than the physical device.Default is enabled
            ## @param value Value to set for the localSecurityOptionsBlockRemoteLogonWithBlankPassword property.
            ## @return a void
            ## 
            def local_security_options_block_remote_logon_with_blank_password=(value)
                @local_security_options_block_remote_logon_with_blank_password = value
            end
            ## 
            ## Gets the localSecurityOptionsBlockRemoteOpticalDriveAccess property value. Enabling this settings allows only interactively logged on user to access CD-ROM media.
            ## @return a boolean
            ## 
            def local_security_options_block_remote_optical_drive_access
                return @local_security_options_block_remote_optical_drive_access
            end
            ## 
            ## Sets the localSecurityOptionsBlockRemoteOpticalDriveAccess property value. Enabling this settings allows only interactively logged on user to access CD-ROM media.
            ## @param value Value to set for the localSecurityOptionsBlockRemoteOpticalDriveAccess property.
            ## @return a void
            ## 
            def local_security_options_block_remote_optical_drive_access=(value)
                @local_security_options_block_remote_optical_drive_access = value
            end
            ## 
            ## Gets the localSecurityOptionsBlockUsersInstallingPrinterDrivers property value. Restrict installing printer drivers as part of connecting to a shared printer to admins only.
            ## @return a boolean
            ## 
            def local_security_options_block_users_installing_printer_drivers
                return @local_security_options_block_users_installing_printer_drivers
            end
            ## 
            ## Sets the localSecurityOptionsBlockUsersInstallingPrinterDrivers property value. Restrict installing printer drivers as part of connecting to a shared printer to admins only.
            ## @param value Value to set for the localSecurityOptionsBlockUsersInstallingPrinterDrivers property.
            ## @return a void
            ## 
            def local_security_options_block_users_installing_printer_drivers=(value)
                @local_security_options_block_users_installing_printer_drivers = value
            end
            ## 
            ## Gets the localSecurityOptionsClearVirtualMemoryPageFile property value. This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.
            ## @return a boolean
            ## 
            def local_security_options_clear_virtual_memory_page_file
                return @local_security_options_clear_virtual_memory_page_file
            end
            ## 
            ## Sets the localSecurityOptionsClearVirtualMemoryPageFile property value. This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.
            ## @param value Value to set for the localSecurityOptionsClearVirtualMemoryPageFile property.
            ## @return a void
            ## 
            def local_security_options_clear_virtual_memory_page_file=(value)
                @local_security_options_clear_virtual_memory_page_file = value
            end
            ## 
            ## Gets the localSecurityOptionsClientDigitallySignCommunicationsAlways property value. This security setting determines whether packet signing is required by the SMB client component.
            ## @return a boolean
            ## 
            def local_security_options_client_digitally_sign_communications_always
                return @local_security_options_client_digitally_sign_communications_always
            end
            ## 
            ## Sets the localSecurityOptionsClientDigitallySignCommunicationsAlways property value. This security setting determines whether packet signing is required by the SMB client component.
            ## @param value Value to set for the localSecurityOptionsClientDigitallySignCommunicationsAlways property.
            ## @return a void
            ## 
            def local_security_options_client_digitally_sign_communications_always=(value)
                @local_security_options_client_digitally_sign_communications_always = value
            end
            ## 
            ## Gets the localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers property value. If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that do not support password encryption during authentication.
            ## @return a boolean
            ## 
            def local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers
                return @local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers
            end
            ## 
            ## Sets the localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers property value. If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that do not support password encryption during authentication.
            ## @param value Value to set for the localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers property.
            ## @return a void
            ## 
            def local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers=(value)
                @local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers = value
            end
            ## 
            ## Gets the localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation property value. App installations requiring elevated privileges will prompt for admin credentials.Default is enabled
            ## @return a boolean
            ## 
            def local_security_options_detect_application_installations_and_prompt_for_elevation
                return @local_security_options_detect_application_installations_and_prompt_for_elevation
            end
            ## 
            ## Sets the localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation property value. App installations requiring elevated privileges will prompt for admin credentials.Default is enabled
            ## @param value Value to set for the localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation property.
            ## @return a void
            ## 
            def local_security_options_detect_application_installations_and_prompt_for_elevation=(value)
                @local_security_options_detect_application_installations_and_prompt_for_elevation = value
            end
            ## 
            ## Gets the localSecurityOptionsDisableAdministratorAccount property value. Determines whether the Local Administrator account is enabled or disabled.
            ## @return a boolean
            ## 
            def local_security_options_disable_administrator_account
                return @local_security_options_disable_administrator_account
            end
            ## 
            ## Sets the localSecurityOptionsDisableAdministratorAccount property value. Determines whether the Local Administrator account is enabled or disabled.
            ## @param value Value to set for the localSecurityOptionsDisableAdministratorAccount property.
            ## @return a void
            ## 
            def local_security_options_disable_administrator_account=(value)
                @local_security_options_disable_administrator_account = value
            end
            ## 
            ## Gets the localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees property value. This security setting determines whether the SMB client attempts to negotiate SMB packet signing.
            ## @return a boolean
            ## 
            def local_security_options_disable_client_digitally_sign_communications_if_server_agrees
                return @local_security_options_disable_client_digitally_sign_communications_if_server_agrees
            end
            ## 
            ## Sets the localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees property value. This security setting determines whether the SMB client attempts to negotiate SMB packet signing.
            ## @param value Value to set for the localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees property.
            ## @return a void
            ## 
            def local_security_options_disable_client_digitally_sign_communications_if_server_agrees=(value)
                @local_security_options_disable_client_digitally_sign_communications_if_server_agrees = value
            end
            ## 
            ## Gets the localSecurityOptionsDisableGuestAccount property value. Determines if the Guest account is enabled or disabled.
            ## @return a boolean
            ## 
            def local_security_options_disable_guest_account
                return @local_security_options_disable_guest_account
            end
            ## 
            ## Sets the localSecurityOptionsDisableGuestAccount property value. Determines if the Guest account is enabled or disabled.
            ## @param value Value to set for the localSecurityOptionsDisableGuestAccount property.
            ## @return a void
            ## 
            def local_security_options_disable_guest_account=(value)
                @local_security_options_disable_guest_account = value
            end
            ## 
            ## Gets the localSecurityOptionsDisableServerDigitallySignCommunicationsAlways property value. This security setting determines whether packet signing is required by the SMB server component.
            ## @return a boolean
            ## 
            def local_security_options_disable_server_digitally_sign_communications_always
                return @local_security_options_disable_server_digitally_sign_communications_always
            end
            ## 
            ## Sets the localSecurityOptionsDisableServerDigitallySignCommunicationsAlways property value. This security setting determines whether packet signing is required by the SMB server component.
            ## @param value Value to set for the localSecurityOptionsDisableServerDigitallySignCommunicationsAlways property.
            ## @return a void
            ## 
            def local_security_options_disable_server_digitally_sign_communications_always=(value)
                @local_security_options_disable_server_digitally_sign_communications_always = value
            end
            ## 
            ## Gets the localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees property value. This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.
            ## @return a boolean
            ## 
            def local_security_options_disable_server_digitally_sign_communications_if_client_agrees
                return @local_security_options_disable_server_digitally_sign_communications_if_client_agrees
            end
            ## 
            ## Sets the localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees property value. This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.
            ## @param value Value to set for the localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees property.
            ## @return a void
            ## 
            def local_security_options_disable_server_digitally_sign_communications_if_client_agrees=(value)
                @local_security_options_disable_server_digitally_sign_communications_if_client_agrees = value
            end
            ## 
            ## Gets the localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts property value. This security setting determines what additional permissions will be granted for anonymous connections to the computer.
            ## @return a boolean
            ## 
            def local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts
                return @local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts
            end
            ## 
            ## Sets the localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts property value. This security setting determines what additional permissions will be granted for anonymous connections to the computer.
            ## @param value Value to set for the localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts property.
            ## @return a void
            ## 
            def local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts=(value)
                @local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts = value
            end
            ## 
            ## Gets the localSecurityOptionsDoNotRequireCtrlAltDel property value. Require CTRL+ALT+DEL to be pressed before a user can log on.
            ## @return a boolean
            ## 
            def local_security_options_do_not_require_ctrl_alt_del
                return @local_security_options_do_not_require_ctrl_alt_del
            end
            ## 
            ## Sets the localSecurityOptionsDoNotRequireCtrlAltDel property value. Require CTRL+ALT+DEL to be pressed before a user can log on.
            ## @param value Value to set for the localSecurityOptionsDoNotRequireCtrlAltDel property.
            ## @return a void
            ## 
            def local_security_options_do_not_require_ctrl_alt_del=(value)
                @local_security_options_do_not_require_ctrl_alt_del = value
            end
            ## 
            ## Gets the localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange property value. This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. It’s not stored by default.
            ## @return a boolean
            ## 
            def local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change
                return @local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change
            end
            ## 
            ## Sets the localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange property value. This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. It’s not stored by default.
            ## @param value Value to set for the localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange property.
            ## @return a void
            ## 
            def local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change=(value)
                @local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change = value
            end
            ## 
            ## Gets the localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser property value. Possible values for LocalSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser
            ## @return a local_security_options_format_and_eject_of_removable_media_allowed_user_type
            ## 
            def local_security_options_format_and_eject_of_removable_media_allowed_user
                return @local_security_options_format_and_eject_of_removable_media_allowed_user
            end
            ## 
            ## Sets the localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser property value. Possible values for LocalSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser
            ## @param value Value to set for the localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser property.
            ## @return a void
            ## 
            def local_security_options_format_and_eject_of_removable_media_allowed_user=(value)
                @local_security_options_format_and_eject_of_removable_media_allowed_user = value
            end
            ## 
            ## Gets the localSecurityOptionsGuestAccountName property value. Define a different account name to be associated with the security identifier (SID) for the account 'Guest'.
            ## @return a string
            ## 
            def local_security_options_guest_account_name
                return @local_security_options_guest_account_name
            end
            ## 
            ## Sets the localSecurityOptionsGuestAccountName property value. Define a different account name to be associated with the security identifier (SID) for the account 'Guest'.
            ## @param value Value to set for the localSecurityOptionsGuestAccountName property.
            ## @return a void
            ## 
            def local_security_options_guest_account_name=(value)
                @local_security_options_guest_account_name = value
            end
            ## 
            ## Gets the localSecurityOptionsHideLastSignedInUser property value. Do not display the username of the last person who signed in on this device.
            ## @return a boolean
            ## 
            def local_security_options_hide_last_signed_in_user
                return @local_security_options_hide_last_signed_in_user
            end
            ## 
            ## Sets the localSecurityOptionsHideLastSignedInUser property value. Do not display the username of the last person who signed in on this device.
            ## @param value Value to set for the localSecurityOptionsHideLastSignedInUser property.
            ## @return a void
            ## 
            def local_security_options_hide_last_signed_in_user=(value)
                @local_security_options_hide_last_signed_in_user = value
            end
            ## 
            ## Gets the localSecurityOptionsHideUsernameAtSignIn property value. Do not display the username of the person signing in to this device after credentials are entered and before the device’s desktop is shown.
            ## @return a boolean
            ## 
            def local_security_options_hide_username_at_sign_in
                return @local_security_options_hide_username_at_sign_in
            end
            ## 
            ## Sets the localSecurityOptionsHideUsernameAtSignIn property value. Do not display the username of the person signing in to this device after credentials are entered and before the device’s desktop is shown.
            ## @param value Value to set for the localSecurityOptionsHideUsernameAtSignIn property.
            ## @return a void
            ## 
            def local_security_options_hide_username_at_sign_in=(value)
                @local_security_options_hide_username_at_sign_in = value
            end
            ## 
            ## Gets the localSecurityOptionsInformationDisplayedOnLockScreen property value. Possible values for LocalSecurityOptionsInformationDisplayedOnLockScreen
            ## @return a local_security_options_information_displayed_on_lock_screen_type
            ## 
            def local_security_options_information_displayed_on_lock_screen
                return @local_security_options_information_displayed_on_lock_screen
            end
            ## 
            ## Sets the localSecurityOptionsInformationDisplayedOnLockScreen property value. Possible values for LocalSecurityOptionsInformationDisplayedOnLockScreen
            ## @param value Value to set for the localSecurityOptionsInformationDisplayedOnLockScreen property.
            ## @return a void
            ## 
            def local_security_options_information_displayed_on_lock_screen=(value)
                @local_security_options_information_displayed_on_lock_screen = value
            end
            ## 
            ## Gets the localSecurityOptionsInformationShownOnLockScreen property value. Possible values for LocalSecurityOptionsInformationShownOnLockScreenType
            ## @return a local_security_options_information_shown_on_lock_screen_type
            ## 
            def local_security_options_information_shown_on_lock_screen
                return @local_security_options_information_shown_on_lock_screen
            end
            ## 
            ## Sets the localSecurityOptionsInformationShownOnLockScreen property value. Possible values for LocalSecurityOptionsInformationShownOnLockScreenType
            ## @param value Value to set for the localSecurityOptionsInformationShownOnLockScreen property.
            ## @return a void
            ## 
            def local_security_options_information_shown_on_lock_screen=(value)
                @local_security_options_information_shown_on_lock_screen = value
            end
            ## 
            ## Gets the localSecurityOptionsLogOnMessageText property value. Set message text for users attempting to log in.
            ## @return a string
            ## 
            def local_security_options_log_on_message_text
                return @local_security_options_log_on_message_text
            end
            ## 
            ## Sets the localSecurityOptionsLogOnMessageText property value. Set message text for users attempting to log in.
            ## @param value Value to set for the localSecurityOptionsLogOnMessageText property.
            ## @return a void
            ## 
            def local_security_options_log_on_message_text=(value)
                @local_security_options_log_on_message_text = value
            end
            ## 
            ## Gets the localSecurityOptionsLogOnMessageTitle property value. Set message title for users attempting to log in.
            ## @return a string
            ## 
            def local_security_options_log_on_message_title
                return @local_security_options_log_on_message_title
            end
            ## 
            ## Sets the localSecurityOptionsLogOnMessageTitle property value. Set message title for users attempting to log in.
            ## @param value Value to set for the localSecurityOptionsLogOnMessageTitle property.
            ## @return a void
            ## 
            def local_security_options_log_on_message_title=(value)
                @local_security_options_log_on_message_title = value
            end
            ## 
            ## Gets the localSecurityOptionsMachineInactivityLimit property value. Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            ## @return a integer
            ## 
            def local_security_options_machine_inactivity_limit
                return @local_security_options_machine_inactivity_limit
            end
            ## 
            ## Sets the localSecurityOptionsMachineInactivityLimit property value. Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            ## @param value Value to set for the localSecurityOptionsMachineInactivityLimit property.
            ## @return a void
            ## 
            def local_security_options_machine_inactivity_limit=(value)
                @local_security_options_machine_inactivity_limit = value
            end
            ## 
            ## Gets the localSecurityOptionsMachineInactivityLimitInMinutes property value. Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            ## @return a integer
            ## 
            def local_security_options_machine_inactivity_limit_in_minutes
                return @local_security_options_machine_inactivity_limit_in_minutes
            end
            ## 
            ## Sets the localSecurityOptionsMachineInactivityLimitInMinutes property value. Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999
            ## @param value Value to set for the localSecurityOptionsMachineInactivityLimitInMinutes property.
            ## @return a void
            ## 
            def local_security_options_machine_inactivity_limit_in_minutes=(value)
                @local_security_options_machine_inactivity_limit_in_minutes = value
            end
            ## 
            ## Gets the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients property value. Possible values for LocalSecurityOptionsMinimumSessionSecurity
            ## @return a local_security_options_minimum_session_security
            ## 
            def local_security_options_minimum_session_security_for_ntlm_ssp_based_clients
                return @local_security_options_minimum_session_security_for_ntlm_ssp_based_clients
            end
            ## 
            ## Sets the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients property value. Possible values for LocalSecurityOptionsMinimumSessionSecurity
            ## @param value Value to set for the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients property.
            ## @return a void
            ## 
            def local_security_options_minimum_session_security_for_ntlm_ssp_based_clients=(value)
                @local_security_options_minimum_session_security_for_ntlm_ssp_based_clients = value
            end
            ## 
            ## Gets the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers property value. Possible values for LocalSecurityOptionsMinimumSessionSecurity
            ## @return a local_security_options_minimum_session_security
            ## 
            def local_security_options_minimum_session_security_for_ntlm_ssp_based_servers
                return @local_security_options_minimum_session_security_for_ntlm_ssp_based_servers
            end
            ## 
            ## Sets the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers property value. Possible values for LocalSecurityOptionsMinimumSessionSecurity
            ## @param value Value to set for the localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers property.
            ## @return a void
            ## 
            def local_security_options_minimum_session_security_for_ntlm_ssp_based_servers=(value)
                @local_security_options_minimum_session_security_for_ntlm_ssp_based_servers = value
            end
            ## 
            ## Gets the localSecurityOptionsOnlyElevateSignedExecutables property value. Enforce PKI certification path validation for a given executable file before it is permitted to run.
            ## @return a boolean
            ## 
            def local_security_options_only_elevate_signed_executables
                return @local_security_options_only_elevate_signed_executables
            end
            ## 
            ## Sets the localSecurityOptionsOnlyElevateSignedExecutables property value. Enforce PKI certification path validation for a given executable file before it is permitted to run.
            ## @param value Value to set for the localSecurityOptionsOnlyElevateSignedExecutables property.
            ## @return a void
            ## 
            def local_security_options_only_elevate_signed_executables=(value)
                @local_security_options_only_elevate_signed_executables = value
            end
            ## 
            ## Gets the localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares property value. By default, this security setting restricts anonymous access to shares and pipes to the settings for named pipes that can be accessed anonymously and Shares that can be accessed anonymously
            ## @return a boolean
            ## 
            def local_security_options_restrict_anonymous_access_to_named_pipes_and_shares
                return @local_security_options_restrict_anonymous_access_to_named_pipes_and_shares
            end
            ## 
            ## Sets the localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares property value. By default, this security setting restricts anonymous access to shares and pipes to the settings for named pipes that can be accessed anonymously and Shares that can be accessed anonymously
            ## @param value Value to set for the localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares property.
            ## @return a void
            ## 
            def local_security_options_restrict_anonymous_access_to_named_pipes_and_shares=(value)
                @local_security_options_restrict_anonymous_access_to_named_pipes_and_shares = value
            end
            ## 
            ## Gets the localSecurityOptionsSmartCardRemovalBehavior property value. Possible values for LocalSecurityOptionsSmartCardRemovalBehaviorType
            ## @return a local_security_options_smart_card_removal_behavior_type
            ## 
            def local_security_options_smart_card_removal_behavior
                return @local_security_options_smart_card_removal_behavior
            end
            ## 
            ## Sets the localSecurityOptionsSmartCardRemovalBehavior property value. Possible values for LocalSecurityOptionsSmartCardRemovalBehaviorType
            ## @param value Value to set for the localSecurityOptionsSmartCardRemovalBehavior property.
            ## @return a void
            ## 
            def local_security_options_smart_card_removal_behavior=(value)
                @local_security_options_smart_card_removal_behavior = value
            end
            ## 
            ## Gets the localSecurityOptionsStandardUserElevationPromptBehavior property value. Possible values for LocalSecurityOptionsStandardUserElevationPromptBehavior
            ## @return a local_security_options_standard_user_elevation_prompt_behavior_type
            ## 
            def local_security_options_standard_user_elevation_prompt_behavior
                return @local_security_options_standard_user_elevation_prompt_behavior
            end
            ## 
            ## Sets the localSecurityOptionsStandardUserElevationPromptBehavior property value. Possible values for LocalSecurityOptionsStandardUserElevationPromptBehavior
            ## @param value Value to set for the localSecurityOptionsStandardUserElevationPromptBehavior property.
            ## @return a void
            ## 
            def local_security_options_standard_user_elevation_prompt_behavior=(value)
                @local_security_options_standard_user_elevation_prompt_behavior = value
            end
            ## 
            ## Gets the localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation property value. Enable all elevation requests to go to the interactive user's desktop rather than the secure desktop. Prompt behavior policy settings for admins and standard users are used.
            ## @return a boolean
            ## 
            def local_security_options_switch_to_secure_desktop_when_prompting_for_elevation
                return @local_security_options_switch_to_secure_desktop_when_prompting_for_elevation
            end
            ## 
            ## Sets the localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation property value. Enable all elevation requests to go to the interactive user's desktop rather than the secure desktop. Prompt behavior policy settings for admins and standard users are used.
            ## @param value Value to set for the localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation property.
            ## @return a void
            ## 
            def local_security_options_switch_to_secure_desktop_when_prompting_for_elevation=(value)
                @local_security_options_switch_to_secure_desktop_when_prompting_for_elevation = value
            end
            ## 
            ## Gets the localSecurityOptionsUseAdminApprovalMode property value. Defines whether the built-in admin account uses Admin Approval Mode or runs all apps with full admin privileges.Default is enabled
            ## @return a boolean
            ## 
            def local_security_options_use_admin_approval_mode
                return @local_security_options_use_admin_approval_mode
            end
            ## 
            ## Sets the localSecurityOptionsUseAdminApprovalMode property value. Defines whether the built-in admin account uses Admin Approval Mode or runs all apps with full admin privileges.Default is enabled
            ## @param value Value to set for the localSecurityOptionsUseAdminApprovalMode property.
            ## @return a void
            ## 
            def local_security_options_use_admin_approval_mode=(value)
                @local_security_options_use_admin_approval_mode = value
            end
            ## 
            ## Gets the localSecurityOptionsUseAdminApprovalModeForAdministrators property value. Define whether Admin Approval Mode and all UAC policy settings are enabled, default is enabled
            ## @return a boolean
            ## 
            def local_security_options_use_admin_approval_mode_for_administrators
                return @local_security_options_use_admin_approval_mode_for_administrators
            end
            ## 
            ## Sets the localSecurityOptionsUseAdminApprovalModeForAdministrators property value. Define whether Admin Approval Mode and all UAC policy settings are enabled, default is enabled
            ## @param value Value to set for the localSecurityOptionsUseAdminApprovalModeForAdministrators property.
            ## @return a void
            ## 
            def local_security_options_use_admin_approval_mode_for_administrators=(value)
                @local_security_options_use_admin_approval_mode_for_administrators = value
            end
            ## 
            ## Gets the localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations property value. Virtualize file and registry write failures to per user locations
            ## @return a boolean
            ## 
            def local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations
                return @local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations
            end
            ## 
            ## Sets the localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations property value. Virtualize file and registry write failures to per user locations
            ## @param value Value to set for the localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations property.
            ## @return a void
            ## 
            def local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations=(value)
                @local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("appLockerApplicationControl", @app_locker_application_control)
                writer.write_boolean_value("applicationGuardAllowCameraMicrophoneRedirection", @application_guard_allow_camera_microphone_redirection)
                writer.write_boolean_value("applicationGuardAllowFileSaveOnHost", @application_guard_allow_file_save_on_host)
                writer.write_boolean_value("applicationGuardAllowPersistence", @application_guard_allow_persistence)
                writer.write_boolean_value("applicationGuardAllowPrintToLocalPrinters", @application_guard_allow_print_to_local_printers)
                writer.write_boolean_value("applicationGuardAllowPrintToNetworkPrinters", @application_guard_allow_print_to_network_printers)
                writer.write_boolean_value("applicationGuardAllowPrintToPDF", @application_guard_allow_print_to_p_d_f)
                writer.write_boolean_value("applicationGuardAllowPrintToXPS", @application_guard_allow_print_to_x_p_s)
                writer.write_boolean_value("applicationGuardAllowVirtualGPU", @application_guard_allow_virtual_g_p_u)
                writer.write_enum_value("applicationGuardBlockClipboardSharing", @application_guard_block_clipboard_sharing)
                writer.write_enum_value("applicationGuardBlockFileTransfer", @application_guard_block_file_transfer)
                writer.write_boolean_value("applicationGuardBlockNonEnterpriseContent", @application_guard_block_non_enterprise_content)
                writer.write_collection_of_primitive_values("applicationGuardCertificateThumbprints", @application_guard_certificate_thumbprints)
                writer.write_boolean_value("applicationGuardEnabled", @application_guard_enabled)
                writer.write_enum_value("applicationGuardEnabledOptions", @application_guard_enabled_options)
                writer.write_boolean_value("applicationGuardForceAuditing", @application_guard_force_auditing)
                writer.write_boolean_value("bitLockerAllowStandardUserEncryption", @bit_locker_allow_standard_user_encryption)
                writer.write_boolean_value("bitLockerDisableWarningForOtherDiskEncryption", @bit_locker_disable_warning_for_other_disk_encryption)
                writer.write_boolean_value("bitLockerEnableStorageCardEncryptionOnMobile", @bit_locker_enable_storage_card_encryption_on_mobile)
                writer.write_boolean_value("bitLockerEncryptDevice", @bit_locker_encrypt_device)
                writer.write_object_value("bitLockerFixedDrivePolicy", @bit_locker_fixed_drive_policy)
                writer.write_enum_value("bitLockerRecoveryPasswordRotation", @bit_locker_recovery_password_rotation)
                writer.write_object_value("bitLockerRemovableDrivePolicy", @bit_locker_removable_drive_policy)
                writer.write_object_value("bitLockerSystemDrivePolicy", @bit_locker_system_drive_policy)
                writer.write_collection_of_primitive_values("defenderAdditionalGuardedFolders", @defender_additional_guarded_folders)
                writer.write_enum_value("defenderAdobeReaderLaunchChildProcess", @defender_adobe_reader_launch_child_process)
                writer.write_enum_value("defenderAdvancedRansomewareProtectionType", @defender_advanced_ransomeware_protection_type)
                writer.write_boolean_value("defenderAllowBehaviorMonitoring", @defender_allow_behavior_monitoring)
                writer.write_boolean_value("defenderAllowCloudProtection", @defender_allow_cloud_protection)
                writer.write_boolean_value("defenderAllowEndUserAccess", @defender_allow_end_user_access)
                writer.write_boolean_value("defenderAllowIntrusionPreventionSystem", @defender_allow_intrusion_prevention_system)
                writer.write_boolean_value("defenderAllowOnAccessProtection", @defender_allow_on_access_protection)
                writer.write_boolean_value("defenderAllowRealTimeMonitoring", @defender_allow_real_time_monitoring)
                writer.write_boolean_value("defenderAllowScanArchiveFiles", @defender_allow_scan_archive_files)
                writer.write_boolean_value("defenderAllowScanDownloads", @defender_allow_scan_downloads)
                writer.write_boolean_value("defenderAllowScanNetworkFiles", @defender_allow_scan_network_files)
                writer.write_boolean_value("defenderAllowScanRemovableDrivesDuringFullScan", @defender_allow_scan_removable_drives_during_full_scan)
                writer.write_boolean_value("defenderAllowScanScriptsLoadedInInternetExplorer", @defender_allow_scan_scripts_loaded_in_internet_explorer)
                writer.write_collection_of_primitive_values("defenderAttackSurfaceReductionExcludedPaths", @defender_attack_surface_reduction_excluded_paths)
                writer.write_boolean_value("defenderBlockEndUserAccess", @defender_block_end_user_access)
                writer.write_enum_value("defenderBlockPersistenceThroughWmiType", @defender_block_persistence_through_wmi_type)
                writer.write_boolean_value("defenderCheckForSignaturesBeforeRunningScan", @defender_check_for_signatures_before_running_scan)
                writer.write_enum_value("defenderCloudBlockLevel", @defender_cloud_block_level)
                writer.write_number_value("defenderCloudExtendedTimeoutInSeconds", @defender_cloud_extended_timeout_in_seconds)
                writer.write_number_value("defenderDaysBeforeDeletingQuarantinedMalware", @defender_days_before_deleting_quarantined_malware)
                writer.write_object_value("defenderDetectedMalwareActions", @defender_detected_malware_actions)
                writer.write_boolean_value("defenderDisableBehaviorMonitoring", @defender_disable_behavior_monitoring)
                writer.write_boolean_value("defenderDisableCatchupFullScan", @defender_disable_catchup_full_scan)
                writer.write_boolean_value("defenderDisableCatchupQuickScan", @defender_disable_catchup_quick_scan)
                writer.write_boolean_value("defenderDisableCloudProtection", @defender_disable_cloud_protection)
                writer.write_boolean_value("defenderDisableIntrusionPreventionSystem", @defender_disable_intrusion_prevention_system)
                writer.write_boolean_value("defenderDisableOnAccessProtection", @defender_disable_on_access_protection)
                writer.write_boolean_value("defenderDisableRealTimeMonitoring", @defender_disable_real_time_monitoring)
                writer.write_boolean_value("defenderDisableScanArchiveFiles", @defender_disable_scan_archive_files)
                writer.write_boolean_value("defenderDisableScanDownloads", @defender_disable_scan_downloads)
                writer.write_boolean_value("defenderDisableScanNetworkFiles", @defender_disable_scan_network_files)
                writer.write_boolean_value("defenderDisableScanRemovableDrivesDuringFullScan", @defender_disable_scan_removable_drives_during_full_scan)
                writer.write_boolean_value("defenderDisableScanScriptsLoadedInInternetExplorer", @defender_disable_scan_scripts_loaded_in_internet_explorer)
                writer.write_enum_value("defenderEmailContentExecution", @defender_email_content_execution)
                writer.write_enum_value("defenderEmailContentExecutionType", @defender_email_content_execution_type)
                writer.write_boolean_value("defenderEnableLowCpuPriority", @defender_enable_low_cpu_priority)
                writer.write_boolean_value("defenderEnableScanIncomingMail", @defender_enable_scan_incoming_mail)
                writer.write_boolean_value("defenderEnableScanMappedNetworkDrivesDuringFullScan", @defender_enable_scan_mapped_network_drives_during_full_scan)
                writer.write_object_value("defenderExploitProtectionXml", @defender_exploit_protection_xml)
                writer.write_string_value("defenderExploitProtectionXmlFileName", @defender_exploit_protection_xml_file_name)
                writer.write_collection_of_primitive_values("defenderFileExtensionsToExclude", @defender_file_extensions_to_exclude)
                writer.write_collection_of_primitive_values("defenderFilesAndFoldersToExclude", @defender_files_and_folders_to_exclude)
                writer.write_enum_value("defenderGuardMyFoldersType", @defender_guard_my_folders_type)
                writer.write_collection_of_primitive_values("defenderGuardedFoldersAllowedAppPaths", @defender_guarded_folders_allowed_app_paths)
                writer.write_enum_value("defenderNetworkProtectionType", @defender_network_protection_type)
                writer.write_enum_value("defenderOfficeAppsExecutableContentCreationOrLaunch", @defender_office_apps_executable_content_creation_or_launch)
                writer.write_enum_value("defenderOfficeAppsExecutableContentCreationOrLaunchType", @defender_office_apps_executable_content_creation_or_launch_type)
                writer.write_enum_value("defenderOfficeAppsLaunchChildProcess", @defender_office_apps_launch_child_process)
                writer.write_enum_value("defenderOfficeAppsLaunchChildProcessType", @defender_office_apps_launch_child_process_type)
                writer.write_enum_value("defenderOfficeAppsOtherProcessInjection", @defender_office_apps_other_process_injection)
                writer.write_enum_value("defenderOfficeAppsOtherProcessInjectionType", @defender_office_apps_other_process_injection_type)
                writer.write_enum_value("defenderOfficeCommunicationAppsLaunchChildProcess", @defender_office_communication_apps_launch_child_process)
                writer.write_enum_value("defenderOfficeMacroCodeAllowWin32Imports", @defender_office_macro_code_allow_win32_imports)
                writer.write_enum_value("defenderOfficeMacroCodeAllowWin32ImportsType", @defender_office_macro_code_allow_win32_imports_type)
                writer.write_enum_value("defenderPotentiallyUnwantedAppAction", @defender_potentially_unwanted_app_action)
                writer.write_enum_value("defenderPreventCredentialStealingType", @defender_prevent_credential_stealing_type)
                writer.write_enum_value("defenderProcessCreation", @defender_process_creation)
                writer.write_enum_value("defenderProcessCreationType", @defender_process_creation_type)
                writer.write_collection_of_primitive_values("defenderProcessesToExclude", @defender_processes_to_exclude)
                writer.write_enum_value("defenderScanDirection", @defender_scan_direction)
                writer.write_number_value("defenderScanMaxCpuPercentage", @defender_scan_max_cpu_percentage)
                writer.write_enum_value("defenderScanType", @defender_scan_type)
                writer.write_time_value("defenderScheduledQuickScanTime", @defender_scheduled_quick_scan_time)
                writer.write_enum_value("defenderScheduledScanDay", @defender_scheduled_scan_day)
                writer.write_time_value("defenderScheduledScanTime", @defender_scheduled_scan_time)
                writer.write_enum_value("defenderScriptDownloadedPayloadExecution", @defender_script_downloaded_payload_execution)
                writer.write_enum_value("defenderScriptDownloadedPayloadExecutionType", @defender_script_downloaded_payload_execution_type)
                writer.write_enum_value("defenderScriptObfuscatedMacroCode", @defender_script_obfuscated_macro_code)
                writer.write_enum_value("defenderScriptObfuscatedMacroCodeType", @defender_script_obfuscated_macro_code_type)
                writer.write_boolean_value("defenderSecurityCenterBlockExploitProtectionOverride", @defender_security_center_block_exploit_protection_override)
                writer.write_boolean_value("defenderSecurityCenterDisableAccountUI", @defender_security_center_disable_account_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableAppBrowserUI", @defender_security_center_disable_app_browser_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableClearTpmUI", @defender_security_center_disable_clear_tpm_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableFamilyUI", @defender_security_center_disable_family_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableHardwareUI", @defender_security_center_disable_hardware_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableHealthUI", @defender_security_center_disable_health_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableNetworkUI", @defender_security_center_disable_network_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableNotificationAreaUI", @defender_security_center_disable_notification_area_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableRansomwareUI", @defender_security_center_disable_ransomware_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableSecureBootUI", @defender_security_center_disable_secure_boot_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableTroubleshootingUI", @defender_security_center_disable_troubleshooting_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableVirusUI", @defender_security_center_disable_virus_u_i)
                writer.write_boolean_value("defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI", @defender_security_center_disable_vulnerable_tpm_firmware_update_u_i)
                writer.write_string_value("defenderSecurityCenterHelpEmail", @defender_security_center_help_email)
                writer.write_string_value("defenderSecurityCenterHelpPhone", @defender_security_center_help_phone)
                writer.write_string_value("defenderSecurityCenterHelpURL", @defender_security_center_help_u_r_l)
                writer.write_enum_value("defenderSecurityCenterITContactDisplay", @defender_security_center_i_t_contact_display)
                writer.write_enum_value("defenderSecurityCenterNotificationsFromApp", @defender_security_center_notifications_from_app)
                writer.write_string_value("defenderSecurityCenterOrganizationDisplayName", @defender_security_center_organization_display_name)
                writer.write_number_value("defenderSignatureUpdateIntervalInHours", @defender_signature_update_interval_in_hours)
                writer.write_enum_value("defenderSubmitSamplesConsentType", @defender_submit_samples_consent_type)
                writer.write_enum_value("defenderUntrustedExecutable", @defender_untrusted_executable)
                writer.write_enum_value("defenderUntrustedExecutableType", @defender_untrusted_executable_type)
                writer.write_enum_value("defenderUntrustedUSBProcess", @defender_untrusted_u_s_b_process)
                writer.write_enum_value("defenderUntrustedUSBProcessType", @defender_untrusted_u_s_b_process_type)
                writer.write_boolean_value("deviceGuardEnableSecureBootWithDMA", @device_guard_enable_secure_boot_with_d_m_a)
                writer.write_boolean_value("deviceGuardEnableVirtualizationBasedSecurity", @device_guard_enable_virtualization_based_security)
                writer.write_enum_value("deviceGuardLaunchSystemGuard", @device_guard_launch_system_guard)
                writer.write_enum_value("deviceGuardLocalSystemAuthorityCredentialGuardSettings", @device_guard_local_system_authority_credential_guard_settings)
                writer.write_enum_value("deviceGuardSecureBootWithDMA", @device_guard_secure_boot_with_d_m_a)
                writer.write_enum_value("dmaGuardDeviceEnumerationPolicy", @dma_guard_device_enumeration_policy)
                writer.write_boolean_value("firewallBlockStatefulFTP", @firewall_block_stateful_f_t_p)
                writer.write_enum_value("firewallCertificateRevocationListCheckMethod", @firewall_certificate_revocation_list_check_method)
                writer.write_boolean_value("firewallIPSecExemptionsAllowDHCP", @firewall_i_p_sec_exemptions_allow_d_h_c_p)
                writer.write_boolean_value("firewallIPSecExemptionsAllowICMP", @firewall_i_p_sec_exemptions_allow_i_c_m_p)
                writer.write_boolean_value("firewallIPSecExemptionsAllowNeighborDiscovery", @firewall_i_p_sec_exemptions_allow_neighbor_discovery)
                writer.write_boolean_value("firewallIPSecExemptionsAllowRouterDiscovery", @firewall_i_p_sec_exemptions_allow_router_discovery)
                writer.write_boolean_value("firewallIPSecExemptionsNone", @firewall_i_p_sec_exemptions_none)
                writer.write_number_value("firewallIdleTimeoutForSecurityAssociationInSeconds", @firewall_idle_timeout_for_security_association_in_seconds)
                writer.write_boolean_value("firewallMergeKeyingModuleSettings", @firewall_merge_keying_module_settings)
                writer.write_enum_value("firewallPacketQueueingMethod", @firewall_packet_queueing_method)
                writer.write_enum_value("firewallPreSharedKeyEncodingMethod", @firewall_pre_shared_key_encoding_method)
                writer.write_object_value("firewallProfileDomain", @firewall_profile_domain)
                writer.write_object_value("firewallProfilePrivate", @firewall_profile_private)
                writer.write_object_value("firewallProfilePublic", @firewall_profile_public)
                writer.write_collection_of_object_values("firewallRules", @firewall_rules)
                writer.write_enum_value("lanManagerAuthenticationLevel", @lan_manager_authentication_level)
                writer.write_boolean_value("lanManagerWorkstationDisableInsecureGuestLogons", @lan_manager_workstation_disable_insecure_guest_logons)
                writer.write_string_value("localSecurityOptionsAdministratorAccountName", @local_security_options_administrator_account_name)
                writer.write_enum_value("localSecurityOptionsAdministratorElevationPromptBehavior", @local_security_options_administrator_elevation_prompt_behavior)
                writer.write_boolean_value("localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares", @local_security_options_allow_anonymous_enumeration_of_s_a_m_accounts_and_shares)
                writer.write_boolean_value("localSecurityOptionsAllowPKU2UAuthenticationRequests", @local_security_options_allow_p_k_u2_u_authentication_requests)
                writer.write_string_value("localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager", @local_security_options_allow_remote_calls_to_security_accounts_manager)
                writer.write_boolean_value("localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool", @local_security_options_allow_remote_calls_to_security_accounts_manager_helper_bool)
                writer.write_boolean_value("localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn", @local_security_options_allow_system_to_be_shut_down_without_having_to_log_on)
                writer.write_boolean_value("localSecurityOptionsAllowUIAccessApplicationElevation", @local_security_options_allow_u_i_access_application_elevation)
                writer.write_boolean_value("localSecurityOptionsAllowUIAccessApplicationsForSecureLocations", @local_security_options_allow_u_i_access_applications_for_secure_locations)
                writer.write_boolean_value("localSecurityOptionsAllowUndockWithoutHavingToLogon", @local_security_options_allow_undock_without_having_to_logon)
                writer.write_boolean_value("localSecurityOptionsBlockMicrosoftAccounts", @local_security_options_block_microsoft_accounts)
                writer.write_boolean_value("localSecurityOptionsBlockRemoteLogonWithBlankPassword", @local_security_options_block_remote_logon_with_blank_password)
                writer.write_boolean_value("localSecurityOptionsBlockRemoteOpticalDriveAccess", @local_security_options_block_remote_optical_drive_access)
                writer.write_boolean_value("localSecurityOptionsBlockUsersInstallingPrinterDrivers", @local_security_options_block_users_installing_printer_drivers)
                writer.write_boolean_value("localSecurityOptionsClearVirtualMemoryPageFile", @local_security_options_clear_virtual_memory_page_file)
                writer.write_boolean_value("localSecurityOptionsClientDigitallySignCommunicationsAlways", @local_security_options_client_digitally_sign_communications_always)
                writer.write_boolean_value("localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers", @local_security_options_client_send_unencrypted_password_to_third_party_s_m_b_servers)
                writer.write_boolean_value("localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation", @local_security_options_detect_application_installations_and_prompt_for_elevation)
                writer.write_boolean_value("localSecurityOptionsDisableAdministratorAccount", @local_security_options_disable_administrator_account)
                writer.write_boolean_value("localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees", @local_security_options_disable_client_digitally_sign_communications_if_server_agrees)
                writer.write_boolean_value("localSecurityOptionsDisableGuestAccount", @local_security_options_disable_guest_account)
                writer.write_boolean_value("localSecurityOptionsDisableServerDigitallySignCommunicationsAlways", @local_security_options_disable_server_digitally_sign_communications_always)
                writer.write_boolean_value("localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees", @local_security_options_disable_server_digitally_sign_communications_if_client_agrees)
                writer.write_boolean_value("localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts", @local_security_options_do_not_allow_anonymous_enumeration_of_s_a_m_accounts)
                writer.write_boolean_value("localSecurityOptionsDoNotRequireCtrlAltDel", @local_security_options_do_not_require_ctrl_alt_del)
                writer.write_boolean_value("localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange", @local_security_options_do_not_store_l_a_n_manager_hash_value_on_next_password_change)
                writer.write_enum_value("localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser", @local_security_options_format_and_eject_of_removable_media_allowed_user)
                writer.write_string_value("localSecurityOptionsGuestAccountName", @local_security_options_guest_account_name)
                writer.write_boolean_value("localSecurityOptionsHideLastSignedInUser", @local_security_options_hide_last_signed_in_user)
                writer.write_boolean_value("localSecurityOptionsHideUsernameAtSignIn", @local_security_options_hide_username_at_sign_in)
                writer.write_enum_value("localSecurityOptionsInformationDisplayedOnLockScreen", @local_security_options_information_displayed_on_lock_screen)
                writer.write_enum_value("localSecurityOptionsInformationShownOnLockScreen", @local_security_options_information_shown_on_lock_screen)
                writer.write_string_value("localSecurityOptionsLogOnMessageText", @local_security_options_log_on_message_text)
                writer.write_string_value("localSecurityOptionsLogOnMessageTitle", @local_security_options_log_on_message_title)
                writer.write_number_value("localSecurityOptionsMachineInactivityLimit", @local_security_options_machine_inactivity_limit)
                writer.write_number_value("localSecurityOptionsMachineInactivityLimitInMinutes", @local_security_options_machine_inactivity_limit_in_minutes)
                writer.write_enum_value("localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients", @local_security_options_minimum_session_security_for_ntlm_ssp_based_clients)
                writer.write_enum_value("localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers", @local_security_options_minimum_session_security_for_ntlm_ssp_based_servers)
                writer.write_boolean_value("localSecurityOptionsOnlyElevateSignedExecutables", @local_security_options_only_elevate_signed_executables)
                writer.write_boolean_value("localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares", @local_security_options_restrict_anonymous_access_to_named_pipes_and_shares)
                writer.write_enum_value("localSecurityOptionsSmartCardRemovalBehavior", @local_security_options_smart_card_removal_behavior)
                writer.write_enum_value("localSecurityOptionsStandardUserElevationPromptBehavior", @local_security_options_standard_user_elevation_prompt_behavior)
                writer.write_boolean_value("localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation", @local_security_options_switch_to_secure_desktop_when_prompting_for_elevation)
                writer.write_boolean_value("localSecurityOptionsUseAdminApprovalMode", @local_security_options_use_admin_approval_mode)
                writer.write_boolean_value("localSecurityOptionsUseAdminApprovalModeForAdministrators", @local_security_options_use_admin_approval_mode_for_administrators)
                writer.write_boolean_value("localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations", @local_security_options_virtualize_file_and_registry_write_failures_to_per_user_locations)
                writer.write_boolean_value("smartScreenBlockOverrideForFiles", @smart_screen_block_override_for_files)
                writer.write_boolean_value("smartScreenEnableInShell", @smart_screen_enable_in_shell)
                writer.write_object_value("userRightsAccessCredentialManagerAsTrustedCaller", @user_rights_access_credential_manager_as_trusted_caller)
                writer.write_object_value("userRightsActAsPartOfTheOperatingSystem", @user_rights_act_as_part_of_the_operating_system)
                writer.write_object_value("userRightsAllowAccessFromNetwork", @user_rights_allow_access_from_network)
                writer.write_object_value("userRightsBackupData", @user_rights_backup_data)
                writer.write_object_value("userRightsBlockAccessFromNetwork", @user_rights_block_access_from_network)
                writer.write_object_value("userRightsChangeSystemTime", @user_rights_change_system_time)
                writer.write_object_value("userRightsCreateGlobalObjects", @user_rights_create_global_objects)
                writer.write_object_value("userRightsCreatePageFile", @user_rights_create_page_file)
                writer.write_object_value("userRightsCreatePermanentSharedObjects", @user_rights_create_permanent_shared_objects)
                writer.write_object_value("userRightsCreateSymbolicLinks", @user_rights_create_symbolic_links)
                writer.write_object_value("userRightsCreateToken", @user_rights_create_token)
                writer.write_object_value("userRightsDebugPrograms", @user_rights_debug_programs)
                writer.write_object_value("userRightsDelegation", @user_rights_delegation)
                writer.write_object_value("userRightsDenyLocalLogOn", @user_rights_deny_local_log_on)
                writer.write_object_value("userRightsGenerateSecurityAudits", @user_rights_generate_security_audits)
                writer.write_object_value("userRightsImpersonateClient", @user_rights_impersonate_client)
                writer.write_object_value("userRightsIncreaseSchedulingPriority", @user_rights_increase_scheduling_priority)
                writer.write_object_value("userRightsLoadUnloadDrivers", @user_rights_load_unload_drivers)
                writer.write_object_value("userRightsLocalLogOn", @user_rights_local_log_on)
                writer.write_object_value("userRightsLockMemory", @user_rights_lock_memory)
                writer.write_object_value("userRightsManageAuditingAndSecurityLogs", @user_rights_manage_auditing_and_security_logs)
                writer.write_object_value("userRightsManageVolumes", @user_rights_manage_volumes)
                writer.write_object_value("userRightsModifyFirmwareEnvironment", @user_rights_modify_firmware_environment)
                writer.write_object_value("userRightsModifyObjectLabels", @user_rights_modify_object_labels)
                writer.write_object_value("userRightsProfileSingleProcess", @user_rights_profile_single_process)
                writer.write_object_value("userRightsRemoteDesktopServicesLogOn", @user_rights_remote_desktop_services_log_on)
                writer.write_object_value("userRightsRemoteShutdown", @user_rights_remote_shutdown)
                writer.write_object_value("userRightsRestoreData", @user_rights_restore_data)
                writer.write_object_value("userRightsTakeOwnership", @user_rights_take_ownership)
                writer.write_enum_value("windowsDefenderTamperProtection", @windows_defender_tamper_protection)
                writer.write_enum_value("xboxServicesAccessoryManagementServiceStartupMode", @xbox_services_accessory_management_service_startup_mode)
                writer.write_boolean_value("xboxServicesEnableXboxGameSaveTask", @xbox_services_enable_xbox_game_save_task)
                writer.write_enum_value("xboxServicesLiveAuthManagerServiceStartupMode", @xbox_services_live_auth_manager_service_startup_mode)
                writer.write_enum_value("xboxServicesLiveGameSaveServiceStartupMode", @xbox_services_live_game_save_service_startup_mode)
                writer.write_enum_value("xboxServicesLiveNetworkingServiceStartupMode", @xbox_services_live_networking_service_startup_mode)
            end
            ## 
            ## Gets the smartScreenBlockOverrideForFiles property value. Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            ## @return a boolean
            ## 
            def smart_screen_block_override_for_files
                return @smart_screen_block_override_for_files
            end
            ## 
            ## Sets the smartScreenBlockOverrideForFiles property value. Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.
            ## @param value Value to set for the smartScreenBlockOverrideForFiles property.
            ## @return a void
            ## 
            def smart_screen_block_override_for_files=(value)
                @smart_screen_block_override_for_files = value
            end
            ## 
            ## Gets the smartScreenEnableInShell property value. Allows IT Admins to configure SmartScreen for Windows.
            ## @return a boolean
            ## 
            def smart_screen_enable_in_shell
                return @smart_screen_enable_in_shell
            end
            ## 
            ## Sets the smartScreenEnableInShell property value. Allows IT Admins to configure SmartScreen for Windows.
            ## @param value Value to set for the smartScreenEnableInShell property.
            ## @return a void
            ## 
            def smart_screen_enable_in_shell=(value)
                @smart_screen_enable_in_shell = value
            end
            ## 
            ## Gets the userRightsAccessCredentialManagerAsTrustedCaller property value. This user right is used by Credential Manager during Backup/Restore. Users' saved credentials might be compromised if this privilege is given to other entities. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_access_credential_manager_as_trusted_caller
                return @user_rights_access_credential_manager_as_trusted_caller
            end
            ## 
            ## Sets the userRightsAccessCredentialManagerAsTrustedCaller property value. This user right is used by Credential Manager during Backup/Restore. Users' saved credentials might be compromised if this privilege is given to other entities. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsAccessCredentialManagerAsTrustedCaller property.
            ## @return a void
            ## 
            def user_rights_access_credential_manager_as_trusted_caller=(value)
                @user_rights_access_credential_manager_as_trusted_caller = value
            end
            ## 
            ## Gets the userRightsActAsPartOfTheOperatingSystem property value. This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_act_as_part_of_the_operating_system
                return @user_rights_act_as_part_of_the_operating_system
            end
            ## 
            ## Sets the userRightsActAsPartOfTheOperatingSystem property value. This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsActAsPartOfTheOperatingSystem property.
            ## @return a void
            ## 
            def user_rights_act_as_part_of_the_operating_system=(value)
                @user_rights_act_as_part_of_the_operating_system = value
            end
            ## 
            ## Gets the userRightsAllowAccessFromNetwork property value. This user right determines which users and groups are allowed to connect to the computer over the network. State Allowed is supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_allow_access_from_network
                return @user_rights_allow_access_from_network
            end
            ## 
            ## Sets the userRightsAllowAccessFromNetwork property value. This user right determines which users and groups are allowed to connect to the computer over the network. State Allowed is supported.
            ## @param value Value to set for the userRightsAllowAccessFromNetwork property.
            ## @return a void
            ## 
            def user_rights_allow_access_from_network=(value)
                @user_rights_allow_access_from_network = value
            end
            ## 
            ## Gets the userRightsBackupData property value. This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_backup_data
                return @user_rights_backup_data
            end
            ## 
            ## Sets the userRightsBackupData property value. This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsBackupData property.
            ## @return a void
            ## 
            def user_rights_backup_data=(value)
                @user_rights_backup_data = value
            end
            ## 
            ## Gets the userRightsBlockAccessFromNetwork property value. This user right determines which users and groups are block from connecting to the computer over the network. State Block is supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_block_access_from_network
                return @user_rights_block_access_from_network
            end
            ## 
            ## Sets the userRightsBlockAccessFromNetwork property value. This user right determines which users and groups are block from connecting to the computer over the network. State Block is supported.
            ## @param value Value to set for the userRightsBlockAccessFromNetwork property.
            ## @return a void
            ## 
            def user_rights_block_access_from_network=(value)
                @user_rights_block_access_from_network = value
            end
            ## 
            ## Gets the userRightsChangeSystemTime property value. This user right determines which users and groups can change the time and date on the internal clock of the computer. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_change_system_time
                return @user_rights_change_system_time
            end
            ## 
            ## Sets the userRightsChangeSystemTime property value. This user right determines which users and groups can change the time and date on the internal clock of the computer. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsChangeSystemTime property.
            ## @return a void
            ## 
            def user_rights_change_system_time=(value)
                @user_rights_change_system_time = value
            end
            ## 
            ## Gets the userRightsCreateGlobalObjects property value. This security setting determines whether users can create global objects that are available to all sessions. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_create_global_objects
                return @user_rights_create_global_objects
            end
            ## 
            ## Sets the userRightsCreateGlobalObjects property value. This security setting determines whether users can create global objects that are available to all sessions. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsCreateGlobalObjects property.
            ## @return a void
            ## 
            def user_rights_create_global_objects=(value)
                @user_rights_create_global_objects = value
            end
            ## 
            ## Gets the userRightsCreatePageFile property value. This user right determines which users and groups can call an internal API to create and change the size of a page file. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_create_page_file
                return @user_rights_create_page_file
            end
            ## 
            ## Sets the userRightsCreatePageFile property value. This user right determines which users and groups can call an internal API to create and change the size of a page file. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsCreatePageFile property.
            ## @return a void
            ## 
            def user_rights_create_page_file=(value)
                @user_rights_create_page_file = value
            end
            ## 
            ## Gets the userRightsCreatePermanentSharedObjects property value. This user right determines which accounts can be used by processes to create a directory object using the object manager. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_create_permanent_shared_objects
                return @user_rights_create_permanent_shared_objects
            end
            ## 
            ## Sets the userRightsCreatePermanentSharedObjects property value. This user right determines which accounts can be used by processes to create a directory object using the object manager. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsCreatePermanentSharedObjects property.
            ## @return a void
            ## 
            def user_rights_create_permanent_shared_objects=(value)
                @user_rights_create_permanent_shared_objects = value
            end
            ## 
            ## Gets the userRightsCreateSymbolicLinks property value. This user right determines if the user can create a symbolic link from the computer to which they are logged on. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_create_symbolic_links
                return @user_rights_create_symbolic_links
            end
            ## 
            ## Sets the userRightsCreateSymbolicLinks property value. This user right determines if the user can create a symbolic link from the computer to which they are logged on. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsCreateSymbolicLinks property.
            ## @return a void
            ## 
            def user_rights_create_symbolic_links=(value)
                @user_rights_create_symbolic_links = value
            end
            ## 
            ## Gets the userRightsCreateToken property value. This user right determines which users/groups can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal API to create an access token. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_create_token
                return @user_rights_create_token
            end
            ## 
            ## Sets the userRightsCreateToken property value. This user right determines which users/groups can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal API to create an access token. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsCreateToken property.
            ## @return a void
            ## 
            def user_rights_create_token=(value)
                @user_rights_create_token = value
            end
            ## 
            ## Gets the userRightsDebugPrograms property value. This user right determines which users can attach a debugger to any process or to the kernel. Only states NotConfigured and Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_debug_programs
                return @user_rights_debug_programs
            end
            ## 
            ## Sets the userRightsDebugPrograms property value. This user right determines which users can attach a debugger to any process or to the kernel. Only states NotConfigured and Allowed are supported
            ## @param value Value to set for the userRightsDebugPrograms property.
            ## @return a void
            ## 
            def user_rights_debug_programs=(value)
                @user_rights_debug_programs = value
            end
            ## 
            ## Gets the userRightsDelegation property value. This user right determines which users can set the Trusted for Delegation setting on a user or computer object. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_delegation
                return @user_rights_delegation
            end
            ## 
            ## Sets the userRightsDelegation property value. This user right determines which users can set the Trusted for Delegation setting on a user or computer object. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsDelegation property.
            ## @return a void
            ## 
            def user_rights_delegation=(value)
                @user_rights_delegation = value
            end
            ## 
            ## Gets the userRightsDenyLocalLogOn property value. This user right determines which users cannot log on to the computer. States NotConfigured, Blocked are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_deny_local_log_on
                return @user_rights_deny_local_log_on
            end
            ## 
            ## Sets the userRightsDenyLocalLogOn property value. This user right determines which users cannot log on to the computer. States NotConfigured, Blocked are supported
            ## @param value Value to set for the userRightsDenyLocalLogOn property.
            ## @return a void
            ## 
            def user_rights_deny_local_log_on=(value)
                @user_rights_deny_local_log_on = value
            end
            ## 
            ## Gets the userRightsGenerateSecurityAudits property value. This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access.  Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_generate_security_audits
                return @user_rights_generate_security_audits
            end
            ## 
            ## Sets the userRightsGenerateSecurityAudits property value. This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access.  Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsGenerateSecurityAudits property.
            ## @return a void
            ## 
            def user_rights_generate_security_audits=(value)
                @user_rights_generate_security_audits = value
            end
            ## 
            ## Gets the userRightsImpersonateClient property value. Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect to a service that they have created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_impersonate_client
                return @user_rights_impersonate_client
            end
            ## 
            ## Sets the userRightsImpersonateClient property value. Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect to a service that they have created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsImpersonateClient property.
            ## @return a void
            ## 
            def user_rights_impersonate_client=(value)
                @user_rights_impersonate_client = value
            end
            ## 
            ## Gets the userRightsIncreaseSchedulingPriority property value. This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_increase_scheduling_priority
                return @user_rights_increase_scheduling_priority
            end
            ## 
            ## Sets the userRightsIncreaseSchedulingPriority property value. This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsIncreaseSchedulingPriority property.
            ## @return a void
            ## 
            def user_rights_increase_scheduling_priority=(value)
                @user_rights_increase_scheduling_priority = value
            end
            ## 
            ## Gets the userRightsLoadUnloadDrivers property value. This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_load_unload_drivers
                return @user_rights_load_unload_drivers
            end
            ## 
            ## Sets the userRightsLoadUnloadDrivers property value. This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsLoadUnloadDrivers property.
            ## @return a void
            ## 
            def user_rights_load_unload_drivers=(value)
                @user_rights_load_unload_drivers = value
            end
            ## 
            ## Gets the userRightsLocalLogOn property value. This user right determines which users can log on to the computer. States NotConfigured, Allowed are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_local_log_on
                return @user_rights_local_log_on
            end
            ## 
            ## Sets the userRightsLocalLogOn property value. This user right determines which users can log on to the computer. States NotConfigured, Allowed are supported
            ## @param value Value to set for the userRightsLocalLogOn property.
            ## @return a void
            ## 
            def user_rights_local_log_on=(value)
                @user_rights_local_log_on = value
            end
            ## 
            ## Gets the userRightsLockMemory property value. This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_lock_memory
                return @user_rights_lock_memory
            end
            ## 
            ## Sets the userRightsLockMemory property value. This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsLockMemory property.
            ## @return a void
            ## 
            def user_rights_lock_memory=(value)
                @user_rights_lock_memory = value
            end
            ## 
            ## Gets the userRightsManageAuditingAndSecurityLogs property value. This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_manage_auditing_and_security_logs
                return @user_rights_manage_auditing_and_security_logs
            end
            ## 
            ## Sets the userRightsManageAuditingAndSecurityLogs property value. This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsManageAuditingAndSecurityLogs property.
            ## @return a void
            ## 
            def user_rights_manage_auditing_and_security_logs=(value)
                @user_rights_manage_auditing_and_security_logs = value
            end
            ## 
            ## Gets the userRightsManageVolumes property value. This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_manage_volumes
                return @user_rights_manage_volumes
            end
            ## 
            ## Sets the userRightsManageVolumes property value. This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsManageVolumes property.
            ## @return a void
            ## 
            def user_rights_manage_volumes=(value)
                @user_rights_manage_volumes = value
            end
            ## 
            ## Gets the userRightsModifyFirmwareEnvironment property value. This user right determines who can modify firmware environment values. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_modify_firmware_environment
                return @user_rights_modify_firmware_environment
            end
            ## 
            ## Sets the userRightsModifyFirmwareEnvironment property value. This user right determines who can modify firmware environment values. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsModifyFirmwareEnvironment property.
            ## @return a void
            ## 
            def user_rights_modify_firmware_environment=(value)
                @user_rights_modify_firmware_environment = value
            end
            ## 
            ## Gets the userRightsModifyObjectLabels property value. This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_modify_object_labels
                return @user_rights_modify_object_labels
            end
            ## 
            ## Sets the userRightsModifyObjectLabels property value. This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsModifyObjectLabels property.
            ## @return a void
            ## 
            def user_rights_modify_object_labels=(value)
                @user_rights_modify_object_labels = value
            end
            ## 
            ## Gets the userRightsProfileSingleProcess property value. This user right determines which users can use performance monitoring tools to monitor the performance of system processes. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_profile_single_process
                return @user_rights_profile_single_process
            end
            ## 
            ## Sets the userRightsProfileSingleProcess property value. This user right determines which users can use performance monitoring tools to monitor the performance of system processes. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsProfileSingleProcess property.
            ## @return a void
            ## 
            def user_rights_profile_single_process=(value)
                @user_rights_profile_single_process = value
            end
            ## 
            ## Gets the userRightsRemoteDesktopServicesLogOn property value. This user right determines which users and groups are prohibited from logging on as a Remote Desktop Services client. Only states NotConfigured and Blocked are supported
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_remote_desktop_services_log_on
                return @user_rights_remote_desktop_services_log_on
            end
            ## 
            ## Sets the userRightsRemoteDesktopServicesLogOn property value. This user right determines which users and groups are prohibited from logging on as a Remote Desktop Services client. Only states NotConfigured and Blocked are supported
            ## @param value Value to set for the userRightsRemoteDesktopServicesLogOn property.
            ## @return a void
            ## 
            def user_rights_remote_desktop_services_log_on=(value)
                @user_rights_remote_desktop_services_log_on = value
            end
            ## 
            ## Gets the userRightsRemoteShutdown property value. This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_remote_shutdown
                return @user_rights_remote_shutdown
            end
            ## 
            ## Sets the userRightsRemoteShutdown property value. This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsRemoteShutdown property.
            ## @return a void
            ## 
            def user_rights_remote_shutdown=(value)
                @user_rights_remote_shutdown = value
            end
            ## 
            ## Gets the userRightsRestoreData property value. This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and determines which users can set any valid security principal as the owner of an object. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_restore_data
                return @user_rights_restore_data
            end
            ## 
            ## Sets the userRightsRestoreData property value. This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and determines which users can set any valid security principal as the owner of an object. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsRestoreData property.
            ## @return a void
            ## 
            def user_rights_restore_data=(value)
                @user_rights_restore_data = value
            end
            ## 
            ## Gets the userRightsTakeOwnership property value. This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads. Only states NotConfigured and Allowed are supported.
            ## @return a device_management_user_rights_setting
            ## 
            def user_rights_take_ownership
                return @user_rights_take_ownership
            end
            ## 
            ## Sets the userRightsTakeOwnership property value. This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads. Only states NotConfigured and Allowed are supported.
            ## @param value Value to set for the userRightsTakeOwnership property.
            ## @return a void
            ## 
            def user_rights_take_ownership=(value)
                @user_rights_take_ownership = value
            end
            ## 
            ## Gets the windowsDefenderTamperProtection property value. Defender TamperProtection setting options
            ## @return a windows_defender_tamper_protection_options
            ## 
            def windows_defender_tamper_protection
                return @windows_defender_tamper_protection
            end
            ## 
            ## Sets the windowsDefenderTamperProtection property value. Defender TamperProtection setting options
            ## @param value Value to set for the windowsDefenderTamperProtection property.
            ## @return a void
            ## 
            def windows_defender_tamper_protection=(value)
                @windows_defender_tamper_protection = value
            end
            ## 
            ## Gets the xboxServicesAccessoryManagementServiceStartupMode property value. Possible values of xbox service start type
            ## @return a service_start_type
            ## 
            def xbox_services_accessory_management_service_startup_mode
                return @xbox_services_accessory_management_service_startup_mode
            end
            ## 
            ## Sets the xboxServicesAccessoryManagementServiceStartupMode property value. Possible values of xbox service start type
            ## @param value Value to set for the xboxServicesAccessoryManagementServiceStartupMode property.
            ## @return a void
            ## 
            def xbox_services_accessory_management_service_startup_mode=(value)
                @xbox_services_accessory_management_service_startup_mode = value
            end
            ## 
            ## Gets the xboxServicesEnableXboxGameSaveTask property value. This setting determines whether xbox game save is enabled (1) or disabled (0).
            ## @return a boolean
            ## 
            def xbox_services_enable_xbox_game_save_task
                return @xbox_services_enable_xbox_game_save_task
            end
            ## 
            ## Sets the xboxServicesEnableXboxGameSaveTask property value. This setting determines whether xbox game save is enabled (1) or disabled (0).
            ## @param value Value to set for the xboxServicesEnableXboxGameSaveTask property.
            ## @return a void
            ## 
            def xbox_services_enable_xbox_game_save_task=(value)
                @xbox_services_enable_xbox_game_save_task = value
            end
            ## 
            ## Gets the xboxServicesLiveAuthManagerServiceStartupMode property value. Possible values of xbox service start type
            ## @return a service_start_type
            ## 
            def xbox_services_live_auth_manager_service_startup_mode
                return @xbox_services_live_auth_manager_service_startup_mode
            end
            ## 
            ## Sets the xboxServicesLiveAuthManagerServiceStartupMode property value. Possible values of xbox service start type
            ## @param value Value to set for the xboxServicesLiveAuthManagerServiceStartupMode property.
            ## @return a void
            ## 
            def xbox_services_live_auth_manager_service_startup_mode=(value)
                @xbox_services_live_auth_manager_service_startup_mode = value
            end
            ## 
            ## Gets the xboxServicesLiveGameSaveServiceStartupMode property value. Possible values of xbox service start type
            ## @return a service_start_type
            ## 
            def xbox_services_live_game_save_service_startup_mode
                return @xbox_services_live_game_save_service_startup_mode
            end
            ## 
            ## Sets the xboxServicesLiveGameSaveServiceStartupMode property value. Possible values of xbox service start type
            ## @param value Value to set for the xboxServicesLiveGameSaveServiceStartupMode property.
            ## @return a void
            ## 
            def xbox_services_live_game_save_service_startup_mode=(value)
                @xbox_services_live_game_save_service_startup_mode = value
            end
            ## 
            ## Gets the xboxServicesLiveNetworkingServiceStartupMode property value. Possible values of xbox service start type
            ## @return a service_start_type
            ## 
            def xbox_services_live_networking_service_startup_mode
                return @xbox_services_live_networking_service_startup_mode
            end
            ## 
            ## Sets the xboxServicesLiveNetworkingServiceStartupMode property value. Possible values of xbox service start type
            ## @param value Value to set for the xboxServicesLiveNetworkingServiceStartupMode property.
            ## @return a void
            ## 
            def xbox_services_live_networking_service_startup_mode=(value)
                @xbox_services_live_networking_service_startup_mode = value
            end
        end
    end
end
