require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MacOSEndpointProtectionConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of a property
            @advanced_threat_protection_automatic_sample_submission
            ## 
            # Possible values of a property
            @advanced_threat_protection_cloud_delivered
            ## 
            # Possible values of a property
            @advanced_threat_protection_diagnostic_data_collection
            ## 
            # A list of file extensions to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            @advanced_threat_protection_excluded_extensions
            ## 
            # A list of paths to files to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            @advanced_threat_protection_excluded_files
            ## 
            # A list of paths to folders to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            @advanced_threat_protection_excluded_folders
            ## 
            # A list of process names to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            @advanced_threat_protection_excluded_processes
            ## 
            # Possible values of a property
            @advanced_threat_protection_real_time
            ## 
            # Optional. If set to true, the user can defer the enabling of FileVault until they sign out.
            @file_vault_allow_deferral_until_sign_out
            ## 
            # Optional. When using the Defer option, if set to true, the user is not prompted to enable FileVault at sign-out.
            @file_vault_disable_prompt_at_sign_out
            ## 
            # Whether FileVault should be enabled or not.
            @file_vault_enabled
            ## 
            # Optional. A hidden personal recovery key does not appear on the user's screen during FileVault encryption, reducing the risk of it ending up in the wrong hands.
            @file_vault_hide_personal_recovery_key
            ## 
            # Required if selected recovery key type(s) include InstitutionalRecoveryKey. The DER Encoded certificate file used to set an institutional recovery key.
            @file_vault_institutional_recovery_key_certificate
            ## 
            # File name of the institutional recovery key certificate to display in UI. (.der).
            @file_vault_institutional_recovery_key_certificate_file_name
            ## 
            # Optional. When using the Defer option, this is the maximum number of times the user can ignore prompts to enable FileVault before FileVault will be required for the user to sign in. If set to -1, it will always prompt to enable FileVault until FileVault is enabled, though it will allow the user to bypass enabling FileVault. Setting this to 0 will disable the feature.
            @file_vault_number_of_times_user_can_ignore
            ## 
            # Required if selected recovery key type(s) include PersonalRecoveryKey. A short message displayed to the user that explains how they can retrieve their personal recovery key.
            @file_vault_personal_recovery_key_help_message
            ## 
            # Optional. If selected recovery key type(s) include PersonalRecoveryKey, the frequency to rotate that key, in months.
            @file_vault_personal_recovery_key_rotation_in_months
            ## 
            # Recovery key types for macOS FileVault
            @file_vault_selected_recovery_key_types
            ## 
            # List of applications with firewall settings. Firewall settings for applications not on this list are determined by the user. This collection can contain a maximum of 500 elements.
            @firewall_applications
            ## 
            # Corresponds to the 'Block all incoming connections' option.
            @firewall_block_all_incoming
            ## 
            # Corresponds to 'Enable stealth mode.'
            @firewall_enable_stealth_mode
            ## 
            # Whether the firewall should be enabled or not.
            @firewall_enabled
            ## 
            # App source options for macOS Gatekeeper.
            @gatekeeper_allowed_app_source
            ## 
            # If set to true, the user override for Gatekeeper will be disabled.
            @gatekeeper_block_override
            ## 
            ## Gets the advancedThreatProtectionAutomaticSampleSubmission property value. Possible values of a property
            ## @return a enablement
            ## 
            def advanced_threat_protection_automatic_sample_submission
                return @advanced_threat_protection_automatic_sample_submission
            end
            ## 
            ## Sets the advancedThreatProtectionAutomaticSampleSubmission property value. Possible values of a property
            ## @param value Value to set for the advanced_threat_protection_automatic_sample_submission property.
            ## @return a void
            ## 
            def advanced_threat_protection_automatic_sample_submission=(value)
                @advanced_threat_protection_automatic_sample_submission = value
            end
            ## 
            ## Gets the advancedThreatProtectionCloudDelivered property value. Possible values of a property
            ## @return a enablement
            ## 
            def advanced_threat_protection_cloud_delivered
                return @advanced_threat_protection_cloud_delivered
            end
            ## 
            ## Sets the advancedThreatProtectionCloudDelivered property value. Possible values of a property
            ## @param value Value to set for the advanced_threat_protection_cloud_delivered property.
            ## @return a void
            ## 
            def advanced_threat_protection_cloud_delivered=(value)
                @advanced_threat_protection_cloud_delivered = value
            end
            ## 
            ## Gets the advancedThreatProtectionDiagnosticDataCollection property value. Possible values of a property
            ## @return a enablement
            ## 
            def advanced_threat_protection_diagnostic_data_collection
                return @advanced_threat_protection_diagnostic_data_collection
            end
            ## 
            ## Sets the advancedThreatProtectionDiagnosticDataCollection property value. Possible values of a property
            ## @param value Value to set for the advanced_threat_protection_diagnostic_data_collection property.
            ## @return a void
            ## 
            def advanced_threat_protection_diagnostic_data_collection=(value)
                @advanced_threat_protection_diagnostic_data_collection = value
            end
            ## 
            ## Gets the advancedThreatProtectionExcludedExtensions property value. A list of file extensions to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @return a string
            ## 
            def advanced_threat_protection_excluded_extensions
                return @advanced_threat_protection_excluded_extensions
            end
            ## 
            ## Sets the advancedThreatProtectionExcludedExtensions property value. A list of file extensions to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @param value Value to set for the advanced_threat_protection_excluded_extensions property.
            ## @return a void
            ## 
            def advanced_threat_protection_excluded_extensions=(value)
                @advanced_threat_protection_excluded_extensions = value
            end
            ## 
            ## Gets the advancedThreatProtectionExcludedFiles property value. A list of paths to files to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @return a string
            ## 
            def advanced_threat_protection_excluded_files
                return @advanced_threat_protection_excluded_files
            end
            ## 
            ## Sets the advancedThreatProtectionExcludedFiles property value. A list of paths to files to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @param value Value to set for the advanced_threat_protection_excluded_files property.
            ## @return a void
            ## 
            def advanced_threat_protection_excluded_files=(value)
                @advanced_threat_protection_excluded_files = value
            end
            ## 
            ## Gets the advancedThreatProtectionExcludedFolders property value. A list of paths to folders to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @return a string
            ## 
            def advanced_threat_protection_excluded_folders
                return @advanced_threat_protection_excluded_folders
            end
            ## 
            ## Sets the advancedThreatProtectionExcludedFolders property value. A list of paths to folders to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @param value Value to set for the advanced_threat_protection_excluded_folders property.
            ## @return a void
            ## 
            def advanced_threat_protection_excluded_folders=(value)
                @advanced_threat_protection_excluded_folders = value
            end
            ## 
            ## Gets the advancedThreatProtectionExcludedProcesses property value. A list of process names to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @return a string
            ## 
            def advanced_threat_protection_excluded_processes
                return @advanced_threat_protection_excluded_processes
            end
            ## 
            ## Sets the advancedThreatProtectionExcludedProcesses property value. A list of process names to exclude from antivirus scanning for Microsoft Defender Advanced Threat Protection on macOS.
            ## @param value Value to set for the advanced_threat_protection_excluded_processes property.
            ## @return a void
            ## 
            def advanced_threat_protection_excluded_processes=(value)
                @advanced_threat_protection_excluded_processes = value
            end
            ## 
            ## Gets the advancedThreatProtectionRealTime property value. Possible values of a property
            ## @return a enablement
            ## 
            def advanced_threat_protection_real_time
                return @advanced_threat_protection_real_time
            end
            ## 
            ## Sets the advancedThreatProtectionRealTime property value. Possible values of a property
            ## @param value Value to set for the advanced_threat_protection_real_time property.
            ## @return a void
            ## 
            def advanced_threat_protection_real_time=(value)
                @advanced_threat_protection_real_time = value
            end
            ## 
            ## Instantiates a new MacOSEndpointProtectionConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSEndpointProtectionConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_endpoint_protection_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSEndpointProtectionConfiguration.new
            end
            ## 
            ## Gets the fileVaultAllowDeferralUntilSignOut property value. Optional. If set to true, the user can defer the enabling of FileVault until they sign out.
            ## @return a boolean
            ## 
            def file_vault_allow_deferral_until_sign_out
                return @file_vault_allow_deferral_until_sign_out
            end
            ## 
            ## Sets the fileVaultAllowDeferralUntilSignOut property value. Optional. If set to true, the user can defer the enabling of FileVault until they sign out.
            ## @param value Value to set for the file_vault_allow_deferral_until_sign_out property.
            ## @return a void
            ## 
            def file_vault_allow_deferral_until_sign_out=(value)
                @file_vault_allow_deferral_until_sign_out = value
            end
            ## 
            ## Gets the fileVaultDisablePromptAtSignOut property value. Optional. When using the Defer option, if set to true, the user is not prompted to enable FileVault at sign-out.
            ## @return a boolean
            ## 
            def file_vault_disable_prompt_at_sign_out
                return @file_vault_disable_prompt_at_sign_out
            end
            ## 
            ## Sets the fileVaultDisablePromptAtSignOut property value. Optional. When using the Defer option, if set to true, the user is not prompted to enable FileVault at sign-out.
            ## @param value Value to set for the file_vault_disable_prompt_at_sign_out property.
            ## @return a void
            ## 
            def file_vault_disable_prompt_at_sign_out=(value)
                @file_vault_disable_prompt_at_sign_out = value
            end
            ## 
            ## Gets the fileVaultEnabled property value. Whether FileVault should be enabled or not.
            ## @return a boolean
            ## 
            def file_vault_enabled
                return @file_vault_enabled
            end
            ## 
            ## Sets the fileVaultEnabled property value. Whether FileVault should be enabled or not.
            ## @param value Value to set for the file_vault_enabled property.
            ## @return a void
            ## 
            def file_vault_enabled=(value)
                @file_vault_enabled = value
            end
            ## 
            ## Gets the fileVaultHidePersonalRecoveryKey property value. Optional. A hidden personal recovery key does not appear on the user's screen during FileVault encryption, reducing the risk of it ending up in the wrong hands.
            ## @return a boolean
            ## 
            def file_vault_hide_personal_recovery_key
                return @file_vault_hide_personal_recovery_key
            end
            ## 
            ## Sets the fileVaultHidePersonalRecoveryKey property value. Optional. A hidden personal recovery key does not appear on the user's screen during FileVault encryption, reducing the risk of it ending up in the wrong hands.
            ## @param value Value to set for the file_vault_hide_personal_recovery_key property.
            ## @return a void
            ## 
            def file_vault_hide_personal_recovery_key=(value)
                @file_vault_hide_personal_recovery_key = value
            end
            ## 
            ## Gets the fileVaultInstitutionalRecoveryKeyCertificate property value. Required if selected recovery key type(s) include InstitutionalRecoveryKey. The DER Encoded certificate file used to set an institutional recovery key.
            ## @return a binary
            ## 
            def file_vault_institutional_recovery_key_certificate
                return @file_vault_institutional_recovery_key_certificate
            end
            ## 
            ## Sets the fileVaultInstitutionalRecoveryKeyCertificate property value. Required if selected recovery key type(s) include InstitutionalRecoveryKey. The DER Encoded certificate file used to set an institutional recovery key.
            ## @param value Value to set for the file_vault_institutional_recovery_key_certificate property.
            ## @return a void
            ## 
            def file_vault_institutional_recovery_key_certificate=(value)
                @file_vault_institutional_recovery_key_certificate = value
            end
            ## 
            ## Gets the fileVaultInstitutionalRecoveryKeyCertificateFileName property value. File name of the institutional recovery key certificate to display in UI. (.der).
            ## @return a string
            ## 
            def file_vault_institutional_recovery_key_certificate_file_name
                return @file_vault_institutional_recovery_key_certificate_file_name
            end
            ## 
            ## Sets the fileVaultInstitutionalRecoveryKeyCertificateFileName property value. File name of the institutional recovery key certificate to display in UI. (.der).
            ## @param value Value to set for the file_vault_institutional_recovery_key_certificate_file_name property.
            ## @return a void
            ## 
            def file_vault_institutional_recovery_key_certificate_file_name=(value)
                @file_vault_institutional_recovery_key_certificate_file_name = value
            end
            ## 
            ## Gets the fileVaultNumberOfTimesUserCanIgnore property value. Optional. When using the Defer option, this is the maximum number of times the user can ignore prompts to enable FileVault before FileVault will be required for the user to sign in. If set to -1, it will always prompt to enable FileVault until FileVault is enabled, though it will allow the user to bypass enabling FileVault. Setting this to 0 will disable the feature.
            ## @return a integer
            ## 
            def file_vault_number_of_times_user_can_ignore
                return @file_vault_number_of_times_user_can_ignore
            end
            ## 
            ## Sets the fileVaultNumberOfTimesUserCanIgnore property value. Optional. When using the Defer option, this is the maximum number of times the user can ignore prompts to enable FileVault before FileVault will be required for the user to sign in. If set to -1, it will always prompt to enable FileVault until FileVault is enabled, though it will allow the user to bypass enabling FileVault. Setting this to 0 will disable the feature.
            ## @param value Value to set for the file_vault_number_of_times_user_can_ignore property.
            ## @return a void
            ## 
            def file_vault_number_of_times_user_can_ignore=(value)
                @file_vault_number_of_times_user_can_ignore = value
            end
            ## 
            ## Gets the fileVaultPersonalRecoveryKeyHelpMessage property value. Required if selected recovery key type(s) include PersonalRecoveryKey. A short message displayed to the user that explains how they can retrieve their personal recovery key.
            ## @return a string
            ## 
            def file_vault_personal_recovery_key_help_message
                return @file_vault_personal_recovery_key_help_message
            end
            ## 
            ## Sets the fileVaultPersonalRecoveryKeyHelpMessage property value. Required if selected recovery key type(s) include PersonalRecoveryKey. A short message displayed to the user that explains how they can retrieve their personal recovery key.
            ## @param value Value to set for the file_vault_personal_recovery_key_help_message property.
            ## @return a void
            ## 
            def file_vault_personal_recovery_key_help_message=(value)
                @file_vault_personal_recovery_key_help_message = value
            end
            ## 
            ## Gets the fileVaultPersonalRecoveryKeyRotationInMonths property value. Optional. If selected recovery key type(s) include PersonalRecoveryKey, the frequency to rotate that key, in months.
            ## @return a integer
            ## 
            def file_vault_personal_recovery_key_rotation_in_months
                return @file_vault_personal_recovery_key_rotation_in_months
            end
            ## 
            ## Sets the fileVaultPersonalRecoveryKeyRotationInMonths property value. Optional. If selected recovery key type(s) include PersonalRecoveryKey, the frequency to rotate that key, in months.
            ## @param value Value to set for the file_vault_personal_recovery_key_rotation_in_months property.
            ## @return a void
            ## 
            def file_vault_personal_recovery_key_rotation_in_months=(value)
                @file_vault_personal_recovery_key_rotation_in_months = value
            end
            ## 
            ## Gets the fileVaultSelectedRecoveryKeyTypes property value. Recovery key types for macOS FileVault
            ## @return a mac_o_s_file_vault_recovery_key_types
            ## 
            def file_vault_selected_recovery_key_types
                return @file_vault_selected_recovery_key_types
            end
            ## 
            ## Sets the fileVaultSelectedRecoveryKeyTypes property value. Recovery key types for macOS FileVault
            ## @param value Value to set for the file_vault_selected_recovery_key_types property.
            ## @return a void
            ## 
            def file_vault_selected_recovery_key_types=(value)
                @file_vault_selected_recovery_key_types = value
            end
            ## 
            ## Gets the firewallApplications property value. List of applications with firewall settings. Firewall settings for applications not on this list are determined by the user. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_firewall_application
            ## 
            def firewall_applications
                return @firewall_applications
            end
            ## 
            ## Sets the firewallApplications property value. List of applications with firewall settings. Firewall settings for applications not on this list are determined by the user. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the firewall_applications property.
            ## @return a void
            ## 
            def firewall_applications=(value)
                @firewall_applications = value
            end
            ## 
            ## Gets the firewallBlockAllIncoming property value. Corresponds to the 'Block all incoming connections' option.
            ## @return a boolean
            ## 
            def firewall_block_all_incoming
                return @firewall_block_all_incoming
            end
            ## 
            ## Sets the firewallBlockAllIncoming property value. Corresponds to the 'Block all incoming connections' option.
            ## @param value Value to set for the firewall_block_all_incoming property.
            ## @return a void
            ## 
            def firewall_block_all_incoming=(value)
                @firewall_block_all_incoming = value
            end
            ## 
            ## Gets the firewallEnableStealthMode property value. Corresponds to 'Enable stealth mode.'
            ## @return a boolean
            ## 
            def firewall_enable_stealth_mode
                return @firewall_enable_stealth_mode
            end
            ## 
            ## Sets the firewallEnableStealthMode property value. Corresponds to 'Enable stealth mode.'
            ## @param value Value to set for the firewall_enable_stealth_mode property.
            ## @return a void
            ## 
            def firewall_enable_stealth_mode=(value)
                @firewall_enable_stealth_mode = value
            end
            ## 
            ## Gets the firewallEnabled property value. Whether the firewall should be enabled or not.
            ## @return a boolean
            ## 
            def firewall_enabled
                return @firewall_enabled
            end
            ## 
            ## Sets the firewallEnabled property value. Whether the firewall should be enabled or not.
            ## @param value Value to set for the firewall_enabled property.
            ## @return a void
            ## 
            def firewall_enabled=(value)
                @firewall_enabled = value
            end
            ## 
            ## Gets the gatekeeperAllowedAppSource property value. App source options for macOS Gatekeeper.
            ## @return a mac_o_s_gatekeeper_app_sources
            ## 
            def gatekeeper_allowed_app_source
                return @gatekeeper_allowed_app_source
            end
            ## 
            ## Sets the gatekeeperAllowedAppSource property value. App source options for macOS Gatekeeper.
            ## @param value Value to set for the gatekeeper_allowed_app_source property.
            ## @return a void
            ## 
            def gatekeeper_allowed_app_source=(value)
                @gatekeeper_allowed_app_source = value
            end
            ## 
            ## Gets the gatekeeperBlockOverride property value. If set to true, the user override for Gatekeeper will be disabled.
            ## @return a boolean
            ## 
            def gatekeeper_block_override
                return @gatekeeper_block_override
            end
            ## 
            ## Sets the gatekeeperBlockOverride property value. If set to true, the user override for Gatekeeper will be disabled.
            ## @param value Value to set for the gatekeeper_block_override property.
            ## @return a void
            ## 
            def gatekeeper_block_override=(value)
                @gatekeeper_block_override = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "advancedThreatProtectionAutomaticSampleSubmission" => lambda {|n| @advanced_threat_protection_automatic_sample_submission = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "advancedThreatProtectionCloudDelivered" => lambda {|n| @advanced_threat_protection_cloud_delivered = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "advancedThreatProtectionDiagnosticDataCollection" => lambda {|n| @advanced_threat_protection_diagnostic_data_collection = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "advancedThreatProtectionExcludedExtensions" => lambda {|n| @advanced_threat_protection_excluded_extensions = n.get_collection_of_primitive_values(String) },
                    "advancedThreatProtectionExcludedFiles" => lambda {|n| @advanced_threat_protection_excluded_files = n.get_collection_of_primitive_values(String) },
                    "advancedThreatProtectionExcludedFolders" => lambda {|n| @advanced_threat_protection_excluded_folders = n.get_collection_of_primitive_values(String) },
                    "advancedThreatProtectionExcludedProcesses" => lambda {|n| @advanced_threat_protection_excluded_processes = n.get_collection_of_primitive_values(String) },
                    "advancedThreatProtectionRealTime" => lambda {|n| @advanced_threat_protection_real_time = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "fileVaultAllowDeferralUntilSignOut" => lambda {|n| @file_vault_allow_deferral_until_sign_out = n.get_boolean_value() },
                    "fileVaultDisablePromptAtSignOut" => lambda {|n| @file_vault_disable_prompt_at_sign_out = n.get_boolean_value() },
                    "fileVaultEnabled" => lambda {|n| @file_vault_enabled = n.get_boolean_value() },
                    "fileVaultHidePersonalRecoveryKey" => lambda {|n| @file_vault_hide_personal_recovery_key = n.get_boolean_value() },
                    "fileVaultInstitutionalRecoveryKeyCertificate" => lambda {|n| @file_vault_institutional_recovery_key_certificate = n.get_string_value() },
                    "fileVaultInstitutionalRecoveryKeyCertificateFileName" => lambda {|n| @file_vault_institutional_recovery_key_certificate_file_name = n.get_string_value() },
                    "fileVaultNumberOfTimesUserCanIgnore" => lambda {|n| @file_vault_number_of_times_user_can_ignore = n.get_number_value() },
                    "fileVaultPersonalRecoveryKeyHelpMessage" => lambda {|n| @file_vault_personal_recovery_key_help_message = n.get_string_value() },
                    "fileVaultPersonalRecoveryKeyRotationInMonths" => lambda {|n| @file_vault_personal_recovery_key_rotation_in_months = n.get_number_value() },
                    "fileVaultSelectedRecoveryKeyTypes" => lambda {|n| @file_vault_selected_recovery_key_types = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSFileVaultRecoveryKeyTypes) },
                    "firewallApplications" => lambda {|n| @firewall_applications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSFirewallApplication.create_from_discriminator_value(pn) }) },
                    "firewallBlockAllIncoming" => lambda {|n| @firewall_block_all_incoming = n.get_boolean_value() },
                    "firewallEnableStealthMode" => lambda {|n| @firewall_enable_stealth_mode = n.get_boolean_value() },
                    "firewallEnabled" => lambda {|n| @firewall_enabled = n.get_boolean_value() },
                    "gatekeeperAllowedAppSource" => lambda {|n| @gatekeeper_allowed_app_source = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSGatekeeperAppSources) },
                    "gatekeeperBlockOverride" => lambda {|n| @gatekeeper_block_override = n.get_boolean_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("advancedThreatProtectionAutomaticSampleSubmission", @advanced_threat_protection_automatic_sample_submission)
                writer.write_enum_value("advancedThreatProtectionCloudDelivered", @advanced_threat_protection_cloud_delivered)
                writer.write_enum_value("advancedThreatProtectionDiagnosticDataCollection", @advanced_threat_protection_diagnostic_data_collection)
                writer.write_collection_of_primitive_values("advancedThreatProtectionExcludedExtensions", @advanced_threat_protection_excluded_extensions)
                writer.write_collection_of_primitive_values("advancedThreatProtectionExcludedFiles", @advanced_threat_protection_excluded_files)
                writer.write_collection_of_primitive_values("advancedThreatProtectionExcludedFolders", @advanced_threat_protection_excluded_folders)
                writer.write_collection_of_primitive_values("advancedThreatProtectionExcludedProcesses", @advanced_threat_protection_excluded_processes)
                writer.write_enum_value("advancedThreatProtectionRealTime", @advanced_threat_protection_real_time)
                writer.write_boolean_value("fileVaultAllowDeferralUntilSignOut", @file_vault_allow_deferral_until_sign_out)
                writer.write_boolean_value("fileVaultDisablePromptAtSignOut", @file_vault_disable_prompt_at_sign_out)
                writer.write_boolean_value("fileVaultEnabled", @file_vault_enabled)
                writer.write_boolean_value("fileVaultHidePersonalRecoveryKey", @file_vault_hide_personal_recovery_key)
                writer.write_object_value("fileVaultInstitutionalRecoveryKeyCertificate", @file_vault_institutional_recovery_key_certificate)
                writer.write_string_value("fileVaultInstitutionalRecoveryKeyCertificateFileName", @file_vault_institutional_recovery_key_certificate_file_name)
                writer.write_number_value("fileVaultNumberOfTimesUserCanIgnore", @file_vault_number_of_times_user_can_ignore)
                writer.write_string_value("fileVaultPersonalRecoveryKeyHelpMessage", @file_vault_personal_recovery_key_help_message)
                writer.write_number_value("fileVaultPersonalRecoveryKeyRotationInMonths", @file_vault_personal_recovery_key_rotation_in_months)
                writer.write_enum_value("fileVaultSelectedRecoveryKeyTypes", @file_vault_selected_recovery_key_types)
                writer.write_collection_of_object_values("firewallApplications", @firewall_applications)
                writer.write_boolean_value("firewallBlockAllIncoming", @firewall_block_all_incoming)
                writer.write_boolean_value("firewallEnableStealthMode", @firewall_enable_stealth_mode)
                writer.write_boolean_value("firewallEnabled", @firewall_enabled)
                writer.write_enum_value("gatekeeperAllowedAppSource", @gatekeeper_allowed_app_source)
                writer.write_boolean_value("gatekeeperBlockOverride", @gatekeeper_block_override)
            end
        end
    end
end
