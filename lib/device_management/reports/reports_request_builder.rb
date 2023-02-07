require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/device_management_reports'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../device_management'
require_relative './cached_report_configurations/cached_report_configurations_request_builder'
require_relative './cached_report_configurations/item/device_management_cached_report_configuration_item_request_builder'
require_relative './export_jobs/export_jobs_request_builder'
require_relative './export_jobs/item/device_management_export_job_item_request_builder'
require_relative './microsoft_graph_get_active_malware_report/microsoft_graph_get_active_malware_report_request_builder'
require_relative './microsoft_graph_get_active_malware_summary_report/microsoft_graph_get_active_malware_summary_report_request_builder'
require_relative './microsoft_graph_get_all_certificates_report/microsoft_graph_get_all_certificates_report_request_builder'
require_relative './microsoft_graph_get_apps_install_summary_report/microsoft_graph_get_apps_install_summary_report_request_builder'
require_relative './microsoft_graph_get_app_status_overview_report/microsoft_graph_get_app_status_overview_report_request_builder'
require_relative './microsoft_graph_get_cached_report/microsoft_graph_get_cached_report_request_builder'
require_relative './microsoft_graph_get_certificates_report/microsoft_graph_get_certificates_report_request_builder'
require_relative './microsoft_graph_get_compliance_policies_report_for_device/microsoft_graph_get_compliance_policies_report_for_device_request_builder'
require_relative './microsoft_graph_get_compliance_policy_devices_report/microsoft_graph_get_compliance_policy_devices_report_request_builder'
require_relative './microsoft_graph_get_compliance_policy_device_summary_report/microsoft_graph_get_compliance_policy_device_summary_report_request_builder'
require_relative './microsoft_graph_get_compliance_policy_non_compliance_report/microsoft_graph_get_compliance_policy_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_compliance_policy_non_compliance_summary_report/microsoft_graph_get_compliance_policy_non_compliance_summary_report_request_builder'
require_relative './microsoft_graph_get_compliance_setting_details_report/microsoft_graph_get_compliance_setting_details_report_request_builder'
require_relative './microsoft_graph_get_compliance_setting_non_compliance_report/microsoft_graph_get_compliance_setting_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_compliance_settings_report/microsoft_graph_get_compliance_settings_report_request_builder'
require_relative './microsoft_graph_get_config_manager_device_policy_status_report/microsoft_graph_get_config_manager_device_policy_status_report_request_builder'
require_relative './microsoft_graph_get_configuration_policies_report_for_device/microsoft_graph_get_configuration_policies_report_for_device_request_builder'
require_relative './microsoft_graph_get_configuration_policy_devices_report/microsoft_graph_get_configuration_policy_devices_report_request_builder'
require_relative './microsoft_graph_get_configuration_policy_device_summary_report/microsoft_graph_get_configuration_policy_device_summary_report_request_builder'
require_relative './microsoft_graph_get_configuration_policy_non_compliance_report/microsoft_graph_get_configuration_policy_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_configuration_policy_non_compliance_summary_report/microsoft_graph_get_configuration_policy_non_compliance_summary_report_request_builder'
require_relative './microsoft_graph_get_configuration_policy_settings_device_summary_report/microsoft_graph_get_configuration_policy_settings_device_summary_report_request_builder'
require_relative './microsoft_graph_get_configuration_setting_details_report/microsoft_graph_get_configuration_setting_details_report_request_builder'
require_relative './microsoft_graph_get_configuration_setting_non_compliance_report/microsoft_graph_get_configuration_setting_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_configuration_settings_report/microsoft_graph_get_configuration_settings_report_request_builder'
require_relative './microsoft_graph_get_device_configuration_policy_settings_summary_report/microsoft_graph_get_device_configuration_policy_settings_summary_report_request_builder'
require_relative './microsoft_graph_get_device_configuration_policy_status_summary/microsoft_graph_get_device_configuration_policy_status_summary_request_builder'
require_relative './microsoft_graph_get_device_install_status_report/microsoft_graph_get_device_install_status_report_request_builder'
require_relative './microsoft_graph_get_device_management_intent_per_setting_contributing_profiles/microsoft_graph_get_device_management_intent_per_setting_contributing_profiles_request_builder'
require_relative './microsoft_graph_get_device_management_intent_settings_report/microsoft_graph_get_device_management_intent_settings_report_request_builder'
require_relative './microsoft_graph_get_device_non_compliance_report/microsoft_graph_get_device_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_devices_without_compliance_policy_report/microsoft_graph_get_devices_without_compliance_policy_report_request_builder'
require_relative './microsoft_graph_get_encryption_report_for_devices/microsoft_graph_get_encryption_report_for_devices_request_builder'
require_relative './microsoft_graph_get_enrollment_configuration_policies_by_device/microsoft_graph_get_enrollment_configuration_policies_by_device_request_builder'
require_relative './microsoft_graph_get_failed_mobile_apps_report/microsoft_graph_get_failed_mobile_apps_report_request_builder'
require_relative './microsoft_graph_get_failed_mobile_apps_summary_report/microsoft_graph_get_failed_mobile_apps_summary_report_request_builder'
require_relative './microsoft_graph_get_group_policy_settings_device_settings_report/microsoft_graph_get_group_policy_settings_device_settings_report_request_builder'
require_relative './microsoft_graph_get_historical_report/microsoft_graph_get_historical_report_request_builder'
require_relative './microsoft_graph_get_malware_summary_report/microsoft_graph_get_malware_summary_report_request_builder'
require_relative './microsoft_graph_get_mobile_application_management_app_configuration_report/microsoft_graph_get_mobile_application_management_app_configuration_report_request_builder'
require_relative './microsoft_graph_get_mobile_application_management_app_registration_summary_report/122708589902ab66dbc6b9ec84a73b259e84b54b02000d2c28192dc30b798380'
require_relative './microsoft_graph_get_noncompliant_devices_and_settings_report/microsoft_graph_get_noncompliant_devices_and_settings_report_request_builder'
require_relative './microsoft_graph_get_policy_non_compliance_metadata/microsoft_graph_get_policy_non_compliance_metadata_request_builder'
require_relative './microsoft_graph_get_policy_non_compliance_report/microsoft_graph_get_policy_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_policy_non_compliance_summary_report/microsoft_graph_get_policy_non_compliance_summary_report_request_builder'
require_relative './microsoft_graph_get_quiet_time_policy_users_report/microsoft_graph_get_quiet_time_policy_users_report_request_builder'
require_relative './microsoft_graph_get_quiet_time_policy_user_summary_report/microsoft_graph_get_quiet_time_policy_user_summary_report_request_builder'
require_relative './microsoft_graph_get_related_apps_status_report/microsoft_graph_get_related_apps_status_report_request_builder'
require_relative './microsoft_graph_get_remote_assistance_sessions_report/microsoft_graph_get_remote_assistance_sessions_report_request_builder'
require_relative './microsoft_graph_get_report_filters/microsoft_graph_get_report_filters_request_builder'
require_relative './microsoft_graph_get_setting_non_compliance_report/microsoft_graph_get_setting_non_compliance_report_request_builder'
require_relative './microsoft_graph_get_unhealthy_defender_agents_report/microsoft_graph_get_unhealthy_defender_agents_report_request_builder'
require_relative './microsoft_graph_get_unhealthy_firewall_report/microsoft_graph_get_unhealthy_firewall_report_request_builder'
require_relative './microsoft_graph_get_unhealthy_firewall_summary_report/microsoft_graph_get_unhealthy_firewall_summary_report_request_builder'
require_relative './microsoft_graph_get_user_install_status_report/microsoft_graph_get_user_install_status_report_request_builder'
require_relative './microsoft_graph_get_windows_quality_update_alerts_per_policy_per_device_report/microsoft_graph_get_windows_quality_update_alerts_per_policy_per_device_report_request_builder'
require_relative './microsoft_graph_get_windows_quality_update_alert_summary_report/microsoft_graph_get_windows_quality_update_alert_summary_report_request_builder'
require_relative './microsoft_graph_get_windows_update_alerts_per_policy_per_device_report/microsoft_graph_get_windows_update_alerts_per_policy_per_device_report_request_builder'
require_relative './microsoft_graph_get_windows_update_alert_summary_report/microsoft_graph_get_windows_update_alert_summary_report_request_builder'
require_relative './microsoft_graph_get_zebra_fota_deployment_report/microsoft_graph_get_zebra_fota_deployment_report_request_builder'
require_relative './reports'

