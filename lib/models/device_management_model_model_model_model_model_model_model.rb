require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Singleton entity that acts as a container for all device management functionality.
        class DeviceManagementModelModelModelModelModelModelModel < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date & time when tenant data moved between scaleunits.
            @account_move_completion_date_time
            ## 
            # Admin consent information.
            @admin_consent
            ## 
            # The summary state of ATP onboarding state for this account.
            @advanced_threat_protection_onboarding_state_summary
            ## 
            # Android device owner enrollment profile entities.
            @android_device_owner_enrollment_profiles
            ## 
            # Android for Work app configuration schema entities.
            @android_for_work_app_configuration_schemas
            ## 
            # Android for Work enrollment profile entities.
            @android_for_work_enrollment_profiles
            ## 
            # The singleton Android for Work settings entity.
            @android_for_work_settings
            ## 
            # The singleton Android managed store account enterprise settings entity.
            @android_managed_store_account_enterprise_settings
            ## 
            # Android Enterprise app configuration schema entities.
            @android_managed_store_app_configuration_schemas
            ## 
            # Apple push notification certificate.
            @apple_push_notification_certificate
            ## 
            # Apple user initiated enrollment profiles
            @apple_user_initiated_enrollment_profiles
            ## 
            # The list of assignment filters
            @assignment_filters
            ## 
            # The Audit Events
            @audit_events
            ## 
            # The list of autopilot events for the tenant.
            @autopilot_events
            ## 
            # The Cart To Class Associations.
            @cart_to_class_associations
            ## 
            # The available categories
            @categories
            ## 
            # Collection of certificate connector details, each associated with a corresponding Intune Certificate Connector.
            @certificate_connector_details
            ## 
            # Collection of ChromeOSOnboardingSettings settings associated with account.
            @chrome_o_s_onboarding_settings
            ## 
            # The list of CloudPC Connectivity Issue.
            @cloud_p_c_connectivity_issues
            ## 
            # The list of co-managed devices report
            @comanaged_devices
            ## 
            # The list of co-management eligible devices report
            @comanagement_eligible_devices
            ## 
            # List of all compliance categories
            @compliance_categories
            ## 
            # The list of Compliance Management Partners configured by the tenant.
            @compliance_management_partners
            ## 
            # List of all compliance policies
            @compliance_policies
            ## 
            # List of all ComplianceSettings
            @compliance_settings
            ## 
            # The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            @conditional_access_settings
            ## 
            # A list of ConfigManagerCollection
            @config_manager_collections
            ## 
            # List of all Configuration Categories
            @configuration_categories
            ## 
            # List of all Configuration policies
            @configuration_policies
            ## 
            # List of all templates
            @configuration_policy_templates
            ## 
            # List of all ConfigurationSettings
            @configuration_settings
            ## 
            # The list of connector status for the tenant.
            @connector_status
            ## 
            # A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.
            @data_processor_service_for_windows_features_onboarding
            ## 
            # Data sharing consents.
            @data_sharing_consents
            ## 
            # This collections of multiple DEP tokens per-tenant.
            @dep_onboarding_settings
            ## 
            # Collection of Derived credential settings associated with account.
            @derived_credentials
            ## 
            # The list of detected apps associated with a device.
            @detected_apps
            ## 
            # The list of device categories with the tenant.
            @device_categories
            ## 
            # The device compliance policies.
            @device_compliance_policies
            ## 
            # The device compliance state summary for this account.
            @device_compliance_policy_device_state_summary
            ## 
            # The summary states of compliance policy settings for this account.
            @device_compliance_policy_setting_state_summaries
            ## 
            # The last requested time of device compliance reporting for this account. This property is read-only.
            @device_compliance_report_summarization_date_time
            ## 
            # The list of device compliance scripts associated with the tenant.
            @device_compliance_scripts
            ## 
            # Summary of policies in conflict state for this account.
            @device_configuration_conflict_summary
            ## 
            # The device configuration device state summary for this account.
            @device_configuration_device_state_summaries
            ## 
            # Profile Id of the object.
            @device_configuration_profiles
            ## 
            # Restricted apps violations for this account.
            @device_configuration_restricted_apps_violations
            ## 
            # The device configuration user state summary for this account.
            @device_configuration_user_state_summaries
            ## 
            # The device configurations.
            @device_configurations
            ## 
            # Summary of all certificates for all devices.
            @device_configurations_all_managed_device_certificate_states
            ## 
            # The list of device custom attribute shell scripts associated with the tenant.
            @device_custom_attribute_shell_scripts
            ## 
            # The list of device enrollment configurations
            @device_enrollment_configurations
            ## 
            # The list of device health scripts associated with the tenant.
            @device_health_scripts
            ## 
            # The list of Device Management Partners configured by the tenant.
            @device_management_partners
            ## 
            # The list of device management scripts associated with the tenant.
            @device_management_scripts
            ## 
            # Device protection overview.
            @device_protection_overview
            ## 
            # The list of device shell scripts associated with the tenant.
            @device_shell_scripts
            ## 
            # A list of connector objects.
            @domain_join_connectors
            ## 
            # List of elevation requests
            @elevation_requests
            ## 
            # The embedded SIM activation code pools created by this account.
            @embedded_s_i_m_activation_code_pools
            ## 
            # Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.
            @endpoint_privilege_management_provisioning_status
            ## 
            # The list of Exchange Connectors configured by the tenant.
            @exchange_connectors
            ## 
            # The list of Exchange On Premisis policies configured by the tenant.
            @exchange_on_premises_policies
            ## 
            # The policy which controls mobile device access to Exchange On Premises
            @exchange_on_premises_policy
            ## 
            # The available group policy categories for this account.
            @group_policy_categories
            ## 
            # The group policy configurations created by this account.
            @group_policy_configurations
            ## 
            # The available group policy definition files for this account.
            @group_policy_definition_files
            ## 
            # The available group policy definitions for this account.
            @group_policy_definitions
            ## 
            # A list of Group Policy migration reports.
            @group_policy_migration_reports
            ## 
            # A list of Group Policy Object files uploaded.
            @group_policy_object_files
            ## 
            # The available group policy uploaded definition files for this account.
            @group_policy_uploaded_definition_files
            ## 
            # BIOS configuration and other settings provides customers the ability to configure hardware/bios settings on the enrolled Windows 10/11 Entra ID joined devices by uploading a configuration file generated with their OEM tool (e.g. Dell Command tool). A BIOS configuration policy can be assigned to multiple devices, allowing admins to remotely control a device's hardware properties (e.g. enable Secure Boot) from the Intune Portal. Supported for Dell only at this time.
            @hardware_configurations
            ## 
            # Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password.
            @hardware_password_details
            ## 
            # Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices. Starting from June, 2024 (Intune Release 2406), this type will no longer be supported and will be marked as deprecated
            @hardware_password_info
            ## 
            # The imported device identities.
            @imported_device_identities
            ## 
            # Collection of imported Windows autopilot devices.
            @imported_windows_autopilot_device_identities
            ## 
            # The device management intents
            @intents
            ## 
            # Intune Account ID for given tenant
            @intune_account_id
            ## 
            # intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            @intune_brand
            ## 
            # Intune branding profiles targeted to AAD groups
            @intune_branding_profiles
            ## 
            # The IOS software update installation statuses for this account.
            @ios_update_statuses
            ## 
            # The last modified time of reporting for this account. This property is read-only.
            @last_report_aggregation_date_time
            ## 
            # The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.
            @legacy_pc_manangement_enabled
            ## 
            # The MacOS software update account summaries for this account.
            @mac_o_s_software_update_account_summaries
            ## 
            # Device cleanup rule V2
            @managed_device_cleanup_rules
            ## 
            # Device cleanup rule
            @managed_device_cleanup_settings
            ## 
            # Encryption report for devices in this account
            @managed_device_encryption_states
            ## 
            # Device overview
            @managed_device_overview
            ## 
            # A list of ManagedDeviceWindowsOperatingSystemImages
            @managed_device_windows_o_s_images
            ## 
            # The list of managed devices.
            @managed_devices
            ## 
            # Maximum number of DEP tokens allowed per-tenant.
            @maximum_dep_tokens
            ## 
            # Collection of MicrosoftTunnelConfiguration settings associated with account.
            @microsoft_tunnel_configurations
            ## 
            # Collection of MicrosoftTunnelHealthThreshold settings associated with account.
            @microsoft_tunnel_health_thresholds
            ## 
            # Collection of MicrosoftTunnelServerLogCollectionResponse settings associated with account.
            @microsoft_tunnel_server_log_collection_responses
            ## 
            # Collection of MicrosoftTunnelSite settings associated with account.
            @microsoft_tunnel_sites
            ## 
            # The collection property of MobileAppTroubleshootingEvent.
            @mobile_app_troubleshooting_events
            ## 
            # The list of Mobile threat Defense connectors configured by the tenant.
            @mobile_threat_defense_connectors
            ## 
            # The monitoring property
            @monitoring
            ## 
            # The collection of Ndes connectors for this account.
            @ndes_connectors
            ## 
            # The Notification Message Templates.
            @notification_message_templates
            ## 
            # The Operation Approval Policies
            @operation_approval_policies
            ## 
            # The Operation Approval Requests
            @operation_approval_requests
            ## 
            # The endpoint privilege management elevation event entity contains elevation details.
            @privilege_management_elevations
            ## 
            # The list of device remote action audits with the tenant.
            @remote_action_audits
            ## 
            # The remote assist partners.
            @remote_assistance_partners
            ## 
            # The remote assistance settings singleton
            @remote_assistance_settings
            ## 
            # Reports singleton
            @reports
            ## 
            # Collection of resource access settings associated with account.
            @resource_access_profiles
            ## 
            # The Resource Operations.
            @resource_operations
            ## 
            # List of all reusable settings that can be referred in a policy
            @reusable_policy_settings
            ## 
            # List of all reusable settings
            @reusable_settings
            ## 
            # The Role Assignments.
            @role_assignments
            ## 
            # The Role Definitions.
            @role_definitions
            ## 
            # The Role Scope Tags.
            @role_scope_tags
            ## 
            # A list of ServiceNowConnections
            @service_now_connections
            ## 
            # The device management intent setting definitions
            @setting_definitions
            ## 
            # Account level settings.
            @settings
            ## 
            # The software update status summary.
            @software_update_status_summary
            ## 
            # Tenant mobile device management subscription state.
            @subscription_state
            ## 
            # Tenant mobile device management subscriptions.
            @subscriptions
            ## 
            # The telecom expense management partners.
            @telecom_expense_management_partners
            ## 
            # List of setting insights in a template
            @template_insights
            ## 
            # List of all TemplateSettings
            @template_settings
            ## 
            # The available templates
            @templates
            ## 
            # TenantAttach RBAC Enablement
            @tenant_attach_r_b_a_c
            ## 
            # The terms and conditions associated with device management of the company.
            @terms_and_conditions
            ## 
            # The list of troubleshooting events for the tenant.
            @troubleshooting_events
            ## 
            # When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.
            @unlicensed_adminstrators_enabled
            ## 
            # The user experience analytics anomaly entity contains anomaly details.
            @user_experience_analytics_anomaly
            ## 
            # The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.
            @user_experience_analytics_anomaly_correlation_group_overview
            ## 
            # The user experience analytics anomaly entity contains device details.
            @user_experience_analytics_anomaly_device
            ## 
            # The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.
            @user_experience_analytics_anomaly_severity_overview
            ## 
            # User experience analytics appHealth Application Performance
            @user_experience_analytics_app_health_application_performance
            ## 
            # User experience analytics appHealth Application Performance by App Version
            @user_experience_analytics_app_health_application_performance_by_app_version
            ## 
            # User experience analytics appHealth Application Performance by App Version details
            @user_experience_analytics_app_health_application_performance_by_app_version_details
            ## 
            # User experience analytics appHealth Application Performance by App Version Device Id
            @user_experience_analytics_app_health_application_performance_by_app_version_device_id
            ## 
            # User experience analytics appHealth Application Performance by OS Version
            @user_experience_analytics_app_health_application_performance_by_o_s_version
            ## 
            # User experience analytics appHealth Model Performance
            @user_experience_analytics_app_health_device_model_performance
            ## 
            # User experience analytics appHealth Device Performance
            @user_experience_analytics_app_health_device_performance
            ## 
            # User experience analytics device performance details
            @user_experience_analytics_app_health_device_performance_details
            ## 
            # User experience analytics appHealth OS version Performance
            @user_experience_analytics_app_health_o_s_version_performance
            ## 
            # User experience analytics appHealth overview
            @user_experience_analytics_app_health_overview
            ## 
            # User experience analytics baselines
            @user_experience_analytics_baselines
            ## 
            # User Experience Analytics Battery Health App Impact
            @user_experience_analytics_battery_health_app_impact
            ## 
            # User Experience Analytics Battery Health Capacity Details
            @user_experience_analytics_battery_health_capacity_details
            ## 
            # User Experience Analytics Battery Health Device App Impact
            @user_experience_analytics_battery_health_device_app_impact
            ## 
            # User Experience Analytics Battery Health Device Performance
            @user_experience_analytics_battery_health_device_performance
            ## 
            # User Experience Analytics Battery Health Device Runtime History
            @user_experience_analytics_battery_health_device_runtime_history
            ## 
            # User Experience Analytics Battery Health Model Performance
            @user_experience_analytics_battery_health_model_performance
            ## 
            # User Experience Analytics Battery Health Os Performance
            @user_experience_analytics_battery_health_os_performance
            ## 
            # User Experience Analytics Battery Health Runtime Details
            @user_experience_analytics_battery_health_runtime_details
            ## 
            # User experience analytics categories
            @user_experience_analytics_categories
            ## 
            # User experience analytics device metric history
            @user_experience_analytics_device_metric_history
            ## 
            # User experience analytics device performance
            @user_experience_analytics_device_performance
            ## 
            # The user experience analytics device scope entity endpoint to trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
            @user_experience_analytics_device_scope
            ## 
            # The user experience analytics device scope entity contains device scope configuration use to apply filtering on the endpoint analytics reports.
            @user_experience_analytics_device_scopes
            ## 
            # User experience analytics device scores
            @user_experience_analytics_device_scores
            ## 
            # User experience analytics device Startup History
            @user_experience_analytics_device_startup_history
            ## 
            # User experience analytics device Startup Process Performance
            @user_experience_analytics_device_startup_process_performance
            ## 
            # User experience analytics device Startup Processes
            @user_experience_analytics_device_startup_processes
            ## 
            # The user experience analytics device events entity contains NRT device timeline event details.
            @user_experience_analytics_device_timeline_event
            ## 
            # User experience analytics devices without cloud identity.
            @user_experience_analytics_devices_without_cloud_identity
            ## 
            # User experience analytics impacting process
            @user_experience_analytics_impacting_process
            ## 
            # User experience analytics metric history
            @user_experience_analytics_metric_history
            ## 
            # User experience analytics model scores
            @user_experience_analytics_model_scores
            ## 
            # User experience analytics devices not Windows Autopilot ready.
            @user_experience_analytics_not_autopilot_ready_device
            ## 
            # User experience analytics overview
            @user_experience_analytics_overview
            ## 
            # User experience analytics remote connection
            @user_experience_analytics_remote_connection
            ## 
            # User experience analytics resource performance
            @user_experience_analytics_resource_performance
            ## 
            # User experience analytics device Startup Score History
            @user_experience_analytics_score_history
            ## 
            # User experience analytics device settings
            @user_experience_analytics_settings
            ## 
            # User experience analytics work from anywhere hardware readiness metrics.
            @user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            ## 
            # User experience analytics work from anywhere metrics.
            @user_experience_analytics_work_from_anywhere_metrics
            ## 
            # The user experience analytics work from anywhere model performance
            @user_experience_analytics_work_from_anywhere_model_performance
            ## 
            # Collection of PFX certificates associated with a user.
            @user_pfx_certificates
            ## 
            # The virtualEndpoint property
            @virtual_endpoint
            ## 
            # Windows auto pilot deployment profiles
            @windows_autopilot_deployment_profiles
            ## 
            # The Windows autopilot device identities contained collection.
            @windows_autopilot_device_identities
            ## 
            # The Windows autopilot account settings.
            @windows_autopilot_settings
            ## 
            # A collection of windows driver update profiles
            @windows_driver_update_profiles
            ## 
            # A collection of windows feature update profiles
            @windows_feature_update_profiles
            ## 
            # The windows information protection app learning summaries.
            @windows_information_protection_app_learning_summaries
            ## 
            # The windows information protection network learning summaries.
            @windows_information_protection_network_learning_summaries
            ## 
            # The list of affected malware in the tenant.
            @windows_malware_information
            ## 
            # Malware overview for windows devices.
            @windows_malware_overview
            ## 
            # A collection of Windows quality update policies
            @windows_quality_update_policies
            ## 
            # A collection of windows quality update profiles
            @windows_quality_update_profiles
            ## 
            # A collection of windows update catalog items (fetaure updates item , quality updates item)
            @windows_update_catalog_items
            ## 
            # The Collection of ZebraFotaArtifacts.
            @zebra_fota_artifacts
            ## 
            # The singleton ZebraFotaConnector associated with account.
            @zebra_fota_connector
            ## 
            # Collection of ZebraFotaDeployments associated with account.
            @zebra_fota_deployments
            ## 
            ## Gets the accountMoveCompletionDateTime property value. The date & time when tenant data moved between scaleunits.
            ## @return a date_time
            ## 
            def account_move_completion_date_time
                return @account_move_completion_date_time
            end
            ## 
            ## Sets the accountMoveCompletionDateTime property value. The date & time when tenant data moved between scaleunits.
            ## @param value Value to set for the accountMoveCompletionDateTime property.
            ## @return a void
            ## 
            def account_move_completion_date_time=(value)
                @account_move_completion_date_time = value
            end
            ## 
            ## Gets the adminConsent property value. Admin consent information.
            ## @return a admin_consent
            ## 
            def admin_consent
                return @admin_consent
            end
            ## 
            ## Sets the adminConsent property value. Admin consent information.
            ## @param value Value to set for the adminConsent property.
            ## @return a void
            ## 
            def admin_consent=(value)
                @admin_consent = value
            end
            ## 
            ## Gets the advancedThreatProtectionOnboardingStateSummary property value. The summary state of ATP onboarding state for this account.
            ## @return a advanced_threat_protection_onboarding_state_summary
            ## 
            def advanced_threat_protection_onboarding_state_summary
                return @advanced_threat_protection_onboarding_state_summary
            end
            ## 
            ## Sets the advancedThreatProtectionOnboardingStateSummary property value. The summary state of ATP onboarding state for this account.
            ## @param value Value to set for the advancedThreatProtectionOnboardingStateSummary property.
            ## @return a void
            ## 
            def advanced_threat_protection_onboarding_state_summary=(value)
                @advanced_threat_protection_onboarding_state_summary = value
            end
            ## 
            ## Gets the androidDeviceOwnerEnrollmentProfiles property value. Android device owner enrollment profile entities.
            ## @return a android_device_owner_enrollment_profile
            ## 
            def android_device_owner_enrollment_profiles
                return @android_device_owner_enrollment_profiles
            end
            ## 
            ## Sets the androidDeviceOwnerEnrollmentProfiles property value. Android device owner enrollment profile entities.
            ## @param value Value to set for the androidDeviceOwnerEnrollmentProfiles property.
            ## @return a void
            ## 
            def android_device_owner_enrollment_profiles=(value)
                @android_device_owner_enrollment_profiles = value
            end
            ## 
            ## Gets the androidForWorkAppConfigurationSchemas property value. Android for Work app configuration schema entities.
            ## @return a android_for_work_app_configuration_schema
            ## 
            def android_for_work_app_configuration_schemas
                return @android_for_work_app_configuration_schemas
            end
            ## 
            ## Sets the androidForWorkAppConfigurationSchemas property value. Android for Work app configuration schema entities.
            ## @param value Value to set for the androidForWorkAppConfigurationSchemas property.
            ## @return a void
            ## 
            def android_for_work_app_configuration_schemas=(value)
                @android_for_work_app_configuration_schemas = value
            end
            ## 
            ## Gets the androidForWorkEnrollmentProfiles property value. Android for Work enrollment profile entities.
            ## @return a android_for_work_enrollment_profile
            ## 
            def android_for_work_enrollment_profiles
                return @android_for_work_enrollment_profiles
            end
            ## 
            ## Sets the androidForWorkEnrollmentProfiles property value. Android for Work enrollment profile entities.
            ## @param value Value to set for the androidForWorkEnrollmentProfiles property.
            ## @return a void
            ## 
            def android_for_work_enrollment_profiles=(value)
                @android_for_work_enrollment_profiles = value
            end
            ## 
            ## Gets the androidForWorkSettings property value. The singleton Android for Work settings entity.
            ## @return a android_for_work_settings
            ## 
            def android_for_work_settings
                return @android_for_work_settings
            end
            ## 
            ## Sets the androidForWorkSettings property value. The singleton Android for Work settings entity.
            ## @param value Value to set for the androidForWorkSettings property.
            ## @return a void
            ## 
            def android_for_work_settings=(value)
                @android_for_work_settings = value
            end
            ## 
            ## Gets the androidManagedStoreAccountEnterpriseSettings property value. The singleton Android managed store account enterprise settings entity.
            ## @return a android_managed_store_account_enterprise_settings
            ## 
            def android_managed_store_account_enterprise_settings
                return @android_managed_store_account_enterprise_settings
            end
            ## 
            ## Sets the androidManagedStoreAccountEnterpriseSettings property value. The singleton Android managed store account enterprise settings entity.
            ## @param value Value to set for the androidManagedStoreAccountEnterpriseSettings property.
            ## @return a void
            ## 
            def android_managed_store_account_enterprise_settings=(value)
                @android_managed_store_account_enterprise_settings = value
            end
            ## 
            ## Gets the androidManagedStoreAppConfigurationSchemas property value. Android Enterprise app configuration schema entities.
            ## @return a android_managed_store_app_configuration_schema
            ## 
            def android_managed_store_app_configuration_schemas
                return @android_managed_store_app_configuration_schemas
            end
            ## 
            ## Sets the androidManagedStoreAppConfigurationSchemas property value. Android Enterprise app configuration schema entities.
            ## @param value Value to set for the androidManagedStoreAppConfigurationSchemas property.
            ## @return a void
            ## 
            def android_managed_store_app_configuration_schemas=(value)
                @android_managed_store_app_configuration_schemas = value
            end
            ## 
            ## Gets the applePushNotificationCertificate property value. Apple push notification certificate.
            ## @return a apple_push_notification_certificate
            ## 
            def apple_push_notification_certificate
                return @apple_push_notification_certificate
            end
            ## 
            ## Sets the applePushNotificationCertificate property value. Apple push notification certificate.
            ## @param value Value to set for the applePushNotificationCertificate property.
            ## @return a void
            ## 
            def apple_push_notification_certificate=(value)
                @apple_push_notification_certificate = value
            end
            ## 
            ## Gets the appleUserInitiatedEnrollmentProfiles property value. Apple user initiated enrollment profiles
            ## @return a apple_user_initiated_enrollment_profile
            ## 
            def apple_user_initiated_enrollment_profiles
                return @apple_user_initiated_enrollment_profiles
            end
            ## 
            ## Sets the appleUserInitiatedEnrollmentProfiles property value. Apple user initiated enrollment profiles
            ## @param value Value to set for the appleUserInitiatedEnrollmentProfiles property.
            ## @return a void
            ## 
            def apple_user_initiated_enrollment_profiles=(value)
                @apple_user_initiated_enrollment_profiles = value
            end
            ## 
            ## Gets the assignmentFilters property value. The list of assignment filters
            ## @return a device_and_app_management_assignment_filter
            ## 
            def assignment_filters
                return @assignment_filters
            end
            ## 
            ## Sets the assignmentFilters property value. The list of assignment filters
            ## @param value Value to set for the assignmentFilters property.
            ## @return a void
            ## 
            def assignment_filters=(value)
                @assignment_filters = value
            end
            ## 
            ## Gets the auditEvents property value. The Audit Events
            ## @return a audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. The Audit Events
            ## @param value Value to set for the auditEvents property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Gets the autopilotEvents property value. The list of autopilot events for the tenant.
            ## @return a device_management_autopilot_event
            ## 
            def autopilot_events
                return @autopilot_events
            end
            ## 
            ## Sets the autopilotEvents property value. The list of autopilot events for the tenant.
            ## @param value Value to set for the autopilotEvents property.
            ## @return a void
            ## 
            def autopilot_events=(value)
                @autopilot_events = value
            end
            ## 
            ## Gets the cartToClassAssociations property value. The Cart To Class Associations.
            ## @return a cart_to_class_association
            ## 
            def cart_to_class_associations
                return @cart_to_class_associations
            end
            ## 
            ## Sets the cartToClassAssociations property value. The Cart To Class Associations.
            ## @param value Value to set for the cartToClassAssociations property.
            ## @return a void
            ## 
            def cart_to_class_associations=(value)
                @cart_to_class_associations = value
            end
            ## 
            ## Gets the categories property value. The available categories
            ## @return a device_management_setting_category
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. The available categories
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Gets the certificateConnectorDetails property value. Collection of certificate connector details, each associated with a corresponding Intune Certificate Connector.
            ## @return a certificate_connector_details
            ## 
            def certificate_connector_details
                return @certificate_connector_details
            end
            ## 
            ## Sets the certificateConnectorDetails property value. Collection of certificate connector details, each associated with a corresponding Intune Certificate Connector.
            ## @param value Value to set for the certificateConnectorDetails property.
            ## @return a void
            ## 
            def certificate_connector_details=(value)
                @certificate_connector_details = value
            end
            ## 
            ## Gets the chromeOSOnboardingSettings property value. Collection of ChromeOSOnboardingSettings settings associated with account.
            ## @return a chrome_o_s_onboarding_settings
            ## 
            def chrome_o_s_onboarding_settings
                return @chrome_o_s_onboarding_settings
            end
            ## 
            ## Sets the chromeOSOnboardingSettings property value. Collection of ChromeOSOnboardingSettings settings associated with account.
            ## @param value Value to set for the chromeOSOnboardingSettings property.
            ## @return a void
            ## 
            def chrome_o_s_onboarding_settings=(value)
                @chrome_o_s_onboarding_settings = value
            end
            ## 
            ## Gets the cloudPCConnectivityIssues property value. The list of CloudPC Connectivity Issue.
            ## @return a cloud_p_c_connectivity_issue
            ## 
            def cloud_p_c_connectivity_issues
                return @cloud_p_c_connectivity_issues
            end
            ## 
            ## Sets the cloudPCConnectivityIssues property value. The list of CloudPC Connectivity Issue.
            ## @param value Value to set for the cloudPCConnectivityIssues property.
            ## @return a void
            ## 
            def cloud_p_c_connectivity_issues=(value)
                @cloud_p_c_connectivity_issues = value
            end
            ## 
            ## Gets the comanagedDevices property value. The list of co-managed devices report
            ## @return a managed_device
            ## 
            def comanaged_devices
                return @comanaged_devices
            end
            ## 
            ## Sets the comanagedDevices property value. The list of co-managed devices report
            ## @param value Value to set for the comanagedDevices property.
            ## @return a void
            ## 
            def comanaged_devices=(value)
                @comanaged_devices = value
            end
            ## 
            ## Gets the comanagementEligibleDevices property value. The list of co-management eligible devices report
            ## @return a comanagement_eligible_device
            ## 
            def comanagement_eligible_devices
                return @comanagement_eligible_devices
            end
            ## 
            ## Sets the comanagementEligibleDevices property value. The list of co-management eligible devices report
            ## @param value Value to set for the comanagementEligibleDevices property.
            ## @return a void
            ## 
            def comanagement_eligible_devices=(value)
                @comanagement_eligible_devices = value
            end
            ## 
            ## Gets the complianceCategories property value. List of all compliance categories
            ## @return a device_management_configuration_category
            ## 
            def compliance_categories
                return @compliance_categories
            end
            ## 
            ## Sets the complianceCategories property value. List of all compliance categories
            ## @param value Value to set for the complianceCategories property.
            ## @return a void
            ## 
            def compliance_categories=(value)
                @compliance_categories = value
            end
            ## 
            ## Gets the complianceManagementPartners property value. The list of Compliance Management Partners configured by the tenant.
            ## @return a compliance_management_partner
            ## 
            def compliance_management_partners
                return @compliance_management_partners
            end
            ## 
            ## Sets the complianceManagementPartners property value. The list of Compliance Management Partners configured by the tenant.
            ## @param value Value to set for the complianceManagementPartners property.
            ## @return a void
            ## 
            def compliance_management_partners=(value)
                @compliance_management_partners = value
            end
            ## 
            ## Gets the compliancePolicies property value. List of all compliance policies
            ## @return a device_management_compliance_policy
            ## 
            def compliance_policies
                return @compliance_policies
            end
            ## 
            ## Sets the compliancePolicies property value. List of all compliance policies
            ## @param value Value to set for the compliancePolicies property.
            ## @return a void
            ## 
            def compliance_policies=(value)
                @compliance_policies = value
            end
            ## 
            ## Gets the complianceSettings property value. List of all ComplianceSettings
            ## @return a device_management_configuration_setting_definition
            ## 
            def compliance_settings
                return @compliance_settings
            end
            ## 
            ## Sets the complianceSettings property value. List of all ComplianceSettings
            ## @param value Value to set for the complianceSettings property.
            ## @return a void
            ## 
            def compliance_settings=(value)
                @compliance_settings = value
            end
            ## 
            ## Gets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            ## @return a on_premises_conditional_access_settings
            ## 
            def conditional_access_settings
                return @conditional_access_settings
            end
            ## 
            ## Sets the conditionalAccessSettings property value. The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access
            ## @param value Value to set for the conditionalAccessSettings property.
            ## @return a void
            ## 
            def conditional_access_settings=(value)
                @conditional_access_settings = value
            end
            ## 
            ## Gets the configManagerCollections property value. A list of ConfigManagerCollection
            ## @return a config_manager_collection
            ## 
            def config_manager_collections
                return @config_manager_collections
            end
            ## 
            ## Sets the configManagerCollections property value. A list of ConfigManagerCollection
            ## @param value Value to set for the configManagerCollections property.
            ## @return a void
            ## 
            def config_manager_collections=(value)
                @config_manager_collections = value
            end
            ## 
            ## Gets the configurationCategories property value. List of all Configuration Categories
            ## @return a device_management_configuration_category
            ## 
            def configuration_categories
                return @configuration_categories
            end
            ## 
            ## Sets the configurationCategories property value. List of all Configuration Categories
            ## @param value Value to set for the configurationCategories property.
            ## @return a void
            ## 
            def configuration_categories=(value)
                @configuration_categories = value
            end
            ## 
            ## Gets the configurationPolicies property value. List of all Configuration policies
            ## @return a device_management_configuration_policy
            ## 
            def configuration_policies
                return @configuration_policies
            end
            ## 
            ## Sets the configurationPolicies property value. List of all Configuration policies
            ## @param value Value to set for the configurationPolicies property.
            ## @return a void
            ## 
            def configuration_policies=(value)
                @configuration_policies = value
            end
            ## 
            ## Gets the configurationPolicyTemplates property value. List of all templates
            ## @return a device_management_configuration_policy_template
            ## 
            def configuration_policy_templates
                return @configuration_policy_templates
            end
            ## 
            ## Sets the configurationPolicyTemplates property value. List of all templates
            ## @param value Value to set for the configurationPolicyTemplates property.
            ## @return a void
            ## 
            def configuration_policy_templates=(value)
                @configuration_policy_templates = value
            end
            ## 
            ## Gets the configurationSettings property value. List of all ConfigurationSettings
            ## @return a device_management_configuration_setting_definition
            ## 
            def configuration_settings
                return @configuration_settings
            end
            ## 
            ## Sets the configurationSettings property value. List of all ConfigurationSettings
            ## @param value Value to set for the configurationSettings property.
            ## @return a void
            ## 
            def configuration_settings=(value)
                @configuration_settings = value
            end
            ## 
            ## Gets the connectorStatus property value. The list of connector status for the tenant.
            ## @return a connector_status_details
            ## 
            def connector_status
                return @connector_status
            end
            ## 
            ## Sets the connectorStatus property value. The list of connector status for the tenant.
            ## @param value Value to set for the connectorStatus property.
            ## @return a void
            ## 
            def connector_status=(value)
                @connector_status = value
            end
            ## 
            ## Instantiates a new DeviceManagementModelModelModelModelModelModelModel and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_model_model_model_model_model_model_model
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementModelModelModelModelModelModelModel.new
            end
            ## 
            ## Gets the dataProcessorServiceForWindowsFeaturesOnboarding property value. A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.
            ## @return a data_processor_service_for_windows_features_onboarding
            ## 
            def data_processor_service_for_windows_features_onboarding
                return @data_processor_service_for_windows_features_onboarding
            end
            ## 
            ## Sets the dataProcessorServiceForWindowsFeaturesOnboarding property value. A configuration entity for MEM features that utilize Data Processor Service for Windows (DPSW) data.
            ## @param value Value to set for the dataProcessorServiceForWindowsFeaturesOnboarding property.
            ## @return a void
            ## 
            def data_processor_service_for_windows_features_onboarding=(value)
                @data_processor_service_for_windows_features_onboarding = value
            end
            ## 
            ## Gets the dataSharingConsents property value. Data sharing consents.
            ## @return a data_sharing_consent
            ## 
            def data_sharing_consents
                return @data_sharing_consents
            end
            ## 
            ## Sets the dataSharingConsents property value. Data sharing consents.
            ## @param value Value to set for the dataSharingConsents property.
            ## @return a void
            ## 
            def data_sharing_consents=(value)
                @data_sharing_consents = value
            end
            ## 
            ## Gets the depOnboardingSettings property value. This collections of multiple DEP tokens per-tenant.
            ## @return a dep_onboarding_setting
            ## 
            def dep_onboarding_settings
                return @dep_onboarding_settings
            end
            ## 
            ## Sets the depOnboardingSettings property value. This collections of multiple DEP tokens per-tenant.
            ## @param value Value to set for the depOnboardingSettings property.
            ## @return a void
            ## 
            def dep_onboarding_settings=(value)
                @dep_onboarding_settings = value
            end
            ## 
            ## Gets the derivedCredentials property value. Collection of Derived credential settings associated with account.
            ## @return a device_management_derived_credential_settings
            ## 
            def derived_credentials
                return @derived_credentials
            end
            ## 
            ## Sets the derivedCredentials property value. Collection of Derived credential settings associated with account.
            ## @param value Value to set for the derivedCredentials property.
            ## @return a void
            ## 
            def derived_credentials=(value)
                @derived_credentials = value
            end
            ## 
            ## Gets the detectedApps property value. The list of detected apps associated with a device.
            ## @return a detected_app
            ## 
            def detected_apps
                return @detected_apps
            end
            ## 
            ## Sets the detectedApps property value. The list of detected apps associated with a device.
            ## @param value Value to set for the detectedApps property.
            ## @return a void
            ## 
            def detected_apps=(value)
                @detected_apps = value
            end
            ## 
            ## Gets the deviceCategories property value. The list of device categories with the tenant.
            ## @return a device_category
            ## 
            def device_categories
                return @device_categories
            end
            ## 
            ## Sets the deviceCategories property value. The list of device categories with the tenant.
            ## @param value Value to set for the deviceCategories property.
            ## @return a void
            ## 
            def device_categories=(value)
                @device_categories = value
            end
            ## 
            ## Gets the deviceCompliancePolicies property value. The device compliance policies.
            ## @return a device_compliance_policy
            ## 
            def device_compliance_policies
                return @device_compliance_policies
            end
            ## 
            ## Sets the deviceCompliancePolicies property value. The device compliance policies.
            ## @param value Value to set for the deviceCompliancePolicies property.
            ## @return a void
            ## 
            def device_compliance_policies=(value)
                @device_compliance_policies = value
            end
            ## 
            ## Gets the deviceCompliancePolicyDeviceStateSummary property value. The device compliance state summary for this account.
            ## @return a device_compliance_policy_device_state_summary
            ## 
            def device_compliance_policy_device_state_summary
                return @device_compliance_policy_device_state_summary
            end
            ## 
            ## Sets the deviceCompliancePolicyDeviceStateSummary property value. The device compliance state summary for this account.
            ## @param value Value to set for the deviceCompliancePolicyDeviceStateSummary property.
            ## @return a void
            ## 
            def device_compliance_policy_device_state_summary=(value)
                @device_compliance_policy_device_state_summary = value
            end
            ## 
            ## Gets the deviceCompliancePolicySettingStateSummaries property value. The summary states of compliance policy settings for this account.
            ## @return a device_compliance_policy_setting_state_summary
            ## 
            def device_compliance_policy_setting_state_summaries
                return @device_compliance_policy_setting_state_summaries
            end
            ## 
            ## Sets the deviceCompliancePolicySettingStateSummaries property value. The summary states of compliance policy settings for this account.
            ## @param value Value to set for the deviceCompliancePolicySettingStateSummaries property.
            ## @return a void
            ## 
            def device_compliance_policy_setting_state_summaries=(value)
                @device_compliance_policy_setting_state_summaries = value
            end
            ## 
            ## Gets the deviceComplianceReportSummarizationDateTime property value. The last requested time of device compliance reporting for this account. This property is read-only.
            ## @return a date_time
            ## 
            def device_compliance_report_summarization_date_time
                return @device_compliance_report_summarization_date_time
            end
            ## 
            ## Sets the deviceComplianceReportSummarizationDateTime property value. The last requested time of device compliance reporting for this account. This property is read-only.
            ## @param value Value to set for the deviceComplianceReportSummarizationDateTime property.
            ## @return a void
            ## 
            def device_compliance_report_summarization_date_time=(value)
                @device_compliance_report_summarization_date_time = value
            end
            ## 
            ## Gets the deviceComplianceScripts property value. The list of device compliance scripts associated with the tenant.
            ## @return a device_compliance_script
            ## 
            def device_compliance_scripts
                return @device_compliance_scripts
            end
            ## 
            ## Sets the deviceComplianceScripts property value. The list of device compliance scripts associated with the tenant.
            ## @param value Value to set for the deviceComplianceScripts property.
            ## @return a void
            ## 
            def device_compliance_scripts=(value)
                @device_compliance_scripts = value
            end
            ## 
            ## Gets the deviceConfigurationConflictSummary property value. Summary of policies in conflict state for this account.
            ## @return a device_configuration_conflict_summary
            ## 
            def device_configuration_conflict_summary
                return @device_configuration_conflict_summary
            end
            ## 
            ## Sets the deviceConfigurationConflictSummary property value. Summary of policies in conflict state for this account.
            ## @param value Value to set for the deviceConfigurationConflictSummary property.
            ## @return a void
            ## 
            def device_configuration_conflict_summary=(value)
                @device_configuration_conflict_summary = value
            end
            ## 
            ## Gets the deviceConfigurationDeviceStateSummaries property value. The device configuration device state summary for this account.
            ## @return a device_configuration_device_state_summary
            ## 
            def device_configuration_device_state_summaries
                return @device_configuration_device_state_summaries
            end
            ## 
            ## Sets the deviceConfigurationDeviceStateSummaries property value. The device configuration device state summary for this account.
            ## @param value Value to set for the deviceConfigurationDeviceStateSummaries property.
            ## @return a void
            ## 
            def device_configuration_device_state_summaries=(value)
                @device_configuration_device_state_summaries = value
            end
            ## 
            ## Gets the deviceConfigurationProfiles property value. Profile Id of the object.
            ## @return a device_configuration_profile
            ## 
            def device_configuration_profiles
                return @device_configuration_profiles
            end
            ## 
            ## Sets the deviceConfigurationProfiles property value. Profile Id of the object.
            ## @param value Value to set for the deviceConfigurationProfiles property.
            ## @return a void
            ## 
            def device_configuration_profiles=(value)
                @device_configuration_profiles = value
            end
            ## 
            ## Gets the deviceConfigurationRestrictedAppsViolations property value. Restricted apps violations for this account.
            ## @return a restricted_apps_violation
            ## 
            def device_configuration_restricted_apps_violations
                return @device_configuration_restricted_apps_violations
            end
            ## 
            ## Sets the deviceConfigurationRestrictedAppsViolations property value. Restricted apps violations for this account.
            ## @param value Value to set for the deviceConfigurationRestrictedAppsViolations property.
            ## @return a void
            ## 
            def device_configuration_restricted_apps_violations=(value)
                @device_configuration_restricted_apps_violations = value
            end
            ## 
            ## Gets the deviceConfigurationUserStateSummaries property value. The device configuration user state summary for this account.
            ## @return a device_configuration_user_state_summary
            ## 
            def device_configuration_user_state_summaries
                return @device_configuration_user_state_summaries
            end
            ## 
            ## Sets the deviceConfigurationUserStateSummaries property value. The device configuration user state summary for this account.
            ## @param value Value to set for the deviceConfigurationUserStateSummaries property.
            ## @return a void
            ## 
            def device_configuration_user_state_summaries=(value)
                @device_configuration_user_state_summaries = value
            end
            ## 
            ## Gets the deviceConfigurations property value. The device configurations.
            ## @return a device_configuration
            ## 
            def device_configurations
                return @device_configurations
            end
            ## 
            ## Sets the deviceConfigurations property value. The device configurations.
            ## @param value Value to set for the deviceConfigurations property.
            ## @return a void
            ## 
            def device_configurations=(value)
                @device_configurations = value
            end
            ## 
            ## Gets the deviceConfigurationsAllManagedDeviceCertificateStates property value. Summary of all certificates for all devices.
            ## @return a managed_all_device_certificate_state
            ## 
            def device_configurations_all_managed_device_certificate_states
                return @device_configurations_all_managed_device_certificate_states
            end
            ## 
            ## Sets the deviceConfigurationsAllManagedDeviceCertificateStates property value. Summary of all certificates for all devices.
            ## @param value Value to set for the deviceConfigurationsAllManagedDeviceCertificateStates property.
            ## @return a void
            ## 
            def device_configurations_all_managed_device_certificate_states=(value)
                @device_configurations_all_managed_device_certificate_states = value
            end
            ## 
            ## Gets the deviceCustomAttributeShellScripts property value. The list of device custom attribute shell scripts associated with the tenant.
            ## @return a device_custom_attribute_shell_script
            ## 
            def device_custom_attribute_shell_scripts
                return @device_custom_attribute_shell_scripts
            end
            ## 
            ## Sets the deviceCustomAttributeShellScripts property value. The list of device custom attribute shell scripts associated with the tenant.
            ## @param value Value to set for the deviceCustomAttributeShellScripts property.
            ## @return a void
            ## 
            def device_custom_attribute_shell_scripts=(value)
                @device_custom_attribute_shell_scripts = value
            end
            ## 
            ## Gets the deviceEnrollmentConfigurations property value. The list of device enrollment configurations
            ## @return a device_enrollment_configuration
            ## 
            def device_enrollment_configurations
                return @device_enrollment_configurations
            end
            ## 
            ## Sets the deviceEnrollmentConfigurations property value. The list of device enrollment configurations
            ## @param value Value to set for the deviceEnrollmentConfigurations property.
            ## @return a void
            ## 
            def device_enrollment_configurations=(value)
                @device_enrollment_configurations = value
            end
            ## 
            ## Gets the deviceHealthScripts property value. The list of device health scripts associated with the tenant.
            ## @return a device_health_script
            ## 
            def device_health_scripts
                return @device_health_scripts
            end
            ## 
            ## Sets the deviceHealthScripts property value. The list of device health scripts associated with the tenant.
            ## @param value Value to set for the deviceHealthScripts property.
            ## @return a void
            ## 
            def device_health_scripts=(value)
                @device_health_scripts = value
            end
            ## 
            ## Gets the deviceManagementPartners property value. The list of Device Management Partners configured by the tenant.
            ## @return a device_management_partner
            ## 
            def device_management_partners
                return @device_management_partners
            end
            ## 
            ## Sets the deviceManagementPartners property value. The list of Device Management Partners configured by the tenant.
            ## @param value Value to set for the deviceManagementPartners property.
            ## @return a void
            ## 
            def device_management_partners=(value)
                @device_management_partners = value
            end
            ## 
            ## Gets the deviceManagementScripts property value. The list of device management scripts associated with the tenant.
            ## @return a device_management_script
            ## 
            def device_management_scripts
                return @device_management_scripts
            end
            ## 
            ## Sets the deviceManagementScripts property value. The list of device management scripts associated with the tenant.
            ## @param value Value to set for the deviceManagementScripts property.
            ## @return a void
            ## 
            def device_management_scripts=(value)
                @device_management_scripts = value
            end
            ## 
            ## Gets the deviceProtectionOverview property value. Device protection overview.
            ## @return a device_protection_overview
            ## 
            def device_protection_overview
                return @device_protection_overview
            end
            ## 
            ## Sets the deviceProtectionOverview property value. Device protection overview.
            ## @param value Value to set for the deviceProtectionOverview property.
            ## @return a void
            ## 
            def device_protection_overview=(value)
                @device_protection_overview = value
            end
            ## 
            ## Gets the deviceShellScripts property value. The list of device shell scripts associated with the tenant.
            ## @return a device_shell_script
            ## 
            def device_shell_scripts
                return @device_shell_scripts
            end
            ## 
            ## Sets the deviceShellScripts property value. The list of device shell scripts associated with the tenant.
            ## @param value Value to set for the deviceShellScripts property.
            ## @return a void
            ## 
            def device_shell_scripts=(value)
                @device_shell_scripts = value
            end
            ## 
            ## Gets the domainJoinConnectors property value. A list of connector objects.
            ## @return a device_management_domain_join_connector
            ## 
            def domain_join_connectors
                return @domain_join_connectors
            end
            ## 
            ## Sets the domainJoinConnectors property value. A list of connector objects.
            ## @param value Value to set for the domainJoinConnectors property.
            ## @return a void
            ## 
            def domain_join_connectors=(value)
                @domain_join_connectors = value
            end
            ## 
            ## Gets the elevationRequests property value. List of elevation requests
            ## @return a privilege_management_elevation_request
            ## 
            def elevation_requests
                return @elevation_requests
            end
            ## 
            ## Sets the elevationRequests property value. List of elevation requests
            ## @param value Value to set for the elevationRequests property.
            ## @return a void
            ## 
            def elevation_requests=(value)
                @elevation_requests = value
            end
            ## 
            ## Gets the embeddedSIMActivationCodePools property value. The embedded SIM activation code pools created by this account.
            ## @return a embedded_s_i_m_activation_code_pool
            ## 
            def embedded_s_i_m_activation_code_pools
                return @embedded_s_i_m_activation_code_pools
            end
            ## 
            ## Sets the embeddedSIMActivationCodePools property value. The embedded SIM activation code pools created by this account.
            ## @param value Value to set for the embeddedSIMActivationCodePools property.
            ## @return a void
            ## 
            def embedded_s_i_m_activation_code_pools=(value)
                @embedded_s_i_m_activation_code_pools = value
            end
            ## 
            ## Gets the endpointPrivilegeManagementProvisioningStatus property value. Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.
            ## @return a endpoint_privilege_management_provisioning_status
            ## 
            def endpoint_privilege_management_provisioning_status
                return @endpoint_privilege_management_provisioning_status
            end
            ## 
            ## Sets the endpointPrivilegeManagementProvisioningStatus property value. Endpoint privilege management (EPM) tenant provisioning status contains tenant level license and onboarding state information.
            ## @param value Value to set for the endpointPrivilegeManagementProvisioningStatus property.
            ## @return a void
            ## 
            def endpoint_privilege_management_provisioning_status=(value)
                @endpoint_privilege_management_provisioning_status = value
            end
            ## 
            ## Gets the exchangeConnectors property value. The list of Exchange Connectors configured by the tenant.
            ## @return a device_management_exchange_connector
            ## 
            def exchange_connectors
                return @exchange_connectors
            end
            ## 
            ## Sets the exchangeConnectors property value. The list of Exchange Connectors configured by the tenant.
            ## @param value Value to set for the exchangeConnectors property.
            ## @return a void
            ## 
            def exchange_connectors=(value)
                @exchange_connectors = value
            end
            ## 
            ## Gets the exchangeOnPremisesPolicies property value. The list of Exchange On Premisis policies configured by the tenant.
            ## @return a device_management_exchange_on_premises_policy
            ## 
            def exchange_on_premises_policies
                return @exchange_on_premises_policies
            end
            ## 
            ## Sets the exchangeOnPremisesPolicies property value. The list of Exchange On Premisis policies configured by the tenant.
            ## @param value Value to set for the exchangeOnPremisesPolicies property.
            ## @return a void
            ## 
            def exchange_on_premises_policies=(value)
                @exchange_on_premises_policies = value
            end
            ## 
            ## Gets the exchangeOnPremisesPolicy property value. The policy which controls mobile device access to Exchange On Premises
            ## @return a device_management_exchange_on_premises_policy
            ## 
            def exchange_on_premises_policy
                return @exchange_on_premises_policy
            end
            ## 
            ## Sets the exchangeOnPremisesPolicy property value. The policy which controls mobile device access to Exchange On Premises
            ## @param value Value to set for the exchangeOnPremisesPolicy property.
            ## @return a void
            ## 
            def exchange_on_premises_policy=(value)
                @exchange_on_premises_policy = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accountMoveCompletionDateTime" => lambda {|n| @account_move_completion_date_time = n.get_date_time_value() },
                    "adminConsent" => lambda {|n| @admin_consent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdminConsent.create_from_discriminator_value(pn) }) },
                    "advancedThreatProtectionOnboardingStateSummary" => lambda {|n| @advanced_threat_protection_onboarding_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AdvancedThreatProtectionOnboardingStateSummary.create_from_discriminator_value(pn) }) },
                    "androidDeviceOwnerEnrollmentProfiles" => lambda {|n| @android_device_owner_enrollment_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidDeviceOwnerEnrollmentProfile.create_from_discriminator_value(pn) }) },
                    "androidForWorkAppConfigurationSchemas" => lambda {|n| @android_for_work_app_configuration_schemas = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkAppConfigurationSchema.create_from_discriminator_value(pn) }) },
                    "androidForWorkEnrollmentProfiles" => lambda {|n| @android_for_work_enrollment_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkEnrollmentProfile.create_from_discriminator_value(pn) }) },
                    "androidForWorkSettings" => lambda {|n| @android_for_work_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkSettings.create_from_discriminator_value(pn) }) },
                    "androidManagedStoreAccountEnterpriseSettings" => lambda {|n| @android_managed_store_account_enterprise_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedStoreAccountEnterpriseSettings.create_from_discriminator_value(pn) }) },
                    "androidManagedStoreAppConfigurationSchemas" => lambda {|n| @android_managed_store_app_configuration_schemas = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedStoreAppConfigurationSchema.create_from_discriminator_value(pn) }) },
                    "applePushNotificationCertificate" => lambda {|n| @apple_push_notification_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ApplePushNotificationCertificate.create_from_discriminator_value(pn) }) },
                    "appleUserInitiatedEnrollmentProfiles" => lambda {|n| @apple_user_initiated_enrollment_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppleUserInitiatedEnrollmentProfile.create_from_discriminator_value(pn) }) },
                    "assignmentFilters" => lambda {|n| @assignment_filters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilter.create_from_discriminator_value(pn) }) },
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuditEvent.create_from_discriminator_value(pn) }) },
                    "autopilotEvents" => lambda {|n| @autopilot_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementAutopilotEvent.create_from_discriminator_value(pn) }) },
                    "cartToClassAssociations" => lambda {|n| @cart_to_class_associations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CartToClassAssociation.create_from_discriminator_value(pn) }) },
                    "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingCategory.create_from_discriminator_value(pn) }) },
                    "certificateConnectorDetails" => lambda {|n| @certificate_connector_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CertificateConnectorDetails.create_from_discriminator_value(pn) }) },
                    "chromeOSOnboardingSettings" => lambda {|n| @chrome_o_s_onboarding_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ChromeOSOnboardingSettings.create_from_discriminator_value(pn) }) },
                    "cloudPCConnectivityIssues" => lambda {|n| @cloud_p_c_connectivity_issues = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPCConnectivityIssue.create_from_discriminator_value(pn) }) },
                    "comanagedDevices" => lambda {|n| @comanaged_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "comanagementEligibleDevices" => lambda {|n| @comanagement_eligible_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ComanagementEligibleDevice.create_from_discriminator_value(pn) }) },
                    "complianceCategories" => lambda {|n| @compliance_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationCategory.create_from_discriminator_value(pn) }) },
                    "complianceManagementPartners" => lambda {|n| @compliance_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ComplianceManagementPartner.create_from_discriminator_value(pn) }) },
                    "compliancePolicies" => lambda {|n| @compliance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementCompliancePolicy.create_from_discriminator_value(pn) }) },
                    "complianceSettings" => lambda {|n| @compliance_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition.create_from_discriminator_value(pn) }) },
                    "conditionalAccessSettings" => lambda {|n| @conditional_access_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesConditionalAccessSettings.create_from_discriminator_value(pn) }) },
                    "configManagerCollections" => lambda {|n| @config_manager_collections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConfigManagerCollection.create_from_discriminator_value(pn) }) },
                    "configurationCategories" => lambda {|n| @configuration_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationCategory.create_from_discriminator_value(pn) }) },
                    "configurationPolicies" => lambda {|n| @configuration_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }) },
                    "configurationPolicyTemplates" => lambda {|n| @configuration_policy_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicyTemplate.create_from_discriminator_value(pn) }) },
                    "configurationSettings" => lambda {|n| @configuration_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition.create_from_discriminator_value(pn) }) },
                    "connectorStatus" => lambda {|n| @connector_status = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConnectorStatusDetails.create_from_discriminator_value(pn) }) },
                    "dataProcessorServiceForWindowsFeaturesOnboarding" => lambda {|n| @data_processor_service_for_windows_features_onboarding = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DataProcessorServiceForWindowsFeaturesOnboarding.create_from_discriminator_value(pn) }) },
                    "dataSharingConsents" => lambda {|n| @data_sharing_consents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DataSharingConsent.create_from_discriminator_value(pn) }) },
                    "depOnboardingSettings" => lambda {|n| @dep_onboarding_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DepOnboardingSetting.create_from_discriminator_value(pn) }) },
                    "derivedCredentials" => lambda {|n| @derived_credentials = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDerivedCredentialSettings.create_from_discriminator_value(pn) }) },
                    "detectedApps" => lambda {|n| @detected_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DetectedApp.create_from_discriminator_value(pn) }) },
                    "deviceCategories" => lambda {|n| @device_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCategory.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicies" => lambda {|n| @device_compliance_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicy.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicyDeviceStateSummary" => lambda {|n| @device_compliance_policy_device_state_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicyDeviceStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicySettingStateSummaries" => lambda {|n| @device_compliance_policy_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicySettingStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceComplianceReportSummarizationDateTime" => lambda {|n| @device_compliance_report_summarization_date_time = n.get_date_time_value() },
                    "deviceComplianceScripts" => lambda {|n| @device_compliance_scripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceComplianceScript.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationConflictSummary" => lambda {|n| @device_configuration_conflict_summary = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationConflictSummary.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationDeviceStateSummaries" => lambda {|n| @device_configuration_device_state_summaries = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationDeviceStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationProfiles" => lambda {|n| @device_configuration_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationProfile.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationRestrictedAppsViolations" => lambda {|n| @device_configuration_restricted_apps_violations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RestrictedAppsViolation.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationUserStateSummaries" => lambda {|n| @device_configuration_user_state_summaries = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationUserStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceConfigurations" => lambda {|n| @device_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceConfigurationsAllManagedDeviceCertificateStates" => lambda {|n| @device_configurations_all_managed_device_certificate_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAllDeviceCertificateState.create_from_discriminator_value(pn) }) },
                    "deviceCustomAttributeShellScripts" => lambda {|n| @device_custom_attribute_shell_scripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCustomAttributeShellScript.create_from_discriminator_value(pn) }) },
                    "deviceEnrollmentConfigurations" => lambda {|n| @device_enrollment_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceEnrollmentConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceHealthScripts" => lambda {|n| @device_health_scripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScript.create_from_discriminator_value(pn) }) },
                    "deviceManagementPartners" => lambda {|n| @device_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementPartner.create_from_discriminator_value(pn) }) },
                    "deviceManagementScripts" => lambda {|n| @device_management_scripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScript.create_from_discriminator_value(pn) }) },
                    "deviceProtectionOverview" => lambda {|n| @device_protection_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceProtectionOverview.create_from_discriminator_value(pn) }) },
                    "deviceShellScripts" => lambda {|n| @device_shell_scripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceShellScript.create_from_discriminator_value(pn) }) },
                    "domainJoinConnectors" => lambda {|n| @domain_join_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementDomainJoinConnector.create_from_discriminator_value(pn) }) },
                    "elevationRequests" => lambda {|n| @elevation_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegeManagementElevationRequest.create_from_discriminator_value(pn) }) },
                    "embeddedSIMActivationCodePools" => lambda {|n| @embedded_s_i_m_activation_code_pools = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EmbeddedSIMActivationCodePool.create_from_discriminator_value(pn) }) },
                    "endpointPrivilegeManagementProvisioningStatus" => lambda {|n| @endpoint_privilege_management_provisioning_status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EndpointPrivilegeManagementProvisioningStatus.create_from_discriminator_value(pn) }) },
                    "exchangeConnectors" => lambda {|n| @exchange_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeConnector.create_from_discriminator_value(pn) }) },
                    "exchangeOnPremisesPolicies" => lambda {|n| @exchange_on_premises_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeOnPremisesPolicy.create_from_discriminator_value(pn) }) },
                    "exchangeOnPremisesPolicy" => lambda {|n| @exchange_on_premises_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementExchangeOnPremisesPolicy.create_from_discriminator_value(pn) }) },
                    "groupPolicyCategories" => lambda {|n| @group_policy_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyCategory.create_from_discriminator_value(pn) }) },
                    "groupPolicyConfigurations" => lambda {|n| @group_policy_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyConfiguration.create_from_discriminator_value(pn) }) },
                    "groupPolicyDefinitionFiles" => lambda {|n| @group_policy_definition_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinitionFile.create_from_discriminator_value(pn) }) },
                    "groupPolicyDefinitions" => lambda {|n| @group_policy_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyDefinition.create_from_discriminator_value(pn) }) },
                    "groupPolicyMigrationReports" => lambda {|n| @group_policy_migration_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyMigrationReport.create_from_discriminator_value(pn) }) },
                    "groupPolicyObjectFiles" => lambda {|n| @group_policy_object_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyObjectFile.create_from_discriminator_value(pn) }) },
                    "groupPolicyUploadedDefinitionFiles" => lambda {|n| @group_policy_uploaded_definition_files = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicyUploadedDefinitionFile.create_from_discriminator_value(pn) }) },
                    "hardwareConfigurations" => lambda {|n| @hardware_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwareConfiguration.create_from_discriminator_value(pn) }) },
                    "hardwarePasswordDetails" => lambda {|n| @hardware_password_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwarePasswordDetail.create_from_discriminator_value(pn) }) },
                    "hardwarePasswordInfo" => lambda {|n| @hardware_password_info = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwarePasswordInfo.create_from_discriminator_value(pn) }) },
                    "importedDeviceIdentities" => lambda {|n| @imported_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImportedDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "importedWindowsAutopilotDeviceIdentities" => lambda {|n| @imported_windows_autopilot_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImportedWindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "intents" => lambda {|n| @intents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntent.create_from_discriminator_value(pn) }) },
                    "intuneAccountId" => lambda {|n| @intune_account_id = n.get_guid_value() },
                    "intuneBrand" => lambda {|n| @intune_brand = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IntuneBrand.create_from_discriminator_value(pn) }) },
                    "intuneBrandingProfiles" => lambda {|n| @intune_branding_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IntuneBrandingProfile.create_from_discriminator_value(pn) }) },
                    "iosUpdateStatuses" => lambda {|n| @ios_update_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosUpdateDeviceStatus.create_from_discriminator_value(pn) }) },
                    "lastReportAggregationDateTime" => lambda {|n| @last_report_aggregation_date_time = n.get_date_time_value() },
                    "legacyPcManangementEnabled" => lambda {|n| @legacy_pc_manangement_enabled = n.get_boolean_value() },
                    "macOSSoftwareUpdateAccountSummaries" => lambda {|n| @mac_o_s_software_update_account_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSoftwareUpdateAccountSummary.create_from_discriminator_value(pn) }) },
                    "managedDeviceCleanupRules" => lambda {|n| @managed_device_cleanup_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCleanupRule.create_from_discriminator_value(pn) }) },
                    "managedDeviceCleanupSettings" => lambda {|n| @managed_device_cleanup_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCleanupSettings.create_from_discriminator_value(pn) }) },
                    "managedDeviceEncryptionStates" => lambda {|n| @managed_device_encryption_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceEncryptionState.create_from_discriminator_value(pn) }) },
                    "managedDeviceOverview" => lambda {|n| @managed_device_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceOverview.create_from_discriminator_value(pn) }) },
                    "managedDeviceWindowsOSImages" => lambda {|n| @managed_device_windows_o_s_images = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceWindowsOperatingSystemImage.create_from_discriminator_value(pn) }) },
                    "managedDevices" => lambda {|n| @managed_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "maximumDepTokens" => lambda {|n| @maximum_dep_tokens = n.get_number_value() },
                    "microsoftTunnelConfigurations" => lambda {|n| @microsoft_tunnel_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelConfiguration.create_from_discriminator_value(pn) }) },
                    "microsoftTunnelHealthThresholds" => lambda {|n| @microsoft_tunnel_health_thresholds = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelHealthThreshold.create_from_discriminator_value(pn) }) },
                    "microsoftTunnelServerLogCollectionResponses" => lambda {|n| @microsoft_tunnel_server_log_collection_responses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelServerLogCollectionResponse.create_from_discriminator_value(pn) }) },
                    "microsoftTunnelSites" => lambda {|n| @microsoft_tunnel_sites = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MicrosoftTunnelSite.create_from_discriminator_value(pn) }) },
                    "mobileAppTroubleshootingEvents" => lambda {|n| @mobile_app_troubleshooting_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppTroubleshootingEvent.create_from_discriminator_value(pn) }) },
                    "mobileThreatDefenseConnectors" => lambda {|n| @mobile_threat_defense_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileThreatDefenseConnector.create_from_discriminator_value(pn) }) },
                    "monitoring" => lambda {|n| @monitoring = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementMonitoring.create_from_discriminator_value(pn) }) },
                    "ndesConnectors" => lambda {|n| @ndes_connectors = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NdesConnector.create_from_discriminator_value(pn) }) },
                    "notificationMessageTemplates" => lambda {|n| @notification_message_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NotificationMessageTemplate.create_from_discriminator_value(pn) }) },
                    "operationApprovalPolicies" => lambda {|n| @operation_approval_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OperationApprovalPolicy.create_from_discriminator_value(pn) }) },
                    "operationApprovalRequests" => lambda {|n| @operation_approval_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OperationApprovalRequest.create_from_discriminator_value(pn) }) },
                    "privilegeManagementElevations" => lambda {|n| @privilege_management_elevations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrivilegeManagementElevation.create_from_discriminator_value(pn) }) },
                    "remoteActionAudits" => lambda {|n| @remote_action_audits = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RemoteActionAudit.create_from_discriminator_value(pn) }) },
                    "remoteAssistancePartners" => lambda {|n| @remote_assistance_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RemoteAssistancePartner.create_from_discriminator_value(pn) }) },
                    "remoteAssistanceSettings" => lambda {|n| @remote_assistance_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RemoteAssistanceSettings.create_from_discriminator_value(pn) }) },
                    "reports" => lambda {|n| @reports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementReports.create_from_discriminator_value(pn) }) },
                    "resourceAccessProfiles" => lambda {|n| @resource_access_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementResourceAccessProfileBase.create_from_discriminator_value(pn) }) },
                    "resourceOperations" => lambda {|n| @resource_operations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ResourceOperation.create_from_discriminator_value(pn) }) },
                    "reusablePolicySettings" => lambda {|n| @reusable_policy_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementReusablePolicySetting.create_from_discriminator_value(pn) }) },
                    "reusableSettings" => lambda {|n| @reusable_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingDefinition.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementRoleAssignment.create_from_discriminator_value(pn) }) },
                    "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleDefinition.create_from_discriminator_value(pn) }) },
                    "roleScopeTags" => lambda {|n| @role_scope_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleScopeTag.create_from_discriminator_value(pn) }) },
                    "serviceNowConnections" => lambda {|n| @service_now_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ServiceNowConnection.create_from_discriminator_value(pn) }) },
                    "settingDefinitions" => lambda {|n| @setting_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingDefinition.create_from_discriminator_value(pn) }) },
                    "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettings.create_from_discriminator_value(pn) }) },
                    "softwareUpdateStatusSummary" => lambda {|n| @software_update_status_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SoftwareUpdateStatusSummary.create_from_discriminator_value(pn) }) },
                    "subscriptionState" => lambda {|n| @subscription_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementSubscriptionState) },
                    "subscriptions" => lambda {|n| @subscriptions = n.get_enum_values(MicrosoftGraphBeta::Models::DeviceManagementSubscriptions) },
                    "telecomExpenseManagementPartners" => lambda {|n| @telecom_expense_management_partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TelecomExpenseManagementPartner.create_from_discriminator_value(pn) }) },
                    "templateInsights" => lambda {|n| @template_insights = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplateInsightsDefinition.create_from_discriminator_value(pn) }) },
                    "templateSettings" => lambda {|n| @template_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingTemplate.create_from_discriminator_value(pn) }) },
                    "templates" => lambda {|n| @templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplate.create_from_discriminator_value(pn) }) },
                    "tenantAttachRBAC" => lambda {|n| @tenant_attach_r_b_a_c = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TenantAttachRBAC.create_from_discriminator_value(pn) }) },
                    "termsAndConditions" => lambda {|n| @terms_and_conditions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TermsAndConditions.create_from_discriminator_value(pn) }) },
                    "troubleshootingEvents" => lambda {|n| @troubleshooting_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingEvent.create_from_discriminator_value(pn) }) },
                    "unlicensedAdminstratorsEnabled" => lambda {|n| @unlicensed_adminstrators_enabled = n.get_boolean_value() },
                    "userExperienceAnalyticsAnomaly" => lambda {|n| @user_experience_analytics_anomaly = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomaly.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAnomalyCorrelationGroupOverview" => lambda {|n| @user_experience_analytics_anomaly_correlation_group_overview = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyCorrelationGroupOverview.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAnomalyDevice" => lambda {|n| @user_experience_analytics_anomaly_device = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalyDevice.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAnomalySeverityOverview" => lambda {|n| @user_experience_analytics_anomaly_severity_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAnomalySeverityOverview.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformance" => lambda {|n| @user_experience_analytics_app_health_application_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthApplicationPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_app_version = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthAppPerformanceByAppVersion.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_app_version_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_app_version_device_id = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthAppPerformanceByAppVersionDeviceId.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion" => lambda {|n| @user_experience_analytics_app_health_application_performance_by_o_s_version = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthAppPerformanceByOSVersion.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDeviceModelPerformance" => lambda {|n| @user_experience_analytics_app_health_device_model_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthDeviceModelPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDevicePerformance" => lambda {|n| @user_experience_analytics_app_health_device_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthDevicePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthDevicePerformanceDetails" => lambda {|n| @user_experience_analytics_app_health_device_performance_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthDevicePerformanceDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthOSVersionPerformance" => lambda {|n| @user_experience_analytics_app_health_o_s_version_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsAppHealthOSVersionPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsAppHealthOverview" => lambda {|n| @user_experience_analytics_app_health_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBaselines" => lambda {|n| @user_experience_analytics_baselines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBaseline.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthAppImpact" => lambda {|n| @user_experience_analytics_battery_health_app_impact = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthAppImpact.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthCapacityDetails" => lambda {|n| @user_experience_analytics_battery_health_capacity_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthCapacityDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthDeviceAppImpact" => lambda {|n| @user_experience_analytics_battery_health_device_app_impact = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthDeviceAppImpact.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthDevicePerformance" => lambda {|n| @user_experience_analytics_battery_health_device_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthDevicePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory" => lambda {|n| @user_experience_analytics_battery_health_device_runtime_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthDeviceRuntimeHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthModelPerformance" => lambda {|n| @user_experience_analytics_battery_health_model_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthModelPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthOsPerformance" => lambda {|n| @user_experience_analytics_battery_health_os_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthOsPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsBatteryHealthRuntimeDetails" => lambda {|n| @user_experience_analytics_battery_health_runtime_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsBatteryHealthRuntimeDetails.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsCategories" => lambda {|n| @user_experience_analytics_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsCategory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceMetricHistory" => lambda {|n| @user_experience_analytics_device_metric_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsMetricHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDevicePerformance" => lambda {|n| @user_experience_analytics_device_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDevicePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceScope" => lambda {|n| @user_experience_analytics_device_scope = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceScope.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceScopes" => lambda {|n| @user_experience_analytics_device_scopes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceScope.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceScores" => lambda {|n| @user_experience_analytics_device_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceScores.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceStartupHistory" => lambda {|n| @user_experience_analytics_device_startup_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceStartupHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceStartupProcessPerformance" => lambda {|n| @user_experience_analytics_device_startup_process_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceStartupProcessPerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceStartupProcesses" => lambda {|n| @user_experience_analytics_device_startup_processes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceStartupProcess.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDeviceTimelineEvent" => lambda {|n| @user_experience_analytics_device_timeline_event = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceTimelineEvent.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsDevicesWithoutCloudIdentity" => lambda {|n| @user_experience_analytics_devices_without_cloud_identity = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsDeviceWithoutCloudIdentity.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsImpactingProcess" => lambda {|n| @user_experience_analytics_impacting_process = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsImpactingProcess.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsMetricHistory" => lambda {|n| @user_experience_analytics_metric_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsMetricHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsModelScores" => lambda {|n| @user_experience_analytics_model_scores = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsModelScores.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsNotAutopilotReadyDevice" => lambda {|n| @user_experience_analytics_not_autopilot_ready_device = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsNotAutopilotReadyDevice.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsOverview" => lambda {|n| @user_experience_analytics_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsOverview.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsRemoteConnection" => lambda {|n| @user_experience_analytics_remote_connection = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsRemoteConnection.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsResourcePerformance" => lambda {|n| @user_experience_analytics_resource_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsResourcePerformance.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsScoreHistory" => lambda {|n| @user_experience_analytics_score_history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsScoreHistory.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsSettings" => lambda {|n| @user_experience_analytics_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsSettings.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric" => lambda {|n| @user_experience_analytics_work_from_anywhere_hardware_readiness_metric = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereMetrics" => lambda {|n| @user_experience_analytics_work_from_anywhere_metrics = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsWorkFromAnywhereMetric.create_from_discriminator_value(pn) }) },
                    "userExperienceAnalyticsWorkFromAnywhereModelPerformance" => lambda {|n| @user_experience_analytics_work_from_anywhere_model_performance = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserExperienceAnalyticsWorkFromAnywhereModelPerformance.create_from_discriminator_value(pn) }) },
                    "userPfxCertificates" => lambda {|n| @user_pfx_certificates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserPFXCertificate.create_from_discriminator_value(pn) }) },
                    "virtualEndpoint" => lambda {|n| @virtual_endpoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VirtualEndpoint.create_from_discriminator_value(pn) }) },
                    "windowsAutopilotDeploymentProfiles" => lambda {|n| @windows_autopilot_deployment_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentProfile.create_from_discriminator_value(pn) }) },
                    "windowsAutopilotDeviceIdentities" => lambda {|n| @windows_autopilot_device_identities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "windowsAutopilotSettings" => lambda {|n| @windows_autopilot_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotSettings.create_from_discriminator_value(pn) }) },
                    "windowsDriverUpdateProfiles" => lambda {|n| @windows_driver_update_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDriverUpdateProfile.create_from_discriminator_value(pn) }) },
                    "windowsFeatureUpdateProfiles" => lambda {|n| @windows_feature_update_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsFeatureUpdateProfile.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionAppLearningSummaries" => lambda {|n| @windows_information_protection_app_learning_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsInformationProtectionAppLearningSummary.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionNetworkLearningSummaries" => lambda {|n| @windows_information_protection_network_learning_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsInformationProtectionNetworkLearningSummary.create_from_discriminator_value(pn) }) },
                    "windowsMalwareInformation" => lambda {|n| @windows_malware_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMalwareInformation.create_from_discriminator_value(pn) }) },
                    "windowsMalwareOverview" => lambda {|n| @windows_malware_overview = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsMalwareOverview.create_from_discriminator_value(pn) }) },
                    "windowsQualityUpdatePolicies" => lambda {|n| @windows_quality_update_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdatePolicy.create_from_discriminator_value(pn) }) },
                    "windowsQualityUpdateProfiles" => lambda {|n| @windows_quality_update_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdateProfile.create_from_discriminator_value(pn) }) },
                    "windowsUpdateCatalogItems" => lambda {|n| @windows_update_catalog_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdateCatalogItem.create_from_discriminator_value(pn) }) },
                    "zebraFotaArtifacts" => lambda {|n| @zebra_fota_artifacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ZebraFotaArtifact.create_from_discriminator_value(pn) }) },
                    "zebraFotaConnector" => lambda {|n| @zebra_fota_connector = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ZebraFotaConnector.create_from_discriminator_value(pn) }) },
                    "zebraFotaDeployments" => lambda {|n| @zebra_fota_deployments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ZebraFotaDeployment.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupPolicyCategories property value. The available group policy categories for this account.
            ## @return a group_policy_category
            ## 
            def group_policy_categories
                return @group_policy_categories
            end
            ## 
            ## Sets the groupPolicyCategories property value. The available group policy categories for this account.
            ## @param value Value to set for the groupPolicyCategories property.
            ## @return a void
            ## 
            def group_policy_categories=(value)
                @group_policy_categories = value
            end
            ## 
            ## Gets the groupPolicyConfigurations property value. The group policy configurations created by this account.
            ## @return a group_policy_configuration
            ## 
            def group_policy_configurations
                return @group_policy_configurations
            end
            ## 
            ## Sets the groupPolicyConfigurations property value. The group policy configurations created by this account.
            ## @param value Value to set for the groupPolicyConfigurations property.
            ## @return a void
            ## 
            def group_policy_configurations=(value)
                @group_policy_configurations = value
            end
            ## 
            ## Gets the groupPolicyDefinitionFiles property value. The available group policy definition files for this account.
            ## @return a group_policy_definition_file
            ## 
            def group_policy_definition_files
                return @group_policy_definition_files
            end
            ## 
            ## Sets the groupPolicyDefinitionFiles property value. The available group policy definition files for this account.
            ## @param value Value to set for the groupPolicyDefinitionFiles property.
            ## @return a void
            ## 
            def group_policy_definition_files=(value)
                @group_policy_definition_files = value
            end
            ## 
            ## Gets the groupPolicyDefinitions property value. The available group policy definitions for this account.
            ## @return a group_policy_definition
            ## 
            def group_policy_definitions
                return @group_policy_definitions
            end
            ## 
            ## Sets the groupPolicyDefinitions property value. The available group policy definitions for this account.
            ## @param value Value to set for the groupPolicyDefinitions property.
            ## @return a void
            ## 
            def group_policy_definitions=(value)
                @group_policy_definitions = value
            end
            ## 
            ## Gets the groupPolicyMigrationReports property value. A list of Group Policy migration reports.
            ## @return a group_policy_migration_report
            ## 
            def group_policy_migration_reports
                return @group_policy_migration_reports
            end
            ## 
            ## Sets the groupPolicyMigrationReports property value. A list of Group Policy migration reports.
            ## @param value Value to set for the groupPolicyMigrationReports property.
            ## @return a void
            ## 
            def group_policy_migration_reports=(value)
                @group_policy_migration_reports = value
            end
            ## 
            ## Gets the groupPolicyObjectFiles property value. A list of Group Policy Object files uploaded.
            ## @return a group_policy_object_file
            ## 
            def group_policy_object_files
                return @group_policy_object_files
            end
            ## 
            ## Sets the groupPolicyObjectFiles property value. A list of Group Policy Object files uploaded.
            ## @param value Value to set for the groupPolicyObjectFiles property.
            ## @return a void
            ## 
            def group_policy_object_files=(value)
                @group_policy_object_files = value
            end
            ## 
            ## Gets the groupPolicyUploadedDefinitionFiles property value. The available group policy uploaded definition files for this account.
            ## @return a group_policy_uploaded_definition_file
            ## 
            def group_policy_uploaded_definition_files
                return @group_policy_uploaded_definition_files
            end
            ## 
            ## Sets the groupPolicyUploadedDefinitionFiles property value. The available group policy uploaded definition files for this account.
            ## @param value Value to set for the groupPolicyUploadedDefinitionFiles property.
            ## @return a void
            ## 
            def group_policy_uploaded_definition_files=(value)
                @group_policy_uploaded_definition_files = value
            end
            ## 
            ## Gets the hardwareConfigurations property value. BIOS configuration and other settings provides customers the ability to configure hardware/bios settings on the enrolled Windows 10/11 Entra ID joined devices by uploading a configuration file generated with their OEM tool (e.g. Dell Command tool). A BIOS configuration policy can be assigned to multiple devices, allowing admins to remotely control a device's hardware properties (e.g. enable Secure Boot) from the Intune Portal. Supported for Dell only at this time.
            ## @return a hardware_configuration
            ## 
            def hardware_configurations
                return @hardware_configurations
            end
            ## 
            ## Sets the hardwareConfigurations property value. BIOS configuration and other settings provides customers the ability to configure hardware/bios settings on the enrolled Windows 10/11 Entra ID joined devices by uploading a configuration file generated with their OEM tool (e.g. Dell Command tool). A BIOS configuration policy can be assigned to multiple devices, allowing admins to remotely control a device's hardware properties (e.g. enable Secure Boot) from the Intune Portal. Supported for Dell only at this time.
            ## @param value Value to set for the hardwareConfigurations property.
            ## @return a void
            ## 
            def hardware_configurations=(value)
                @hardware_configurations = value
            end
            ## 
            ## Gets the hardwarePasswordDetails property value. Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password.
            ## @return a hardware_password_detail
            ## 
            def hardware_password_details
                return @hardware_password_details
            end
            ## 
            ## Sets the hardwarePasswordDetails property value. Device BIOS password information for devices with managed BIOS and firmware configuration, which provides device serial number, list of previous passwords, and current password.
            ## @param value Value to set for the hardwarePasswordDetails property.
            ## @return a void
            ## 
            def hardware_password_details=(value)
                @hardware_password_details = value
            end
            ## 
            ## Gets the hardwarePasswordInfo property value. Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices. Starting from June, 2024 (Intune Release 2406), this type will no longer be supported and will be marked as deprecated
            ## @return a hardware_password_info
            ## 
            def hardware_password_info
                return @hardware_password_info
            end
            ## 
            ## Sets the hardwarePasswordInfo property value. Intune will provide customer the ability to configure hardware/bios settings on the enrolled windows 10 Azure Active Directory joined devices. Starting from June, 2024 (Intune Release 2406), this type will no longer be supported and will be marked as deprecated
            ## @param value Value to set for the hardwarePasswordInfo property.
            ## @return a void
            ## 
            def hardware_password_info=(value)
                @hardware_password_info = value
            end
            ## 
            ## Gets the importedDeviceIdentities property value. The imported device identities.
            ## @return a imported_device_identity
            ## 
            def imported_device_identities
                return @imported_device_identities
            end
            ## 
            ## Sets the importedDeviceIdentities property value. The imported device identities.
            ## @param value Value to set for the importedDeviceIdentities property.
            ## @return a void
            ## 
            def imported_device_identities=(value)
                @imported_device_identities = value
            end
            ## 
            ## Gets the importedWindowsAutopilotDeviceIdentities property value. Collection of imported Windows autopilot devices.
            ## @return a imported_windows_autopilot_device_identity
            ## 
            def imported_windows_autopilot_device_identities
                return @imported_windows_autopilot_device_identities
            end
            ## 
            ## Sets the importedWindowsAutopilotDeviceIdentities property value. Collection of imported Windows autopilot devices.
            ## @param value Value to set for the importedWindowsAutopilotDeviceIdentities property.
            ## @return a void
            ## 
            def imported_windows_autopilot_device_identities=(value)
                @imported_windows_autopilot_device_identities = value
            end
            ## 
            ## Gets the intents property value. The device management intents
            ## @return a device_management_intent
            ## 
            def intents
                return @intents
            end
            ## 
            ## Sets the intents property value. The device management intents
            ## @param value Value to set for the intents property.
            ## @return a void
            ## 
            def intents=(value)
                @intents = value
            end
            ## 
            ## Gets the intuneAccountId property value. Intune Account ID for given tenant
            ## @return a guid
            ## 
            def intune_account_id
                return @intune_account_id
            end
            ## 
            ## Sets the intuneAccountId property value. Intune Account ID for given tenant
            ## @param value Value to set for the intuneAccountId property.
            ## @return a void
            ## 
            def intune_account_id=(value)
                @intune_account_id = value
            end
            ## 
            ## Gets the intuneBrand property value. intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            ## @return a intune_brand
            ## 
            def intune_brand
                return @intune_brand
            end
            ## 
            ## Sets the intuneBrand property value. intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
            ## @param value Value to set for the intuneBrand property.
            ## @return a void
            ## 
            def intune_brand=(value)
                @intune_brand = value
            end
            ## 
            ## Gets the intuneBrandingProfiles property value. Intune branding profiles targeted to AAD groups
            ## @return a intune_branding_profile
            ## 
            def intune_branding_profiles
                return @intune_branding_profiles
            end
            ## 
            ## Sets the intuneBrandingProfiles property value. Intune branding profiles targeted to AAD groups
            ## @param value Value to set for the intuneBrandingProfiles property.
            ## @return a void
            ## 
            def intune_branding_profiles=(value)
                @intune_branding_profiles = value
            end
            ## 
            ## Gets the iosUpdateStatuses property value. The IOS software update installation statuses for this account.
            ## @return a ios_update_device_status
            ## 
            def ios_update_statuses
                return @ios_update_statuses
            end
            ## 
            ## Sets the iosUpdateStatuses property value. The IOS software update installation statuses for this account.
            ## @param value Value to set for the iosUpdateStatuses property.
            ## @return a void
            ## 
            def ios_update_statuses=(value)
                @ios_update_statuses = value
            end
            ## 
            ## Gets the lastReportAggregationDateTime property value. The last modified time of reporting for this account. This property is read-only.
            ## @return a date_time
            ## 
            def last_report_aggregation_date_time
                return @last_report_aggregation_date_time
            end
            ## 
            ## Sets the lastReportAggregationDateTime property value. The last modified time of reporting for this account. This property is read-only.
            ## @param value Value to set for the lastReportAggregationDateTime property.
            ## @return a void
            ## 
            def last_report_aggregation_date_time=(value)
                @last_report_aggregation_date_time = value
            end
            ## 
            ## Gets the legacyPcManangementEnabled property value. The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.
            ## @return a boolean
            ## 
            def legacy_pc_manangement_enabled
                return @legacy_pc_manangement_enabled
            end
            ## 
            ## Sets the legacyPcManangementEnabled property value. The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.
            ## @param value Value to set for the legacyPcManangementEnabled property.
            ## @return a void
            ## 
            def legacy_pc_manangement_enabled=(value)
                @legacy_pc_manangement_enabled = value
            end
            ## 
            ## Gets the macOSSoftwareUpdateAccountSummaries property value. The MacOS software update account summaries for this account.
            ## @return a mac_o_s_software_update_account_summary
            ## 
            def mac_o_s_software_update_account_summaries
                return @mac_o_s_software_update_account_summaries
            end
            ## 
            ## Sets the macOSSoftwareUpdateAccountSummaries property value. The MacOS software update account summaries for this account.
            ## @param value Value to set for the macOSSoftwareUpdateAccountSummaries property.
            ## @return a void
            ## 
            def mac_o_s_software_update_account_summaries=(value)
                @mac_o_s_software_update_account_summaries = value
            end
            ## 
            ## Gets the managedDeviceCleanupRules property value. Device cleanup rule V2
            ## @return a managed_device_cleanup_rule
            ## 
            def managed_device_cleanup_rules
                return @managed_device_cleanup_rules
            end
            ## 
            ## Sets the managedDeviceCleanupRules property value. Device cleanup rule V2
            ## @param value Value to set for the managedDeviceCleanupRules property.
            ## @return a void
            ## 
            def managed_device_cleanup_rules=(value)
                @managed_device_cleanup_rules = value
            end
            ## 
            ## Gets the managedDeviceCleanupSettings property value. Device cleanup rule
            ## @return a managed_device_cleanup_settings
            ## 
            def managed_device_cleanup_settings
                return @managed_device_cleanup_settings
            end
            ## 
            ## Sets the managedDeviceCleanupSettings property value. Device cleanup rule
            ## @param value Value to set for the managedDeviceCleanupSettings property.
            ## @return a void
            ## 
            def managed_device_cleanup_settings=(value)
                @managed_device_cleanup_settings = value
            end
            ## 
            ## Gets the managedDeviceEncryptionStates property value. Encryption report for devices in this account
            ## @return a managed_device_encryption_state
            ## 
            def managed_device_encryption_states
                return @managed_device_encryption_states
            end
            ## 
            ## Sets the managedDeviceEncryptionStates property value. Encryption report for devices in this account
            ## @param value Value to set for the managedDeviceEncryptionStates property.
            ## @return a void
            ## 
            def managed_device_encryption_states=(value)
                @managed_device_encryption_states = value
            end
            ## 
            ## Gets the managedDeviceOverview property value. Device overview
            ## @return a managed_device_overview
            ## 
            def managed_device_overview
                return @managed_device_overview
            end
            ## 
            ## Sets the managedDeviceOverview property value. Device overview
            ## @param value Value to set for the managedDeviceOverview property.
            ## @return a void
            ## 
            def managed_device_overview=(value)
                @managed_device_overview = value
            end
            ## 
            ## Gets the managedDeviceWindowsOSImages property value. A list of ManagedDeviceWindowsOperatingSystemImages
            ## @return a managed_device_windows_operating_system_image
            ## 
            def managed_device_windows_o_s_images
                return @managed_device_windows_o_s_images
            end
            ## 
            ## Sets the managedDeviceWindowsOSImages property value. A list of ManagedDeviceWindowsOperatingSystemImages
            ## @param value Value to set for the managedDeviceWindowsOSImages property.
            ## @return a void
            ## 
            def managed_device_windows_o_s_images=(value)
                @managed_device_windows_o_s_images = value
            end
            ## 
            ## Gets the managedDevices property value. The list of managed devices.
            ## @return a managed_device
            ## 
            def managed_devices
                return @managed_devices
            end
            ## 
            ## Sets the managedDevices property value. The list of managed devices.
            ## @param value Value to set for the managedDevices property.
            ## @return a void
            ## 
            def managed_devices=(value)
                @managed_devices = value
            end
            ## 
            ## Gets the maximumDepTokens property value. Maximum number of DEP tokens allowed per-tenant.
            ## @return a integer
            ## 
            def maximum_dep_tokens
                return @maximum_dep_tokens
            end
            ## 
            ## Sets the maximumDepTokens property value. Maximum number of DEP tokens allowed per-tenant.
            ## @param value Value to set for the maximumDepTokens property.
            ## @return a void
            ## 
            def maximum_dep_tokens=(value)
                @maximum_dep_tokens = value
            end
            ## 
            ## Gets the microsoftTunnelConfigurations property value. Collection of MicrosoftTunnelConfiguration settings associated with account.
            ## @return a microsoft_tunnel_configuration
            ## 
            def microsoft_tunnel_configurations
                return @microsoft_tunnel_configurations
            end
            ## 
            ## Sets the microsoftTunnelConfigurations property value. Collection of MicrosoftTunnelConfiguration settings associated with account.
            ## @param value Value to set for the microsoftTunnelConfigurations property.
            ## @return a void
            ## 
            def microsoft_tunnel_configurations=(value)
                @microsoft_tunnel_configurations = value
            end
            ## 
            ## Gets the microsoftTunnelHealthThresholds property value. Collection of MicrosoftTunnelHealthThreshold settings associated with account.
            ## @return a microsoft_tunnel_health_threshold
            ## 
            def microsoft_tunnel_health_thresholds
                return @microsoft_tunnel_health_thresholds
            end
            ## 
            ## Sets the microsoftTunnelHealthThresholds property value. Collection of MicrosoftTunnelHealthThreshold settings associated with account.
            ## @param value Value to set for the microsoftTunnelHealthThresholds property.
            ## @return a void
            ## 
            def microsoft_tunnel_health_thresholds=(value)
                @microsoft_tunnel_health_thresholds = value
            end
            ## 
            ## Gets the microsoftTunnelServerLogCollectionResponses property value. Collection of MicrosoftTunnelServerLogCollectionResponse settings associated with account.
            ## @return a microsoft_tunnel_server_log_collection_response
            ## 
            def microsoft_tunnel_server_log_collection_responses
                return @microsoft_tunnel_server_log_collection_responses
            end
            ## 
            ## Sets the microsoftTunnelServerLogCollectionResponses property value. Collection of MicrosoftTunnelServerLogCollectionResponse settings associated with account.
            ## @param value Value to set for the microsoftTunnelServerLogCollectionResponses property.
            ## @return a void
            ## 
            def microsoft_tunnel_server_log_collection_responses=(value)
                @microsoft_tunnel_server_log_collection_responses = value
            end
            ## 
            ## Gets the microsoftTunnelSites property value. Collection of MicrosoftTunnelSite settings associated with account.
            ## @return a microsoft_tunnel_site
            ## 
            def microsoft_tunnel_sites
                return @microsoft_tunnel_sites
            end
            ## 
            ## Sets the microsoftTunnelSites property value. Collection of MicrosoftTunnelSite settings associated with account.
            ## @param value Value to set for the microsoftTunnelSites property.
            ## @return a void
            ## 
            def microsoft_tunnel_sites=(value)
                @microsoft_tunnel_sites = value
            end
            ## 
            ## Gets the mobileAppTroubleshootingEvents property value. The collection property of MobileAppTroubleshootingEvent.
            ## @return a mobile_app_troubleshooting_event
            ## 
            def mobile_app_troubleshooting_events
                return @mobile_app_troubleshooting_events
            end
            ## 
            ## Sets the mobileAppTroubleshootingEvents property value. The collection property of MobileAppTroubleshootingEvent.
            ## @param value Value to set for the mobileAppTroubleshootingEvents property.
            ## @return a void
            ## 
            def mobile_app_troubleshooting_events=(value)
                @mobile_app_troubleshooting_events = value
            end
            ## 
            ## Gets the mobileThreatDefenseConnectors property value. The list of Mobile threat Defense connectors configured by the tenant.
            ## @return a mobile_threat_defense_connector
            ## 
            def mobile_threat_defense_connectors
                return @mobile_threat_defense_connectors
            end
            ## 
            ## Sets the mobileThreatDefenseConnectors property value. The list of Mobile threat Defense connectors configured by the tenant.
            ## @param value Value to set for the mobileThreatDefenseConnectors property.
            ## @return a void
            ## 
            def mobile_threat_defense_connectors=(value)
                @mobile_threat_defense_connectors = value
            end
            ## 
            ## Gets the monitoring property value. The monitoring property
            ## @return a device_management_monitoring
            ## 
            def monitoring
                return @monitoring
            end
            ## 
            ## Sets the monitoring property value. The monitoring property
            ## @param value Value to set for the monitoring property.
            ## @return a void
            ## 
            def monitoring=(value)
                @monitoring = value
            end
            ## 
            ## Gets the ndesConnectors property value. The collection of Ndes connectors for this account.
            ## @return a ndes_connector
            ## 
            def ndes_connectors
                return @ndes_connectors
            end
            ## 
            ## Sets the ndesConnectors property value. The collection of Ndes connectors for this account.
            ## @param value Value to set for the ndesConnectors property.
            ## @return a void
            ## 
            def ndes_connectors=(value)
                @ndes_connectors = value
            end
            ## 
            ## Gets the notificationMessageTemplates property value. The Notification Message Templates.
            ## @return a notification_message_template
            ## 
            def notification_message_templates
                return @notification_message_templates
            end
            ## 
            ## Sets the notificationMessageTemplates property value. The Notification Message Templates.
            ## @param value Value to set for the notificationMessageTemplates property.
            ## @return a void
            ## 
            def notification_message_templates=(value)
                @notification_message_templates = value
            end
            ## 
            ## Gets the operationApprovalPolicies property value. The Operation Approval Policies
            ## @return a operation_approval_policy
            ## 
            def operation_approval_policies
                return @operation_approval_policies
            end
            ## 
            ## Sets the operationApprovalPolicies property value. The Operation Approval Policies
            ## @param value Value to set for the operationApprovalPolicies property.
            ## @return a void
            ## 
            def operation_approval_policies=(value)
                @operation_approval_policies = value
            end
            ## 
            ## Gets the operationApprovalRequests property value. The Operation Approval Requests
            ## @return a operation_approval_request
            ## 
            def operation_approval_requests
                return @operation_approval_requests
            end
            ## 
            ## Sets the operationApprovalRequests property value. The Operation Approval Requests
            ## @param value Value to set for the operationApprovalRequests property.
            ## @return a void
            ## 
            def operation_approval_requests=(value)
                @operation_approval_requests = value
            end
            ## 
            ## Gets the privilegeManagementElevations property value. The endpoint privilege management elevation event entity contains elevation details.
            ## @return a privilege_management_elevation
            ## 
            def privilege_management_elevations
                return @privilege_management_elevations
            end
            ## 
            ## Sets the privilegeManagementElevations property value. The endpoint privilege management elevation event entity contains elevation details.
            ## @param value Value to set for the privilegeManagementElevations property.
            ## @return a void
            ## 
            def privilege_management_elevations=(value)
                @privilege_management_elevations = value
            end
            ## 
            ## Gets the remoteActionAudits property value. The list of device remote action audits with the tenant.
            ## @return a remote_action_audit
            ## 
            def remote_action_audits
                return @remote_action_audits
            end
            ## 
            ## Sets the remoteActionAudits property value. The list of device remote action audits with the tenant.
            ## @param value Value to set for the remoteActionAudits property.
            ## @return a void
            ## 
            def remote_action_audits=(value)
                @remote_action_audits = value
            end
            ## 
            ## Gets the remoteAssistancePartners property value. The remote assist partners.
            ## @return a remote_assistance_partner
            ## 
            def remote_assistance_partners
                return @remote_assistance_partners
            end
            ## 
            ## Sets the remoteAssistancePartners property value. The remote assist partners.
            ## @param value Value to set for the remoteAssistancePartners property.
            ## @return a void
            ## 
            def remote_assistance_partners=(value)
                @remote_assistance_partners = value
            end
            ## 
            ## Gets the remoteAssistanceSettings property value. The remote assistance settings singleton
            ## @return a remote_assistance_settings
            ## 
            def remote_assistance_settings
                return @remote_assistance_settings
            end
            ## 
            ## Sets the remoteAssistanceSettings property value. The remote assistance settings singleton
            ## @param value Value to set for the remoteAssistanceSettings property.
            ## @return a void
            ## 
            def remote_assistance_settings=(value)
                @remote_assistance_settings = value
            end
            ## 
            ## Gets the reports property value. Reports singleton
            ## @return a device_management_reports
            ## 
            def reports
                return @reports
            end
            ## 
            ## Sets the reports property value. Reports singleton
            ## @param value Value to set for the reports property.
            ## @return a void
            ## 
            def reports=(value)
                @reports = value
            end
            ## 
            ## Gets the resourceAccessProfiles property value. Collection of resource access settings associated with account.
            ## @return a device_management_resource_access_profile_base
            ## 
            def resource_access_profiles
                return @resource_access_profiles
            end
            ## 
            ## Sets the resourceAccessProfiles property value. Collection of resource access settings associated with account.
            ## @param value Value to set for the resourceAccessProfiles property.
            ## @return a void
            ## 
            def resource_access_profiles=(value)
                @resource_access_profiles = value
            end
            ## 
            ## Gets the resourceOperations property value. The Resource Operations.
            ## @return a resource_operation
            ## 
            def resource_operations
                return @resource_operations
            end
            ## 
            ## Sets the resourceOperations property value. The Resource Operations.
            ## @param value Value to set for the resourceOperations property.
            ## @return a void
            ## 
            def resource_operations=(value)
                @resource_operations = value
            end
            ## 
            ## Gets the reusablePolicySettings property value. List of all reusable settings that can be referred in a policy
            ## @return a device_management_reusable_policy_setting
            ## 
            def reusable_policy_settings
                return @reusable_policy_settings
            end
            ## 
            ## Sets the reusablePolicySettings property value. List of all reusable settings that can be referred in a policy
            ## @param value Value to set for the reusablePolicySettings property.
            ## @return a void
            ## 
            def reusable_policy_settings=(value)
                @reusable_policy_settings = value
            end
            ## 
            ## Gets the reusableSettings property value. List of all reusable settings
            ## @return a device_management_configuration_setting_definition
            ## 
            def reusable_settings
                return @reusable_settings
            end
            ## 
            ## Sets the reusableSettings property value. List of all reusable settings
            ## @param value Value to set for the reusableSettings property.
            ## @return a void
            ## 
            def reusable_settings=(value)
                @reusable_settings = value
            end
            ## 
            ## Gets the roleAssignments property value. The Role Assignments.
            ## @return a device_and_app_management_role_assignment
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. The Role Assignments.
            ## @param value Value to set for the roleAssignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the roleDefinitions property value. The Role Definitions.
            ## @return a role_definition
            ## 
            def role_definitions
                return @role_definitions
            end
            ## 
            ## Sets the roleDefinitions property value. The Role Definitions.
            ## @param value Value to set for the roleDefinitions property.
            ## @return a void
            ## 
            def role_definitions=(value)
                @role_definitions = value
            end
            ## 
            ## Gets the roleScopeTags property value. The Role Scope Tags.
            ## @return a role_scope_tag
            ## 
            def role_scope_tags
                return @role_scope_tags
            end
            ## 
            ## Sets the roleScopeTags property value. The Role Scope Tags.
            ## @param value Value to set for the roleScopeTags property.
            ## @return a void
            ## 
            def role_scope_tags=(value)
                @role_scope_tags = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("accountMoveCompletionDateTime", @account_move_completion_date_time)
                writer.write_object_value("adminConsent", @admin_consent)
                writer.write_object_value("advancedThreatProtectionOnboardingStateSummary", @advanced_threat_protection_onboarding_state_summary)
                writer.write_collection_of_object_values("androidDeviceOwnerEnrollmentProfiles", @android_device_owner_enrollment_profiles)
                writer.write_collection_of_object_values("androidForWorkAppConfigurationSchemas", @android_for_work_app_configuration_schemas)
                writer.write_collection_of_object_values("androidForWorkEnrollmentProfiles", @android_for_work_enrollment_profiles)
                writer.write_object_value("androidForWorkSettings", @android_for_work_settings)
                writer.write_object_value("androidManagedStoreAccountEnterpriseSettings", @android_managed_store_account_enterprise_settings)
                writer.write_collection_of_object_values("androidManagedStoreAppConfigurationSchemas", @android_managed_store_app_configuration_schemas)
                writer.write_object_value("applePushNotificationCertificate", @apple_push_notification_certificate)
                writer.write_collection_of_object_values("appleUserInitiatedEnrollmentProfiles", @apple_user_initiated_enrollment_profiles)
                writer.write_collection_of_object_values("assignmentFilters", @assignment_filters)
                writer.write_collection_of_object_values("auditEvents", @audit_events)
                writer.write_collection_of_object_values("autopilotEvents", @autopilot_events)
                writer.write_collection_of_object_values("cartToClassAssociations", @cart_to_class_associations)
                writer.write_collection_of_object_values("categories", @categories)
                writer.write_collection_of_object_values("certificateConnectorDetails", @certificate_connector_details)
                writer.write_collection_of_object_values("chromeOSOnboardingSettings", @chrome_o_s_onboarding_settings)
                writer.write_collection_of_object_values("cloudPCConnectivityIssues", @cloud_p_c_connectivity_issues)
                writer.write_collection_of_object_values("comanagedDevices", @comanaged_devices)
                writer.write_collection_of_object_values("comanagementEligibleDevices", @comanagement_eligible_devices)
                writer.write_collection_of_object_values("complianceCategories", @compliance_categories)
                writer.write_collection_of_object_values("complianceManagementPartners", @compliance_management_partners)
                writer.write_collection_of_object_values("compliancePolicies", @compliance_policies)
                writer.write_collection_of_object_values("complianceSettings", @compliance_settings)
                writer.write_object_value("conditionalAccessSettings", @conditional_access_settings)
                writer.write_collection_of_object_values("configManagerCollections", @config_manager_collections)
                writer.write_collection_of_object_values("configurationCategories", @configuration_categories)
                writer.write_collection_of_object_values("configurationPolicies", @configuration_policies)
                writer.write_collection_of_object_values("configurationPolicyTemplates", @configuration_policy_templates)
                writer.write_collection_of_object_values("configurationSettings", @configuration_settings)
                writer.write_collection_of_object_values("connectorStatus", @connector_status)
                writer.write_object_value("dataProcessorServiceForWindowsFeaturesOnboarding", @data_processor_service_for_windows_features_onboarding)
                writer.write_collection_of_object_values("dataSharingConsents", @data_sharing_consents)
                writer.write_collection_of_object_values("depOnboardingSettings", @dep_onboarding_settings)
                writer.write_collection_of_object_values("derivedCredentials", @derived_credentials)
                writer.write_collection_of_object_values("detectedApps", @detected_apps)
                writer.write_collection_of_object_values("deviceCategories", @device_categories)
                writer.write_collection_of_object_values("deviceCompliancePolicies", @device_compliance_policies)
                writer.write_object_value("deviceCompliancePolicyDeviceStateSummary", @device_compliance_policy_device_state_summary)
                writer.write_collection_of_object_values("deviceCompliancePolicySettingStateSummaries", @device_compliance_policy_setting_state_summaries)
                writer.write_collection_of_object_values("deviceComplianceScripts", @device_compliance_scripts)
                writer.write_collection_of_object_values("deviceConfigurationConflictSummary", @device_configuration_conflict_summary)
                writer.write_object_value("deviceConfigurationDeviceStateSummaries", @device_configuration_device_state_summaries)
                writer.write_collection_of_object_values("deviceConfigurationProfiles", @device_configuration_profiles)
                writer.write_collection_of_object_values("deviceConfigurationRestrictedAppsViolations", @device_configuration_restricted_apps_violations)
                writer.write_object_value("deviceConfigurationUserStateSummaries", @device_configuration_user_state_summaries)
                writer.write_collection_of_object_values("deviceConfigurations", @device_configurations)
                writer.write_collection_of_object_values("deviceConfigurationsAllManagedDeviceCertificateStates", @device_configurations_all_managed_device_certificate_states)
                writer.write_collection_of_object_values("deviceCustomAttributeShellScripts", @device_custom_attribute_shell_scripts)
                writer.write_collection_of_object_values("deviceEnrollmentConfigurations", @device_enrollment_configurations)
                writer.write_collection_of_object_values("deviceHealthScripts", @device_health_scripts)
                writer.write_collection_of_object_values("deviceManagementPartners", @device_management_partners)
                writer.write_collection_of_object_values("deviceManagementScripts", @device_management_scripts)
                writer.write_object_value("deviceProtectionOverview", @device_protection_overview)
                writer.write_collection_of_object_values("deviceShellScripts", @device_shell_scripts)
                writer.write_collection_of_object_values("domainJoinConnectors", @domain_join_connectors)
                writer.write_collection_of_object_values("elevationRequests", @elevation_requests)
                writer.write_collection_of_object_values("embeddedSIMActivationCodePools", @embedded_s_i_m_activation_code_pools)
                writer.write_object_value("endpointPrivilegeManagementProvisioningStatus", @endpoint_privilege_management_provisioning_status)
                writer.write_collection_of_object_values("exchangeConnectors", @exchange_connectors)
                writer.write_collection_of_object_values("exchangeOnPremisesPolicies", @exchange_on_premises_policies)
                writer.write_object_value("exchangeOnPremisesPolicy", @exchange_on_premises_policy)
                writer.write_collection_of_object_values("groupPolicyCategories", @group_policy_categories)
                writer.write_collection_of_object_values("groupPolicyConfigurations", @group_policy_configurations)
                writer.write_collection_of_object_values("groupPolicyDefinitionFiles", @group_policy_definition_files)
                writer.write_collection_of_object_values("groupPolicyDefinitions", @group_policy_definitions)
                writer.write_collection_of_object_values("groupPolicyMigrationReports", @group_policy_migration_reports)
                writer.write_collection_of_object_values("groupPolicyObjectFiles", @group_policy_object_files)
                writer.write_collection_of_object_values("groupPolicyUploadedDefinitionFiles", @group_policy_uploaded_definition_files)
                writer.write_collection_of_object_values("hardwareConfigurations", @hardware_configurations)
                writer.write_collection_of_object_values("hardwarePasswordDetails", @hardware_password_details)
                writer.write_collection_of_object_values("hardwarePasswordInfo", @hardware_password_info)
                writer.write_collection_of_object_values("importedDeviceIdentities", @imported_device_identities)
                writer.write_collection_of_object_values("importedWindowsAutopilotDeviceIdentities", @imported_windows_autopilot_device_identities)
                writer.write_collection_of_object_values("intents", @intents)
                writer.write_guid_value("intuneAccountId", @intune_account_id)
                writer.write_object_value("intuneBrand", @intune_brand)
                writer.write_collection_of_object_values("intuneBrandingProfiles", @intune_branding_profiles)
                writer.write_collection_of_object_values("iosUpdateStatuses", @ios_update_statuses)
                writer.write_collection_of_object_values("macOSSoftwareUpdateAccountSummaries", @mac_o_s_software_update_account_summaries)
                writer.write_collection_of_object_values("managedDeviceCleanupRules", @managed_device_cleanup_rules)
                writer.write_object_value("managedDeviceCleanupSettings", @managed_device_cleanup_settings)
                writer.write_collection_of_object_values("managedDeviceEncryptionStates", @managed_device_encryption_states)
                writer.write_object_value("managedDeviceOverview", @managed_device_overview)
                writer.write_collection_of_object_values("managedDeviceWindowsOSImages", @managed_device_windows_o_s_images)
                writer.write_collection_of_object_values("managedDevices", @managed_devices)
                writer.write_number_value("maximumDepTokens", @maximum_dep_tokens)
                writer.write_collection_of_object_values("microsoftTunnelConfigurations", @microsoft_tunnel_configurations)
                writer.write_collection_of_object_values("microsoftTunnelHealthThresholds", @microsoft_tunnel_health_thresholds)
                writer.write_collection_of_object_values("microsoftTunnelServerLogCollectionResponses", @microsoft_tunnel_server_log_collection_responses)
                writer.write_collection_of_object_values("microsoftTunnelSites", @microsoft_tunnel_sites)
                writer.write_collection_of_object_values("mobileAppTroubleshootingEvents", @mobile_app_troubleshooting_events)
                writer.write_collection_of_object_values("mobileThreatDefenseConnectors", @mobile_threat_defense_connectors)
                writer.write_object_value("monitoring", @monitoring)
                writer.write_collection_of_object_values("ndesConnectors", @ndes_connectors)
                writer.write_collection_of_object_values("notificationMessageTemplates", @notification_message_templates)
                writer.write_collection_of_object_values("operationApprovalPolicies", @operation_approval_policies)
                writer.write_collection_of_object_values("operationApprovalRequests", @operation_approval_requests)
                writer.write_collection_of_object_values("privilegeManagementElevations", @privilege_management_elevations)
                writer.write_collection_of_object_values("remoteActionAudits", @remote_action_audits)
                writer.write_collection_of_object_values("remoteAssistancePartners", @remote_assistance_partners)
                writer.write_object_value("remoteAssistanceSettings", @remote_assistance_settings)
                writer.write_object_value("reports", @reports)
                writer.write_collection_of_object_values("resourceAccessProfiles", @resource_access_profiles)
                writer.write_collection_of_object_values("resourceOperations", @resource_operations)
                writer.write_collection_of_object_values("reusablePolicySettings", @reusable_policy_settings)
                writer.write_collection_of_object_values("reusableSettings", @reusable_settings)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
                writer.write_collection_of_object_values("roleScopeTags", @role_scope_tags)
                writer.write_collection_of_object_values("serviceNowConnections", @service_now_connections)
                writer.write_collection_of_object_values("settingDefinitions", @setting_definitions)
                writer.write_object_value("settings", @settings)
                writer.write_object_value("softwareUpdateStatusSummary", @software_update_status_summary)
                writer.write_enum_value("subscriptionState", @subscription_state)
                writer.write_enum_value("subscriptions", @subscriptions)
                writer.write_collection_of_object_values("telecomExpenseManagementPartners", @telecom_expense_management_partners)
                writer.write_collection_of_object_values("templateInsights", @template_insights)
                writer.write_collection_of_object_values("templateSettings", @template_settings)
                writer.write_collection_of_object_values("templates", @templates)
                writer.write_object_value("tenantAttachRBAC", @tenant_attach_r_b_a_c)
                writer.write_collection_of_object_values("termsAndConditions", @terms_and_conditions)
                writer.write_collection_of_object_values("troubleshootingEvents", @troubleshooting_events)
                writer.write_collection_of_object_values("userExperienceAnalyticsAnomaly", @user_experience_analytics_anomaly)
                writer.write_collection_of_object_values("userExperienceAnalyticsAnomalyCorrelationGroupOverview", @user_experience_analytics_anomaly_correlation_group_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsAnomalyDevice", @user_experience_analytics_anomaly_device)
                writer.write_object_value("userExperienceAnalyticsAnomalySeverityOverview", @user_experience_analytics_anomaly_severity_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformance", @user_experience_analytics_app_health_application_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion", @user_experience_analytics_app_health_application_performance_by_app_version)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails", @user_experience_analytics_app_health_application_performance_by_app_version_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId", @user_experience_analytics_app_health_application_performance_by_app_version_device_id)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion", @user_experience_analytics_app_health_application_performance_by_o_s_version)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDeviceModelPerformance", @user_experience_analytics_app_health_device_model_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDevicePerformance", @user_experience_analytics_app_health_device_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthDevicePerformanceDetails", @user_experience_analytics_app_health_device_performance_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsAppHealthOSVersionPerformance", @user_experience_analytics_app_health_o_s_version_performance)
                writer.write_object_value("userExperienceAnalyticsAppHealthOverview", @user_experience_analytics_app_health_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsBaselines", @user_experience_analytics_baselines)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthAppImpact", @user_experience_analytics_battery_health_app_impact)
                writer.write_object_value("userExperienceAnalyticsBatteryHealthCapacityDetails", @user_experience_analytics_battery_health_capacity_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthDeviceAppImpact", @user_experience_analytics_battery_health_device_app_impact)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthDevicePerformance", @user_experience_analytics_battery_health_device_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory", @user_experience_analytics_battery_health_device_runtime_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthModelPerformance", @user_experience_analytics_battery_health_model_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsBatteryHealthOsPerformance", @user_experience_analytics_battery_health_os_performance)
                writer.write_object_value("userExperienceAnalyticsBatteryHealthRuntimeDetails", @user_experience_analytics_battery_health_runtime_details)
                writer.write_collection_of_object_values("userExperienceAnalyticsCategories", @user_experience_analytics_categories)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceMetricHistory", @user_experience_analytics_device_metric_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsDevicePerformance", @user_experience_analytics_device_performance)
                writer.write_object_value("userExperienceAnalyticsDeviceScope", @user_experience_analytics_device_scope)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceScopes", @user_experience_analytics_device_scopes)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceScores", @user_experience_analytics_device_scores)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceStartupHistory", @user_experience_analytics_device_startup_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceStartupProcessPerformance", @user_experience_analytics_device_startup_process_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceStartupProcesses", @user_experience_analytics_device_startup_processes)
                writer.write_collection_of_object_values("userExperienceAnalyticsDeviceTimelineEvent", @user_experience_analytics_device_timeline_event)
                writer.write_collection_of_object_values("userExperienceAnalyticsDevicesWithoutCloudIdentity", @user_experience_analytics_devices_without_cloud_identity)
                writer.write_collection_of_object_values("userExperienceAnalyticsImpactingProcess", @user_experience_analytics_impacting_process)
                writer.write_collection_of_object_values("userExperienceAnalyticsMetricHistory", @user_experience_analytics_metric_history)
                writer.write_collection_of_object_values("userExperienceAnalyticsModelScores", @user_experience_analytics_model_scores)
                writer.write_collection_of_object_values("userExperienceAnalyticsNotAutopilotReadyDevice", @user_experience_analytics_not_autopilot_ready_device)
                writer.write_object_value("userExperienceAnalyticsOverview", @user_experience_analytics_overview)
                writer.write_collection_of_object_values("userExperienceAnalyticsRemoteConnection", @user_experience_analytics_remote_connection)
                writer.write_collection_of_object_values("userExperienceAnalyticsResourcePerformance", @user_experience_analytics_resource_performance)
                writer.write_collection_of_object_values("userExperienceAnalyticsScoreHistory", @user_experience_analytics_score_history)
                writer.write_object_value("userExperienceAnalyticsSettings", @user_experience_analytics_settings)
                writer.write_object_value("userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric", @user_experience_analytics_work_from_anywhere_hardware_readiness_metric)
                writer.write_collection_of_object_values("userExperienceAnalyticsWorkFromAnywhereMetrics", @user_experience_analytics_work_from_anywhere_metrics)
                writer.write_collection_of_object_values("userExperienceAnalyticsWorkFromAnywhereModelPerformance", @user_experience_analytics_work_from_anywhere_model_performance)
                writer.write_collection_of_object_values("userPfxCertificates", @user_pfx_certificates)
                writer.write_object_value("virtualEndpoint", @virtual_endpoint)
                writer.write_collection_of_object_values("windowsAutopilotDeploymentProfiles", @windows_autopilot_deployment_profiles)
                writer.write_collection_of_object_values("windowsAutopilotDeviceIdentities", @windows_autopilot_device_identities)
                writer.write_object_value("windowsAutopilotSettings", @windows_autopilot_settings)
                writer.write_collection_of_object_values("windowsDriverUpdateProfiles", @windows_driver_update_profiles)
                writer.write_collection_of_object_values("windowsFeatureUpdateProfiles", @windows_feature_update_profiles)
                writer.write_collection_of_object_values("windowsInformationProtectionAppLearningSummaries", @windows_information_protection_app_learning_summaries)
                writer.write_collection_of_object_values("windowsInformationProtectionNetworkLearningSummaries", @windows_information_protection_network_learning_summaries)
                writer.write_collection_of_object_values("windowsMalwareInformation", @windows_malware_information)
                writer.write_object_value("windowsMalwareOverview", @windows_malware_overview)
                writer.write_collection_of_object_values("windowsQualityUpdatePolicies", @windows_quality_update_policies)
                writer.write_collection_of_object_values("windowsQualityUpdateProfiles", @windows_quality_update_profiles)
                writer.write_collection_of_object_values("windowsUpdateCatalogItems", @windows_update_catalog_items)
                writer.write_collection_of_object_values("zebraFotaArtifacts", @zebra_fota_artifacts)
                writer.write_object_value("zebraFotaConnector", @zebra_fota_connector)
                writer.write_collection_of_object_values("zebraFotaDeployments", @zebra_fota_deployments)
            end
            ## 
            ## Gets the serviceNowConnections property value. A list of ServiceNowConnections
            ## @return a service_now_connection
            ## 
            def service_now_connections
                return @service_now_connections
            end
            ## 
            ## Sets the serviceNowConnections property value. A list of ServiceNowConnections
            ## @param value Value to set for the serviceNowConnections property.
            ## @return a void
            ## 
            def service_now_connections=(value)
                @service_now_connections = value
            end
            ## 
            ## Gets the settingDefinitions property value. The device management intent setting definitions
            ## @return a device_management_setting_definition
            ## 
            def setting_definitions
                return @setting_definitions
            end
            ## 
            ## Sets the settingDefinitions property value. The device management intent setting definitions
            ## @param value Value to set for the settingDefinitions property.
            ## @return a void
            ## 
            def setting_definitions=(value)
                @setting_definitions = value
            end
            ## 
            ## Gets the settings property value. Account level settings.
            ## @return a device_management_settings
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Account level settings.
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the softwareUpdateStatusSummary property value. The software update status summary.
            ## @return a software_update_status_summary
            ## 
            def software_update_status_summary
                return @software_update_status_summary
            end
            ## 
            ## Sets the softwareUpdateStatusSummary property value. The software update status summary.
            ## @param value Value to set for the softwareUpdateStatusSummary property.
            ## @return a void
            ## 
            def software_update_status_summary=(value)
                @software_update_status_summary = value
            end
            ## 
            ## Gets the subscriptionState property value. Tenant mobile device management subscription state.
            ## @return a device_management_subscription_state
            ## 
            def subscription_state
                return @subscription_state
            end
            ## 
            ## Sets the subscriptionState property value. Tenant mobile device management subscription state.
            ## @param value Value to set for the subscriptionState property.
            ## @return a void
            ## 
            def subscription_state=(value)
                @subscription_state = value
            end
            ## 
            ## Gets the subscriptions property value. Tenant mobile device management subscriptions.
            ## @return a device_management_subscriptions
            ## 
            def subscriptions
                return @subscriptions
            end
            ## 
            ## Sets the subscriptions property value. Tenant mobile device management subscriptions.
            ## @param value Value to set for the subscriptions property.
            ## @return a void
            ## 
            def subscriptions=(value)
                @subscriptions = value
            end
            ## 
            ## Gets the telecomExpenseManagementPartners property value. The telecom expense management partners.
            ## @return a telecom_expense_management_partner
            ## 
            def telecom_expense_management_partners
                return @telecom_expense_management_partners
            end
            ## 
            ## Sets the telecomExpenseManagementPartners property value. The telecom expense management partners.
            ## @param value Value to set for the telecomExpenseManagementPartners property.
            ## @return a void
            ## 
            def telecom_expense_management_partners=(value)
                @telecom_expense_management_partners = value
            end
            ## 
            ## Gets the templateInsights property value. List of setting insights in a template
            ## @return a device_management_template_insights_definition
            ## 
            def template_insights
                return @template_insights
            end
            ## 
            ## Sets the templateInsights property value. List of setting insights in a template
            ## @param value Value to set for the templateInsights property.
            ## @return a void
            ## 
            def template_insights=(value)
                @template_insights = value
            end
            ## 
            ## Gets the templateSettings property value. List of all TemplateSettings
            ## @return a device_management_configuration_setting_template
            ## 
            def template_settings
                return @template_settings
            end
            ## 
            ## Sets the templateSettings property value. List of all TemplateSettings
            ## @param value Value to set for the templateSettings property.
            ## @return a void
            ## 
            def template_settings=(value)
                @template_settings = value
            end
            ## 
            ## Gets the templates property value. The available templates
            ## @return a device_management_template
            ## 
            def templates
                return @templates
            end
            ## 
            ## Sets the templates property value. The available templates
            ## @param value Value to set for the templates property.
            ## @return a void
            ## 
            def templates=(value)
                @templates = value
            end
            ## 
            ## Gets the tenantAttachRBAC property value. TenantAttach RBAC Enablement
            ## @return a tenant_attach_r_b_a_c
            ## 
            def tenant_attach_r_b_a_c
                return @tenant_attach_r_b_a_c
            end
            ## 
            ## Sets the tenantAttachRBAC property value. TenantAttach RBAC Enablement
            ## @param value Value to set for the tenantAttachRBAC property.
            ## @return a void
            ## 
            def tenant_attach_r_b_a_c=(value)
                @tenant_attach_r_b_a_c = value
            end
            ## 
            ## Gets the termsAndConditions property value. The terms and conditions associated with device management of the company.
            ## @return a terms_and_conditions
            ## 
            def terms_and_conditions
                return @terms_and_conditions
            end
            ## 
            ## Sets the termsAndConditions property value. The terms and conditions associated with device management of the company.
            ## @param value Value to set for the termsAndConditions property.
            ## @return a void
            ## 
            def terms_and_conditions=(value)
                @terms_and_conditions = value
            end
            ## 
            ## Gets the troubleshootingEvents property value. The list of troubleshooting events for the tenant.
            ## @return a device_management_troubleshooting_event
            ## 
            def troubleshooting_events
                return @troubleshooting_events
            end
            ## 
            ## Sets the troubleshootingEvents property value. The list of troubleshooting events for the tenant.
            ## @param value Value to set for the troubleshootingEvents property.
            ## @return a void
            ## 
            def troubleshooting_events=(value)
                @troubleshooting_events = value
            end
            ## 
            ## Gets the unlicensedAdminstratorsEnabled property value. When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.
            ## @return a boolean
            ## 
            def unlicensed_adminstrators_enabled
                return @unlicensed_adminstrators_enabled
            end
            ## 
            ## Sets the unlicensedAdminstratorsEnabled property value. When enabled, users assigned as administrators via Role Assignment Memberships do not require an assigned Intune license. Prior to this, only Intune licensed users were granted permissions with an Intune role unless they were assigned a role via Azure Active Directory. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators are unaffected, do not have to be direct members, nor does the 350 member limit apply. This property is read-only.
            ## @param value Value to set for the unlicensedAdminstratorsEnabled property.
            ## @return a void
            ## 
            def unlicensed_adminstrators_enabled=(value)
                @unlicensed_adminstrators_enabled = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAnomaly property value. The user experience analytics anomaly entity contains anomaly details.
            ## @return a user_experience_analytics_anomaly
            ## 
            def user_experience_analytics_anomaly
                return @user_experience_analytics_anomaly
            end
            ## 
            ## Sets the userExperienceAnalyticsAnomaly property value. The user experience analytics anomaly entity contains anomaly details.
            ## @param value Value to set for the userExperienceAnalyticsAnomaly property.
            ## @return a void
            ## 
            def user_experience_analytics_anomaly=(value)
                @user_experience_analytics_anomaly = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAnomalyCorrelationGroupOverview property value. The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.
            ## @return a user_experience_analytics_anomaly_correlation_group_overview
            ## 
            def user_experience_analytics_anomaly_correlation_group_overview
                return @user_experience_analytics_anomaly_correlation_group_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsAnomalyCorrelationGroupOverview property value. The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.
            ## @param value Value to set for the userExperienceAnalyticsAnomalyCorrelationGroupOverview property.
            ## @return a void
            ## 
            def user_experience_analytics_anomaly_correlation_group_overview=(value)
                @user_experience_analytics_anomaly_correlation_group_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAnomalyDevice property value. The user experience analytics anomaly entity contains device details.
            ## @return a user_experience_analytics_anomaly_device
            ## 
            def user_experience_analytics_anomaly_device
                return @user_experience_analytics_anomaly_device
            end
            ## 
            ## Sets the userExperienceAnalyticsAnomalyDevice property value. The user experience analytics anomaly entity contains device details.
            ## @param value Value to set for the userExperienceAnalyticsAnomalyDevice property.
            ## @return a void
            ## 
            def user_experience_analytics_anomaly_device=(value)
                @user_experience_analytics_anomaly_device = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAnomalySeverityOverview property value. The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.
            ## @return a user_experience_analytics_anomaly_severity_overview
            ## 
            def user_experience_analytics_anomaly_severity_overview
                return @user_experience_analytics_anomaly_severity_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsAnomalySeverityOverview property value. The user experience analytics anomaly severity overview entity contains the count information for each severity of anomaly.
            ## @param value Value to set for the userExperienceAnalyticsAnomalySeverityOverview property.
            ## @return a void
            ## 
            def user_experience_analytics_anomaly_severity_overview=(value)
                @user_experience_analytics_anomaly_severity_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformance property value. User experience analytics appHealth Application Performance
            ## @return a user_experience_analytics_app_health_application_performance
            ## 
            def user_experience_analytics_app_health_application_performance
                return @user_experience_analytics_app_health_application_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformance property value. User experience analytics appHealth Application Performance
            ## @param value Value to set for the userExperienceAnalyticsAppHealthApplicationPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance=(value)
                @user_experience_analytics_app_health_application_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion property value. User experience analytics appHealth Application Performance by App Version
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version
                return @user_experience_analytics_app_health_application_performance_by_app_version
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion property value. User experience analytics appHealth Application Performance by App Version
            ## @param value Value to set for the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version=(value)
                @user_experience_analytics_app_health_application_performance_by_app_version = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property value. User experience analytics appHealth Application Performance by App Version details
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version_details
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_details
                return @user_experience_analytics_app_health_application_performance_by_app_version_details
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property value. User experience analytics appHealth Application Performance by App Version details
            ## @param value Value to set for the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_details=(value)
                @user_experience_analytics_app_health_application_performance_by_app_version_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property value. User experience analytics appHealth Application Performance by App Version Device Id
            ## @return a user_experience_analytics_app_health_app_performance_by_app_version_device_id
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id
                return @user_experience_analytics_app_health_application_performance_by_app_version_device_id
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property value. User experience analytics appHealth Application Performance by App Version Device Id
            ## @param value Value to set for the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id=(value)
                @user_experience_analytics_app_health_application_performance_by_app_version_device_id = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property value. User experience analytics appHealth Application Performance by OS Version
            ## @return a user_experience_analytics_app_health_app_performance_by_o_s_version
            ## 
            def user_experience_analytics_app_health_application_performance_by_o_s_version
                return @user_experience_analytics_app_health_application_performance_by_o_s_version
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property value. User experience analytics appHealth Application Performance by OS Version
            ## @param value Value to set for the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_application_performance_by_o_s_version=(value)
                @user_experience_analytics_app_health_application_performance_by_o_s_version = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDeviceModelPerformance property value. User experience analytics appHealth Model Performance
            ## @return a user_experience_analytics_app_health_device_model_performance
            ## 
            def user_experience_analytics_app_health_device_model_performance
                return @user_experience_analytics_app_health_device_model_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDeviceModelPerformance property value. User experience analytics appHealth Model Performance
            ## @param value Value to set for the userExperienceAnalyticsAppHealthDeviceModelPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_model_performance=(value)
                @user_experience_analytics_app_health_device_model_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDevicePerformance property value. User experience analytics appHealth Device Performance
            ## @return a user_experience_analytics_app_health_device_performance
            ## 
            def user_experience_analytics_app_health_device_performance
                return @user_experience_analytics_app_health_device_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDevicePerformance property value. User experience analytics appHealth Device Performance
            ## @param value Value to set for the userExperienceAnalyticsAppHealthDevicePerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_performance=(value)
                @user_experience_analytics_app_health_device_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthDevicePerformanceDetails property value. User experience analytics device performance details
            ## @return a user_experience_analytics_app_health_device_performance_details
            ## 
            def user_experience_analytics_app_health_device_performance_details
                return @user_experience_analytics_app_health_device_performance_details
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthDevicePerformanceDetails property value. User experience analytics device performance details
            ## @param value Value to set for the userExperienceAnalyticsAppHealthDevicePerformanceDetails property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_device_performance_details=(value)
                @user_experience_analytics_app_health_device_performance_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthOSVersionPerformance property value. User experience analytics appHealth OS version Performance
            ## @return a user_experience_analytics_app_health_o_s_version_performance
            ## 
            def user_experience_analytics_app_health_o_s_version_performance
                return @user_experience_analytics_app_health_o_s_version_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthOSVersionPerformance property value. User experience analytics appHealth OS version Performance
            ## @param value Value to set for the userExperienceAnalyticsAppHealthOSVersionPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_o_s_version_performance=(value)
                @user_experience_analytics_app_health_o_s_version_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsAppHealthOverview property value. User experience analytics appHealth overview
            ## @return a user_experience_analytics_category
            ## 
            def user_experience_analytics_app_health_overview
                return @user_experience_analytics_app_health_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsAppHealthOverview property value. User experience analytics appHealth overview
            ## @param value Value to set for the userExperienceAnalyticsAppHealthOverview property.
            ## @return a void
            ## 
            def user_experience_analytics_app_health_overview=(value)
                @user_experience_analytics_app_health_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBaselines property value. User experience analytics baselines
            ## @return a user_experience_analytics_baseline
            ## 
            def user_experience_analytics_baselines
                return @user_experience_analytics_baselines
            end
            ## 
            ## Sets the userExperienceAnalyticsBaselines property value. User experience analytics baselines
            ## @param value Value to set for the userExperienceAnalyticsBaselines property.
            ## @return a void
            ## 
            def user_experience_analytics_baselines=(value)
                @user_experience_analytics_baselines = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthAppImpact property value. User Experience Analytics Battery Health App Impact
            ## @return a user_experience_analytics_battery_health_app_impact
            ## 
            def user_experience_analytics_battery_health_app_impact
                return @user_experience_analytics_battery_health_app_impact
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthAppImpact property value. User Experience Analytics Battery Health App Impact
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthAppImpact property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_app_impact=(value)
                @user_experience_analytics_battery_health_app_impact = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthCapacityDetails property value. User Experience Analytics Battery Health Capacity Details
            ## @return a user_experience_analytics_battery_health_capacity_details
            ## 
            def user_experience_analytics_battery_health_capacity_details
                return @user_experience_analytics_battery_health_capacity_details
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthCapacityDetails property value. User Experience Analytics Battery Health Capacity Details
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthCapacityDetails property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_capacity_details=(value)
                @user_experience_analytics_battery_health_capacity_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthDeviceAppImpact property value. User Experience Analytics Battery Health Device App Impact
            ## @return a user_experience_analytics_battery_health_device_app_impact
            ## 
            def user_experience_analytics_battery_health_device_app_impact
                return @user_experience_analytics_battery_health_device_app_impact
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthDeviceAppImpact property value. User Experience Analytics Battery Health Device App Impact
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthDeviceAppImpact property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_device_app_impact=(value)
                @user_experience_analytics_battery_health_device_app_impact = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthDevicePerformance property value. User Experience Analytics Battery Health Device Performance
            ## @return a user_experience_analytics_battery_health_device_performance
            ## 
            def user_experience_analytics_battery_health_device_performance
                return @user_experience_analytics_battery_health_device_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthDevicePerformance property value. User Experience Analytics Battery Health Device Performance
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthDevicePerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_device_performance=(value)
                @user_experience_analytics_battery_health_device_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory property value. User Experience Analytics Battery Health Device Runtime History
            ## @return a user_experience_analytics_battery_health_device_runtime_history
            ## 
            def user_experience_analytics_battery_health_device_runtime_history
                return @user_experience_analytics_battery_health_device_runtime_history
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory property value. User Experience Analytics Battery Health Device Runtime History
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_device_runtime_history=(value)
                @user_experience_analytics_battery_health_device_runtime_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthModelPerformance property value. User Experience Analytics Battery Health Model Performance
            ## @return a user_experience_analytics_battery_health_model_performance
            ## 
            def user_experience_analytics_battery_health_model_performance
                return @user_experience_analytics_battery_health_model_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthModelPerformance property value. User Experience Analytics Battery Health Model Performance
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthModelPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_model_performance=(value)
                @user_experience_analytics_battery_health_model_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthOsPerformance property value. User Experience Analytics Battery Health Os Performance
            ## @return a user_experience_analytics_battery_health_os_performance
            ## 
            def user_experience_analytics_battery_health_os_performance
                return @user_experience_analytics_battery_health_os_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthOsPerformance property value. User Experience Analytics Battery Health Os Performance
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthOsPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_os_performance=(value)
                @user_experience_analytics_battery_health_os_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsBatteryHealthRuntimeDetails property value. User Experience Analytics Battery Health Runtime Details
            ## @return a user_experience_analytics_battery_health_runtime_details
            ## 
            def user_experience_analytics_battery_health_runtime_details
                return @user_experience_analytics_battery_health_runtime_details
            end
            ## 
            ## Sets the userExperienceAnalyticsBatteryHealthRuntimeDetails property value. User Experience Analytics Battery Health Runtime Details
            ## @param value Value to set for the userExperienceAnalyticsBatteryHealthRuntimeDetails property.
            ## @return a void
            ## 
            def user_experience_analytics_battery_health_runtime_details=(value)
                @user_experience_analytics_battery_health_runtime_details = value
            end
            ## 
            ## Gets the userExperienceAnalyticsCategories property value. User experience analytics categories
            ## @return a user_experience_analytics_category
            ## 
            def user_experience_analytics_categories
                return @user_experience_analytics_categories
            end
            ## 
            ## Sets the userExperienceAnalyticsCategories property value. User experience analytics categories
            ## @param value Value to set for the userExperienceAnalyticsCategories property.
            ## @return a void
            ## 
            def user_experience_analytics_categories=(value)
                @user_experience_analytics_categories = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceMetricHistory property value. User experience analytics device metric history
            ## @return a user_experience_analytics_metric_history
            ## 
            def user_experience_analytics_device_metric_history
                return @user_experience_analytics_device_metric_history
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceMetricHistory property value. User experience analytics device metric history
            ## @param value Value to set for the userExperienceAnalyticsDeviceMetricHistory property.
            ## @return a void
            ## 
            def user_experience_analytics_device_metric_history=(value)
                @user_experience_analytics_device_metric_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDevicePerformance property value. User experience analytics device performance
            ## @return a user_experience_analytics_device_performance
            ## 
            def user_experience_analytics_device_performance
                return @user_experience_analytics_device_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsDevicePerformance property value. User experience analytics device performance
            ## @param value Value to set for the userExperienceAnalyticsDevicePerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_device_performance=(value)
                @user_experience_analytics_device_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceScope property value. The user experience analytics device scope entity endpoint to trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
            ## @return a user_experience_analytics_device_scope
            ## 
            def user_experience_analytics_device_scope
                return @user_experience_analytics_device_scope
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceScope property value. The user experience analytics device scope entity endpoint to trigger on the service to either START or STOP computing metrics data based on a device scope configuration.
            ## @param value Value to set for the userExperienceAnalyticsDeviceScope property.
            ## @return a void
            ## 
            def user_experience_analytics_device_scope=(value)
                @user_experience_analytics_device_scope = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceScopes property value. The user experience analytics device scope entity contains device scope configuration use to apply filtering on the endpoint analytics reports.
            ## @return a user_experience_analytics_device_scope
            ## 
            def user_experience_analytics_device_scopes
                return @user_experience_analytics_device_scopes
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceScopes property value. The user experience analytics device scope entity contains device scope configuration use to apply filtering on the endpoint analytics reports.
            ## @param value Value to set for the userExperienceAnalyticsDeviceScopes property.
            ## @return a void
            ## 
            def user_experience_analytics_device_scopes=(value)
                @user_experience_analytics_device_scopes = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceScores property value. User experience analytics device scores
            ## @return a user_experience_analytics_device_scores
            ## 
            def user_experience_analytics_device_scores
                return @user_experience_analytics_device_scores
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceScores property value. User experience analytics device scores
            ## @param value Value to set for the userExperienceAnalyticsDeviceScores property.
            ## @return a void
            ## 
            def user_experience_analytics_device_scores=(value)
                @user_experience_analytics_device_scores = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceStartupHistory property value. User experience analytics device Startup History
            ## @return a user_experience_analytics_device_startup_history
            ## 
            def user_experience_analytics_device_startup_history
                return @user_experience_analytics_device_startup_history
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceStartupHistory property value. User experience analytics device Startup History
            ## @param value Value to set for the userExperienceAnalyticsDeviceStartupHistory property.
            ## @return a void
            ## 
            def user_experience_analytics_device_startup_history=(value)
                @user_experience_analytics_device_startup_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceStartupProcessPerformance property value. User experience analytics device Startup Process Performance
            ## @return a user_experience_analytics_device_startup_process_performance
            ## 
            def user_experience_analytics_device_startup_process_performance
                return @user_experience_analytics_device_startup_process_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceStartupProcessPerformance property value. User experience analytics device Startup Process Performance
            ## @param value Value to set for the userExperienceAnalyticsDeviceStartupProcessPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_device_startup_process_performance=(value)
                @user_experience_analytics_device_startup_process_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceStartupProcesses property value. User experience analytics device Startup Processes
            ## @return a user_experience_analytics_device_startup_process
            ## 
            def user_experience_analytics_device_startup_processes
                return @user_experience_analytics_device_startup_processes
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceStartupProcesses property value. User experience analytics device Startup Processes
            ## @param value Value to set for the userExperienceAnalyticsDeviceStartupProcesses property.
            ## @return a void
            ## 
            def user_experience_analytics_device_startup_processes=(value)
                @user_experience_analytics_device_startup_processes = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDeviceTimelineEvent property value. The user experience analytics device events entity contains NRT device timeline event details.
            ## @return a user_experience_analytics_device_timeline_event
            ## 
            def user_experience_analytics_device_timeline_event
                return @user_experience_analytics_device_timeline_event
            end
            ## 
            ## Sets the userExperienceAnalyticsDeviceTimelineEvent property value. The user experience analytics device events entity contains NRT device timeline event details.
            ## @param value Value to set for the userExperienceAnalyticsDeviceTimelineEvent property.
            ## @return a void
            ## 
            def user_experience_analytics_device_timeline_event=(value)
                @user_experience_analytics_device_timeline_event = value
            end
            ## 
            ## Gets the userExperienceAnalyticsDevicesWithoutCloudIdentity property value. User experience analytics devices without cloud identity.
            ## @return a user_experience_analytics_device_without_cloud_identity
            ## 
            def user_experience_analytics_devices_without_cloud_identity
                return @user_experience_analytics_devices_without_cloud_identity
            end
            ## 
            ## Sets the userExperienceAnalyticsDevicesWithoutCloudIdentity property value. User experience analytics devices without cloud identity.
            ## @param value Value to set for the userExperienceAnalyticsDevicesWithoutCloudIdentity property.
            ## @return a void
            ## 
            def user_experience_analytics_devices_without_cloud_identity=(value)
                @user_experience_analytics_devices_without_cloud_identity = value
            end
            ## 
            ## Gets the userExperienceAnalyticsImpactingProcess property value. User experience analytics impacting process
            ## @return a user_experience_analytics_impacting_process
            ## 
            def user_experience_analytics_impacting_process
                return @user_experience_analytics_impacting_process
            end
            ## 
            ## Sets the userExperienceAnalyticsImpactingProcess property value. User experience analytics impacting process
            ## @param value Value to set for the userExperienceAnalyticsImpactingProcess property.
            ## @return a void
            ## 
            def user_experience_analytics_impacting_process=(value)
                @user_experience_analytics_impacting_process = value
            end
            ## 
            ## Gets the userExperienceAnalyticsMetricHistory property value. User experience analytics metric history
            ## @return a user_experience_analytics_metric_history
            ## 
            def user_experience_analytics_metric_history
                return @user_experience_analytics_metric_history
            end
            ## 
            ## Sets the userExperienceAnalyticsMetricHistory property value. User experience analytics metric history
            ## @param value Value to set for the userExperienceAnalyticsMetricHistory property.
            ## @return a void
            ## 
            def user_experience_analytics_metric_history=(value)
                @user_experience_analytics_metric_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsModelScores property value. User experience analytics model scores
            ## @return a user_experience_analytics_model_scores
            ## 
            def user_experience_analytics_model_scores
                return @user_experience_analytics_model_scores
            end
            ## 
            ## Sets the userExperienceAnalyticsModelScores property value. User experience analytics model scores
            ## @param value Value to set for the userExperienceAnalyticsModelScores property.
            ## @return a void
            ## 
            def user_experience_analytics_model_scores=(value)
                @user_experience_analytics_model_scores = value
            end
            ## 
            ## Gets the userExperienceAnalyticsNotAutopilotReadyDevice property value. User experience analytics devices not Windows Autopilot ready.
            ## @return a user_experience_analytics_not_autopilot_ready_device
            ## 
            def user_experience_analytics_not_autopilot_ready_device
                return @user_experience_analytics_not_autopilot_ready_device
            end
            ## 
            ## Sets the userExperienceAnalyticsNotAutopilotReadyDevice property value. User experience analytics devices not Windows Autopilot ready.
            ## @param value Value to set for the userExperienceAnalyticsNotAutopilotReadyDevice property.
            ## @return a void
            ## 
            def user_experience_analytics_not_autopilot_ready_device=(value)
                @user_experience_analytics_not_autopilot_ready_device = value
            end
            ## 
            ## Gets the userExperienceAnalyticsOverview property value. User experience analytics overview
            ## @return a user_experience_analytics_overview
            ## 
            def user_experience_analytics_overview
                return @user_experience_analytics_overview
            end
            ## 
            ## Sets the userExperienceAnalyticsOverview property value. User experience analytics overview
            ## @param value Value to set for the userExperienceAnalyticsOverview property.
            ## @return a void
            ## 
            def user_experience_analytics_overview=(value)
                @user_experience_analytics_overview = value
            end
            ## 
            ## Gets the userExperienceAnalyticsRemoteConnection property value. User experience analytics remote connection
            ## @return a user_experience_analytics_remote_connection
            ## 
            def user_experience_analytics_remote_connection
                return @user_experience_analytics_remote_connection
            end
            ## 
            ## Sets the userExperienceAnalyticsRemoteConnection property value. User experience analytics remote connection
            ## @param value Value to set for the userExperienceAnalyticsRemoteConnection property.
            ## @return a void
            ## 
            def user_experience_analytics_remote_connection=(value)
                @user_experience_analytics_remote_connection = value
            end
            ## 
            ## Gets the userExperienceAnalyticsResourcePerformance property value. User experience analytics resource performance
            ## @return a user_experience_analytics_resource_performance
            ## 
            def user_experience_analytics_resource_performance
                return @user_experience_analytics_resource_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsResourcePerformance property value. User experience analytics resource performance
            ## @param value Value to set for the userExperienceAnalyticsResourcePerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_resource_performance=(value)
                @user_experience_analytics_resource_performance = value
            end
            ## 
            ## Gets the userExperienceAnalyticsScoreHistory property value. User experience analytics device Startup Score History
            ## @return a user_experience_analytics_score_history
            ## 
            def user_experience_analytics_score_history
                return @user_experience_analytics_score_history
            end
            ## 
            ## Sets the userExperienceAnalyticsScoreHistory property value. User experience analytics device Startup Score History
            ## @param value Value to set for the userExperienceAnalyticsScoreHistory property.
            ## @return a void
            ## 
            def user_experience_analytics_score_history=(value)
                @user_experience_analytics_score_history = value
            end
            ## 
            ## Gets the userExperienceAnalyticsSettings property value. User experience analytics device settings
            ## @return a user_experience_analytics_settings
            ## 
            def user_experience_analytics_settings
                return @user_experience_analytics_settings
            end
            ## 
            ## Sets the userExperienceAnalyticsSettings property value. User experience analytics device settings
            ## @param value Value to set for the userExperienceAnalyticsSettings property.
            ## @return a void
            ## 
            def user_experience_analytics_settings=(value)
                @user_experience_analytics_settings = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property value. User experience analytics work from anywhere hardware readiness metrics.
            ## @return a user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            ## 
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric
                return @user_experience_analytics_work_from_anywhere_hardware_readiness_metric
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property value. User experience analytics work from anywhere hardware readiness metrics.
            ## @param value Value to set for the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric=(value)
                @user_experience_analytics_work_from_anywhere_hardware_readiness_metric = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereMetrics property value. User experience analytics work from anywhere metrics.
            ## @return a user_experience_analytics_work_from_anywhere_metric
            ## 
            def user_experience_analytics_work_from_anywhere_metrics
                return @user_experience_analytics_work_from_anywhere_metrics
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereMetrics property value. User experience analytics work from anywhere metrics.
            ## @param value Value to set for the userExperienceAnalyticsWorkFromAnywhereMetrics property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_metrics=(value)
                @user_experience_analytics_work_from_anywhere_metrics = value
            end
            ## 
            ## Gets the userExperienceAnalyticsWorkFromAnywhereModelPerformance property value. The user experience analytics work from anywhere model performance
            ## @return a user_experience_analytics_work_from_anywhere_model_performance
            ## 
            def user_experience_analytics_work_from_anywhere_model_performance
                return @user_experience_analytics_work_from_anywhere_model_performance
            end
            ## 
            ## Sets the userExperienceAnalyticsWorkFromAnywhereModelPerformance property value. The user experience analytics work from anywhere model performance
            ## @param value Value to set for the userExperienceAnalyticsWorkFromAnywhereModelPerformance property.
            ## @return a void
            ## 
            def user_experience_analytics_work_from_anywhere_model_performance=(value)
                @user_experience_analytics_work_from_anywhere_model_performance = value
            end
            ## 
            ## Gets the userPfxCertificates property value. Collection of PFX certificates associated with a user.
            ## @return a user_p_f_x_certificate
            ## 
            def user_pfx_certificates
                return @user_pfx_certificates
            end
            ## 
            ## Sets the userPfxCertificates property value. Collection of PFX certificates associated with a user.
            ## @param value Value to set for the userPfxCertificates property.
            ## @return a void
            ## 
            def user_pfx_certificates=(value)
                @user_pfx_certificates = value
            end
            ## 
            ## Gets the virtualEndpoint property value. The virtualEndpoint property
            ## @return a virtual_endpoint
            ## 
            def virtual_endpoint
                return @virtual_endpoint
            end
            ## 
            ## Sets the virtualEndpoint property value. The virtualEndpoint property
            ## @param value Value to set for the virtualEndpoint property.
            ## @return a void
            ## 
            def virtual_endpoint=(value)
                @virtual_endpoint = value
            end
            ## 
            ## Gets the windowsAutopilotDeploymentProfiles property value. Windows auto pilot deployment profiles
            ## @return a windows_autopilot_deployment_profile
            ## 
            def windows_autopilot_deployment_profiles
                return @windows_autopilot_deployment_profiles
            end
            ## 
            ## Sets the windowsAutopilotDeploymentProfiles property value. Windows auto pilot deployment profiles
            ## @param value Value to set for the windowsAutopilotDeploymentProfiles property.
            ## @return a void
            ## 
            def windows_autopilot_deployment_profiles=(value)
                @windows_autopilot_deployment_profiles = value
            end
            ## 
            ## Gets the windowsAutopilotDeviceIdentities property value. The Windows autopilot device identities contained collection.
            ## @return a windows_autopilot_device_identity
            ## 
            def windows_autopilot_device_identities
                return @windows_autopilot_device_identities
            end
            ## 
            ## Sets the windowsAutopilotDeviceIdentities property value. The Windows autopilot device identities contained collection.
            ## @param value Value to set for the windowsAutopilotDeviceIdentities property.
            ## @return a void
            ## 
            def windows_autopilot_device_identities=(value)
                @windows_autopilot_device_identities = value
            end
            ## 
            ## Gets the windowsAutopilotSettings property value. The Windows autopilot account settings.
            ## @return a windows_autopilot_settings
            ## 
            def windows_autopilot_settings
                return @windows_autopilot_settings
            end
            ## 
            ## Sets the windowsAutopilotSettings property value. The Windows autopilot account settings.
            ## @param value Value to set for the windowsAutopilotSettings property.
            ## @return a void
            ## 
            def windows_autopilot_settings=(value)
                @windows_autopilot_settings = value
            end
            ## 
            ## Gets the windowsDriverUpdateProfiles property value. A collection of windows driver update profiles
            ## @return a windows_driver_update_profile
            ## 
            def windows_driver_update_profiles
                return @windows_driver_update_profiles
            end
            ## 
            ## Sets the windowsDriverUpdateProfiles property value. A collection of windows driver update profiles
            ## @param value Value to set for the windowsDriverUpdateProfiles property.
            ## @return a void
            ## 
            def windows_driver_update_profiles=(value)
                @windows_driver_update_profiles = value
            end
            ## 
            ## Gets the windowsFeatureUpdateProfiles property value. A collection of windows feature update profiles
            ## @return a windows_feature_update_profile
            ## 
            def windows_feature_update_profiles
                return @windows_feature_update_profiles
            end
            ## 
            ## Sets the windowsFeatureUpdateProfiles property value. A collection of windows feature update profiles
            ## @param value Value to set for the windowsFeatureUpdateProfiles property.
            ## @return a void
            ## 
            def windows_feature_update_profiles=(value)
                @windows_feature_update_profiles = value
            end
            ## 
            ## Gets the windowsInformationProtectionAppLearningSummaries property value. The windows information protection app learning summaries.
            ## @return a windows_information_protection_app_learning_summary
            ## 
            def windows_information_protection_app_learning_summaries
                return @windows_information_protection_app_learning_summaries
            end
            ## 
            ## Sets the windowsInformationProtectionAppLearningSummaries property value. The windows information protection app learning summaries.
            ## @param value Value to set for the windowsInformationProtectionAppLearningSummaries property.
            ## @return a void
            ## 
            def windows_information_protection_app_learning_summaries=(value)
                @windows_information_protection_app_learning_summaries = value
            end
            ## 
            ## Gets the windowsInformationProtectionNetworkLearningSummaries property value. The windows information protection network learning summaries.
            ## @return a windows_information_protection_network_learning_summary
            ## 
            def windows_information_protection_network_learning_summaries
                return @windows_information_protection_network_learning_summaries
            end
            ## 
            ## Sets the windowsInformationProtectionNetworkLearningSummaries property value. The windows information protection network learning summaries.
            ## @param value Value to set for the windowsInformationProtectionNetworkLearningSummaries property.
            ## @return a void
            ## 
            def windows_information_protection_network_learning_summaries=(value)
                @windows_information_protection_network_learning_summaries = value
            end
            ## 
            ## Gets the windowsMalwareInformation property value. The list of affected malware in the tenant.
            ## @return a windows_malware_information
            ## 
            def windows_malware_information
                return @windows_malware_information
            end
            ## 
            ## Sets the windowsMalwareInformation property value. The list of affected malware in the tenant.
            ## @param value Value to set for the windowsMalwareInformation property.
            ## @return a void
            ## 
            def windows_malware_information=(value)
                @windows_malware_information = value
            end
            ## 
            ## Gets the windowsMalwareOverview property value. Malware overview for windows devices.
            ## @return a windows_malware_overview
            ## 
            def windows_malware_overview
                return @windows_malware_overview
            end
            ## 
            ## Sets the windowsMalwareOverview property value. Malware overview for windows devices.
            ## @param value Value to set for the windowsMalwareOverview property.
            ## @return a void
            ## 
            def windows_malware_overview=(value)
                @windows_malware_overview = value
            end
            ## 
            ## Gets the windowsQualityUpdatePolicies property value. A collection of Windows quality update policies
            ## @return a windows_quality_update_policy
            ## 
            def windows_quality_update_policies
                return @windows_quality_update_policies
            end
            ## 
            ## Sets the windowsQualityUpdatePolicies property value. A collection of Windows quality update policies
            ## @param value Value to set for the windowsQualityUpdatePolicies property.
            ## @return a void
            ## 
            def windows_quality_update_policies=(value)
                @windows_quality_update_policies = value
            end
            ## 
            ## Gets the windowsQualityUpdateProfiles property value. A collection of windows quality update profiles
            ## @return a windows_quality_update_profile
            ## 
            def windows_quality_update_profiles
                return @windows_quality_update_profiles
            end
            ## 
            ## Sets the windowsQualityUpdateProfiles property value. A collection of windows quality update profiles
            ## @param value Value to set for the windowsQualityUpdateProfiles property.
            ## @return a void
            ## 
            def windows_quality_update_profiles=(value)
                @windows_quality_update_profiles = value
            end
            ## 
            ## Gets the windowsUpdateCatalogItems property value. A collection of windows update catalog items (fetaure updates item , quality updates item)
            ## @return a windows_update_catalog_item
            ## 
            def windows_update_catalog_items
                return @windows_update_catalog_items
            end
            ## 
            ## Sets the windowsUpdateCatalogItems property value. A collection of windows update catalog items (fetaure updates item , quality updates item)
            ## @param value Value to set for the windowsUpdateCatalogItems property.
            ## @return a void
            ## 
            def windows_update_catalog_items=(value)
                @windows_update_catalog_items = value
            end
            ## 
            ## Gets the zebraFotaArtifacts property value. The Collection of ZebraFotaArtifacts.
            ## @return a zebra_fota_artifact
            ## 
            def zebra_fota_artifacts
                return @zebra_fota_artifacts
            end
            ## 
            ## Sets the zebraFotaArtifacts property value. The Collection of ZebraFotaArtifacts.
            ## @param value Value to set for the zebraFotaArtifacts property.
            ## @return a void
            ## 
            def zebra_fota_artifacts=(value)
                @zebra_fota_artifacts = value
            end
            ## 
            ## Gets the zebraFotaConnector property value. The singleton ZebraFotaConnector associated with account.
            ## @return a zebra_fota_connector
            ## 
            def zebra_fota_connector
                return @zebra_fota_connector
            end
            ## 
            ## Sets the zebraFotaConnector property value. The singleton ZebraFotaConnector associated with account.
            ## @param value Value to set for the zebraFotaConnector property.
            ## @return a void
            ## 
            def zebra_fota_connector=(value)
                @zebra_fota_connector = value
            end
            ## 
            ## Gets the zebraFotaDeployments property value. Collection of ZebraFotaDeployments associated with account.
            ## @return a zebra_fota_deployment
            ## 
            def zebra_fota_deployments
                return @zebra_fota_deployments
            end
            ## 
            ## Sets the zebraFotaDeployments property value. Collection of ZebraFotaDeployments associated with account.
            ## @param value Value to set for the zebraFotaDeployments property.
            ## @return a void
            ## 
            def zebra_fota_deployments=(value)
                @zebra_fota_deployments = value
            end
        end
    end
end
