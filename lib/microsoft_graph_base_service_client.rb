require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './access_review_decisions/access_review_decisions_request_builder'
require_relative './access_review_decisions/item/access_review_decision_item_request_builder'
require_relative './access_reviews/access_reviews_request_builder'
require_relative './access_reviews/item/access_review_item_request_builder'
require_relative './activitystatistics/activitystatistics_request_builder'
require_relative './activitystatistics/item/activity_statistics_item_request_builder'
require_relative './admin/admin_request_builder'
require_relative './administrative_units/administrative_units_request_builder'
require_relative './administrative_units/item/administrative_unit_item_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './agreement_acceptances/item/agreement_acceptance_item_request_builder'
require_relative './agreements/agreements_request_builder'
require_relative './agreements/item/agreement_item_request_builder'
require_relative './allowed_data_locations/allowed_data_locations_request_builder'
require_relative './allowed_data_locations/item/allowed_data_location_item_request_builder'
require_relative './app/app_request_builder'
require_relative './app_catalogs/app_catalogs_request_builder'
require_relative './applications/applications_request_builder'
require_relative './applications/item/application_item_request_builder'
require_relative './application_templates/application_templates_request_builder'
require_relative './application_templates/item/application_template_item_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './app_role_assignments/item/app_role_assignment_item_request_builder'
require_relative './approval_workflow_providers/approval_workflow_providers_request_builder'
require_relative './approval_workflow_providers/item/approval_workflow_provider_item_request_builder'
require_relative './audit_logs/audit_logs_request_builder'
require_relative './authentication_method_configurations/authentication_method_configurations_request_builder'
require_relative './authentication_method_configurations/item/authentication_method_configuration_item_request_builder'
require_relative './authentication_methods_policy/authentication_methods_policy_request_builder'
require_relative './booking_businesses/booking_businesses_request_builder'
require_relative './booking_businesses/item/booking_business_item_request_builder'
require_relative './booking_currencies/booking_currencies_request_builder'
require_relative './booking_currencies/item/booking_currency_item_request_builder'
require_relative './branding/branding_request_builder'
require_relative './business_flow_templates/business_flow_templates_request_builder'
require_relative './business_flow_templates/item/business_flow_template_item_request_builder'
require_relative './certificate_based_auth_configuration/certificate_based_auth_configuration_request_builder'
require_relative './certificate_based_auth_configuration/item/certificate_based_auth_configuration_item_request_builder'
require_relative './chats/chats_request_builder'
require_relative './chats/item/chat_item_request_builder'
require_relative './commands/commands_request_builder'
require_relative './commands/item/command_item_request_builder'
require_relative './communications/communications_request_builder'
require_relative './compliance/compliance_request_builder'
require_relative './connections/connections_request_builder'
require_relative './connections/item/external_connection_item_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './contacts/item/org_contact_item_request_builder'
require_relative './contracts/contracts_request_builder'
require_relative './contracts/item/contract_item_request_builder'
require_relative './data_classification/data_classification_request_builder'
require_relative './data_policy_operations/data_policy_operations_request_builder'
require_relative './data_policy_operations/item/data_policy_operation_item_request_builder'
require_relative './device_app_management/device_app_management_request_builder'
require_relative './device_management/device_management_request_builder'
require_relative './devices/devices_request_builder'
require_relative './devices/item/device_item_request_builder'
require_relative './directory/directory_request_builder'
require_relative './directory_objects/directory_objects_request_builder'
require_relative './directory_objects/item/directory_object_item_request_builder'
require_relative './directory_roles/directory_roles_request_builder'
require_relative './directory_roles/item/directory_role_item_request_builder'
require_relative './directory_role_templates/directory_role_templates_request_builder'
require_relative './directory_role_templates/item/directory_role_template_item_request_builder'
require_relative './directory_setting_templates/directory_setting_templates_request_builder'
require_relative './directory_setting_templates/item/directory_setting_template_item_request_builder'
require_relative './domain_dns_records/domain_dns_records_request_builder'
require_relative './domain_dns_records/item/domain_dns_record_item_request_builder'
require_relative './domains/domains_request_builder'
require_relative './domains/item/domain_item_request_builder'
require_relative './drive/drive_request_builder'
require_relative './drives/drives_request_builder'
require_relative './drives/item/drive_item_request_builder'
require_relative './education/education_request_builder'
require_relative './employee_experience/employee_experience_request_builder'
require_relative './external/external_request_builder'
require_relative './filter_operators/filter_operators_request_builder'
require_relative './filter_operators/item/filter_operator_schema_item_request_builder'
require_relative './financials/financials_request_builder'
require_relative './functions/functions_request_builder'
require_relative './functions/item/attribute_mapping_function_schema_item_request_builder'
require_relative './governance_resources/governance_resources_request_builder'
require_relative './governance_resources/item/governance_resource_item_request_builder'
require_relative './governance_role_assignment_requests/governance_role_assignment_requests_request_builder'
require_relative './governance_role_assignment_requests/item/governance_role_assignment_request_item_request_builder'
require_relative './governance_role_assignments/governance_role_assignments_request_builder'
require_relative './governance_role_assignments/item/governance_role_assignment_item_request_builder'
require_relative './governance_role_definitions/governance_role_definitions_request_builder'
require_relative './governance_role_definitions/item/governance_role_definition_item_request_builder'
require_relative './governance_role_settings/governance_role_settings_request_builder'
require_relative './governance_role_settings/item/governance_role_setting_item_request_builder'
require_relative './governance_subjects/governance_subjects_request_builder'
require_relative './governance_subjects/item/governance_subject_item_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './group_lifecycle_policies/item/group_lifecycle_policy_item_request_builder'
require_relative './groups/groups_request_builder'
require_relative './groups/item/group_item_request_builder'
require_relative './identity/identity_request_builder'
require_relative './identity_governance/identity_governance_request_builder'
require_relative './identity_protection/identity_protection_request_builder'
require_relative './identity_providers/identity_providers_request_builder'
require_relative './identity_providers/item/identity_provider_item_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './invitations/invitations_request_builder'
require_relative './invitations/item/invitation_item_request_builder'
require_relative './me/me_request_builder'
require_relative './message_events/item/message_event_item_request_builder'
require_relative './message_events/message_events_request_builder'
require_relative './message_recipients/item/message_recipient_item_request_builder'
require_relative './message_recipients/message_recipients_request_builder'
require_relative './message_traces/item/message_trace_item_request_builder'
require_relative './message_traces/message_traces_request_builder'
require_relative './microsoft_graph_beta'
require_relative './mobility_management_policies/item/mobility_management_policy_item_request_builder'
require_relative './mobility_management_policies/mobility_management_policies_request_builder'
require_relative './monitoring/monitoring_request_builder'
require_relative './oauth2_permission_grants/item/o_auth2_permission_grant_item_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './office_configuration/office_configuration_request_builder'
require_relative './on_premises_publishing_profiles/item/on_premises_publishing_profile_item_request_builder'
require_relative './on_premises_publishing_profiles/on_premises_publishing_profiles_request_builder'
require_relative './organization/item/organization_item_request_builder'
require_relative './organization/organization_request_builder'
require_relative './payload_response/item/payload_response_item_request_builder'
require_relative './payload_response/payload_response_request_builder'
require_relative './permission_grants/item/resource_specific_permission_grant_item_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './places/item/place_item_request_builder'
require_relative './places/places_request_builder'
require_relative './planner/planner_request_builder'
require_relative './policies/policies_request_builder'
require_relative './print/print_request_builder'
require_relative './privacy/privacy_request_builder'
require_relative './privileged_access/item/privileged_access_item_request_builder'
require_relative './privileged_access/privileged_access_request_builder'
require_relative './privileged_approval/item/privileged_approval_item_request_builder'
require_relative './privileged_approval/privileged_approval_request_builder'
require_relative './privileged_operation_events/item/privileged_operation_event_item_request_builder'
require_relative './privileged_operation_events/privileged_operation_events_request_builder'
require_relative './privileged_role_assignment_requests/item/privileged_role_assignment_request_item_request_builder'
require_relative './privileged_role_assignment_requests/privileged_role_assignment_requests_request_builder'
require_relative './privileged_role_assignments/item/privileged_role_assignment_item_request_builder'
require_relative './privileged_role_assignments/privileged_role_assignments_request_builder'
require_relative './privileged_roles/item/privileged_role_item_request_builder'
require_relative './privileged_roles/privileged_roles_request_builder'
require_relative './privileged_signup_status/item/privileged_signup_status_item_request_builder'
require_relative './privileged_signup_status/privileged_signup_status_request_builder'
require_relative './program_controls/item/program_control_item_request_builder'
require_relative './program_controls/program_controls_request_builder'
require_relative './program_control_types/item/program_control_type_item_request_builder'
require_relative './program_control_types/program_control_types_request_builder'
require_relative './programs/item/program_item_request_builder'
require_relative './programs/programs_request_builder'
require_relative './reports/reports_request_builder'
require_relative './risk_detections/item/risk_detection_item_request_builder'
require_relative './risk_detections/risk_detections_request_builder'
require_relative './risky_users/item/risky_user_item_request_builder'
require_relative './risky_users/risky_users_request_builder'
require_relative './role_management/role_management_request_builder'
require_relative './schema_extensions/item/schema_extension_item_request_builder'
require_relative './schema_extensions/schema_extensions_request_builder'
require_relative './scoped_role_memberships/item/scoped_role_membership_item_request_builder'
require_relative './scoped_role_memberships/scoped_role_memberships_request_builder'
require_relative './search/search_request_builder'
require_relative './security/security_request_builder'
require_relative './service_principals/item/service_principal_item_request_builder'
require_relative './service_principals/service_principals_request_builder'
require_relative './settings/item/directory_setting_item_request_builder'
require_relative './settings/settings_request_builder'
require_relative './shares/item/shared_drive_item_item_request_builder'
require_relative './shares/shares_request_builder'
require_relative './sites/item/site_item_request_builder'
require_relative './sites/sites_request_builder'
require_relative './solutions/solutions_request_builder'
require_relative './storage/storage_request_builder'
require_relative './subscribed_skus/item/subscribed_sku_item_request_builder'
require_relative './subscribed_skus/subscribed_skus_request_builder'
require_relative './subscriptions/item/subscription_item_request_builder'
require_relative './subscriptions/subscriptions_request_builder'
require_relative './teams/item/team_item_request_builder'
require_relative './teams/teams_request_builder'
require_relative './teams_templates/item/teams_template_item_request_builder'
require_relative './teams_templates/teams_templates_request_builder'
require_relative './team_template_definition/item/team_template_definition_item_request_builder'
require_relative './team_template_definition/team_template_definition_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './tenant_relationships/tenant_relationships_request_builder'
require_relative './term_store/term_store_request_builder'
require_relative './threat_submission/threat_submission_request_builder'
require_relative './trust_framework/trust_framework_request_builder'
require_relative './users/item/user_item_request_builder'
require_relative './users/users_request_builder'

