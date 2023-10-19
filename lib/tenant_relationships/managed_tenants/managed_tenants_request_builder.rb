require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/managed_tenants_managed_tenant'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../tenant_relationships'
require_relative './aggregated_policy_compliances/aggregated_policy_compliances_request_builder'
require_relative './app_performances/app_performances_request_builder'
require_relative './audit_events/audit_events_request_builder'
require_relative './cloud_pc_connections/cloud_pc_connections_request_builder'
require_relative './cloud_pc_devices/cloud_pc_devices_request_builder'
require_relative './cloud_pcs_overview/cloud_pcs_overview_request_builder'
require_relative './conditional_access_policy_coverages/conditional_access_policy_coverages_request_builder'
require_relative './credential_user_registrations_summaries/credential_user_registrations_summaries_request_builder'
require_relative './device_app_performances/device_app_performances_request_builder'
require_relative './device_compliance_policy_setting_state_summaries/device_compliance_policy_setting_state_summaries_request_builder'
require_relative './device_health_statuses/device_health_statuses_request_builder'
require_relative './managed_device_compliances/managed_device_compliances_request_builder'
require_relative './managed_device_compliance_trends/managed_device_compliance_trends_request_builder'
require_relative './managed_tenant_alert_logs/managed_tenant_alert_logs_request_builder'
require_relative './managed_tenant_alert_rule_definitions/managed_tenant_alert_rule_definitions_request_builder'
require_relative './managed_tenant_alert_rules/managed_tenant_alert_rules_request_builder'
require_relative './managed_tenant_alerts/managed_tenant_alerts_request_builder'
require_relative './managed_tenant_api_notifications/managed_tenant_api_notifications_request_builder'
require_relative './managed_tenant_email_notifications/managed_tenant_email_notifications_request_builder'
require_relative './managed_tenant_ticketing_endpoints/managed_tenant_ticketing_endpoints_request_builder'
require_relative './managed_tenants'
require_relative './management_actions/management_actions_request_builder'
require_relative './management_action_tenant_deployment_statuses/management_action_tenant_deployment_statuses_request_builder'
require_relative './management_intents/management_intents_request_builder'
require_relative './management_template_collections/management_template_collections_request_builder'
require_relative './management_template_collection_tenant_summaries/management_template_collection_tenant_summaries_request_builder'
require_relative './management_templates/management_templates_request_builder'
require_relative './management_template_steps/management_template_steps_request_builder'
require_relative './management_template_step_tenant_summaries/management_template_step_tenant_summaries_request_builder'
require_relative './management_template_step_versions/management_template_step_versions_request_builder'
require_relative './my_roles/my_roles_request_builder'
require_relative './tenant_groups/tenant_groups_request_builder'
require_relative './tenants/tenants_request_builder'
require_relative './tenants_customized_information/tenants_customized_information_request_builder'
require_relative './tenants_detailed_information/tenants_detailed_information_request_builder'
require_relative './tenant_tags/tenant_tags_request_builder'
require_relative './windows_device_malware_states/windows_device_malware_states_request_builder'
require_relative './windows_protection_states/windows_protection_states_request_builder'

module MicrosoftGraphBeta
    module TenantRelationships
        module ManagedTenants
            ## 
            # Provides operations to manage the managedTenants property of the microsoft.graph.tenantRelationship entity.
            class ManagedTenantsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the aggregatedPolicyCompliances property of the microsoft.graph.managedTenants.managedTenant entity.
                def aggregated_policy_compliances()
                    return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AggregatedPolicyCompliances::AggregatedPolicyCompliancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the appPerformances property of the microsoft.graph.managedTenants.managedTenant entity.
                def app_performances()
                    return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::AppPerformances::AppPerformancesRequestBuilder.new(@path_parameters, @request_adapter)
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
                # Provides operations to manage the deviceAppPerformances property of the microsoft.graph.managedTenants.managedTenant entity.
                def device_app_performances()
                    return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::DeviceAppPerformances::DeviceAppPerformancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the deviceCompliancePolicySettingStateSummaries property of the microsoft.graph.managedTenants.managedTenant entity.
                def device_compliance_policy_setting_state_summaries()
                    return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::DeviceCompliancePolicySettingStateSummaries::DeviceCompliancePolicySettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the deviceHealthStatuses property of the microsoft.graph.managedTenants.managedTenant entity.
                def device_health_statuses()
                    return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::DeviceHealthStatuses::DeviceHealthStatusesRequestBuilder.new(@path_parameters, @request_adapter)
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
                ## Instantiates a new ManagedTenantsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/tenantRelationships/managedTenants{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property managedTenants for tenantRelationships
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## The operations available to interact with the multi-tenant management platform.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of managed_tenants_managed_tenant
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenant.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property managedTenants in tenantRelationships
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of managed_tenants_managed_tenant
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenant.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property managedTenants for tenantRelationships
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    return request_info
                end
                ## 
                ## The operations available to interact with the multi-tenant management platform.
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
                ## Update the navigation property managedTenants in tenantRelationships
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
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a managed_tenants_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ManagedTenantsRequestBuilder.new(raw_url, @request_adapter)
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
end
