require 'microsoft_kiota_abstractions'
require 'microsoft_kiota_serialization_json'
require_relative './access_review_decisions/access_review_decisions_request_builder'
require_relative './access_reviews/access_reviews_request_builder'
require_relative './activitystatistics/activitystatistics_request_builder'
require_relative './admin/admin_request_builder'
require_relative './administrative_units/administrative_units_request_builder'
require_relative './agreement_acceptances/agreement_acceptances_request_builder'
require_relative './agreements/agreements_request_builder'
require_relative './allowed_data_locations/allowed_data_locations_request_builder'
require_relative './app/app_request_builder'
require_relative './app_catalogs/app_catalogs_request_builder'
require_relative './applications/applications_request_builder'
require_relative './applications_with_app_id/applications_with_app_id_request_builder'
require_relative './applications_with_unique_name/applications_with_unique_name_request_builder'
require_relative './application_templates/application_templates_request_builder'
require_relative './app_role_assignments/app_role_assignments_request_builder'
require_relative './approval_workflow_providers/approval_workflow_providers_request_builder'
require_relative './audit_logs/audit_logs_request_builder'
require_relative './authentication_method_configurations/authentication_method_configurations_request_builder'
require_relative './authentication_methods_policy/authentication_methods_policy_request_builder'
require_relative './booking_businesses/booking_businesses_request_builder'
require_relative './booking_currencies/booking_currencies_request_builder'
require_relative './business_flow_templates/business_flow_templates_request_builder'
require_relative './certificate_based_auth_configuration/certificate_based_auth_configuration_request_builder'
require_relative './chats/chats_request_builder'
require_relative './commands/commands_request_builder'
require_relative './communications/communications_request_builder'
require_relative './compliance/compliance_request_builder'
require_relative './connections/connections_request_builder'
require_relative './contacts/contacts_request_builder'
require_relative './contracts/contracts_request_builder'
require_relative './data_classification/data_classification_request_builder'
require_relative './data_policy_operations/data_policy_operations_request_builder'
require_relative './device_app_management/device_app_management_request_builder'
require_relative './device_local_credentials/device_local_credentials_request_builder'
require_relative './device_management/device_management_request_builder'
require_relative './devices/devices_request_builder'
require_relative './devices_with_device_id/devices_with_device_id_request_builder'
require_relative './directory/directory_request_builder'
require_relative './directory_objects/directory_objects_request_builder'
require_relative './directory_roles/directory_roles_request_builder'
require_relative './directory_roles_with_role_template_id/directory_roles_with_role_template_id_request_builder'
require_relative './directory_role_templates/directory_role_templates_request_builder'
require_relative './directory_setting_templates/directory_setting_templates_request_builder'
require_relative './domain_dns_records/domain_dns_records_request_builder'
require_relative './domains/domains_request_builder'
require_relative './drives/drives_request_builder'
require_relative './education/education_request_builder'
require_relative './employee_experience/employee_experience_request_builder'
require_relative './external/external_request_builder'
require_relative './filter_operators/filter_operators_request_builder'
require_relative './financials/financials_request_builder'
require_relative './functions/functions_request_builder'
require_relative './governance_resources/governance_resources_request_builder'
require_relative './governance_role_assignment_requests/governance_role_assignment_requests_request_builder'
require_relative './governance_role_assignments/governance_role_assignments_request_builder'
require_relative './governance_role_definitions/governance_role_definitions_request_builder'
require_relative './governance_role_settings/governance_role_settings_request_builder'
require_relative './governance_subjects/governance_subjects_request_builder'
require_relative './group_lifecycle_policies/group_lifecycle_policies_request_builder'
require_relative './groups/groups_request_builder'
require_relative './groups_with_unique_name/groups_with_unique_name_request_builder'
require_relative './identity/identity_request_builder'
require_relative './identity_governance/identity_governance_request_builder'
require_relative './identity_protection/identity_protection_request_builder'
require_relative './identity_providers/identity_providers_request_builder'
require_relative './information_protection/information_protection_request_builder'
require_relative './invitations/invitations_request_builder'
require_relative './message_events/message_events_request_builder'
require_relative './message_recipients/message_recipients_request_builder'
require_relative './message_traces/message_traces_request_builder'
require_relative './microsoft_graph_beta'
require_relative './mobility_management_policies/mobility_management_policies_request_builder'
require_relative './monitoring/monitoring_request_builder'
require_relative './network_access/network_access_request_builder'
require_relative './oauth2_permission_grants/oauth2_permission_grants_request_builder'
require_relative './on_premises_publishing_profiles/on_premises_publishing_profiles_request_builder'
require_relative './organization/organization_request_builder'
require_relative './payload_response/payload_response_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './places/places_request_builder'
require_relative './places_with_place_id/places_with_place_id_request_builder'
require_relative './planner/planner_request_builder'
require_relative './policies/policies_request_builder'
require_relative './print/print_request_builder'
require_relative './privacy/privacy_request_builder'
require_relative './privileged_access/privileged_access_request_builder'
require_relative './privileged_approval/privileged_approval_request_builder'
require_relative './privileged_operation_events/privileged_operation_events_request_builder'
require_relative './privileged_role_assignment_requests/privileged_role_assignment_requests_request_builder'
require_relative './privileged_role_assignments/privileged_role_assignments_request_builder'
require_relative './privileged_roles/privileged_roles_request_builder'
require_relative './privileged_signup_status/privileged_signup_status_request_builder'
require_relative './program_controls/program_controls_request_builder'
require_relative './program_control_types/program_control_types_request_builder'
require_relative './programs/programs_request_builder'
require_relative './reports/reports_request_builder'
require_relative './risk_detections/risk_detections_request_builder'
require_relative './risky_users/risky_users_request_builder'
require_relative './role_management/role_management_request_builder'
require_relative './schema_extensions/schema_extensions_request_builder'
require_relative './scoped_role_memberships/scoped_role_memberships_request_builder'
require_relative './search/search_request_builder'
require_relative './security/security_request_builder'
require_relative './service_principals/service_principals_request_builder'
require_relative './service_principals_with_app_id/service_principals_with_app_id_request_builder'
require_relative './settings/settings_request_builder'
require_relative './shares/shares_request_builder'
require_relative './sites/sites_request_builder'
require_relative './solutions/solutions_request_builder'
require_relative './subscribed_skus/subscribed_skus_request_builder'
require_relative './subscriptions/subscriptions_request_builder'
require_relative './teams/teams_request_builder'
require_relative './teams_templates/teams_templates_request_builder'
require_relative './team_template_definition/team_template_definition_request_builder'
require_relative './teamwork/teamwork_request_builder'
require_relative './tenant_relationships/tenant_relationships_request_builder'
require_relative './term_store/term_store_request_builder'
require_relative './threat_submission/threat_submission_request_builder'
require_relative './trust_framework/trust_framework_request_builder'
require_relative './users/users_request_builder'
require_relative './workplace/workplace_request_builder'

