require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagedTenant < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Aggregate view of device compliance policies across managed tenants.
            @aggregated_policy_compliances
            ## 
            # The appPerformances property
            @app_performances
            ## 
            # The collection of audit events across managed tenants.
            @audit_events
            ## 
            # The collection of cloud PC connections across managed tenants.
            @cloud_pc_connections
            ## 
            # The collection of cloud PC devices across managed tenants.
            @cloud_pc_devices
            ## 
            # Overview of cloud PC information across managed tenants.
            @cloud_pcs_overview
            ## 
            # Aggregate view of conditional access policy coverage across managed tenants.
            @conditional_access_policy_coverages
            ## 
            # Summary information for user registration for multi-factor authentication and self service password reset across managed tenants.
            @credential_user_registrations_summaries
            ## 
            # The deviceAppPerformances property
            @device_app_performances
            ## 
            # Summary information for device compliance policy setting states across managed tenants.
            @device_compliance_policy_setting_state_summaries
            ## 
            # The deviceHealthStatuses property
            @device_health_statuses
            ## 
            # Trend insights for device compliance across managed tenants.
            @managed_device_compliance_trends
            ## 
            # The collection of compliance for managed devices across managed tenants.
            @managed_device_compliances
            ## 
            # The managedTenantAlertLogs property
            @managed_tenant_alert_logs
            ## 
            # The managedTenantAlertRuleDefinitions property
            @managed_tenant_alert_rule_definitions
            ## 
            # The managedTenantAlertRules property
            @managed_tenant_alert_rules
            ## 
            # The managedTenantAlerts property
            @managed_tenant_alerts
            ## 
            # The managedTenantApiNotifications property
            @managed_tenant_api_notifications
            ## 
            # The managedTenantEmailNotifications property
            @managed_tenant_email_notifications
            ## 
            # The managedTenantTicketingEndpoints property
            @managed_tenant_ticketing_endpoints
            ## 
            # The tenant level status of management actions across managed tenants.
            @management_action_tenant_deployment_statuses
            ## 
            # The collection of baseline management actions across managed tenants.
            @management_actions
            ## 
            # The collection of baseline management intents across managed tenants.
            @management_intents
            ## 
            # The managementTemplateCollectionTenantSummaries property
            @management_template_collection_tenant_summaries
            ## 
            # The managementTemplateCollections property
            @management_template_collections
            ## 
            # The managementTemplateStepTenantSummaries property
            @management_template_step_tenant_summaries
            ## 
            # The managementTemplateStepVersions property
            @management_template_step_versions
            ## 
            # The managementTemplateSteps property
            @management_template_steps
            ## 
            # The collection of baseline management templates across managed tenants.
            @management_templates
            ## 
            # The collection of role assignments to a signed-in user for a managed tenant.
            @my_roles
            ## 
            # The collection of a logical grouping of managed tenants used by the multi-tenant management platform.
            @tenant_groups
            ## 
            # The collection of tenant tags across managed tenants.
            @tenant_tags
            ## 
            # The collection of tenants associated with the managing entity.
            @tenants
            ## 
            # The collection of tenant level customized information across managed tenants.
            @tenants_customized_information
            ## 
            # The collection tenant level detailed information across managed tenants.
            @tenants_detailed_information
            ## 
            # The state of malware for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            @windows_device_malware_states
            ## 
            # The protection state for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            @windows_protection_states
            ## 
            ## Gets the aggregatedPolicyCompliances property value. Aggregate view of device compliance policies across managed tenants.
            ## @return a managed_tenants_aggregated_policy_compliance
            ## 
            def aggregated_policy_compliances
                return @aggregated_policy_compliances
            end
            ## 
            ## Sets the aggregatedPolicyCompliances property value. Aggregate view of device compliance policies across managed tenants.
            ## @param value Value to set for the aggregatedPolicyCompliances property.
            ## @return a void
            ## 
            def aggregated_policy_compliances=(value)
                @aggregated_policy_compliances = value
            end
            ## 
            ## Gets the appPerformances property value. The appPerformances property
            ## @return a managed_tenants_app_performance
            ## 
            def app_performances
                return @app_performances
            end
            ## 
            ## Sets the appPerformances property value. The appPerformances property
            ## @param value Value to set for the appPerformances property.
            ## @return a void
            ## 
            def app_performances=(value)
                @app_performances = value
            end
            ## 
            ## Gets the auditEvents property value. The collection of audit events across managed tenants.
            ## @return a managed_tenants_audit_event
            ## 
            def audit_events
                return @audit_events
            end
            ## 
            ## Sets the auditEvents property value. The collection of audit events across managed tenants.
            ## @param value Value to set for the auditEvents property.
            ## @return a void
            ## 
            def audit_events=(value)
                @audit_events = value
            end
            ## 
            ## Gets the cloudPcConnections property value. The collection of cloud PC connections across managed tenants.
            ## @return a managed_tenants_cloud_pc_connection
            ## 
            def cloud_pc_connections
                return @cloud_pc_connections
            end
            ## 
            ## Sets the cloudPcConnections property value. The collection of cloud PC connections across managed tenants.
            ## @param value Value to set for the cloudPcConnections property.
            ## @return a void
            ## 
            def cloud_pc_connections=(value)
                @cloud_pc_connections = value
            end
            ## 
            ## Gets the cloudPcDevices property value. The collection of cloud PC devices across managed tenants.
            ## @return a managed_tenants_cloud_pc_device
            ## 
            def cloud_pc_devices
                return @cloud_pc_devices
            end
            ## 
            ## Sets the cloudPcDevices property value. The collection of cloud PC devices across managed tenants.
            ## @param value Value to set for the cloudPcDevices property.
            ## @return a void
            ## 
            def cloud_pc_devices=(value)
                @cloud_pc_devices = value
            end
            ## 
            ## Gets the cloudPcsOverview property value. Overview of cloud PC information across managed tenants.
            ## @return a managed_tenants_cloud_pc_overview
            ## 
            def cloud_pcs_overview
                return @cloud_pcs_overview
            end
            ## 
            ## Sets the cloudPcsOverview property value. Overview of cloud PC information across managed tenants.
            ## @param value Value to set for the cloudPcsOverview property.
            ## @return a void
            ## 
            def cloud_pcs_overview=(value)
                @cloud_pcs_overview = value
            end
            ## 
            ## Gets the conditionalAccessPolicyCoverages property value. Aggregate view of conditional access policy coverage across managed tenants.
            ## @return a managed_tenants_conditional_access_policy_coverage
            ## 
            def conditional_access_policy_coverages
                return @conditional_access_policy_coverages
            end
            ## 
            ## Sets the conditionalAccessPolicyCoverages property value. Aggregate view of conditional access policy coverage across managed tenants.
            ## @param value Value to set for the conditionalAccessPolicyCoverages property.
            ## @return a void
            ## 
            def conditional_access_policy_coverages=(value)
                @conditional_access_policy_coverages = value
            end
            ## 
            ## Instantiates a new ManagedTenantsManagedTenant and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_managed_tenant
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagedTenant.new
            end
            ## 
            ## Gets the credentialUserRegistrationsSummaries property value. Summary information for user registration for multi-factor authentication and self service password reset across managed tenants.
            ## @return a managed_tenants_credential_user_registrations_summary
            ## 
            def credential_user_registrations_summaries
                return @credential_user_registrations_summaries
            end
            ## 
            ## Sets the credentialUserRegistrationsSummaries property value. Summary information for user registration for multi-factor authentication and self service password reset across managed tenants.
            ## @param value Value to set for the credentialUserRegistrationsSummaries property.
            ## @return a void
            ## 
            def credential_user_registrations_summaries=(value)
                @credential_user_registrations_summaries = value
            end
            ## 
            ## Gets the deviceAppPerformances property value. The deviceAppPerformances property
            ## @return a managed_tenants_device_app_performance
            ## 
            def device_app_performances
                return @device_app_performances
            end
            ## 
            ## Sets the deviceAppPerformances property value. The deviceAppPerformances property
            ## @param value Value to set for the deviceAppPerformances property.
            ## @return a void
            ## 
            def device_app_performances=(value)
                @device_app_performances = value
            end
            ## 
            ## Gets the deviceCompliancePolicySettingStateSummaries property value. Summary information for device compliance policy setting states across managed tenants.
            ## @return a managed_tenants_device_compliance_policy_setting_state_summary
            ## 
            def device_compliance_policy_setting_state_summaries
                return @device_compliance_policy_setting_state_summaries
            end
            ## 
            ## Sets the deviceCompliancePolicySettingStateSummaries property value. Summary information for device compliance policy setting states across managed tenants.
            ## @param value Value to set for the deviceCompliancePolicySettingStateSummaries property.
            ## @return a void
            ## 
            def device_compliance_policy_setting_state_summaries=(value)
                @device_compliance_policy_setting_state_summaries = value
            end
            ## 
            ## Gets the deviceHealthStatuses property value. The deviceHealthStatuses property
            ## @return a managed_tenants_device_health_status
            ## 
            def device_health_statuses
                return @device_health_statuses
            end
            ## 
            ## Sets the deviceHealthStatuses property value. The deviceHealthStatuses property
            ## @param value Value to set for the deviceHealthStatuses property.
            ## @return a void
            ## 
            def device_health_statuses=(value)
                @device_health_statuses = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "aggregatedPolicyCompliances" => lambda {|n| @aggregated_policy_compliances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAggregatedPolicyCompliance.create_from_discriminator_value(pn) }) },
                    "appPerformances" => lambda {|n| @app_performances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAppPerformance.create_from_discriminator_value(pn) }) },
                    "auditEvents" => lambda {|n| @audit_events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAuditEvent.create_from_discriminator_value(pn) }) },
                    "cloudPcConnections" => lambda {|n| @cloud_pc_connections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsCloudPcConnection.create_from_discriminator_value(pn) }) },
                    "cloudPcDevices" => lambda {|n| @cloud_pc_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsCloudPcDevice.create_from_discriminator_value(pn) }) },
                    "cloudPcsOverview" => lambda {|n| @cloud_pcs_overview = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsCloudPcOverview.create_from_discriminator_value(pn) }) },
                    "conditionalAccessPolicyCoverages" => lambda {|n| @conditional_access_policy_coverages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsConditionalAccessPolicyCoverage.create_from_discriminator_value(pn) }) },
                    "credentialUserRegistrationsSummaries" => lambda {|n| @credential_user_registrations_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsCredentialUserRegistrationsSummary.create_from_discriminator_value(pn) }) },
                    "deviceAppPerformances" => lambda {|n| @device_app_performances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsDeviceAppPerformance.create_from_discriminator_value(pn) }) },
                    "deviceCompliancePolicySettingStateSummaries" => lambda {|n| @device_compliance_policy_setting_state_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsDeviceCompliancePolicySettingStateSummary.create_from_discriminator_value(pn) }) },
                    "deviceHealthStatuses" => lambda {|n| @device_health_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsDeviceHealthStatus.create_from_discriminator_value(pn) }) },
                    "managedDeviceComplianceTrends" => lambda {|n| @managed_device_compliance_trends = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedDeviceComplianceTrend.create_from_discriminator_value(pn) }) },
                    "managedDeviceCompliances" => lambda {|n| @managed_device_compliances = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedDeviceCompliance.create_from_discriminator_value(pn) }) },
                    "managedTenantAlertLogs" => lambda {|n| @managed_tenant_alert_logs = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertLog.create_from_discriminator_value(pn) }) },
                    "managedTenantAlertRuleDefinitions" => lambda {|n| @managed_tenant_alert_rule_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertRuleDefinition.create_from_discriminator_value(pn) }) },
                    "managedTenantAlertRules" => lambda {|n| @managed_tenant_alert_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertRule.create_from_discriminator_value(pn) }) },
                    "managedTenantAlerts" => lambda {|n| @managed_tenant_alerts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlert.create_from_discriminator_value(pn) }) },
                    "managedTenantApiNotifications" => lambda {|n| @managed_tenant_api_notifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantApiNotification.create_from_discriminator_value(pn) }) },
                    "managedTenantEmailNotifications" => lambda {|n| @managed_tenant_email_notifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantEmailNotification.create_from_discriminator_value(pn) }) },
                    "managedTenantTicketingEndpoints" => lambda {|n| @managed_tenant_ticketing_endpoints = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantTicketingEndpoint.create_from_discriminator_value(pn) }) },
                    "managementActionTenantDeploymentStatuses" => lambda {|n| @management_action_tenant_deployment_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementActionTenantDeploymentStatus.create_from_discriminator_value(pn) }) },
                    "managementActions" => lambda {|n| @management_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementAction.create_from_discriminator_value(pn) }) },
                    "managementIntents" => lambda {|n| @management_intents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementIntent.create_from_discriminator_value(pn) }) },
                    "managementTemplateCollectionTenantSummaries" => lambda {|n| @management_template_collection_tenant_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateCollectionTenantSummary.create_from_discriminator_value(pn) }) },
                    "managementTemplateCollections" => lambda {|n| @management_template_collections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateCollection.create_from_discriminator_value(pn) }) },
                    "managementTemplateStepTenantSummaries" => lambda {|n| @management_template_step_tenant_summaries = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStepTenantSummary.create_from_discriminator_value(pn) }) },
                    "managementTemplateStepVersions" => lambda {|n| @management_template_step_versions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStepVersion.create_from_discriminator_value(pn) }) },
                    "managementTemplateSteps" => lambda {|n| @management_template_steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplateStep.create_from_discriminator_value(pn) }) },
                    "managementTemplates" => lambda {|n| @management_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementTemplate.create_from_discriminator_value(pn) }) },
                    "myRoles" => lambda {|n| @my_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsMyRole.create_from_discriminator_value(pn) }) },
                    "tenantGroups" => lambda {|n| @tenant_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantGroup.create_from_discriminator_value(pn) }) },
                    "tenantTags" => lambda {|n| @tenant_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantTag.create_from_discriminator_value(pn) }) },
                    "tenants" => lambda {|n| @tenants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenant.create_from_discriminator_value(pn) }) },
                    "tenantsCustomizedInformation" => lambda {|n| @tenants_customized_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantCustomizedInformation.create_from_discriminator_value(pn) }) },
                    "tenantsDetailedInformation" => lambda {|n| @tenants_detailed_information = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantDetailedInformation.create_from_discriminator_value(pn) }) },
                    "windowsDeviceMalwareStates" => lambda {|n| @windows_device_malware_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWindowsDeviceMalwareState.create_from_discriminator_value(pn) }) },
                    "windowsProtectionStates" => lambda {|n| @windows_protection_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWindowsProtectionState.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the managedDeviceComplianceTrends property value. Trend insights for device compliance across managed tenants.
            ## @return a managed_tenants_managed_device_compliance_trend
            ## 
            def managed_device_compliance_trends
                return @managed_device_compliance_trends
            end
            ## 
            ## Sets the managedDeviceComplianceTrends property value. Trend insights for device compliance across managed tenants.
            ## @param value Value to set for the managedDeviceComplianceTrends property.
            ## @return a void
            ## 
            def managed_device_compliance_trends=(value)
                @managed_device_compliance_trends = value
            end
            ## 
            ## Gets the managedDeviceCompliances property value. The collection of compliance for managed devices across managed tenants.
            ## @return a managed_tenants_managed_device_compliance
            ## 
            def managed_device_compliances
                return @managed_device_compliances
            end
            ## 
            ## Sets the managedDeviceCompliances property value. The collection of compliance for managed devices across managed tenants.
            ## @param value Value to set for the managedDeviceCompliances property.
            ## @return a void
            ## 
            def managed_device_compliances=(value)
                @managed_device_compliances = value
            end
            ## 
            ## Gets the managedTenantAlertLogs property value. The managedTenantAlertLogs property
            ## @return a managed_tenants_managed_tenant_alert_log
            ## 
            def managed_tenant_alert_logs
                return @managed_tenant_alert_logs
            end
            ## 
            ## Sets the managedTenantAlertLogs property value. The managedTenantAlertLogs property
            ## @param value Value to set for the managedTenantAlertLogs property.
            ## @return a void
            ## 
            def managed_tenant_alert_logs=(value)
                @managed_tenant_alert_logs = value
            end
            ## 
            ## Gets the managedTenantAlertRuleDefinitions property value. The managedTenantAlertRuleDefinitions property
            ## @return a managed_tenants_managed_tenant_alert_rule_definition
            ## 
            def managed_tenant_alert_rule_definitions
                return @managed_tenant_alert_rule_definitions
            end
            ## 
            ## Sets the managedTenantAlertRuleDefinitions property value. The managedTenantAlertRuleDefinitions property
            ## @param value Value to set for the managedTenantAlertRuleDefinitions property.
            ## @return a void
            ## 
            def managed_tenant_alert_rule_definitions=(value)
                @managed_tenant_alert_rule_definitions = value
            end
            ## 
            ## Gets the managedTenantAlertRules property value. The managedTenantAlertRules property
            ## @return a managed_tenants_managed_tenant_alert_rule
            ## 
            def managed_tenant_alert_rules
                return @managed_tenant_alert_rules
            end
            ## 
            ## Sets the managedTenantAlertRules property value. The managedTenantAlertRules property
            ## @param value Value to set for the managedTenantAlertRules property.
            ## @return a void
            ## 
            def managed_tenant_alert_rules=(value)
                @managed_tenant_alert_rules = value
            end
            ## 
            ## Gets the managedTenantAlerts property value. The managedTenantAlerts property
            ## @return a managed_tenants_managed_tenant_alert
            ## 
            def managed_tenant_alerts
                return @managed_tenant_alerts
            end
            ## 
            ## Sets the managedTenantAlerts property value. The managedTenantAlerts property
            ## @param value Value to set for the managedTenantAlerts property.
            ## @return a void
            ## 
            def managed_tenant_alerts=(value)
                @managed_tenant_alerts = value
            end
            ## 
            ## Gets the managedTenantApiNotifications property value. The managedTenantApiNotifications property
            ## @return a managed_tenants_managed_tenant_api_notification
            ## 
            def managed_tenant_api_notifications
                return @managed_tenant_api_notifications
            end
            ## 
            ## Sets the managedTenantApiNotifications property value. The managedTenantApiNotifications property
            ## @param value Value to set for the managedTenantApiNotifications property.
            ## @return a void
            ## 
            def managed_tenant_api_notifications=(value)
                @managed_tenant_api_notifications = value
            end
            ## 
            ## Gets the managedTenantEmailNotifications property value. The managedTenantEmailNotifications property
            ## @return a managed_tenants_managed_tenant_email_notification
            ## 
            def managed_tenant_email_notifications
                return @managed_tenant_email_notifications
            end
            ## 
            ## Sets the managedTenantEmailNotifications property value. The managedTenantEmailNotifications property
            ## @param value Value to set for the managedTenantEmailNotifications property.
            ## @return a void
            ## 
            def managed_tenant_email_notifications=(value)
                @managed_tenant_email_notifications = value
            end
            ## 
            ## Gets the managedTenantTicketingEndpoints property value. The managedTenantTicketingEndpoints property
            ## @return a managed_tenants_managed_tenant_ticketing_endpoint
            ## 
            def managed_tenant_ticketing_endpoints
                return @managed_tenant_ticketing_endpoints
            end
            ## 
            ## Sets the managedTenantTicketingEndpoints property value. The managedTenantTicketingEndpoints property
            ## @param value Value to set for the managedTenantTicketingEndpoints property.
            ## @return a void
            ## 
            def managed_tenant_ticketing_endpoints=(value)
                @managed_tenant_ticketing_endpoints = value
            end
            ## 
            ## Gets the managementActionTenantDeploymentStatuses property value. The tenant level status of management actions across managed tenants.
            ## @return a managed_tenants_management_action_tenant_deployment_status
            ## 
            def management_action_tenant_deployment_statuses
                return @management_action_tenant_deployment_statuses
            end
            ## 
            ## Sets the managementActionTenantDeploymentStatuses property value. The tenant level status of management actions across managed tenants.
            ## @param value Value to set for the managementActionTenantDeploymentStatuses property.
            ## @return a void
            ## 
            def management_action_tenant_deployment_statuses=(value)
                @management_action_tenant_deployment_statuses = value
            end
            ## 
            ## Gets the managementActions property value. The collection of baseline management actions across managed tenants.
            ## @return a managed_tenants_management_action
            ## 
            def management_actions
                return @management_actions
            end
            ## 
            ## Sets the managementActions property value. The collection of baseline management actions across managed tenants.
            ## @param value Value to set for the managementActions property.
            ## @return a void
            ## 
            def management_actions=(value)
                @management_actions = value
            end
            ## 
            ## Gets the managementIntents property value. The collection of baseline management intents across managed tenants.
            ## @return a managed_tenants_management_intent
            ## 
            def management_intents
                return @management_intents
            end
            ## 
            ## Sets the managementIntents property value. The collection of baseline management intents across managed tenants.
            ## @param value Value to set for the managementIntents property.
            ## @return a void
            ## 
            def management_intents=(value)
                @management_intents = value
            end
            ## 
            ## Gets the managementTemplateCollectionTenantSummaries property value. The managementTemplateCollectionTenantSummaries property
            ## @return a managed_tenants_management_template_collection_tenant_summary
            ## 
            def management_template_collection_tenant_summaries
                return @management_template_collection_tenant_summaries
            end
            ## 
            ## Sets the managementTemplateCollectionTenantSummaries property value. The managementTemplateCollectionTenantSummaries property
            ## @param value Value to set for the managementTemplateCollectionTenantSummaries property.
            ## @return a void
            ## 
            def management_template_collection_tenant_summaries=(value)
                @management_template_collection_tenant_summaries = value
            end
            ## 
            ## Gets the managementTemplateCollections property value. The managementTemplateCollections property
            ## @return a managed_tenants_management_template_collection
            ## 
            def management_template_collections
                return @management_template_collections
            end
            ## 
            ## Sets the managementTemplateCollections property value. The managementTemplateCollections property
            ## @param value Value to set for the managementTemplateCollections property.
            ## @return a void
            ## 
            def management_template_collections=(value)
                @management_template_collections = value
            end
            ## 
            ## Gets the managementTemplateStepTenantSummaries property value. The managementTemplateStepTenantSummaries property
            ## @return a managed_tenants_management_template_step_tenant_summary
            ## 
            def management_template_step_tenant_summaries
                return @management_template_step_tenant_summaries
            end
            ## 
            ## Sets the managementTemplateStepTenantSummaries property value. The managementTemplateStepTenantSummaries property
            ## @param value Value to set for the managementTemplateStepTenantSummaries property.
            ## @return a void
            ## 
            def management_template_step_tenant_summaries=(value)
                @management_template_step_tenant_summaries = value
            end
            ## 
            ## Gets the managementTemplateStepVersions property value. The managementTemplateStepVersions property
            ## @return a managed_tenants_management_template_step_version
            ## 
            def management_template_step_versions
                return @management_template_step_versions
            end
            ## 
            ## Sets the managementTemplateStepVersions property value. The managementTemplateStepVersions property
            ## @param value Value to set for the managementTemplateStepVersions property.
            ## @return a void
            ## 
            def management_template_step_versions=(value)
                @management_template_step_versions = value
            end
            ## 
            ## Gets the managementTemplateSteps property value. The managementTemplateSteps property
            ## @return a managed_tenants_management_template_step
            ## 
            def management_template_steps
                return @management_template_steps
            end
            ## 
            ## Sets the managementTemplateSteps property value. The managementTemplateSteps property
            ## @param value Value to set for the managementTemplateSteps property.
            ## @return a void
            ## 
            def management_template_steps=(value)
                @management_template_steps = value
            end
            ## 
            ## Gets the managementTemplates property value. The collection of baseline management templates across managed tenants.
            ## @return a managed_tenants_management_template
            ## 
            def management_templates
                return @management_templates
            end
            ## 
            ## Sets the managementTemplates property value. The collection of baseline management templates across managed tenants.
            ## @param value Value to set for the managementTemplates property.
            ## @return a void
            ## 
            def management_templates=(value)
                @management_templates = value
            end
            ## 
            ## Gets the myRoles property value. The collection of role assignments to a signed-in user for a managed tenant.
            ## @return a managed_tenants_my_role
            ## 
            def my_roles
                return @my_roles
            end
            ## 
            ## Sets the myRoles property value. The collection of role assignments to a signed-in user for a managed tenant.
            ## @param value Value to set for the myRoles property.
            ## @return a void
            ## 
            def my_roles=(value)
                @my_roles = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("aggregatedPolicyCompliances", @aggregated_policy_compliances)
                writer.write_collection_of_object_values("appPerformances", @app_performances)
                writer.write_collection_of_object_values("auditEvents", @audit_events)
                writer.write_collection_of_object_values("cloudPcConnections", @cloud_pc_connections)
                writer.write_collection_of_object_values("cloudPcDevices", @cloud_pc_devices)
                writer.write_collection_of_object_values("cloudPcsOverview", @cloud_pcs_overview)
                writer.write_collection_of_object_values("conditionalAccessPolicyCoverages", @conditional_access_policy_coverages)
                writer.write_collection_of_object_values("credentialUserRegistrationsSummaries", @credential_user_registrations_summaries)
                writer.write_collection_of_object_values("deviceAppPerformances", @device_app_performances)
                writer.write_collection_of_object_values("deviceCompliancePolicySettingStateSummaries", @device_compliance_policy_setting_state_summaries)
                writer.write_collection_of_object_values("deviceHealthStatuses", @device_health_statuses)
                writer.write_collection_of_object_values("managedDeviceComplianceTrends", @managed_device_compliance_trends)
                writer.write_collection_of_object_values("managedDeviceCompliances", @managed_device_compliances)
                writer.write_collection_of_object_values("managedTenantAlertLogs", @managed_tenant_alert_logs)
                writer.write_collection_of_object_values("managedTenantAlertRuleDefinitions", @managed_tenant_alert_rule_definitions)
                writer.write_collection_of_object_values("managedTenantAlertRules", @managed_tenant_alert_rules)
                writer.write_collection_of_object_values("managedTenantAlerts", @managed_tenant_alerts)
                writer.write_collection_of_object_values("managedTenantApiNotifications", @managed_tenant_api_notifications)
                writer.write_collection_of_object_values("managedTenantEmailNotifications", @managed_tenant_email_notifications)
                writer.write_collection_of_object_values("managedTenantTicketingEndpoints", @managed_tenant_ticketing_endpoints)
                writer.write_collection_of_object_values("managementActionTenantDeploymentStatuses", @management_action_tenant_deployment_statuses)
                writer.write_collection_of_object_values("managementActions", @management_actions)
                writer.write_collection_of_object_values("managementIntents", @management_intents)
                writer.write_collection_of_object_values("managementTemplateCollectionTenantSummaries", @management_template_collection_tenant_summaries)
                writer.write_collection_of_object_values("managementTemplateCollections", @management_template_collections)
                writer.write_collection_of_object_values("managementTemplateStepTenantSummaries", @management_template_step_tenant_summaries)
                writer.write_collection_of_object_values("managementTemplateStepVersions", @management_template_step_versions)
                writer.write_collection_of_object_values("managementTemplateSteps", @management_template_steps)
                writer.write_collection_of_object_values("managementTemplates", @management_templates)
                writer.write_collection_of_object_values("myRoles", @my_roles)
                writer.write_collection_of_object_values("tenantGroups", @tenant_groups)
                writer.write_collection_of_object_values("tenantTags", @tenant_tags)
                writer.write_collection_of_object_values("tenants", @tenants)
                writer.write_collection_of_object_values("tenantsCustomizedInformation", @tenants_customized_information)
                writer.write_collection_of_object_values("tenantsDetailedInformation", @tenants_detailed_information)
                writer.write_collection_of_object_values("windowsDeviceMalwareStates", @windows_device_malware_states)
                writer.write_collection_of_object_values("windowsProtectionStates", @windows_protection_states)
            end
            ## 
            ## Gets the tenantGroups property value. The collection of a logical grouping of managed tenants used by the multi-tenant management platform.
            ## @return a managed_tenants_tenant_group
            ## 
            def tenant_groups
                return @tenant_groups
            end
            ## 
            ## Sets the tenantGroups property value. The collection of a logical grouping of managed tenants used by the multi-tenant management platform.
            ## @param value Value to set for the tenantGroups property.
            ## @return a void
            ## 
            def tenant_groups=(value)
                @tenant_groups = value
            end
            ## 
            ## Gets the tenantTags property value. The collection of tenant tags across managed tenants.
            ## @return a managed_tenants_tenant_tag
            ## 
            def tenant_tags
                return @tenant_tags
            end
            ## 
            ## Sets the tenantTags property value. The collection of tenant tags across managed tenants.
            ## @param value Value to set for the tenantTags property.
            ## @return a void
            ## 
            def tenant_tags=(value)
                @tenant_tags = value
            end
            ## 
            ## Gets the tenants property value. The collection of tenants associated with the managing entity.
            ## @return a managed_tenants_tenant
            ## 
            def tenants
                return @tenants
            end
            ## 
            ## Sets the tenants property value. The collection of tenants associated with the managing entity.
            ## @param value Value to set for the tenants property.
            ## @return a void
            ## 
            def tenants=(value)
                @tenants = value
            end
            ## 
            ## Gets the tenantsCustomizedInformation property value. The collection of tenant level customized information across managed tenants.
            ## @return a managed_tenants_tenant_customized_information
            ## 
            def tenants_customized_information
                return @tenants_customized_information
            end
            ## 
            ## Sets the tenantsCustomizedInformation property value. The collection of tenant level customized information across managed tenants.
            ## @param value Value to set for the tenantsCustomizedInformation property.
            ## @return a void
            ## 
            def tenants_customized_information=(value)
                @tenants_customized_information = value
            end
            ## 
            ## Gets the tenantsDetailedInformation property value. The collection tenant level detailed information across managed tenants.
            ## @return a managed_tenants_tenant_detailed_information
            ## 
            def tenants_detailed_information
                return @tenants_detailed_information
            end
            ## 
            ## Sets the tenantsDetailedInformation property value. The collection tenant level detailed information across managed tenants.
            ## @param value Value to set for the tenantsDetailedInformation property.
            ## @return a void
            ## 
            def tenants_detailed_information=(value)
                @tenants_detailed_information = value
            end
            ## 
            ## Gets the windowsDeviceMalwareStates property value. The state of malware for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            ## @return a managed_tenants_windows_device_malware_state
            ## 
            def windows_device_malware_states
                return @windows_device_malware_states
            end
            ## 
            ## Sets the windowsDeviceMalwareStates property value. The state of malware for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            ## @param value Value to set for the windowsDeviceMalwareStates property.
            ## @return a void
            ## 
            def windows_device_malware_states=(value)
                @windows_device_malware_states = value
            end
            ## 
            ## Gets the windowsProtectionStates property value. The protection state for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            ## @return a managed_tenants_windows_protection_state
            ## 
            def windows_protection_states
                return @windows_protection_states
            end
            ## 
            ## Sets the windowsProtectionStates property value. The protection state for Windows devices, registered with Microsoft Endpoint Manager, across managed tenants.
            ## @param value Value to set for the windowsProtectionStates property.
            ## @return a void
            ## 
            def windows_protection_states=(value)
                @windows_protection_states = value
            end
        end
    end
end