module MicrosoftGraphBeta
    ## 
    # The main entry point of the SDK, exposes the configuration and the fluent API.
    class MicrosoftGraphBaseServiceClient
        
        ## 
        # Provides operations to manage the collection of accessReviewDecision entities.
        def access_review_decisions()
            return MicrosoftGraphBeta::AccessReviewDecisions::AccessReviewDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of accessReview entities.
        def access_reviews()
            return MicrosoftGraphBeta::AccessReviews::AccessReviewsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of activityStatistics entities.
        def activitystatistics()
            return MicrosoftGraphBeta::Activitystatistics::ActivitystatisticsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the admin singleton.
        def admin()
            return MicrosoftGraphBeta::Admin::AdminRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of administrativeUnit entities.
        def administrative_units()
            return MicrosoftGraphBeta::AdministrativeUnits::AdministrativeUnitsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of agreementAcceptance entities.
        def agreement_acceptances()
            return MicrosoftGraphBeta::AgreementAcceptances::AgreementAcceptancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of agreement entities.
        def agreements()
            return MicrosoftGraphBeta::Agreements::AgreementsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of allowedDataLocation entities.
        def allowed_data_locations()
            return MicrosoftGraphBeta::AllowedDataLocations::AllowedDataLocationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the commsApplication singleton.
        def app()
            return MicrosoftGraphBeta::App::AppRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the appCatalogs singleton.
        def app_catalogs()
            return MicrosoftGraphBeta::AppCatalogs::AppCatalogsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of application entities.
        def applications()
            return MicrosoftGraphBeta::Applications::ApplicationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of applicationTemplate entities.
        def application_templates()
            return MicrosoftGraphBeta::ApplicationTemplates::ApplicationTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of appRoleAssignment entities.
        def app_role_assignments()
            return MicrosoftGraphBeta::AppRoleAssignments::AppRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of approvalWorkflowProvider entities.
        def approval_workflow_providers()
            return MicrosoftGraphBeta::ApprovalWorkflowProviders::ApprovalWorkflowProvidersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the auditLogRoot singleton.
        def audit_logs()
            return MicrosoftGraphBeta::AuditLogs::AuditLogsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of authenticationMethodConfiguration entities.
        def authentication_method_configurations()
            return MicrosoftGraphBeta::AuthenticationMethodConfigurations::AuthenticationMethodConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the authenticationMethodsPolicy singleton.
        def authentication_methods_policy()
            return MicrosoftGraphBeta::AuthenticationMethodsPolicy::AuthenticationMethodsPolicyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of bookingBusiness entities.
        def booking_businesses()
            return MicrosoftGraphBeta::BookingBusinesses::BookingBusinessesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of bookingCurrency entities.
        def booking_currencies()
            return MicrosoftGraphBeta::BookingCurrencies::BookingCurrenciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the organizationalBranding singleton.
        def branding()
            return MicrosoftGraphBeta::Branding::BrandingRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of businessFlowTemplate entities.
        def business_flow_templates()
            return MicrosoftGraphBeta::BusinessFlowTemplates::BusinessFlowTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of certificateBasedAuthConfiguration entities.
        def certificate_based_auth_configuration()
            return MicrosoftGraphBeta::CertificateBasedAuthConfiguration::CertificateBasedAuthConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of chat entities.
        def chats()
            return MicrosoftGraphBeta::Chats::ChatsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of command entities.
        def commands()
            return MicrosoftGraphBeta::Commands::CommandsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the cloudCommunications singleton.
        def communications()
            return MicrosoftGraphBeta::Communications::CommunicationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the compliance singleton.
        def compliance()
            return MicrosoftGraphBeta::Compliance::ComplianceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of externalConnection entities.
        def connections()
            return MicrosoftGraphBeta::Connections::ConnectionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of orgContact entities.
        def contacts()
            return MicrosoftGraphBeta::Contacts::ContactsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of contract entities.
        def contracts()
            return MicrosoftGraphBeta::Contracts::ContractsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the dataClassificationService singleton.
        def data_classification()
            return MicrosoftGraphBeta::DataClassification::DataClassificationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of dataPolicyOperation entities.
        def data_policy_operations()
            return MicrosoftGraphBeta::DataPolicyOperations::DataPolicyOperationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceAppManagement singleton.
        def device_app_management()
            return MicrosoftGraphBeta::DeviceAppManagement::DeviceAppManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceManagement singleton.
        def device_management()
            return MicrosoftGraphBeta::DeviceManagement::DeviceManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of device entities.
        def devices()
            return MicrosoftGraphBeta::Devices::DevicesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the directory singleton.
        def directory()
            return MicrosoftGraphBeta::Directory::DirectoryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryObject entities.
        def directory_objects()
            return MicrosoftGraphBeta::DirectoryObjects::DirectoryObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryRole entities.
        def directory_roles()
            return MicrosoftGraphBeta::DirectoryRoles::DirectoryRolesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directoryRoleTemplate entities.
        def directory_role_templates()
            return MicrosoftGraphBeta::DirectoryRoleTemplates::DirectoryRoleTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directorySettingTemplate entities.
        def directory_setting_templates()
            return MicrosoftGraphBeta::DirectorySettingTemplates::DirectorySettingTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of domainDnsRecord entities.
        def domain_dns_records()
            return MicrosoftGraphBeta::DomainDnsRecords::DomainDnsRecordsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of domain entities.
        def domains()
            return MicrosoftGraphBeta::Domains::DomainsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the drive singleton.
        def drive()
            return MicrosoftGraphBeta::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of drive entities.
        def drives()
            return MicrosoftGraphBeta::Drives::DrivesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the educationRoot singleton.
        def education()
            return MicrosoftGraphBeta::Education::EducationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the employeeExperience singleton.
        def employee_experience()
            return MicrosoftGraphBeta::EmployeeExperience::EmployeeExperienceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the external singleton.
        def external()
            return MicrosoftGraphBeta::External::ExternalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of filterOperatorSchema entities.
        def filter_operators()
            return MicrosoftGraphBeta::FilterOperators::FilterOperatorsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the financials singleton.
        def financials()
            return MicrosoftGraphBeta::Financials::FinancialsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of attributeMappingFunctionSchema entities.
        def functions()
            return MicrosoftGraphBeta::Functions::FunctionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceResource entities.
        def governance_resources()
            return MicrosoftGraphBeta::GovernanceResources::GovernanceResourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceRoleAssignmentRequest entities.
        def governance_role_assignment_requests()
            return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::GovernanceRoleAssignmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceRoleAssignment entities.
        def governance_role_assignments()
            return MicrosoftGraphBeta::GovernanceRoleAssignments::GovernanceRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceRoleDefinition entities.
        def governance_role_definitions()
            return MicrosoftGraphBeta::GovernanceRoleDefinitions::GovernanceRoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceRoleSetting entities.
        def governance_role_settings()
            return MicrosoftGraphBeta::GovernanceRoleSettings::GovernanceRoleSettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of governanceSubject entities.
        def governance_subjects()
            return MicrosoftGraphBeta::GovernanceSubjects::GovernanceSubjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of groupLifecyclePolicy entities.
        def group_lifecycle_policies()
            return MicrosoftGraphBeta::GroupLifecyclePolicies::GroupLifecyclePoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of group entities.
        def groups()
            return MicrosoftGraphBeta::Groups::GroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityContainer singleton.
        def identity()
            return MicrosoftGraphBeta::Identity::IdentityRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityGovernance singleton.
        def identity_governance()
            return MicrosoftGraphBeta::IdentityGovernance::IdentityGovernanceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the identityProtectionRoot singleton.
        def identity_protection()
            return MicrosoftGraphBeta::IdentityProtection::IdentityProtectionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of identityProvider entities.
        def identity_providers()
            return MicrosoftGraphBeta::IdentityProviders::IdentityProvidersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the informationProtection singleton.
        def information_protection()
            return MicrosoftGraphBeta::InformationProtection::InformationProtectionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of invitation entities.
        def invitations()
            return MicrosoftGraphBeta::Invitations::InvitationsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the user singleton.
        def me()
            return MicrosoftGraphBeta::Me::MeRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of messageEvent entities.
        def message_events()
            return MicrosoftGraphBeta::MessageEvents::MessageEventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of messageRecipient entities.
        def message_recipients()
            return MicrosoftGraphBeta::MessageRecipients::MessageRecipientsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of messageTrace entities.
        def message_traces()
            return MicrosoftGraphBeta::MessageTraces::MessageTracesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of mobilityManagementPolicy entities.
        def mobility_management_policies()
            return MicrosoftGraphBeta::MobilityManagementPolicies::MobilityManagementPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the monitoring singleton.
        def monitoring()
            return MicrosoftGraphBeta::Monitoring::MonitoringRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of oAuth2PermissionGrant entities.
        def oauth2_permission_grants()
            return MicrosoftGraphBeta::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the officeConfiguration singleton.
        def office_configuration()
            return MicrosoftGraphBeta::OfficeConfiguration::OfficeConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of onPremisesPublishingProfile entities.
        def on_premises_publishing_profiles()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::OnPremisesPublishingProfilesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of organization entities.
        def organization()
            return MicrosoftGraphBeta::Organization::OrganizationRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of payloadResponse entities.
        def payload_response()
            return MicrosoftGraphBeta::PayloadResponse::PayloadResponseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of resourceSpecificPermissionGrant entities.
        def permission_grants()
            return MicrosoftGraphBeta::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of place entities.
        def places()
            return MicrosoftGraphBeta::Places::PlacesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the planner singleton.
        def planner()
            return MicrosoftGraphBeta::Planner::PlannerRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the policyRoot singleton.
        def policies()
            return MicrosoftGraphBeta::Policies::PoliciesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the print singleton.
        def print()
            return MicrosoftGraphBeta::Print::PrintRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the privacy singleton.
        def privacy()
            return MicrosoftGraphBeta::Privacy::PrivacyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedAccess entities.
        def privileged_access()
            return MicrosoftGraphBeta::PrivilegedAccess::PrivilegedAccessRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedApproval entities.
        def privileged_approval()
            return MicrosoftGraphBeta::PrivilegedApproval::PrivilegedApprovalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedOperationEvent entities.
        def privileged_operation_events()
            return MicrosoftGraphBeta::PrivilegedOperationEvents::PrivilegedOperationEventsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedRoleAssignmentRequest entities.
        def privileged_role_assignment_requests()
            return MicrosoftGraphBeta::PrivilegedRoleAssignmentRequests::PrivilegedRoleAssignmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedRoleAssignment entities.
        def privileged_role_assignments()
            return MicrosoftGraphBeta::PrivilegedRoleAssignments::PrivilegedRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedRole entities.
        def privileged_roles()
            return MicrosoftGraphBeta::PrivilegedRoles::PrivilegedRolesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of privilegedSignupStatus entities.
        def privileged_signup_status()
            return MicrosoftGraphBeta::PrivilegedSignupStatus::PrivilegedSignupStatusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of programControl entities.
        def program_controls()
            return MicrosoftGraphBeta::ProgramControls::ProgramControlsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of programControlType entities.
        def program_control_types()
            return MicrosoftGraphBeta::ProgramControlTypes::ProgramControlTypesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of program entities.
        def programs()
            return MicrosoftGraphBeta::Programs::ProgramsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the reportRoot singleton.
        def reports()
            return MicrosoftGraphBeta::Reports::ReportsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the collection of riskDetection entities.
        def risk_detections()
            return MicrosoftGraphBeta::RiskDetections::RiskDetectionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of riskyUser entities.
        def risky_users()
            return MicrosoftGraphBeta::RiskyUsers::RiskyUsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the roleManagement singleton.
        def role_management()
            return MicrosoftGraphBeta::RoleManagement::RoleManagementRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of schemaExtension entities.
        def schema_extensions()
            return MicrosoftGraphBeta::SchemaExtensions::SchemaExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of scopedRoleMembership entities.
        def scoped_role_memberships()
            return MicrosoftGraphBeta::ScopedRoleMemberships::ScopedRoleMembershipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the searchEntity singleton.
        def search()
            return MicrosoftGraphBeta::Search::SearchRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the security singleton.
        def security()
            return MicrosoftGraphBeta::Security::SecurityRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of servicePrincipal entities.
        def service_principals()
            return MicrosoftGraphBeta::ServicePrincipals::ServicePrincipalsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of directorySetting entities.
        def settings()
            return MicrosoftGraphBeta::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of sharedDriveItem entities.
        def shares()
            return MicrosoftGraphBeta::Shares::SharesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of site entities.
        def sites()
            return MicrosoftGraphBeta::Sites::SitesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the solutionsRoot singleton.
        def solutions()
            return MicrosoftGraphBeta::Solutions::SolutionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the storage singleton.
        def storage()
            return MicrosoftGraphBeta::Storage::StorageRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of subscribedSku entities.
        def subscribed_skus()
            return MicrosoftGraphBeta::SubscribedSkus::SubscribedSkusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of subscription entities.
        def subscriptions()
            return MicrosoftGraphBeta::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of team entities.
        def teams()
            return MicrosoftGraphBeta::Teams::TeamsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of teamsTemplate entities.
        def teams_templates()
            return MicrosoftGraphBeta::TeamsTemplates::TeamsTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of teamTemplateDefinition entities.
        def team_template_definition()
            return MicrosoftGraphBeta::TeamTemplateDefinition::TeamTemplateDefinitionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the teamwork singleton.
        def teamwork()
            return MicrosoftGraphBeta::Teamwork::TeamworkRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the tenantRelationship singleton.
        def tenant_relationships()
            return MicrosoftGraphBeta::TenantRelationships::TenantRelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the store singleton.
        def term_store()
            return MicrosoftGraphBeta::TermStore::TermStoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the threatSubmissionRoot singleton.
        def threat_submission()
            return MicrosoftGraphBeta::ThreatSubmission::ThreatSubmissionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the trustFramework singleton.
        def trust_framework()
            return MicrosoftGraphBeta::TrustFramework::TrustFrameworkRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the collection of user entities.
        def users()
            return MicrosoftGraphBeta::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of accessReviewDecision entities.
        ## @param id Unique identifier of the item
        ## @return a access_review_decision_item_request_builder
        ## 
        def access_review_decisions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReviewDecision%2Did"] = id
            return MicrosoftGraphBeta::AccessReviewDecisions::Item::AccessReviewDecisionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of accessReview entities.
        ## @param id Unique identifier of the item
        ## @return a access_review_item_request_builder
        ## 
        def access_reviews_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReview%2Did"] = id
            return MicrosoftGraphBeta::AccessReviews::Item::AccessReviewItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of activityStatistics entities.
        ## @param id Unique identifier of the item
        ## @return a activity_statistics_item_request_builder
        ## 
        def activitystatistics_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["activityStatistics%2Did"] = id
            return MicrosoftGraphBeta::Activitystatistics::Item::ActivityStatisticsItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of administrativeUnit entities.
        ## @param id Unique identifier of the item
        ## @return a administrative_unit_item_request_builder
        ## 
        def administrative_units_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["administrativeUnit%2Did"] = id
            return MicrosoftGraphBeta::AdministrativeUnits::Item::AdministrativeUnitItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of agreementAcceptance entities.
        ## @param id Unique identifier of the item
        ## @return a agreement_acceptance_item_request_builder
        ## 
        def agreement_acceptances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agreementAcceptance%2Did"] = id
            return MicrosoftGraphBeta::AgreementAcceptances::Item::AgreementAcceptanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of agreement entities.
        ## @param id Unique identifier of the item
        ## @return a agreement_item_request_builder
        ## 
        def agreements_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["agreement%2Did"] = id
            return MicrosoftGraphBeta::Agreements::Item::AgreementItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of allowedDataLocation entities.
        ## @param id Unique identifier of the item
        ## @return a allowed_data_location_item_request_builder
        ## 
        def allowed_data_locations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["allowedDataLocation%2Did"] = id
            return MicrosoftGraphBeta::AllowedDataLocations::Item::AllowedDataLocationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of application entities.
        ## @param id Unique identifier of the item
        ## @return a application_item_request_builder
        ## 
        def applications_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["application%2Did"] = id
            return MicrosoftGraphBeta::Applications::Item::ApplicationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of applicationTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a application_template_item_request_builder
        ## 
        def application_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["applicationTemplate%2Did"] = id
            return MicrosoftGraphBeta::ApplicationTemplates::Item::ApplicationTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of appRoleAssignment entities.
        ## @param id Unique identifier of the item
        ## @return a app_role_assignment_item_request_builder
        ## 
        def app_role_assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["appRoleAssignment%2Did"] = id
            return MicrosoftGraphBeta::AppRoleAssignments::Item::AppRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of approvalWorkflowProvider entities.
        ## @param id Unique identifier of the item
        ## @return a approval_workflow_provider_item_request_builder
        ## 
        def approval_workflow_providers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["approvalWorkflowProvider%2Did"] = id
            return MicrosoftGraphBeta::ApprovalWorkflowProviders::Item::ApprovalWorkflowProviderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of authenticationMethodConfiguration entities.
        ## @param id Unique identifier of the item
        ## @return a authentication_method_configuration_item_request_builder
        ## 
        def authentication_method_configurations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["authenticationMethodConfiguration%2Did"] = id
            return MicrosoftGraphBeta::AuthenticationMethodConfigurations::Item::AuthenticationMethodConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of bookingBusiness entities.
        ## @param id Unique identifier of the item
        ## @return a booking_business_item_request_builder
        ## 
        def booking_businesses_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["bookingBusiness%2Did"] = id
            return MicrosoftGraphBeta::BookingBusinesses::Item::BookingBusinessItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of bookingCurrency entities.
        ## @param id Unique identifier of the item
        ## @return a booking_currency_item_request_builder
        ## 
        def booking_currencies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["bookingCurrency%2Did"] = id
            return MicrosoftGraphBeta::BookingCurrencies::Item::BookingCurrencyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of businessFlowTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a business_flow_template_item_request_builder
        ## 
        def business_flow_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["businessFlowTemplate%2Did"] = id
            return MicrosoftGraphBeta::BusinessFlowTemplates::Item::BusinessFlowTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of certificateBasedAuthConfiguration entities.
        ## @param id Unique identifier of the item
        ## @return a certificate_based_auth_configuration_item_request_builder
        ## 
        def certificate_based_auth_configuration_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["certificateBasedAuthConfiguration%2Did"] = id
            return MicrosoftGraphBeta::CertificateBasedAuthConfiguration::Item::CertificateBasedAuthConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of chat entities.
        ## @param id Unique identifier of the item
        ## @return a chat_item_request_builder
        ## 
        def chats_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["chat%2Did"] = id
            return MicrosoftGraphBeta::Chats::Item::ChatItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of command entities.
        ## @param id Unique identifier of the item
        ## @return a command_item_request_builder
        ## 
        def commands_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["command%2Did"] = id
            return MicrosoftGraphBeta::Commands::Item::CommandItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of externalConnection entities.
        ## @param id Unique identifier of the item
        ## @return a external_connection_item_request_builder
        ## 
        def connections_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["externalConnection%2Did"] = id
            return MicrosoftGraphBeta::Connections::Item::ExternalConnectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new MicrosoftGraphBaseServiceClient and sets the default values.
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(request_adapter)
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @path_parameters = Hash.new
            @url_template = "{+baseurl}"
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
            @request_adapter = request_adapter
            if @request_adapter.get_base_url.nil? || @request_adapter.get_base_url.empty?
                @request_adapter.set_base_url('https://graph.microsoft.com/beta')
            end
            @path_parameters['baseurl'] = @request_adapter.get_base_url
        end
        ## 
        ## Provides operations to manage the collection of orgContact entities.
        ## @param id Unique identifier of the item
        ## @return a org_contact_item_request_builder
        ## 
        def contacts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["orgContact%2Did"] = id
            return MicrosoftGraphBeta::Contacts::Item::OrgContactItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of contract entities.
        ## @param id Unique identifier of the item
        ## @return a contract_item_request_builder
        ## 
        def contracts_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["contract%2Did"] = id
            return MicrosoftGraphBeta::Contracts::Item::ContractItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of dataPolicyOperation entities.
        ## @param id Unique identifier of the item
        ## @return a data_policy_operation_item_request_builder
        ## 
        def data_policy_operations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["dataPolicyOperation%2Did"] = id
            return MicrosoftGraphBeta::DataPolicyOperations::Item::DataPolicyOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of device entities.
        ## @param id Unique identifier of the item
        ## @return a device_item_request_builder
        ## 
        def devices_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["device%2Did"] = id
            return MicrosoftGraphBeta::Devices::Item::DeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryObject entities.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def directory_objects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::DirectoryObjects::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryRole entities.
        ## @param id Unique identifier of the item
        ## @return a directory_role_item_request_builder
        ## 
        def directory_roles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryRole%2Did"] = id
            return MicrosoftGraphBeta::DirectoryRoles::Item::DirectoryRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directoryRoleTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a directory_role_template_item_request_builder
        ## 
        def directory_role_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryRoleTemplate%2Did"] = id
            return MicrosoftGraphBeta::DirectoryRoleTemplates::Item::DirectoryRoleTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directorySettingTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a directory_setting_template_item_request_builder
        ## 
        def directory_setting_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directorySettingTemplate%2Did"] = id
            return MicrosoftGraphBeta::DirectorySettingTemplates::Item::DirectorySettingTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of domainDnsRecord entities.
        ## @param id Unique identifier of the item
        ## @return a domain_dns_record_item_request_builder
        ## 
        def domain_dns_records_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domainDnsRecord%2Did"] = id
            return MicrosoftGraphBeta::DomainDnsRecords::Item::DomainDnsRecordItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of domain entities.
        ## @param id Unique identifier of the item
        ## @return a domain_item_request_builder
        ## 
        def domains_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["domain%2Did"] = id
            return MicrosoftGraphBeta::Domains::Item::DomainItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of drive entities.
        ## @param id Unique identifier of the item
        ## @return a drive_item_request_builder
        ## 
        def drives_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["drive%2Did"] = id
            return MicrosoftGraphBeta::Drives::Item::DriveItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of filterOperatorSchema entities.
        ## @param id Unique identifier of the item
        ## @return a filter_operator_schema_item_request_builder
        ## 
        def filter_operators_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["filterOperatorSchema%2Did"] = id
            return MicrosoftGraphBeta::FilterOperators::Item::FilterOperatorSchemaItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of attributeMappingFunctionSchema entities.
        ## @param id Unique identifier of the item
        ## @return a attribute_mapping_function_schema_item_request_builder
        ## 
        def functions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["attributeMappingFunctionSchema%2Did"] = id
            return MicrosoftGraphBeta::Functions::Item::AttributeMappingFunctionSchemaItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceResource entities.
        ## @param id Unique identifier of the item
        ## @return a governance_resource_item_request_builder
        ## 
        def governance_resources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceResource%2Did"] = id
            return MicrosoftGraphBeta::GovernanceResources::Item::GovernanceResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceRoleAssignmentRequest entities.
        ## @param id Unique identifier of the item
        ## @return a governance_role_assignment_request_item_request_builder
        ## 
        def governance_role_assignment_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceRoleAssignmentRequest%2Did"] = id
            return MicrosoftGraphBeta::GovernanceRoleAssignmentRequests::Item::GovernanceRoleAssignmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceRoleAssignment entities.
        ## @param id Unique identifier of the item
        ## @return a governance_role_assignment_item_request_builder
        ## 
        def governance_role_assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceRoleAssignment%2Did"] = id
            return MicrosoftGraphBeta::GovernanceRoleAssignments::Item::GovernanceRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceRoleDefinition entities.
        ## @param id Unique identifier of the item
        ## @return a governance_role_definition_item_request_builder
        ## 
        def governance_role_definitions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceRoleDefinition%2Did"] = id
            return MicrosoftGraphBeta::GovernanceRoleDefinitions::Item::GovernanceRoleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceRoleSetting entities.
        ## @param id Unique identifier of the item
        ## @return a governance_role_setting_item_request_builder
        ## 
        def governance_role_settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceRoleSetting%2Did"] = id
            return MicrosoftGraphBeta::GovernanceRoleSettings::Item::GovernanceRoleSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of governanceSubject entities.
        ## @param id Unique identifier of the item
        ## @return a governance_subject_item_request_builder
        ## 
        def governance_subjects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["governanceSubject%2Did"] = id
            return MicrosoftGraphBeta::GovernanceSubjects::Item::GovernanceSubjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of groupLifecyclePolicy entities.
        ## @param id Unique identifier of the item
        ## @return a group_lifecycle_policy_item_request_builder
        ## 
        def group_lifecycle_policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["groupLifecyclePolicy%2Did"] = id
            return MicrosoftGraphBeta::GroupLifecyclePolicies::Item::GroupLifecyclePolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of group entities.
        ## @param id Unique identifier of the item
        ## @return a group_item_request_builder
        ## 
        def groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["group%2Did"] = id
            return MicrosoftGraphBeta::Groups::Item::GroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of identityProvider entities.
        ## @param id Unique identifier of the item
        ## @return a identity_provider_item_request_builder
        ## 
        def identity_providers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["identityProvider%2Did"] = id
            return MicrosoftGraphBeta::IdentityProviders::Item::IdentityProviderItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of invitation entities.
        ## @param id Unique identifier of the item
        ## @return a invitation_item_request_builder
        ## 
        def invitations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["invitation%2Did"] = id
            return MicrosoftGraphBeta::Invitations::Item::InvitationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of messageEvent entities.
        ## @param id Unique identifier of the item
        ## @return a message_event_item_request_builder
        ## 
        def message_events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["messageEvent%2Did"] = id
            return MicrosoftGraphBeta::MessageEvents::Item::MessageEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of messageRecipient entities.
        ## @param id Unique identifier of the item
        ## @return a message_recipient_item_request_builder
        ## 
        def message_recipients_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["messageRecipient%2Did"] = id
            return MicrosoftGraphBeta::MessageRecipients::Item::MessageRecipientItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of messageTrace entities.
        ## @param id Unique identifier of the item
        ## @return a message_trace_item_request_builder
        ## 
        def message_traces_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["messageTrace%2Did"] = id
            return MicrosoftGraphBeta::MessageTraces::Item::MessageTraceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of mobilityManagementPolicy entities.
        ## @param id Unique identifier of the item
        ## @return a mobility_management_policy_item_request_builder
        ## 
        def mobility_management_policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["mobilityManagementPolicy%2Did"] = id
            return MicrosoftGraphBeta::MobilityManagementPolicies::Item::MobilityManagementPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of oAuth2PermissionGrant entities.
        ## @param id Unique identifier of the item
        ## @return a o_auth2_permission_grant_item_request_builder
        ## 
        def oauth2_permission_grants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["oAuth2PermissionGrant%2Did"] = id
            return MicrosoftGraphBeta::Oauth2PermissionGrants::Item::OAuth2PermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of onPremisesPublishingProfile entities.
        ## @param id Unique identifier of the item
        ## @return a on_premises_publishing_profile_item_request_builder
        ## 
        def on_premises_publishing_profiles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["onPremisesPublishingProfile%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::OnPremisesPublishingProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of organization entities.
        ## @param id Unique identifier of the item
        ## @return a organization_item_request_builder
        ## 
        def organization_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["organization%2Did"] = id
            return MicrosoftGraphBeta::Organization::Item::OrganizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of payloadResponse entities.
        ## @param id Unique identifier of the item
        ## @return a payload_response_item_request_builder
        ## 
        def payload_response_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["payloadResponse%2Did"] = id
            return MicrosoftGraphBeta::PayloadResponse::Item::PayloadResponseItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of resourceSpecificPermissionGrant entities.
        ## @param id Unique identifier of the item
        ## @return a resource_specific_permission_grant_item_request_builder
        ## 
        def permission_grants_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["resourceSpecificPermissionGrant%2Did"] = id
            return MicrosoftGraphBeta::PermissionGrants::Item::ResourceSpecificPermissionGrantItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of place entities.
        ## @param id Unique identifier of the item
        ## @return a place_item_request_builder
        ## 
        def places_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["place%2Did"] = id
            return MicrosoftGraphBeta::Places::Item::PlaceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedAccess entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_access_item_request_builder
        ## 
        def privileged_access_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedAccess%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedAccess::Item::PrivilegedAccessItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedApproval entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_approval_item_request_builder
        ## 
        def privileged_approval_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedApproval%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedApproval::Item::PrivilegedApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedOperationEvent entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_operation_event_item_request_builder
        ## 
        def privileged_operation_events_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedOperationEvent%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedOperationEvents::Item::PrivilegedOperationEventItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedRoleAssignmentRequest entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_role_assignment_request_item_request_builder
        ## 
        def privileged_role_assignment_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedRoleAssignmentRequest%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedRoleAssignmentRequests::Item::PrivilegedRoleAssignmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedRoleAssignment entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_role_assignment_item_request_builder
        ## 
        def privileged_role_assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedRoleAssignment%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedRoleAssignments::Item::PrivilegedRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedRole entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_role_item_request_builder
        ## 
        def privileged_roles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedRole%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedRoles::Item::PrivilegedRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of privilegedSignupStatus entities.
        ## @param id Unique identifier of the item
        ## @return a privileged_signup_status_item_request_builder
        ## 
        def privileged_signup_status_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["privilegedSignupStatus%2Did"] = id
            return MicrosoftGraphBeta::PrivilegedSignupStatus::Item::PrivilegedSignupStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of programControl entities.
        ## @param id Unique identifier of the item
        ## @return a program_control_item_request_builder
        ## 
        def program_controls_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["programControl%2Did"] = id
            return MicrosoftGraphBeta::ProgramControls::Item::ProgramControlItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of programControlType entities.
        ## @param id Unique identifier of the item
        ## @return a program_control_type_item_request_builder
        ## 
        def program_control_types_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["programControlType%2Did"] = id
            return MicrosoftGraphBeta::ProgramControlTypes::Item::ProgramControlTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of program entities.
        ## @param id Unique identifier of the item
        ## @return a program_item_request_builder
        ## 
        def programs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["program%2Did"] = id
            return MicrosoftGraphBeta::Programs::Item::ProgramItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of riskDetection entities.
        ## @param id Unique identifier of the item
        ## @return a risk_detection_item_request_builder
        ## 
        def risk_detections_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["riskDetection%2Did"] = id
            return MicrosoftGraphBeta::RiskDetections::Item::RiskDetectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of riskyUser entities.
        ## @param id Unique identifier of the item
        ## @return a risky_user_item_request_builder
        ## 
        def risky_users_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["riskyUser%2Did"] = id
            return MicrosoftGraphBeta::RiskyUsers::Item::RiskyUserItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of schemaExtension entities.
        ## @param id Unique identifier of the item
        ## @return a schema_extension_item_request_builder
        ## 
        def schema_extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["schemaExtension%2Did"] = id
            return MicrosoftGraphBeta::SchemaExtensions::Item::SchemaExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of scopedRoleMembership entities.
        ## @param id Unique identifier of the item
        ## @return a scoped_role_membership_item_request_builder
        ## 
        def scoped_role_memberships_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["scopedRoleMembership%2Did"] = id
            return MicrosoftGraphBeta::ScopedRoleMemberships::Item::ScopedRoleMembershipItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of servicePrincipal entities.
        ## @param id Unique identifier of the item
        ## @return a service_principal_item_request_builder
        ## 
        def service_principals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["servicePrincipal%2Did"] = id
            return MicrosoftGraphBeta::ServicePrincipals::Item::ServicePrincipalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of directorySetting entities.
        ## @param id Unique identifier of the item
        ## @return a directory_setting_item_request_builder
        ## 
        def settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directorySetting%2Did"] = id
            return MicrosoftGraphBeta::Settings::Item::DirectorySettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of sharedDriveItem entities.
        ## @param id Unique identifier of the item
        ## @return a shared_drive_item_item_request_builder
        ## 
        def shares_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["sharedDriveItem%2Did"] = id
            return MicrosoftGraphBeta::Shares::Item::SharedDriveItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of site entities.
        ## @param id Unique identifier of the item
        ## @return a site_item_request_builder
        ## 
        def sites_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["site%2Did"] = id
            return MicrosoftGraphBeta::Sites::Item::SiteItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of subscribedSku entities.
        ## @param id Unique identifier of the item
        ## @return a subscribed_sku_item_request_builder
        ## 
        def subscribed_skus_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["subscribedSku%2Did"] = id
            return MicrosoftGraphBeta::SubscribedSkus::Item::SubscribedSkuItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of subscription entities.
        ## @param id Unique identifier of the item
        ## @return a subscription_item_request_builder
        ## 
        def subscriptions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["subscription%2Did"] = id
            return MicrosoftGraphBeta::Subscriptions::Item::SubscriptionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of team entities.
        ## @param id Unique identifier of the item
        ## @return a team_item_request_builder
        ## 
        def teams_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["team%2Did"] = id
            return MicrosoftGraphBeta::Teams::Item::TeamItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of teamsTemplate entities.
        ## @param id Unique identifier of the item
        ## @return a teams_template_item_request_builder
        ## 
        def teams_templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["teamsTemplate%2Did"] = id
            return MicrosoftGraphBeta::TeamsTemplates::Item::TeamsTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of teamTemplateDefinition entities.
        ## @param id Unique identifier of the item
        ## @return a team_template_definition_item_request_builder
        ## 
        def team_template_definition_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["teamTemplateDefinition%2Did"] = id
            return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamTemplateDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of user entities.
        ## @param id Unique identifier of the item
        ## @return a user_item_request_builder
        ## 
        def users_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["user%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::UserItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
    end
end