module MicrosoftGraphBeta
    ## 
    # The main entry point of the SDK, exposes the configuration and the fluent API.
    class GraphBaseServiceClient < MicrosoftKiotaAbstractions::BaseRequestBuilder
        
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
        # Provides operations to manage the collection of deviceLocalCredentialInfo entities.
        def device_local_credentials()
            return MicrosoftGraphBeta::DeviceLocalCredentials::DeviceLocalCredentialsRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Provides operations to manage the networkAccessRoot singleton.
        def network_access()
            return MicrosoftGraphBeta::NetworkAccess::NetworkAccessRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the collection of oAuth2PermissionGrant entities.
        def oauth2_permission_grants()
            return MicrosoftGraphBeta::Oauth2PermissionGrants::Oauth2PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
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
        # The places property
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
        # Provides operations to manage the collection of user entities.
        def users()
            return MicrosoftGraphBeta::Users::UsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the workplace singleton.
        def workplace()
            return MicrosoftGraphBeta::Workplace::WorkplaceRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the collection of application entities.
        ## @param app_id Alternate key of application
        ## @return a applications_with_app_id_request_builder
        ## 
        def applications_with_app_id(app_id)
            raise StandardError, 'app_id cannot be null' if app_id.nil?
            return ApplicationsWithAppIdRequestBuilder.new(@path_parameters, @request_adapter, appId)
        end
        ## 
        ## Provides operations to manage the collection of application entities.
        ## @param unique_name Alternate key of application
        ## @return a applications_with_unique_name_request_builder
        ## 
        def applications_with_unique_name(unique_name)
            raise StandardError, 'unique_name cannot be null' if unique_name.nil?
            return ApplicationsWithUniqueNameRequestBuilder.new(@path_parameters, @request_adapter, uniqueName)
        end
        ## 
        ## Instantiates a new GraphBaseServiceClient and sets the default values.
        ## @param request_adapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(request_adapter)
            super(Hash.new, request_adapter, "{+baseurl}")
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_serializer(MicrosoftKiotaSerializationJson::JsonSerializationWriterFactory)
            MicrosoftKiotaAbstractions::ApiClientBuilder.register_default_deserializer(MicrosoftKiotaSerializationJson::JsonParseNodeFactory)
            if @request_adapter.get_base_url.nil? || @request_adapter.get_base_url.empty?
                @request_adapter.set_base_url('https://graph.microsoft.com/beta')
            end
            @path_parameters['baseurl'] = @request_adapter.get_base_url
        end
        ## 
        ## Provides operations to manage the collection of device entities.
        ## @param device_id Alternate key of device
        ## @return a devices_with_device_id_request_builder
        ## 
        def devices_with_device_id(device_id)
            raise StandardError, 'device_id cannot be null' if device_id.nil?
            return DevicesWithDeviceIdRequestBuilder.new(@path_parameters, @request_adapter, deviceId)
        end
        ## 
        ## Provides operations to manage the collection of directoryRole entities.
        ## @param role_template_id Alternate key of directoryRole
        ## @return a directory_roles_with_role_template_id_request_builder
        ## 
        def directory_roles_with_role_template_id(role_template_id)
            raise StandardError, 'role_template_id cannot be null' if role_template_id.nil?
            return DirectoryRolesWithRoleTemplateIdRequestBuilder.new(@path_parameters, @request_adapter, roleTemplateId)
        end
        ## 
        ## Provides operations to manage the collection of group entities.
        ## @param unique_name Alternate key of group
        ## @return a groups_with_unique_name_request_builder
        ## 
        def groups_with_unique_name(unique_name)
            raise StandardError, 'unique_name cannot be null' if unique_name.nil?
            return GroupsWithUniqueNameRequestBuilder.new(@path_parameters, @request_adapter, uniqueName)
        end
        ## 
        ## Provides operations to manage the collection of place entities.
        ## @param place_id Alternate key of place
        ## @return a places_with_place_id_request_builder
        ## 
        def places_with_place_id(place_id)
            raise StandardError, 'place_id cannot be null' if place_id.nil?
            return PlacesWithPlaceIdRequestBuilder.new(@path_parameters, @request_adapter, placeId)
        end
        ## 
        ## Provides operations to manage the collection of servicePrincipal entities.
        ## @param app_id Alternate key of servicePrincipal
        ## @return a service_principals_with_app_id_request_builder
        ## 
        def service_principals_with_app_id(app_id)
            raise StandardError, 'app_id cannot be null' if app_id.nil?
            return ServicePrincipalsWithAppIdRequestBuilder.new(@path_parameters, @request_adapter, appId)
        end
    end
end
