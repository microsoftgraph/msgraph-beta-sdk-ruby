require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/entitlement_management'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../identity_governance'
require_relative './access_package_assignment_approvals/access_package_assignment_approvals_request_builder'
require_relative './access_package_assignment_policies/access_package_assignment_policies_request_builder'
require_relative './access_package_assignment_requests/access_package_assignment_requests_request_builder'
require_relative './access_package_assignment_resource_roles/access_package_assignment_resource_roles_request_builder'
require_relative './access_package_assignments/access_package_assignments_request_builder'
require_relative './access_package_catalogs/access_package_catalogs_request_builder'
require_relative './access_package_resource_environments/access_package_resource_environments_request_builder'
require_relative './access_package_resource_requests/access_package_resource_requests_request_builder'
require_relative './access_package_resource_role_scopes/access_package_resource_role_scopes_request_builder'
require_relative './access_package_resources/access_package_resources_request_builder'
require_relative './access_packages/access_packages_request_builder'
require_relative './connected_organizations/connected_organizations_request_builder'
require_relative './entitlement_management'
require_relative './settings/settings_request_builder'
require_relative './subjects/subjects_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            ## 
            # Provides operations to manage the entitlementManagement property of the microsoft.graph.identityGovernance entity.
            class EntitlementManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignment_approvals()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::AccessPackageAssignmentApprovalsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageAssignmentPolicies property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignment_policies()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentPolicies::AccessPackageAssignmentPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageAssignmentRequests property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignment_requests()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentRequests::AccessPackageAssignmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageAssignmentResourceRoles property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignment_resource_roles()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentResourceRoles::AccessPackageAssignmentResourceRolesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageAssignments property of the microsoft.graph.entitlementManagement entity.
                def access_package_assignments()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::AccessPackageAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageCatalogs property of the microsoft.graph.entitlementManagement entity.
                def access_package_catalogs()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::AccessPackageCatalogsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageResourceEnvironments property of the microsoft.graph.entitlementManagement entity.
                def access_package_resource_environments()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceEnvironments::AccessPackageResourceEnvironmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageResourceRequests property of the microsoft.graph.entitlementManagement entity.
                def access_package_resource_requests()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceRequests::AccessPackageResourceRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageResourceRoleScopes property of the microsoft.graph.entitlementManagement entity.
                def access_package_resource_role_scopes()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceRoleScopes::AccessPackageResourceRoleScopesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackageResources property of the microsoft.graph.entitlementManagement entity.
                def access_package_resources()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResources::AccessPackageResourcesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the accessPackages property of the microsoft.graph.entitlementManagement entity.
                def access_packages()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackages::AccessPackagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the connectedOrganizations property of the microsoft.graph.entitlementManagement entity.
                def connected_organizations()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::ConnectedOrganizationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.entitlementManagement entity.
                def settings()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the subjects property of the microsoft.graph.entitlementManagement entity.
                def subjects()
                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::Subjects::SubjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new EntitlementManagementRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property entitlementManagement for identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get entitlementManagement from identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of entitlement_management
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EntitlementManagement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property entitlementManagement in identityGovernance
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of entitlement_management
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EntitlementManagement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property entitlementManagement for identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Get entitlementManagement from identityGovernance
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## Update the navigation property entitlementManagement in identityGovernance
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    return request_info
                end

                ## 
                # Get entitlementManagement from identityGovernance
                class EntitlementManagementRequestBuilderGetQueryParameters
                    
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
