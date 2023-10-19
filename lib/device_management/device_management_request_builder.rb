require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/device_management_model_model_model_model_model_model_model'
require_relative '../models/o_data_errors_o_data_error'
require_relative './advanced_threat_protection_onboarding_state_summary/advanced_threat_protection_onboarding_state_summary_request_builder'
require_relative './android_device_owner_enrollment_profiles/android_device_owner_enrollment_profiles_request_builder'
require_relative './android_for_work_app_configuration_schemas/android_for_work_app_configuration_schemas_request_builder'
require_relative './android_for_work_enrollment_profiles/android_for_work_enrollment_profiles_request_builder'
require_relative './android_for_work_settings/android_for_work_settings_request_builder'
require_relative './android_managed_store_account_enterprise_settings/android_managed_store_account_enterprise_settings_request_builder'
require_relative './android_managed_store_app_configuration_schemas/android_managed_store_app_configuration_schemas_request_builder'
require_relative './apple_push_notification_certificate/apple_push_notification_certificate_request_builder'
require_relative './apple_user_initiated_enrollment_profiles/apple_user_initiated_enrollment_profiles_request_builder'
require_relative './assignment_filters/assignment_filters_request_builder'
require_relative './audit_events/audit_events_request_builder'
require_relative './autopilot_events/autopilot_events_request_builder'
require_relative './cart_to_class_associations/cart_to_class_associations_request_builder'
require_relative './categories/categories_request_builder'
require_relative './certificate_connector_details/certificate_connector_details_request_builder'
require_relative './chrome_o_s_onboarding_settings/chrome_o_s_onboarding_settings_request_builder'
require_relative './cloud_p_c_connectivity_issues/cloud_p_c_connectivity_issues_request_builder'
require_relative './comanaged_devices/comanaged_devices_request_builder'
require_relative './comanagement_eligible_devices/comanagement_eligible_devices_request_builder'
require_relative './compliance_categories/compliance_categories_request_builder'
require_relative './compliance_management_partners/compliance_management_partners_request_builder'
require_relative './compliance_policies/compliance_policies_request_builder'
require_relative './compliance_settings/compliance_settings_request_builder'
require_relative './conditional_access_settings/conditional_access_settings_request_builder'
require_relative './config_manager_collections/config_manager_collections_request_builder'
require_relative './configuration_categories/configuration_categories_request_builder'
require_relative './configuration_policies/configuration_policies_request_builder'
require_relative './configuration_policy_templates/configuration_policy_templates_request_builder'
require_relative './configuration_settings/configuration_settings_request_builder'
require_relative './data_sharing_consents/data_sharing_consents_request_builder'
require_relative './dep_onboarding_settings/dep_onboarding_settings_request_builder'
require_relative './derived_credentials/derived_credentials_request_builder'
require_relative './detected_apps/detected_apps_request_builder'
require_relative './device_categories/device_categories_request_builder'
require_relative './device_compliance_policies/device_compliance_policies_request_builder'
require_relative './device_compliance_policy_device_state_summary/device_compliance_policy_device_state_summary_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/device_compliance_policy_setting_state_summaries_request_builder'
require_relative './device_compliance_scripts/device_compliance_scripts_request_builder'
require_relative './device_configuration_conflict_summary/device_configuration_conflict_summary_request_builder'
require_relative './device_configuration_device_state_summaries/device_configuration_device_state_summaries_request_builder'
require_relative './device_configuration_restricted_apps_violations/device_configuration_restricted_apps_violations_request_builder'
require_relative './device_configurations/device_configurations_request_builder'
require_relative './device_configurations_all_managed_device_certificate_states/device_configurations_all_managed_device_certificate_states_request_builder'
require_relative './device_configuration_user_state_summaries/device_configuration_user_state_summaries_request_builder'
require_relative './device_custom_attribute_shell_scripts/device_custom_attribute_shell_scripts_request_builder'
require_relative './device_enrollment_configurations/device_enrollment_configurations_request_builder'
require_relative './device_health_scripts/device_health_scripts_request_builder'
require_relative './device_management_partners/device_management_partners_request_builder'
require_relative './device_management_scripts/device_management_scripts_request_builder'
require_relative './device_shell_scripts/device_shell_scripts_request_builder'
require_relative './device_management'
require_relative './domain_join_connectors/domain_join_connectors_request_builder'
require_relative './embedded_s_i_m_activation_code_pools/embedded_s_i_m_activation_code_pools_request_builder'
require_relative './enable_android_device_administrator_enrollment/enable_android_device_administrator_enrollment_request_builder'
require_relative './enable_legacy_pc_management/enable_legacy_pc_management_request_builder'
require_relative './enable_unlicensed_adminstrators/enable_unlicensed_adminstrators_request_builder'
require_relative './evaluate_assignment_filter/evaluate_assignment_filter_request_builder'
require_relative './exchange_connectors/exchange_connectors_request_builder'
require_relative './exchange_on_premises_policies/exchange_on_premises_policies_request_builder'
require_relative './exchange_on_premises_policy/exchange_on_premises_policy_request_builder'
require_relative './get_assigned_role_details/get_assigned_role_details_request_builder'
require_relative './get_assignment_filters_status_details/get_assignment_filters_status_details_request_builder'
require_relative './get_comanaged_devices_summary/get_comanaged_devices_summary_request_builder'
require_relative './get_comanagement_eligible_devices_summary/get_comanagement_eligible_devices_summary_request_builder'
require_relative './get_effective_permissions/get_effective_permissions_request_builder'
require_relative './get_effective_permissions_with_scope/get_effective_permissions_with_scope_request_builder'
require_relative './get_role_scope_tags_by_ids_with_ids/get_role_scope_tags_by_ids_with_ids_request_builder'
require_relative './get_role_scope_tags_by_resource_with_resource/get_role_scope_tags_by_resource_with_resource_request_builder'
require_relative './get_suggested_enrollment_limit_with_enrollment_type/get_suggested_enrollment_limit_with_enrollment_type_request_builder'
require_relative './group_policy_categories/group_policy_categories_request_builder'
require_relative './group_policy_configurations/group_policy_configurations_request_builder'
require_relative './group_policy_definition_files/group_policy_definition_files_request_builder'
require_relative './group_policy_definitions/group_policy_definitions_request_builder'
require_relative './group_policy_migration_reports/group_policy_migration_reports_request_builder'
require_relative './group_policy_object_files/group_policy_object_files_request_builder'
require_relative './group_policy_uploaded_definition_files/group_policy_uploaded_definition_files_request_builder'
require_relative './imported_device_identities/imported_device_identities_request_builder'
require_relative './imported_windows_autopilot_device_identities/imported_windows_autopilot_device_identities_request_builder'
require_relative './intents/intents_request_builder'
require_relative './intune_branding_profiles/intune_branding_profiles_request_builder'
require_relative './ios_update_statuses/ios_update_statuses_request_builder'
require_relative './mac_o_s_software_update_account_summaries/mac_o_s_software_update_account_summaries_request_builder'
require_relative './managed_device_encryption_states/managed_device_encryption_states_request_builder'
require_relative './managed_device_overview/managed_device_overview_request_builder'
require_relative './managed_devices/managed_devices_request_builder'
require_relative './microsoft_tunnel_configurations/microsoft_tunnel_configurations_request_builder'
require_relative './microsoft_tunnel_health_thresholds/microsoft_tunnel_health_thresholds_request_builder'
require_relative './microsoft_tunnel_server_log_collection_responses/microsoft_tunnel_server_log_collection_responses_request_builder'
require_relative './microsoft_tunnel_sites/microsoft_tunnel_sites_request_builder'
require_relative './mobile_app_troubleshooting_events/mobile_app_troubleshooting_events_request_builder'
require_relative './mobile_threat_defense_connectors/mobile_threat_defense_connectors_request_builder'
require_relative './monitoring/monitoring_request_builder'
require_relative './ndes_connectors/ndes_connectors_request_builder'
require_relative './notification_message_templates/notification_message_templates_request_builder'
require_relative './privilege_management_elevations/privilege_management_elevations_request_builder'
require_relative './remote_action_audits/remote_action_audits_request_builder'
require_relative './remote_assistance_partners/remote_assistance_partners_request_builder'
require_relative './remote_assistance_settings/remote_assistance_settings_request_builder'
require_relative './reports/reports_request_builder'
require_relative './resource_access_profiles/resource_access_profiles_request_builder'
require_relative './resource_operations/resource_operations_request_builder'
require_relative './reusable_policy_settings/reusable_policy_settings_request_builder'
require_relative './reusable_settings/reusable_settings_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './role_scope_tags/role_scope_tags_request_builder'
require_relative './scoped_for_resource_with_resource/scoped_for_resource_with_resource_request_builder'
require_relative './send_custom_notification_to_company_portal/send_custom_notification_to_company_portal_request_builder'
require_relative './service_now_connections/service_now_connections_request_builder'
require_relative './setting_definitions/setting_definitions_request_builder'
require_relative './software_update_status_summary/software_update_status_summary_request_builder'
require_relative './telecom_expense_management_partners/telecom_expense_management_partners_request_builder'
require_relative './template_insights/template_insights_request_builder'
require_relative './templates/templates_request_builder'
require_relative './template_settings/template_settings_request_builder'
require_relative './tenant_attach_r_b_a_c/tenant_attach_r_b_a_c_request_builder'
require_relative './terms_and_conditions/terms_and_conditions_request_builder'
require_relative './troubleshooting_events/troubleshooting_events_request_builder'
require_relative './user_experience_analytics_anomaly/user_experience_analytics_anomaly_request_builder'
require_relative './user_experience_analytics_anomaly_correlation_group_overview/user_experience_analytics_anomaly_correlation_group_overview_request_builder'
require_relative './user_experience_analytics_anomaly_device/user_experience_analytics_anomaly_device_request_builder'
require_relative './user_experience_analytics_app_health_application_performance/user_experience_analytics_app_health_application_performance_request_builder'
require_relative './user_experience_analytics_app_health_application_performance_by_app_version/user_experience_analytics_app_health_application_performance_by_app_version_request_builder'
require_relative './user_experience_analytics_app_health_application_performance_by_app_version_details/b5977ca896bb8f07ba0110a16f7d5b9de7419efcedd12306c7bce008c6149c07'
require_relative './user_experience_analytics_app_health_application_performance_by_app_version_device_id/5b8a65d5a63f0349825de135a809711610a9af8fe10a6b6cb11e3a107c3c85b6'
require_relative './user_experience_analytics_app_health_application_performance_by_o_s_version/user_experience_analytics_app_health_application_performance_by_o_s_version_request_builder'
require_relative './user_experience_analytics_app_health_device_model_performance/user_experience_analytics_app_health_device_model_performance_request_builder'
require_relative './user_experience_analytics_app_health_device_performance/user_experience_analytics_app_health_device_performance_request_builder'
require_relative './user_experience_analytics_app_health_device_performance_details/user_experience_analytics_app_health_device_performance_details_request_builder'
require_relative './user_experience_analytics_app_health_o_s_version_performance/user_experience_analytics_app_health_o_s_version_performance_request_builder'
require_relative './user_experience_analytics_app_health_overview/user_experience_analytics_app_health_overview_request_builder'
require_relative './user_experience_analytics_baselines/user_experience_analytics_baselines_request_builder'
require_relative './user_experience_analytics_battery_health_app_impact/user_experience_analytics_battery_health_app_impact_request_builder'
require_relative './user_experience_analytics_battery_health_capacity_details/user_experience_analytics_battery_health_capacity_details_request_builder'
require_relative './user_experience_analytics_battery_health_device_app_impact/user_experience_analytics_battery_health_device_app_impact_request_builder'
require_relative './user_experience_analytics_battery_health_device_performance/user_experience_analytics_battery_health_device_performance_request_builder'
require_relative './user_experience_analytics_battery_health_device_runtime_history/user_experience_analytics_battery_health_device_runtime_history_request_builder'
require_relative './user_experience_analytics_battery_health_model_performance/user_experience_analytics_battery_health_model_performance_request_builder'
require_relative './user_experience_analytics_battery_health_os_performance/user_experience_analytics_battery_health_os_performance_request_builder'
require_relative './user_experience_analytics_battery_health_runtime_details/user_experience_analytics_battery_health_runtime_details_request_builder'
require_relative './user_experience_analytics_categories/user_experience_analytics_categories_request_builder'
require_relative './user_experience_analytics_device_metric_history/user_experience_analytics_device_metric_history_request_builder'
require_relative './user_experience_analytics_device_performance/user_experience_analytics_device_performance_request_builder'
require_relative './user_experience_analytics_device_scope/user_experience_analytics_device_scope_request_builder'
require_relative './user_experience_analytics_device_scopes/user_experience_analytics_device_scopes_request_builder'
require_relative './user_experience_analytics_device_scores/user_experience_analytics_device_scores_request_builder'
require_relative './user_experience_analytics_device_startup_history/user_experience_analytics_device_startup_history_request_builder'
require_relative './user_experience_analytics_device_startup_processes/user_experience_analytics_device_startup_processes_request_builder'
require_relative './user_experience_analytics_device_startup_process_performance/user_experience_analytics_device_startup_process_performance_request_builder'
require_relative './user_experience_analytics_devices_without_cloud_identity/user_experience_analytics_devices_without_cloud_identity_request_builder'
require_relative './user_experience_analytics_device_timeline_event/user_experience_analytics_device_timeline_event_request_builder'
require_relative './user_experience_analytics_impacting_process/user_experience_analytics_impacting_process_request_builder'
require_relative './user_experience_analytics_metric_history/user_experience_analytics_metric_history_request_builder'
require_relative './user_experience_analytics_model_scores/user_experience_analytics_model_scores_request_builder'
require_relative './user_experience_analytics_not_autopilot_ready_device/user_experience_analytics_not_autopilot_ready_device_request_builder'
require_relative './user_experience_analytics_overview/user_experience_analytics_overview_request_builder'
require_relative './user_experience_analytics_remote_connection/user_experience_analytics_remote_connection_request_builder'
require_relative './user_experience_analytics_resource_performance/user_experience_analytics_resource_performance_request_builder'
require_relative './user_experience_analytics_score_history/user_experience_analytics_score_history_request_builder'
require_relative './user_experience_analytics_summarized_device_scopes/user_experience_analytics_summarized_device_scopes_request_builder'
require_relative './user_experience_analytics_summarize_work_from_anywhere_devices/user_experience_analytics_summarize_work_from_anywhere_devices_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_hardware_readiness_metric/user_experience_analytics_work_from_anywhere_hardware_readiness_metric_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_metrics/user_experience_analytics_work_from_anywhere_metrics_request_builder'
require_relative './user_experience_analytics_work_from_anywhere_model_performance/user_experience_analytics_work_from_anywhere_model_performance_request_builder'
require_relative './user_pfx_certificates/user_pfx_certificates_request_builder'
require_relative './verify_windows_enrollment_auto_discovery_with_domain_name/verify_windows_enrollment_auto_discovery_with_domain_name_request_builder'
require_relative './virtual_endpoint/virtual_endpoint_request_builder'
require_relative './windows_autopilot_deployment_profiles/windows_autopilot_deployment_profiles_request_builder'
require_relative './windows_autopilot_device_identities/windows_autopilot_device_identities_request_builder'
require_relative './windows_autopilot_settings/windows_autopilot_settings_request_builder'
require_relative './windows_driver_update_profiles/windows_driver_update_profiles_request_builder'
require_relative './windows_feature_update_profiles/windows_feature_update_profiles_request_builder'
require_relative './windows_information_protection_app_learning_summaries/windows_information_protection_app_learning_summaries_request_builder'
require_relative './windows_information_protection_network_learning_summaries/windows_information_protection_network_learning_summaries_request_builder'
require_relative './windows_malware_information/windows_malware_information_request_builder'
require_relative './windows_quality_update_profiles/windows_quality_update_profiles_request_builder'
require_relative './windows_update_catalog_items/windows_update_catalog_items_request_builder'
require_relative './zebra_fota_artifacts/zebra_fota_artifacts_request_builder'
require_relative './zebra_fota_connector/zebra_fota_connector_request_builder'
require_relative './zebra_fota_deployments/zebra_fota_deployments_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        ## 
        # Provides operations to manage the deviceManagement singleton.
        class DeviceManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to manage the advancedThreatProtectionOnboardingStateSummary property of the microsoft.graph.deviceManagement entity.
            def advanced_threat_protection_onboarding_state_summary()
                return MicrosoftGraphBeta::DeviceManagement::AdvancedThreatProtectionOnboardingStateSummary::AdvancedThreatProtectionOnboardingStateSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidDeviceOwnerEnrollmentProfiles property of the microsoft.graph.deviceManagement entity.
            def android_device_owner_enrollment_profiles()
                return MicrosoftGraphBeta::DeviceManagement::AndroidDeviceOwnerEnrollmentProfiles::AndroidDeviceOwnerEnrollmentProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidForWorkAppConfigurationSchemas property of the microsoft.graph.deviceManagement entity.
            def android_for_work_app_configuration_schemas()
                return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkAppConfigurationSchemas::AndroidForWorkAppConfigurationSchemasRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidForWorkEnrollmentProfiles property of the microsoft.graph.deviceManagement entity.
            def android_for_work_enrollment_profiles()
                return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkEnrollmentProfiles::AndroidForWorkEnrollmentProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidForWorkSettings property of the microsoft.graph.deviceManagement entity.
            def android_for_work_settings()
                return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkSettings::AndroidForWorkSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidManagedStoreAccountEnterpriseSettings property of the microsoft.graph.deviceManagement entity.
            def android_managed_store_account_enterprise_settings()
                return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::AndroidManagedStoreAccountEnterpriseSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the androidManagedStoreAppConfigurationSchemas property of the microsoft.graph.deviceManagement entity.
            def android_managed_store_app_configuration_schemas()
                return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAppConfigurationSchemas::AndroidManagedStoreAppConfigurationSchemasRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the applePushNotificationCertificate property of the microsoft.graph.deviceManagement entity.
            def apple_push_notification_certificate()
                return MicrosoftGraphBeta::DeviceManagement::ApplePushNotificationCertificate::ApplePushNotificationCertificateRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the appleUserInitiatedEnrollmentProfiles property of the microsoft.graph.deviceManagement entity.
            def apple_user_initiated_enrollment_profiles()
                return MicrosoftGraphBeta::DeviceManagement::AppleUserInitiatedEnrollmentProfiles::AppleUserInitiatedEnrollmentProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the assignmentFilters property of the microsoft.graph.deviceManagement entity.
            def assignment_filters()
                return MicrosoftGraphBeta::DeviceManagement::AssignmentFilters::AssignmentFiltersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the auditEvents property of the microsoft.graph.deviceManagement entity.
            def audit_events()
                return MicrosoftGraphBeta::DeviceManagement::AuditEvents::AuditEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the autopilotEvents property of the microsoft.graph.deviceManagement entity.
            def autopilot_events()
                return MicrosoftGraphBeta::DeviceManagement::AutopilotEvents::AutopilotEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cartToClassAssociations property of the microsoft.graph.deviceManagement entity.
            def cart_to_class_associations()
                return MicrosoftGraphBeta::DeviceManagement::CartToClassAssociations::CartToClassAssociationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the categories property of the microsoft.graph.deviceManagement entity.
            def categories()
                return MicrosoftGraphBeta::DeviceManagement::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the certificateConnectorDetails property of the microsoft.graph.deviceManagement entity.
            def certificate_connector_details()
                return MicrosoftGraphBeta::DeviceManagement::CertificateConnectorDetails::CertificateConnectorDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the chromeOSOnboardingSettings property of the microsoft.graph.deviceManagement entity.
            def chrome_o_s_onboarding_settings()
                return MicrosoftGraphBeta::DeviceManagement::ChromeOSOnboardingSettings::ChromeOSOnboardingSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the cloudPCConnectivityIssues property of the microsoft.graph.deviceManagement entity.
            def cloud_p_c_connectivity_issues()
                return MicrosoftGraphBeta::DeviceManagement::CloudPCConnectivityIssues::CloudPCConnectivityIssuesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the comanagedDevices property of the microsoft.graph.deviceManagement entity.
            def comanaged_devices()
                return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::ComanagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the comanagementEligibleDevices property of the microsoft.graph.deviceManagement entity.
            def comanagement_eligible_devices()
                return MicrosoftGraphBeta::DeviceManagement::ComanagementEligibleDevices::ComanagementEligibleDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the complianceCategories property of the microsoft.graph.deviceManagement entity.
            def compliance_categories()
                return MicrosoftGraphBeta::DeviceManagement::ComplianceCategories::ComplianceCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the complianceManagementPartners property of the microsoft.graph.deviceManagement entity.
            def compliance_management_partners()
                return MicrosoftGraphBeta::DeviceManagement::ComplianceManagementPartners::ComplianceManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the compliancePolicies property of the microsoft.graph.deviceManagement entity.
            def compliance_policies()
                return MicrosoftGraphBeta::DeviceManagement::CompliancePolicies::CompliancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the complianceSettings property of the microsoft.graph.deviceManagement entity.
            def compliance_settings()
                return MicrosoftGraphBeta::DeviceManagement::ComplianceSettings::ComplianceSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the conditionalAccessSettings property of the microsoft.graph.deviceManagement entity.
            def conditional_access_settings()
                return MicrosoftGraphBeta::DeviceManagement::ConditionalAccessSettings::ConditionalAccessSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the configManagerCollections property of the microsoft.graph.deviceManagement entity.
            def config_manager_collections()
                return MicrosoftGraphBeta::DeviceManagement::ConfigManagerCollections::ConfigManagerCollectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the configurationCategories property of the microsoft.graph.deviceManagement entity.
            def configuration_categories()
                return MicrosoftGraphBeta::DeviceManagement::ConfigurationCategories::ConfigurationCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the configurationPolicies property of the microsoft.graph.deviceManagement entity.
            def configuration_policies()
                return MicrosoftGraphBeta::DeviceManagement::ConfigurationPolicies::ConfigurationPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the configurationPolicyTemplates property of the microsoft.graph.deviceManagement entity.
            def configuration_policy_templates()
                return MicrosoftGraphBeta::DeviceManagement::ConfigurationPolicyTemplates::ConfigurationPolicyTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the configurationSettings property of the microsoft.graph.deviceManagement entity.
            def configuration_settings()
                return MicrosoftGraphBeta::DeviceManagement::ConfigurationSettings::ConfigurationSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the dataSharingConsents property of the microsoft.graph.deviceManagement entity.
            def data_sharing_consents()
                return MicrosoftGraphBeta::DeviceManagement::DataSharingConsents::DataSharingConsentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the depOnboardingSettings property of the microsoft.graph.deviceManagement entity.
            def dep_onboarding_settings()
                return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::DepOnboardingSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the derivedCredentials property of the microsoft.graph.deviceManagement entity.
            def derived_credentials()
                return MicrosoftGraphBeta::DeviceManagement::DerivedCredentials::DerivedCredentialsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the detectedApps property of the microsoft.graph.deviceManagement entity.
            def detected_apps()
                return MicrosoftGraphBeta::DeviceManagement::DetectedApps::DetectedAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCategories property of the microsoft.graph.deviceManagement entity.
            def device_categories()
                return MicrosoftGraphBeta::DeviceManagement::DeviceCategories::DeviceCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicies property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policies()
                return MicrosoftGraphBeta::DeviceManagement::DeviceCompliancePolicies::DeviceCompliancePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicyDeviceStateSummary property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policy_device_state_summary()
                return MicrosoftGraphBeta::DeviceManagement::DeviceCompliancePolicyDeviceStateSummary::DeviceCompliancePolicyDeviceStateSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.deviceManagement entity.
            def device_compliance_policy_setting_state_summaries()
                return MicrosoftGraphBeta::DeviceManagement::DeviceCompliancePolicySettingStateSummaries::DeviceCompliancePolicySettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceComplianceScripts property of the microsoft.graph.deviceManagement entity.
            def device_compliance_scripts()
                return MicrosoftGraphBeta::DeviceManagement::DeviceComplianceScripts::DeviceComplianceScriptsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationConflictSummary property of the microsoft.graph.deviceManagement entity.
            def device_configuration_conflict_summary()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurationConflictSummary::DeviceConfigurationConflictSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationDeviceStateSummaries property of the microsoft.graph.deviceManagement entity.
            def device_configuration_device_state_summaries()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurationDeviceStateSummaries::DeviceConfigurationDeviceStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationRestrictedAppsViolations property of the microsoft.graph.deviceManagement entity.
            def device_configuration_restricted_apps_violations()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurationRestrictedAppsViolations::DeviceConfigurationRestrictedAppsViolationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurations property of the microsoft.graph.deviceManagement entity.
            def device_configurations()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurations::DeviceConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationsAllManagedDeviceCertificateStates property of the microsoft.graph.deviceManagement entity.
            def device_configurations_all_managed_device_certificate_states()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurationsAllManagedDeviceCertificateStates::DeviceConfigurationsAllManagedDeviceCertificateStatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceConfigurationUserStateSummaries property of the microsoft.graph.deviceManagement entity.
            def device_configuration_user_state_summaries()
                return MicrosoftGraphBeta::DeviceManagement::DeviceConfigurationUserStateSummaries::DeviceConfigurationUserStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceCustomAttributeShellScripts property of the microsoft.graph.deviceManagement entity.
            def device_custom_attribute_shell_scripts()
                return MicrosoftGraphBeta::DeviceManagement::DeviceCustomAttributeShellScripts::DeviceCustomAttributeShellScriptsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceEnrollmentConfigurations property of the microsoft.graph.deviceManagement entity.
            def device_enrollment_configurations()
                return MicrosoftGraphBeta::DeviceManagement::DeviceEnrollmentConfigurations::DeviceEnrollmentConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceHealthScripts property of the microsoft.graph.deviceManagement entity.
            def device_health_scripts()
                return MicrosoftGraphBeta::DeviceManagement::DeviceHealthScripts::DeviceHealthScriptsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceManagementPartners property of the microsoft.graph.deviceManagement entity.
            def device_management_partners()
                return MicrosoftGraphBeta::DeviceManagement::DeviceManagementPartners::DeviceManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceManagementScripts property of the microsoft.graph.deviceManagement entity.
            def device_management_scripts()
                return MicrosoftGraphBeta::DeviceManagement::DeviceManagementScripts::DeviceManagementScriptsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceShellScripts property of the microsoft.graph.deviceManagement entity.
            def device_shell_scripts()
                return MicrosoftGraphBeta::DeviceManagement::DeviceShellScripts::DeviceShellScriptsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the domainJoinConnectors property of the microsoft.graph.deviceManagement entity.
            def domain_join_connectors()
                return MicrosoftGraphBeta::DeviceManagement::DomainJoinConnectors::DomainJoinConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the embeddedSIMActivationCodePools property of the microsoft.graph.deviceManagement entity.
            def embedded_s_i_m_activation_code_pools()
                return MicrosoftGraphBeta::DeviceManagement::EmbeddedSIMActivationCodePools::EmbeddedSIMActivationCodePoolsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the enableAndroidDeviceAdministratorEnrollment method.
            def enable_android_device_administrator_enrollment()
                return MicrosoftGraphBeta::DeviceManagement::EnableAndroidDeviceAdministratorEnrollment::EnableAndroidDeviceAdministratorEnrollmentRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the enableLegacyPcManagement method.
            def enable_legacy_pc_management()
                return MicrosoftGraphBeta::DeviceManagement::EnableLegacyPcManagement::EnableLegacyPcManagementRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the enableUnlicensedAdminstrators method.
            def enable_unlicensed_adminstrators()
                return MicrosoftGraphBeta::DeviceManagement::EnableUnlicensedAdminstrators::EnableUnlicensedAdminstratorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the evaluateAssignmentFilter method.
            def evaluate_assignment_filter()
                return MicrosoftGraphBeta::DeviceManagement::EvaluateAssignmentFilter::EvaluateAssignmentFilterRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exchangeConnectors property of the microsoft.graph.deviceManagement entity.
            def exchange_connectors()
                return MicrosoftGraphBeta::DeviceManagement::ExchangeConnectors::ExchangeConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exchangeOnPremisesPolicies property of the microsoft.graph.deviceManagement entity.
            def exchange_on_premises_policies()
                return MicrosoftGraphBeta::DeviceManagement::ExchangeOnPremisesPolicies::ExchangeOnPremisesPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the exchangeOnPremisesPolicy property of the microsoft.graph.deviceManagement entity.
            def exchange_on_premises_policy()
                return MicrosoftGraphBeta::DeviceManagement::ExchangeOnPremisesPolicy::ExchangeOnPremisesPolicyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getAssignedRoleDetails method.
            def get_assigned_role_details()
                return MicrosoftGraphBeta::DeviceManagement::GetAssignedRoleDetails::GetAssignedRoleDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getAssignmentFiltersStatusDetails method.
            def get_assignment_filters_status_details()
                return MicrosoftGraphBeta::DeviceManagement::GetAssignmentFiltersStatusDetails::GetAssignmentFiltersStatusDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getComanagedDevicesSummary method.
            def get_comanaged_devices_summary()
                return MicrosoftGraphBeta::DeviceManagement::GetComanagedDevicesSummary::GetComanagedDevicesSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getComanagementEligibleDevicesSummary method.
            def get_comanagement_eligible_devices_summary()
                return MicrosoftGraphBeta::DeviceManagement::GetComanagementEligibleDevicesSummary::GetComanagementEligibleDevicesSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the getEffectivePermissions method.
            def get_effective_permissions()
                return MicrosoftGraphBeta::DeviceManagement::GetEffectivePermissions::GetEffectivePermissionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyCategories property of the microsoft.graph.deviceManagement entity.
            def group_policy_categories()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyCategories::GroupPolicyCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyConfigurations property of the microsoft.graph.deviceManagement entity.
            def group_policy_configurations()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyConfigurations::GroupPolicyConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyDefinitionFiles property of the microsoft.graph.deviceManagement entity.
            def group_policy_definition_files()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyDefinitionFiles::GroupPolicyDefinitionFilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyDefinitions property of the microsoft.graph.deviceManagement entity.
            def group_policy_definitions()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyDefinitions::GroupPolicyDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyMigrationReports property of the microsoft.graph.deviceManagement entity.
            def group_policy_migration_reports()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyMigrationReports::GroupPolicyMigrationReportsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyObjectFiles property of the microsoft.graph.deviceManagement entity.
            def group_policy_object_files()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyObjectFiles::GroupPolicyObjectFilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the groupPolicyUploadedDefinitionFiles property of the microsoft.graph.deviceManagement entity.
            def group_policy_uploaded_definition_files()
                return MicrosoftGraphBeta::DeviceManagement::GroupPolicyUploadedDefinitionFiles::GroupPolicyUploadedDefinitionFilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the importedDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            def imported_device_identities()
                return MicrosoftGraphBeta::DeviceManagement::ImportedDeviceIdentities::ImportedDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the importedWindowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            def imported_windows_autopilot_device_identities()
                return MicrosoftGraphBeta::DeviceManagement::ImportedWindowsAutopilotDeviceIdentities::ImportedWindowsAutopilotDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the intents property of the microsoft.graph.deviceManagement entity.
            def intents()
                return MicrosoftGraphBeta::DeviceManagement::Intents::IntentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the intuneBrandingProfiles property of the microsoft.graph.deviceManagement entity.
            def intune_branding_profiles()
                return MicrosoftGraphBeta::DeviceManagement::IntuneBrandingProfiles::IntuneBrandingProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the iosUpdateStatuses property of the microsoft.graph.deviceManagement entity.
            def ios_update_statuses()
                return MicrosoftGraphBeta::DeviceManagement::IosUpdateStatuses::IosUpdateStatusesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the macOSSoftwareUpdateAccountSummaries property of the microsoft.graph.deviceManagement entity.
            def mac_o_s_software_update_account_summaries()
                return MicrosoftGraphBeta::DeviceManagement::MacOSSoftwareUpdateAccountSummaries::MacOSSoftwareUpdateAccountSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDeviceEncryptionStates property of the microsoft.graph.deviceManagement entity.
            def managed_device_encryption_states()
                return MicrosoftGraphBeta::DeviceManagement::ManagedDeviceEncryptionStates::ManagedDeviceEncryptionStatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDeviceOverview property of the microsoft.graph.deviceManagement entity.
            def managed_device_overview()
                return MicrosoftGraphBeta::DeviceManagement::ManagedDeviceOverview::ManagedDeviceOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedDevices property of the microsoft.graph.deviceManagement entity.
            def managed_devices()
                return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::ManagedDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the microsoftTunnelConfigurations property of the microsoft.graph.deviceManagement entity.
            def microsoft_tunnel_configurations()
                return MicrosoftGraphBeta::DeviceManagement::MicrosoftTunnelConfigurations::MicrosoftTunnelConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the microsoftTunnelHealthThresholds property of the microsoft.graph.deviceManagement entity.
            def microsoft_tunnel_health_thresholds()
                return MicrosoftGraphBeta::DeviceManagement::MicrosoftTunnelHealthThresholds::MicrosoftTunnelHealthThresholdsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the microsoftTunnelServerLogCollectionResponses property of the microsoft.graph.deviceManagement entity.
            def microsoft_tunnel_server_log_collection_responses()
                return MicrosoftGraphBeta::DeviceManagement::MicrosoftTunnelServerLogCollectionResponses::MicrosoftTunnelServerLogCollectionResponsesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the microsoftTunnelSites property of the microsoft.graph.deviceManagement entity.
            def microsoft_tunnel_sites()
                return MicrosoftGraphBeta::DeviceManagement::MicrosoftTunnelSites::MicrosoftTunnelSitesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppTroubleshootingEvents property of the microsoft.graph.deviceManagement entity.
            def mobile_app_troubleshooting_events()
                return MicrosoftGraphBeta::DeviceManagement::MobileAppTroubleshootingEvents::MobileAppTroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileThreatDefenseConnectors property of the microsoft.graph.deviceManagement entity.
            def mobile_threat_defense_connectors()
                return MicrosoftGraphBeta::DeviceManagement::MobileThreatDefenseConnectors::MobileThreatDefenseConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the monitoring property of the microsoft.graph.deviceManagement entity.
            def monitoring()
                return MicrosoftGraphBeta::DeviceManagement::Monitoring::MonitoringRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the ndesConnectors property of the microsoft.graph.deviceManagement entity.
            def ndes_connectors()
                return MicrosoftGraphBeta::DeviceManagement::NdesConnectors::NdesConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the notificationMessageTemplates property of the microsoft.graph.deviceManagement entity.
            def notification_message_templates()
                return MicrosoftGraphBeta::DeviceManagement::NotificationMessageTemplates::NotificationMessageTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the privilegeManagementElevations property of the microsoft.graph.deviceManagement entity.
            def privilege_management_elevations()
                return MicrosoftGraphBeta::DeviceManagement::PrivilegeManagementElevations::PrivilegeManagementElevationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the remoteActionAudits property of the microsoft.graph.deviceManagement entity.
            def remote_action_audits()
                return MicrosoftGraphBeta::DeviceManagement::RemoteActionAudits::RemoteActionAuditsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the remoteAssistancePartners property of the microsoft.graph.deviceManagement entity.
            def remote_assistance_partners()
                return MicrosoftGraphBeta::DeviceManagement::RemoteAssistancePartners::RemoteAssistancePartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the remoteAssistanceSettings property of the microsoft.graph.deviceManagement entity.
            def remote_assistance_settings()
                return MicrosoftGraphBeta::DeviceManagement::RemoteAssistanceSettings::RemoteAssistanceSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the reports property of the microsoft.graph.deviceManagement entity.
            def reports()
                return MicrosoftGraphBeta::DeviceManagement::Reports::ReportsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the resourceAccessProfiles property of the microsoft.graph.deviceManagement entity.
            def resource_access_profiles()
                return MicrosoftGraphBeta::DeviceManagement::ResourceAccessProfiles::ResourceAccessProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the resourceOperations property of the microsoft.graph.deviceManagement entity.
            def resource_operations()
                return MicrosoftGraphBeta::DeviceManagement::ResourceOperations::ResourceOperationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the reusablePolicySettings property of the microsoft.graph.deviceManagement entity.
            def reusable_policy_settings()
                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::ReusablePolicySettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the reusableSettings property of the microsoft.graph.deviceManagement entity.
            def reusable_settings()
                return MicrosoftGraphBeta::DeviceManagement::ReusableSettings::ReusableSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleAssignments property of the microsoft.graph.deviceManagement entity.
            def role_assignments()
                return MicrosoftGraphBeta::DeviceManagement::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleDefinitions property of the microsoft.graph.deviceManagement entity.
            def role_definitions()
                return MicrosoftGraphBeta::DeviceManagement::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the roleScopeTags property of the microsoft.graph.deviceManagement entity.
            def role_scope_tags()
                return MicrosoftGraphBeta::DeviceManagement::RoleScopeTags::RoleScopeTagsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the sendCustomNotificationToCompanyPortal method.
            def send_custom_notification_to_company_portal()
                return MicrosoftGraphBeta::DeviceManagement::SendCustomNotificationToCompanyPortal::SendCustomNotificationToCompanyPortalRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the serviceNowConnections property of the microsoft.graph.deviceManagement entity.
            def service_now_connections()
                return MicrosoftGraphBeta::DeviceManagement::ServiceNowConnections::ServiceNowConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the settingDefinitions property of the microsoft.graph.deviceManagement entity.
            def setting_definitions()
                return MicrosoftGraphBeta::DeviceManagement::SettingDefinitions::SettingDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the softwareUpdateStatusSummary property of the microsoft.graph.deviceManagement entity.
            def software_update_status_summary()
                return MicrosoftGraphBeta::DeviceManagement::SoftwareUpdateStatusSummary::SoftwareUpdateStatusSummaryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the telecomExpenseManagementPartners property of the microsoft.graph.deviceManagement entity.
            def telecom_expense_management_partners()
                return MicrosoftGraphBeta::DeviceManagement::TelecomExpenseManagementPartners::TelecomExpenseManagementPartnersRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the templateInsights property of the microsoft.graph.deviceManagement entity.
            def template_insights()
                return MicrosoftGraphBeta::DeviceManagement::TemplateInsights::TemplateInsightsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the templates property of the microsoft.graph.deviceManagement entity.
            def templates()
                return MicrosoftGraphBeta::DeviceManagement::Templates::TemplatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the templateSettings property of the microsoft.graph.deviceManagement entity.
            def template_settings()
                return MicrosoftGraphBeta::DeviceManagement::TemplateSettings::TemplateSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the tenantAttachRBAC property of the microsoft.graph.deviceManagement entity.
            def tenant_attach_r_b_a_c()
                return MicrosoftGraphBeta::DeviceManagement::TenantAttachRBAC::TenantAttachRBACRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the termsAndConditions property of the microsoft.graph.deviceManagement entity.
            def terms_and_conditions()
                return MicrosoftGraphBeta::DeviceManagement::TermsAndConditions::TermsAndConditionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the troubleshootingEvents property of the microsoft.graph.deviceManagement entity.
            def troubleshooting_events()
                return MicrosoftGraphBeta::DeviceManagement::TroubleshootingEvents::TroubleshootingEventsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAnomaly property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_anomaly()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAnomaly::UserExperienceAnalyticsAnomalyRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAnomalyCorrelationGroupOverview property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_anomaly_correlation_group_overview()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAnomalyCorrelationGroupOverview::UserExperienceAnalyticsAnomalyCorrelationGroupOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAnomalyDevice property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_anomaly_device()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAnomalyDevice::UserExperienceAnalyticsAnomalyDeviceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformance::UserExperienceAnalyticsAppHealthApplicationPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_app_version()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersion::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_app_version_details()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetails::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_app_version_device_id()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceId::UserExperienceAnalyticsAppHealthApplicationPerformanceByAppVersionDeviceIdRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_application_performance_by_o_s_version()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthApplicationPerformanceByOSVersion::UserExperienceAnalyticsAppHealthApplicationPerformanceByOSVersionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDeviceModelPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_model_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthDeviceModelPerformance::UserExperienceAnalyticsAppHealthDeviceModelPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDevicePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthDevicePerformance::UserExperienceAnalyticsAppHealthDevicePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthDevicePerformanceDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_device_performance_details()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthDevicePerformanceDetails::UserExperienceAnalyticsAppHealthDevicePerformanceDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthOSVersionPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_o_s_version_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthOSVersionPerformance::UserExperienceAnalyticsAppHealthOSVersionPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsAppHealthOverview property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_app_health_overview()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsAppHealthOverview::UserExperienceAnalyticsAppHealthOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBaselines property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_baselines()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBaselines::UserExperienceAnalyticsBaselinesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthAppImpact property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_app_impact()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthAppImpact::UserExperienceAnalyticsBatteryHealthAppImpactRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthCapacityDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_capacity_details()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthCapacityDetails::UserExperienceAnalyticsBatteryHealthCapacityDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthDeviceAppImpact property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_device_app_impact()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthDeviceAppImpact::UserExperienceAnalyticsBatteryHealthDeviceAppImpactRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthDevicePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_device_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthDevicePerformance::UserExperienceAnalyticsBatteryHealthDevicePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthDeviceRuntimeHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_device_runtime_history()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthDeviceRuntimeHistory::UserExperienceAnalyticsBatteryHealthDeviceRuntimeHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthModelPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_model_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthModelPerformance::UserExperienceAnalyticsBatteryHealthModelPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthOsPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_os_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthOsPerformance::UserExperienceAnalyticsBatteryHealthOsPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsBatteryHealthRuntimeDetails property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_battery_health_runtime_details()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsBatteryHealthRuntimeDetails::UserExperienceAnalyticsBatteryHealthRuntimeDetailsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsCategories property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_categories()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsCategories::UserExperienceAnalyticsCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceMetricHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_metric_history()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceMetricHistory::UserExperienceAnalyticsDeviceMetricHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDevicePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDevicePerformance::UserExperienceAnalyticsDevicePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceScope property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_scope()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceScope::UserExperienceAnalyticsDeviceScopeRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceScopes property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_scopes()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceScopes::UserExperienceAnalyticsDeviceScopesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceScores property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_scores()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceScores::UserExperienceAnalyticsDeviceScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_history()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceStartupHistory::UserExperienceAnalyticsDeviceStartupHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupProcesses property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_processes()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceStartupProcesses::UserExperienceAnalyticsDeviceStartupProcessesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceStartupProcessPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_startup_process_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceStartupProcessPerformance::UserExperienceAnalyticsDeviceStartupProcessPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDevicesWithoutCloudIdentity property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_devices_without_cloud_identity()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDevicesWithoutCloudIdentity::UserExperienceAnalyticsDevicesWithoutCloudIdentityRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsDeviceTimelineEvent property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_device_timeline_event()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsDeviceTimelineEvent::UserExperienceAnalyticsDeviceTimelineEventRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsImpactingProcess property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_impacting_process()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsImpactingProcess::UserExperienceAnalyticsImpactingProcessRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsMetricHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_metric_history()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsMetricHistory::UserExperienceAnalyticsMetricHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsModelScores property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_model_scores()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsModelScores::UserExperienceAnalyticsModelScoresRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsNotAutopilotReadyDevice property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_not_autopilot_ready_device()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsNotAutopilotReadyDevice::UserExperienceAnalyticsNotAutopilotReadyDeviceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsOverview property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_overview()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsOverview::UserExperienceAnalyticsOverviewRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsRemoteConnection property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_remote_connection()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsRemoteConnection::UserExperienceAnalyticsRemoteConnectionRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsResourcePerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_resource_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsResourcePerformance::UserExperienceAnalyticsResourcePerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsScoreHistory property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_score_history()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsScoreHistory::UserExperienceAnalyticsScoreHistoryRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the userExperienceAnalyticsSummarizedDeviceScopes method.
            def user_experience_analytics_summarized_device_scopes()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsSummarizedDeviceScopes::UserExperienceAnalyticsSummarizedDeviceScopesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the userExperienceAnalyticsSummarizeWorkFromAnywhereDevices method.
            def user_experience_analytics_summarize_work_from_anywhere_devices()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsSummarizeWorkFromAnywhereDevices::UserExperienceAnalyticsSummarizeWorkFromAnywhereDevicesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_hardware_readiness_metric()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric::UserExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetricRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereMetrics property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_metrics()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereMetrics::UserExperienceAnalyticsWorkFromAnywhereMetricsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userExperienceAnalyticsWorkFromAnywhereModelPerformance property of the microsoft.graph.deviceManagement entity.
            def user_experience_analytics_work_from_anywhere_model_performance()
                return MicrosoftGraphBeta::DeviceManagement::UserExperienceAnalyticsWorkFromAnywhereModelPerformance::UserExperienceAnalyticsWorkFromAnywhereModelPerformanceRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the userPfxCertificates property of the microsoft.graph.deviceManagement entity.
            def user_pfx_certificates()
                return MicrosoftGraphBeta::DeviceManagement::UserPfxCertificates::UserPfxCertificatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the virtualEndpoint property of the microsoft.graph.deviceManagement entity.
            def virtual_endpoint()
                return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::VirtualEndpointRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsAutopilotDeploymentProfiles property of the microsoft.graph.deviceManagement entity.
            def windows_autopilot_deployment_profiles()
                return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeploymentProfiles::WindowsAutopilotDeploymentProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
            def windows_autopilot_device_identities()
                return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::WindowsAutopilotDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsAutopilotSettings property of the microsoft.graph.deviceManagement entity.
            def windows_autopilot_settings()
                return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotSettings::WindowsAutopilotSettingsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsDriverUpdateProfiles property of the microsoft.graph.deviceManagement entity.
            def windows_driver_update_profiles()
                return MicrosoftGraphBeta::DeviceManagement::WindowsDriverUpdateProfiles::WindowsDriverUpdateProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsFeatureUpdateProfiles property of the microsoft.graph.deviceManagement entity.
            def windows_feature_update_profiles()
                return MicrosoftGraphBeta::DeviceManagement::WindowsFeatureUpdateProfiles::WindowsFeatureUpdateProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionAppLearningSummaries property of the microsoft.graph.deviceManagement entity.
            def windows_information_protection_app_learning_summaries()
                return MicrosoftGraphBeta::DeviceManagement::WindowsInformationProtectionAppLearningSummaries::WindowsInformationProtectionAppLearningSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionNetworkLearningSummaries property of the microsoft.graph.deviceManagement entity.
            def windows_information_protection_network_learning_summaries()
                return MicrosoftGraphBeta::DeviceManagement::WindowsInformationProtectionNetworkLearningSummaries::WindowsInformationProtectionNetworkLearningSummariesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsMalwareInformation property of the microsoft.graph.deviceManagement entity.
            def windows_malware_information()
                return MicrosoftGraphBeta::DeviceManagement::WindowsMalwareInformation::WindowsMalwareInformationRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsQualityUpdateProfiles property of the microsoft.graph.deviceManagement entity.
            def windows_quality_update_profiles()
                return MicrosoftGraphBeta::DeviceManagement::WindowsQualityUpdateProfiles::WindowsQualityUpdateProfilesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsUpdateCatalogItems property of the microsoft.graph.deviceManagement entity.
            def windows_update_catalog_items()
                return MicrosoftGraphBeta::DeviceManagement::WindowsUpdateCatalogItems::WindowsUpdateCatalogItemsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the zebraFotaArtifacts property of the microsoft.graph.deviceManagement entity.
            def zebra_fota_artifacts()
                return MicrosoftGraphBeta::DeviceManagement::ZebraFotaArtifacts::ZebraFotaArtifactsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the zebraFotaConnector property of the microsoft.graph.deviceManagement entity.
            def zebra_fota_connector()
                return MicrosoftGraphBeta::DeviceManagement::ZebraFotaConnector::ZebraFotaConnectorRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the zebraFotaDeployments property of the microsoft.graph.deviceManagement entity.
            def zebra_fota_deployments()
                return MicrosoftGraphBeta::DeviceManagement::ZebraFotaDeployments::ZebraFotaDeploymentsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceManagementRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/deviceManagement{?%24select,%24expand}")
            end
            ## 
            ## Get deviceManagement
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_management_model_model_model_model_model_model_model
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementModelModelModelModelModelModelModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to call the getEffectivePermissions method.
            ## @param scope Usage: scope='{scope}'
            ## @return a get_effective_permissions_with_scope_request_builder
            ## 
            def get_effective_permissions_with_scope(scope)
                raise StandardError, 'scope cannot be null' if scope.nil?
                return GetEffectivePermissionsWithScopeRequestBuilder.new(@path_parameters, @request_adapter, scope)
            end
            ## 
            ## Provides operations to call the getRoleScopeTagsByIds method.
            ## @param ids Usage: ids={ids}
            ## @return a get_role_scope_tags_by_ids_with_ids_request_builder
            ## 
            def get_role_scope_tags_by_ids_with_ids(ids)
                raise StandardError, 'ids cannot be null' if ids.nil?
                return GetRoleScopeTagsByIdsWithIdsRequestBuilder.new(@path_parameters, @request_adapter, ids)
            end
            ## 
            ## Provides operations to call the getRoleScopeTagsByResource method.
            ## @param resource Usage: resource='{resource}'
            ## @return a get_role_scope_tags_by_resource_with_resource_request_builder
            ## 
            def get_role_scope_tags_by_resource_with_resource(resource)
                raise StandardError, 'resource cannot be null' if resource.nil?
                return GetRoleScopeTagsByResourceWithResourceRequestBuilder.new(@path_parameters, @request_adapter, resource)
            end
            ## 
            ## Provides operations to call the getSuggestedEnrollmentLimit method.
            ## @param enrollment_type Usage: enrollmentType='{enrollmentType}'
            ## @return a get_suggested_enrollment_limit_with_enrollment_type_request_builder
            ## 
            def get_suggested_enrollment_limit_with_enrollment_type(enrollment_type)
                raise StandardError, 'enrollment_type cannot be null' if enrollment_type.nil?
                return GetSuggestedEnrollmentLimitWithEnrollmentTypeRequestBuilder.new(@path_parameters, @request_adapter, enrollmentType)
            end
            ## 
            ## Update deviceManagement
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_management_model_model_model_model_model_model_model
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementModelModelModelModelModelModelModel.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to call the scopedForResource method.
            ## @param resource Usage: resource='{resource}'
            ## @return a scoped_for_resource_with_resource_request_builder
            ## 
            def scoped_for_resource_with_resource(resource)
                raise StandardError, 'resource cannot be null' if resource.nil?
                return ScopedForResourceWithResourceRequestBuilder.new(@path_parameters, @request_adapter, resource)
            end
            ## 
            ## Get deviceManagement
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_get_request_information(request_configuration=nil)
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :GET
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Update deviceManagement
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a request_information
            ## 
            def to_patch_request_information(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                unless request_configuration.nil?
                    request_info.add_headers_from_raw_object(request_configuration.headers)
                    request_info.add_request_options(request_configuration.options)
                end
                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                request_info.url_template = @url_template
                request_info.path_parameters = @path_parameters
                request_info.http_method = :PATCH
                request_info.headers.try_add('Accept', 'application/json')
                return request_info
            end
            ## 
            ## Provides operations to call the verifyWindowsEnrollmentAutoDiscovery method.
            ## @param domain_name Usage: domainName='{domainName}'
            ## @return a verify_windows_enrollment_auto_discovery_with_domain_name_request_builder
            ## 
            def verify_windows_enrollment_auto_discovery_with_domain_name(domain_name)
                raise StandardError, 'domain_name cannot be null' if domain_name.nil?
                return VerifyWindowsEnrollmentAutoDiscoveryWithDomainNameRequestBuilder.new(@path_parameters, @request_adapter, domainName)
            end
            ## 
            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
            ## @param raw_url The raw URL to use for the request builder.
            ## @return a device_management_request_builder
            ## 
            def with_url(raw_url)
                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                return DeviceManagementRequestBuilder.new(raw_url, @request_adapter)
            end

            ## 
            # Get deviceManagement
            class DeviceManagementRequestBuilderGetQueryParameters
                
                ## 
                # Expand related entities
                attr_accessor :expand
                ## 
                # Select properties to be returned
                attr_accessor :select
                ## 
                ## Maps the query parameters names to their encoded names for the URI template parsing.
                ## @param original_name The original query parameter name in the class.
                ## @return a string
                ## 
                def get_query_parameter(original_name)
                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                    case original_name
                        when "expand"
                            return "%24expand"
                        when "select"
                            return "%24select"
                        else
                            return original_name
                    end
                end
            end
        end
    end
end