module MicrosoftGraphBeta::DeviceManagement::Reports
    ## 
    # Provides operations to manage the reports property of the microsoft.graph.deviceManagement entity.
    class ReportsRequestBuilder
        
        ## 
        # Provides operations to manage the cachedReportConfigurations property of the microsoft.graph.deviceManagementReports entity.
        def cached_report_configurations()
            return MicrosoftGraphBeta::DeviceManagement::Reports::CachedReportConfigurations::CachedReportConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the exportJobs property of the microsoft.graph.deviceManagementReports entity.
        def export_jobs()
            return MicrosoftGraphBeta::DeviceManagement::Reports::ExportJobs::ExportJobsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getActiveMalwareReport method.
        def microsoft_graph_get_active_malware_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetActiveMalwareReport::MicrosoftGraphGetActiveMalwareReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getActiveMalwareSummaryReport method.
        def microsoft_graph_get_active_malware_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetActiveMalwareSummaryReport::MicrosoftGraphGetActiveMalwareSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getAllCertificatesReport method.
        def microsoft_graph_get_all_certificates_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetAllCertificatesReport::MicrosoftGraphGetAllCertificatesReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getAppsInstallSummaryReport method.
        def microsoft_graph_get_apps_install_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetAppsInstallSummaryReport::MicrosoftGraphGetAppsInstallSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getAppStatusOverviewReport method.
        def microsoft_graph_get_app_status_overview_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetAppStatusOverviewReport::MicrosoftGraphGetAppStatusOverviewReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCachedReport method.
        def microsoft_graph_get_cached_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCachedReport::MicrosoftGraphGetCachedReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCertificatesReport method.
        def microsoft_graph_get_certificates_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCertificatesReport::MicrosoftGraphGetCertificatesReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCompliancePoliciesReportForDevice method.
        def microsoft_graph_get_compliance_policies_report_for_device()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCompliancePoliciesReportForDevice::MicrosoftGraphGetCompliancePoliciesReportForDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCompliancePolicyDevicesReport method.
        def microsoft_graph_get_compliance_policy_devices_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCompliancePolicyDevicesReport::MicrosoftGraphGetCompliancePolicyDevicesReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCompliancePolicyDeviceSummaryReport method.
        def microsoft_graph_get_compliance_policy_device_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCompliancePolicyDeviceSummaryReport::MicrosoftGraphGetCompliancePolicyDeviceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCompliancePolicyNonComplianceReport method.
        def microsoft_graph_get_compliance_policy_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCompliancePolicyNonComplianceReport::MicrosoftGraphGetCompliancePolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCompliancePolicyNonComplianceSummaryReport method.
        def microsoft_graph_get_compliance_policy_non_compliance_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetCompliancePolicyNonComplianceSummaryReport::MicrosoftGraphGetCompliancePolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getComplianceSettingDetailsReport method.
        def microsoft_graph_get_compliance_setting_details_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetComplianceSettingDetailsReport::MicrosoftGraphGetComplianceSettingDetailsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getComplianceSettingNonComplianceReport method.
        def microsoft_graph_get_compliance_setting_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetComplianceSettingNonComplianceReport::MicrosoftGraphGetComplianceSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getComplianceSettingsReport method.
        def microsoft_graph_get_compliance_settings_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetComplianceSettingsReport::MicrosoftGraphGetComplianceSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigManagerDevicePolicyStatusReport method.
        def microsoft_graph_get_config_manager_device_policy_status_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigManagerDevicePolicyStatusReport::MicrosoftGraphGetConfigManagerDevicePolicyStatusReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPoliciesReportForDevice method.
        def microsoft_graph_get_configuration_policies_report_for_device()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPoliciesReportForDevice::MicrosoftGraphGetConfigurationPoliciesReportForDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPolicyDevicesReport method.
        def microsoft_graph_get_configuration_policy_devices_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPolicyDevicesReport::MicrosoftGraphGetConfigurationPolicyDevicesReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPolicyDeviceSummaryReport method.
        def microsoft_graph_get_configuration_policy_device_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPolicyDeviceSummaryReport::MicrosoftGraphGetConfigurationPolicyDeviceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPolicyNonComplianceReport method.
        def microsoft_graph_get_configuration_policy_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPolicyNonComplianceReport::MicrosoftGraphGetConfigurationPolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPolicyNonComplianceSummaryReport method.
        def microsoft_graph_get_configuration_policy_non_compliance_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPolicyNonComplianceSummaryReport::MicrosoftGraphGetConfigurationPolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationPolicySettingsDeviceSummaryReport method.
        def microsoft_graph_get_configuration_policy_settings_device_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationPolicySettingsDeviceSummaryReport::MicrosoftGraphGetConfigurationPolicySettingsDeviceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationSettingDetailsReport method.
        def microsoft_graph_get_configuration_setting_details_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationSettingDetailsReport::MicrosoftGraphGetConfigurationSettingDetailsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationSettingNonComplianceReport method.
        def microsoft_graph_get_configuration_setting_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationSettingNonComplianceReport::MicrosoftGraphGetConfigurationSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getConfigurationSettingsReport method.
        def microsoft_graph_get_configuration_settings_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetConfigurationSettingsReport::MicrosoftGraphGetConfigurationSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceConfigurationPolicySettingsSummaryReport method.
        def microsoft_graph_get_device_configuration_policy_settings_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceConfigurationPolicySettingsSummaryReport::MicrosoftGraphGetDeviceConfigurationPolicySettingsSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceConfigurationPolicyStatusSummary method.
        def microsoft_graph_get_device_configuration_policy_status_summary()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceConfigurationPolicyStatusSummary::MicrosoftGraphGetDeviceConfigurationPolicyStatusSummaryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceInstallStatusReport method.
        def microsoft_graph_get_device_install_status_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceInstallStatusReport::MicrosoftGraphGetDeviceInstallStatusReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceManagementIntentPerSettingContributingProfiles method.
        def microsoft_graph_get_device_management_intent_per_setting_contributing_profiles()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceManagementIntentPerSettingContributingProfiles::MicrosoftGraphGetDeviceManagementIntentPerSettingContributingProfilesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceManagementIntentSettingsReport method.
        def microsoft_graph_get_device_management_intent_settings_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceManagementIntentSettingsReport::MicrosoftGraphGetDeviceManagementIntentSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDeviceNonComplianceReport method.
        def microsoft_graph_get_device_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDeviceNonComplianceReport::MicrosoftGraphGetDeviceNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getDevicesWithoutCompliancePolicyReport method.
        def microsoft_graph_get_devices_without_compliance_policy_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetDevicesWithoutCompliancePolicyReport::MicrosoftGraphGetDevicesWithoutCompliancePolicyReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getEncryptionReportForDevices method.
        def microsoft_graph_get_encryption_report_for_devices()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetEncryptionReportForDevices::MicrosoftGraphGetEncryptionReportForDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getEnrollmentConfigurationPoliciesByDevice method.
        def microsoft_graph_get_enrollment_configuration_policies_by_device()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetEnrollmentConfigurationPoliciesByDevice::MicrosoftGraphGetEnrollmentConfigurationPoliciesByDeviceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getFailedMobileAppsReport method.
        def microsoft_graph_get_failed_mobile_apps_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetFailedMobileAppsReport::MicrosoftGraphGetFailedMobileAppsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getFailedMobileAppsSummaryReport method.
        def microsoft_graph_get_failed_mobile_apps_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetFailedMobileAppsSummaryReport::MicrosoftGraphGetFailedMobileAppsSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getGroupPolicySettingsDeviceSettingsReport method.
        def microsoft_graph_get_group_policy_settings_device_settings_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetGroupPolicySettingsDeviceSettingsReport::MicrosoftGraphGetGroupPolicySettingsDeviceSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getHistoricalReport method.
        def microsoft_graph_get_historical_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetHistoricalReport::MicrosoftGraphGetHistoricalReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMalwareSummaryReport method.
        def microsoft_graph_get_malware_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetMalwareSummaryReport::MicrosoftGraphGetMalwareSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMobileApplicationManagementAppConfigurationReport method.
        def microsoft_graph_get_mobile_application_management_app_configuration_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetMobileApplicationManagementAppConfigurationReport::MicrosoftGraphGetMobileApplicationManagementAppConfigurationReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMobileApplicationManagementAppRegistrationSummaryReport method.
        def microsoft_graph_get_mobile_application_management_app_registration_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetMobileApplicationManagementAppRegistrationSummaryReport::MicrosoftGraphGetMobileApplicationManagementAppRegistrationSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getNoncompliantDevicesAndSettingsReport method.
        def microsoft_graph_get_noncompliant_devices_and_settings_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetNoncompliantDevicesAndSettingsReport::MicrosoftGraphGetNoncompliantDevicesAndSettingsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getPolicyNonComplianceMetadata method.
        def microsoft_graph_get_policy_non_compliance_metadata()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetPolicyNonComplianceMetadata::MicrosoftGraphGetPolicyNonComplianceMetadataRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getPolicyNonComplianceReport method.
        def microsoft_graph_get_policy_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetPolicyNonComplianceReport::MicrosoftGraphGetPolicyNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getPolicyNonComplianceSummaryReport method.
        def microsoft_graph_get_policy_non_compliance_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetPolicyNonComplianceSummaryReport::MicrosoftGraphGetPolicyNonComplianceSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getQuietTimePolicyUsersReport method.
        def microsoft_graph_get_quiet_time_policy_users_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetQuietTimePolicyUsersReport::MicrosoftGraphGetQuietTimePolicyUsersReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getQuietTimePolicyUserSummaryReport method.
        def microsoft_graph_get_quiet_time_policy_user_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetQuietTimePolicyUserSummaryReport::MicrosoftGraphGetQuietTimePolicyUserSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getRelatedAppsStatusReport method.
        def microsoft_graph_get_related_apps_status_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetRelatedAppsStatusReport::MicrosoftGraphGetRelatedAppsStatusReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getRemoteAssistanceSessionsReport method.
        def microsoft_graph_get_remote_assistance_sessions_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetRemoteAssistanceSessionsReport::MicrosoftGraphGetRemoteAssistanceSessionsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getReportFilters method.
        def microsoft_graph_get_report_filters()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetReportFilters::MicrosoftGraphGetReportFiltersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getSettingNonComplianceReport method.
        def microsoft_graph_get_setting_non_compliance_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetSettingNonComplianceReport::MicrosoftGraphGetSettingNonComplianceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getUnhealthyDefenderAgentsReport method.
        def microsoft_graph_get_unhealthy_defender_agents_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetUnhealthyDefenderAgentsReport::MicrosoftGraphGetUnhealthyDefenderAgentsReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getUnhealthyFirewallReport method.
        def microsoft_graph_get_unhealthy_firewall_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetUnhealthyFirewallReport::MicrosoftGraphGetUnhealthyFirewallReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getUnhealthyFirewallSummaryReport method.
        def microsoft_graph_get_unhealthy_firewall_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetUnhealthyFirewallSummaryReport::MicrosoftGraphGetUnhealthyFirewallSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getUserInstallStatusReport method.
        def microsoft_graph_get_user_install_status_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetUserInstallStatusReport::MicrosoftGraphGetUserInstallStatusReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getWindowsQualityUpdateAlertsPerPolicyPerDeviceReport method.
        def microsoft_graph_get_windows_quality_update_alerts_per_policy_per_device_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetWindowsQualityUpdateAlertsPerPolicyPerDeviceReport::MicrosoftGraphGetWindowsQualityUpdateAlertsPerPolicyPerDeviceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getWindowsQualityUpdateAlertSummaryReport method.
        def microsoft_graph_get_windows_quality_update_alert_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetWindowsQualityUpdateAlertSummaryReport::MicrosoftGraphGetWindowsQualityUpdateAlertSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getWindowsUpdateAlertsPerPolicyPerDeviceReport method.
        def microsoft_graph_get_windows_update_alerts_per_policy_per_device_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetWindowsUpdateAlertsPerPolicyPerDeviceReport::MicrosoftGraphGetWindowsUpdateAlertsPerPolicyPerDeviceReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getWindowsUpdateAlertSummaryReport method.
        def microsoft_graph_get_windows_update_alert_summary_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetWindowsUpdateAlertSummaryReport::MicrosoftGraphGetWindowsUpdateAlertSummaryReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getZebraFotaDeploymentReport method.
        def microsoft_graph_get_zebra_fota_deployment_report()
            return MicrosoftGraphBeta::DeviceManagement::Reports::MicrosoftGraphGetZebraFotaDeploymentReport::MicrosoftGraphGetZebraFotaDeploymentReportRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the cachedReportConfigurations property of the microsoft.graph.deviceManagementReports entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_cached_report_configuration_item_request_builder
        ## 
        def cached_report_configurations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementCachedReportConfiguration%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Reports::CachedReportConfigurations::Item::DeviceManagementCachedReportConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new ReportsRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/deviceManagement/reports{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property reports for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Provides operations to manage the exportJobs property of the microsoft.graph.deviceManagementReports entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_export_job_item_request_builder
        ## 
        def export_jobs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementExportJob%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Reports::ExportJobs::Item::DeviceManagementExportJobItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Reports singleton
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device_management_reports
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementReports.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property reports in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device_management_reports
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementReports.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Delete navigation property reports for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Reports singleton
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_get_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :GET
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Update the navigation property reports in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ReportsRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Reports singleton
        class ReportsRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ReportsRequestBuilderGetRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
            ## 
            # Request query parameters
            attr_accessor :query_parameters
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ReportsRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
