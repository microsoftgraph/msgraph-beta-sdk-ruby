require 'microsoft_kiota_abstractions'
require_relative '../../models/managed_tenants/managed_tenant'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../tenant_relationships'
require_relative './aggregated_policy_compliances/aggregated_policy_compliances_request_builder'
require_relative './aggregated_policy_compliances/item/aggregated_policy_compliance_item_request_builder'
require_relative './audit_events/audit_events_request_builder'
require_relative './audit_events/item/audit_event_item_request_builder'
require_relative './cloud_pc_connections/cloud_pc_connections_request_builder'
require_relative './cloud_pc_connections/item/cloud_pc_connection_item_request_builder'
require_relative './cloud_pc_devices/cloud_pc_devices_request_builder'
require_relative './cloud_pc_devices/item/cloud_pc_device_item_request_builder'
require_relative './cloud_pcs_overview/cloud_pcs_overview_request_builder'
require_relative './cloud_pcs_overview/item/cloud_pc_overview_tenant_item_request_builder'
require_relative './conditional_access_policy_coverages/conditional_access_policy_coverages_request_builder'
require_relative './conditional_access_policy_coverages/item/conditional_access_policy_coverage_item_request_builder'
require_relative './credential_user_registrations_summaries/credential_user_registrations_summaries_request_builder'
require_relative './credential_user_registrations_summaries/item/credential_user_registrations_summary_item_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/device_compliance_policy_setting_state_summaries_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/item/device_compliance_policy_setting_state_summary_item_request_builder'
require_relative './managed_device_compliances/item/managed_device_compliance_item_request_builder'
require_relative './managed_device_compliances/managed_device_compliances_request_builder'
require_relative './managed_device_compliance_trends/item/managed_device_compliance_trend_item_request_builder'
require_relative './managed_device_compliance_trends/managed_device_compliance_trends_request_builder'
require_relative './managed_tenant_alert_logs/item/managed_tenant_alert_log_item_request_builder'
require_relative './managed_tenant_alert_logs/managed_tenant_alert_logs_request_builder'
require_relative './managed_tenant_alert_rule_definitions/item/managed_tenant_alert_rule_definition_item_request_builder'
require_relative './managed_tenant_alert_rule_definitions/managed_tenant_alert_rule_definitions_request_builder'
require_relative './managed_tenant_alert_rules/item/managed_tenant_alert_rule_item_request_builder'
require_relative './managed_tenant_alert_rules/managed_tenant_alert_rules_request_builder'
require_relative './managed_tenant_alerts/item/managed_tenant_alert_item_request_builder'
require_relative './managed_tenant_alerts/managed_tenant_alerts_request_builder'
require_relative './managed_tenant_api_notifications/item/managed_tenant_api_notification_item_request_builder'
require_relative './managed_tenant_api_notifications/managed_tenant_api_notifications_request_builder'
require_relative './managed_tenant_email_notifications/item/managed_tenant_email_notification_item_request_builder'
require_relative './managed_tenant_email_notifications/managed_tenant_email_notifications_request_builder'
require_relative './managed_tenant_ticketing_endpoints/item/managed_tenant_ticketing_endpoint_item_request_builder'
require_relative './managed_tenant_ticketing_endpoints/managed_tenant_ticketing_endpoints_request_builder'
require_relative './managed_tenants'
require_relative './management_actions/item/management_action_item_request_builder'
require_relative './management_actions/management_actions_request_builder'
require_relative './management_action_tenant_deployment_statuses/item/management_action_tenant_deployment_status_item_request_builder'
require_relative './management_action_tenant_deployment_statuses/management_action_tenant_deployment_statuses_request_builder'
require_relative './management_intents/item/management_intent_item_request_builder'
require_relative './management_intents/management_intents_request_builder'
require_relative './management_template_collections/item/management_template_collection_item_request_builder'
require_relative './management_template_collections/management_template_collections_request_builder'
require_relative './management_template_collection_tenant_summaries/item/management_template_collection_tenant_summary_item_request_builder'
require_relative './management_template_collection_tenant_summaries/management_template_collection_tenant_summaries_request_builder'
require_relative './management_templates/item/management_template_item_request_builder'
require_relative './management_templates/management_templates_request_builder'
require_relative './management_template_steps/item/management_template_step_item_request_builder'
require_relative './management_template_steps/management_template_steps_request_builder'
require_relative './management_template_step_tenant_summaries/item/management_template_step_tenant_summary_item_request_builder'
require_relative './management_template_step_tenant_summaries/management_template_step_tenant_summaries_request_builder'
require_relative './management_template_step_versions/item/management_template_step_version_item_request_builder'
require_relative './management_template_step_versions/management_template_step_versions_request_builder'
require_relative './my_roles/item/my_role_tenant_item_request_builder'
require_relative './my_roles/my_roles_request_builder'
require_relative './tenant_groups/item/tenant_group_item_request_builder'
require_relative './tenant_groups/tenant_groups_request_builder'
require_relative './tenants/item/tenant_item_request_builder'
require_relative './tenants/tenants_request_builder'
require_relative './tenants_customized_information/item/tenant_customized_information_item_request_builder'
require_relative './tenants_customized_information/tenants_customized_information_request_builder'
require_relative './tenants_detailed_information/item/tenant_detailed_information_item_request_builder'
require_relative './tenants_detailed_information/tenants_detailed_information_request_builder'
require_relative './tenant_tags/item/tenant_tag_item_request_builder'
require_relative './tenant_tags/tenant_tags_request_builder'
require_relative './windows_device_malware_states/item/windows_device_malware_state_item_request_builder'
require_relative './windows_device_malware_states/windows_device_malware_states_request_builder'
require_relative './windows_protection_states/item/windows_protection_state_item_request_builder'
require_relative './windows_protection_states/windows_protection_states_request_builder'

module MicrosoftGraphBeta::TenantRelationships::ManagedTenants
    ## 
    # Provides operations to manage the managedTenants property of the microsoft.graph.tenantRelationship entity.
    class ManagedTenantsRequestBuilder
        
        ## 
        # Provides operations to manage the aggregatedPolicyCompliances property of the microsoft.graph.managedTenants.managedTenant entity.
        def aggregated_policy_compliances()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AggregatedPolicyCompliances::AggregatedPolicyCompliancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the auditEvents property of the microsoft.graph.managedTenants.managedTenant entity.
        def audit_events()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AuditEvents::AuditEventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudPcConnections property of the microsoft.graph.managedTenants.managedTenant entity.
        def cloud_pc_connections()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcConnections::CloudPcConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudPcDevices property of the microsoft.graph.managedTenants.managedTenant entity.
        def cloud_pc_devices()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcDevices::CloudPcDevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudPcsOverview property of the microsoft.graph.managedTenants.managedTenant entity.
        def cloud_pcs_overview()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcsOverview::CloudPcsOverviewRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the conditionalAccessPolicyCoverages property of the microsoft.graph.managedTenants.managedTenant entity.
        def conditional_access_policy_coverages()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ConditionalAccessPolicyCoverages::ConditionalAccessPolicyCoveragesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the credentialUserRegistrationsSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        def credential_user_registrations_summaries()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CredentialUserRegistrationsSummaries::CredentialUserRegistrationsSummariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        def device_compliance_policy_setting_state_summaries()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::DeviceCompliancePolicySettingStateSummaries::DeviceCompliancePolicySettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedDeviceCompliances property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_device_compliances()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedDeviceCompliances::ManagedDeviceCompliancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedDeviceComplianceTrends property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_device_compliance_trends()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedDeviceComplianceTrends::ManagedDeviceComplianceTrendsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantAlertLogs property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_alert_logs()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertLogs::ManagedTenantAlertLogsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantAlertRuleDefinitions property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_alert_rule_definitions()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertRuleDefinitions::ManagedTenantAlertRuleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantAlertRules property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_alert_rules()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertRules::ManagedTenantAlertRulesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantAlerts property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_alerts()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::ManagedTenantAlertsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantApiNotifications property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_api_notifications()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantApiNotifications::ManagedTenantApiNotificationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantEmailNotifications property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_email_notifications()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantEmailNotifications::ManagedTenantEmailNotificationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managedTenantTicketingEndpoints property of the microsoft.graph.managedTenants.managedTenant entity.
        def managed_tenant_ticketing_endpoints()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantTicketingEndpoints::ManagedTenantTicketingEndpointsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementActions property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_actions()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementActions::ManagementActionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementActionTenantDeploymentStatuses property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_action_tenant_deployment_statuses()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementActionTenantDeploymentStatuses::ManagementActionTenantDeploymentStatusesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementIntents property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_intents()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementIntents::ManagementIntentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplateCollections property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_template_collections()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateCollections::ManagementTemplateCollectionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplateCollectionTenantSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_template_collection_tenant_summaries()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateCollectionTenantSummaries::ManagementTemplateCollectionTenantSummariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplates property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_templates()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplates::ManagementTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplateSteps property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_template_steps()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateSteps::ManagementTemplateStepsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplateStepTenantSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_template_step_tenant_summaries()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateStepTenantSummaries::ManagementTemplateStepTenantSummariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the managementTemplateStepVersions property of the microsoft.graph.managedTenants.managedTenant entity.
        def management_template_step_versions()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateStepVersions::ManagementTemplateStepVersionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the myRoles property of the microsoft.graph.managedTenants.managedTenant entity.
        def my_roles()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::MyRoles::MyRolesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the tenantGroups property of the microsoft.graph.managedTenants.managedTenant entity.
        def tenant_groups()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantGroups::TenantGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenants property of the microsoft.graph.managedTenants.managedTenant entity.
        def tenants()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::Tenants::TenantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenantsCustomizedInformation property of the microsoft.graph.managedTenants.managedTenant entity.
        def tenants_customized_information()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantsCustomizedInformation::TenantsCustomizedInformationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenantsDetailedInformation property of the microsoft.graph.managedTenants.managedTenant entity.
        def tenants_detailed_information()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantsDetailedInformation::TenantsDetailedInformationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenantTags property of the microsoft.graph.managedTenants.managedTenant entity.
        def tenant_tags()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantTags::TenantTagsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the windowsDeviceMalwareStates property of the microsoft.graph.managedTenants.managedTenant entity.
        def windows_device_malware_states()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::WindowsDeviceMalwareStates::WindowsDeviceMalwareStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the windowsProtectionStates property of the microsoft.graph.managedTenants.managedTenant entity.
        def windows_protection_states()
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::WindowsProtectionStates::WindowsProtectionStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the aggregatedPolicyCompliances property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a aggregated_policy_compliance_item_request_builder
        ## 
        def aggregated_policy_compliances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["aggregatedPolicyCompliance%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AggregatedPolicyCompliances::Item::AggregatedPolicyComplianceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the auditEvents property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a audit_event_item_request_builder
        ## 
        def audit_events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["auditEvent%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AuditEvents::Item::AuditEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the cloudPcConnections property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a cloud_pc_connection_item_request_builder
        ## 
        def cloud_pc_connections_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["cloudPcConnection%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcConnections::Item::CloudPcConnectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the cloudPcDevices property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a cloud_pc_device_item_request_builder
        ## 
        def cloud_pc_devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["cloudPcDevice%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcDevices::Item::CloudPcDeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the cloudPcsOverview property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a cloud_pc_overview_tenant_item_request_builder
        ## 
        def cloud_pcs_overview_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["cloudPcOverview%2DtenantId"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CloudPcsOverview::Item::CloudPcOverviewTenantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the conditionalAccessPolicyCoverages property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a conditional_access_policy_coverage_item_request_builder
        ## 
        def conditional_access_policy_coverages_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["conditionalAccessPolicyCoverage%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ConditionalAccessPolicyCoverages::Item::ConditionalAccessPolicyCoverageItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new ManagedTenantsRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/tenantRelationships/managedTenants{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Provides operations to manage the credentialUserRegistrationsSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a credential_user_registrations_summary_item_request_builder
        ## 
        def credential_user_registrations_summaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["credentialUserRegistrationsSummary%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::CredentialUserRegistrationsSummaries::Item::CredentialUserRegistrationsSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property managedTenants for tenantRelationships
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
        ## Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a device_compliance_policy_setting_state_summary_item_request_builder
        ## 
        def device_compliance_policy_setting_state_summaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceCompliancePolicySettingStateSummary%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::DeviceCompliancePolicySettingStateSummaries::Item::DeviceCompliancePolicySettingStateSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## The operations available to interact with the multi-tenant management platform.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_tenant
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagedTenant.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the managedDeviceCompliances property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_device_compliance_item_request_builder
        ## 
        def managed_device_compliances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedDeviceCompliance%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedDeviceCompliances::Item::ManagedDeviceComplianceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedDeviceComplianceTrends property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_device_compliance_trend_item_request_builder
        ## 
        def managed_device_compliance_trends_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedDeviceComplianceTrend%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedDeviceComplianceTrends::Item::ManagedDeviceComplianceTrendItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantAlertLogs property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_alert_log_item_request_builder
        ## 
        def managed_tenant_alert_logs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantAlertLog%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertLogs::Item::ManagedTenantAlertLogItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantAlertRuleDefinitions property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_alert_rule_definition_item_request_builder
        ## 
        def managed_tenant_alert_rule_definitions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantAlertRuleDefinition%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertRuleDefinitions::Item::ManagedTenantAlertRuleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantAlertRules property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_alert_rule_item_request_builder
        ## 
        def managed_tenant_alert_rules_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantAlertRule%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlertRules::Item::ManagedTenantAlertRuleItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantAlerts property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_alert_item_request_builder
        ## 
        def managed_tenant_alerts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantAlert%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::ManagedTenantAlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantApiNotifications property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_api_notification_item_request_builder
        ## 
        def managed_tenant_api_notifications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantApiNotification%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantApiNotifications::Item::ManagedTenantApiNotificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantEmailNotifications property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_email_notification_item_request_builder
        ## 
        def managed_tenant_email_notifications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantEmailNotification%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantEmailNotifications::Item::ManagedTenantEmailNotificationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managedTenantTicketingEndpoints property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a managed_tenant_ticketing_endpoint_item_request_builder
        ## 
        def managed_tenant_ticketing_endpoints_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managedTenantTicketingEndpoint%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantTicketingEndpoints::Item::ManagedTenantTicketingEndpointItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementActions property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_action_item_request_builder
        ## 
        def management_actions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementAction%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementActions::Item::ManagementActionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementActionTenantDeploymentStatuses property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_action_tenant_deployment_status_item_request_builder
        ## 
        def management_action_tenant_deployment_statuses_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementActionTenantDeploymentStatus%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementActionTenantDeploymentStatuses::Item::ManagementActionTenantDeploymentStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementIntents property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_intent_item_request_builder
        ## 
        def management_intents_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementIntent%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementIntents::Item::ManagementIntentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplateCollections property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_collection_item_request_builder
        ## 
        def management_template_collections_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplateCollection%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateCollections::Item::ManagementTemplateCollectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplateCollectionTenantSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_collection_tenant_summary_item_request_builder
        ## 
        def management_template_collection_tenant_summaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplateCollectionTenantSummary%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateCollectionTenantSummaries::Item::ManagementTemplateCollectionTenantSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplates property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_item_request_builder
        ## 
        def management_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplate%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplates::Item::ManagementTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplateSteps property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_step_item_request_builder
        ## 
        def management_template_steps_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplateStep%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateSteps::Item::ManagementTemplateStepItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplateStepTenantSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_step_tenant_summary_item_request_builder
        ## 
        def management_template_step_tenant_summaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplateStepTenantSummary%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateStepTenantSummaries::Item::ManagementTemplateStepTenantSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the managementTemplateStepVersions property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a management_template_step_version_item_request_builder
        ## 
        def management_template_step_versions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["managementTemplateStepVersion%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateStepVersions::Item::ManagementTemplateStepVersionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the myRoles property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a my_role_tenant_item_request_builder
        ## 
        def my_roles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["myRole%2DtenantId"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::MyRoles::Item::MyRoleTenantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property managedTenants in tenantRelationships
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_tenant
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagedTenant.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the tenantGroups property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a tenant_group_item_request_builder
        ## 
        def tenant_groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tenantGroup%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantGroups::Item::TenantGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the tenants property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a tenant_item_request_builder
        ## 
        def tenants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tenant%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::Tenants::Item::TenantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the tenantsCustomizedInformation property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a tenant_customized_information_item_request_builder
        ## 
        def tenants_customized_information_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tenantCustomizedInformation%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantsCustomizedInformation::Item::TenantCustomizedInformationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the tenantsDetailedInformation property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a tenant_detailed_information_item_request_builder
        ## 
        def tenants_detailed_information_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tenantDetailedInformation%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantsDetailedInformation::Item::TenantDetailedInformationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the tenantTags property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a tenant_tag_item_request_builder
        ## 
        def tenant_tags_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["tenantTag%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::TenantTags::Item::TenantTagItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property managedTenants for tenantRelationships
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
        ## The operations available to interact with the multi-tenant management platform.
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
        ## Update the navigation property managedTenants in tenantRelationships
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
        ## Provides operations to manage the windowsDeviceMalwareStates property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a windows_device_malware_state_item_request_builder
        ## 
        def windows_device_malware_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["windowsDeviceMalwareState%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::WindowsDeviceMalwareStates::Item::WindowsDeviceMalwareStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the windowsProtectionStates property of the microsoft.graph.managedTenants.managedTenant entity.
        ## @param id Unique identifier of the item
        ## @return a windows_protection_state_item_request_builder
        ## 
        def windows_protection_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["windowsProtectionState%2Did"] = id
            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::WindowsProtectionStates::Item::WindowsProtectionStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ManagedTenantsRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The operations available to interact with the multi-tenant management platform.
        class ManagedTenantsRequestBuilderGetQueryParameters
            
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
        class ManagedTenantsRequestBuilderGetRequestConfiguration
            
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
        class ManagedTenantsRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
