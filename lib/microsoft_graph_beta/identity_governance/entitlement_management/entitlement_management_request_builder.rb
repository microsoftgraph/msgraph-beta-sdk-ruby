require 'microsoft_kiota_abstractions'
require_relative '../../models/entitlement_management'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../identity_governance'
require_relative './access_package_assignment_approvals/access_package_assignment_approvals_request_builder'
require_relative './access_package_assignment_approvals/item/approval_item_request_builder'
require_relative './access_package_assignment_policies/access_package_assignment_policies_request_builder'
require_relative './access_package_assignment_policies/item/access_package_assignment_policy_item_request_builder'
require_relative './access_package_assignment_requests/access_package_assignment_requests_request_builder'
require_relative './access_package_assignment_requests/item/access_package_assignment_request_item_request_builder'
require_relative './access_package_assignment_resource_roles/access_package_assignment_resource_roles_request_builder'
require_relative './access_package_assignment_resource_roles/item/access_package_assignment_resource_role_item_request_builder'
require_relative './access_package_assignments/access_package_assignments_request_builder'
require_relative './access_package_assignments/item/access_package_assignment_item_request_builder'
require_relative './access_package_catalogs/access_package_catalogs_request_builder'
require_relative './access_package_catalogs/item/access_package_catalog_item_request_builder'
require_relative './access_package_resource_environments/access_package_resource_environments_request_builder'
require_relative './access_package_resource_environments/item/access_package_resource_environment_item_request_builder'
require_relative './access_package_resource_requests/access_package_resource_requests_request_builder'
require_relative './access_package_resource_requests/item/access_package_resource_request_item_request_builder'
require_relative './access_package_resource_role_scopes/access_package_resource_role_scopes_request_builder'
require_relative './access_package_resource_role_scopes/item/access_package_resource_role_scope_item_request_builder'
require_relative './access_package_resources/access_package_resources_request_builder'
require_relative './access_package_resources/item/access_package_resource_item_request_builder'
require_relative './access_packages/access_packages_request_builder'
require_relative './access_packages/item/access_package_item_request_builder'
require_relative './connected_organizations/connected_organizations_request_builder'
require_relative './connected_organizations/item/connected_organization_item_request_builder'
require_relative './entitlement_management'
require_relative './settings/settings_request_builder'
require_relative './subjects/item/access_package_subject_item_request_builder'
require_relative './subjects/subjects_request_builder'

module MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement
    ## 
    # Provides operations to manage the entitlementManagement property of the microsoft.graph.identityGovernance entity.
    class EntitlementManagementRequestBuilder
        
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
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
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
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the accessPackageAssignmentApprovals property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a approval_item_request_builder
        ## 
        def access_package_assignment_approvals_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["approval%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentApprovals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageAssignmentPolicies property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_assignment_policy_item_request_builder
        ## 
        def access_package_assignment_policies_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageAssignmentPolicy%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentPolicies::Item::AccessPackageAssignmentPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageAssignmentRequests property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_assignment_request_item_request_builder
        ## 
        def access_package_assignment_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageAssignmentRequest%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentRequests::Item::AccessPackageAssignmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageAssignmentResourceRoles property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_assignment_resource_role_item_request_builder
        ## 
        def access_package_assignment_resource_roles_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageAssignmentResourceRole%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignmentResourceRoles::Item::AccessPackageAssignmentResourceRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageAssignments property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_assignment_item_request_builder
        ## 
        def access_package_assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageAssignment%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackageAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageCatalogs property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_catalog_item_request_builder
        ## 
        def access_package_catalogs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageCatalog%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackageCatalogItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageResourceEnvironments property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_resource_environment_item_request_builder
        ## 
        def access_package_resource_environments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageResourceEnvironment%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceEnvironments::Item::AccessPackageResourceEnvironmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageResourceRequests property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_resource_request_item_request_builder
        ## 
        def access_package_resource_requests_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageResourceRequest%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceRequests::Item::AccessPackageResourceRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageResourceRoleScopes property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_resource_role_scope_item_request_builder
        ## 
        def access_package_resource_role_scopes_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageResourceRoleScope%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRoleScopeItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackageResources property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_resource_item_request_builder
        ## 
        def access_package_resources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageResource%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageResources::Item::AccessPackageResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the accessPackages property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_item_request_builder
        ## 
        def access_packages_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackage%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackageItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the connectedOrganizations property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a connected_organization_item_request_builder
        ## 
        def connected_organizations_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["connectedOrganization%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ConnectedOrganizationItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new EntitlementManagementRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/identityGovernance/entitlementManagement{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property entitlementManagement for identityGovernance
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
        ## Get entitlementManagement from identityGovernance
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
        ## Provides operations to manage the subjects property of the microsoft.graph.entitlementManagement entity.
        ## @param id Unique identifier of the item
        ## @return a access_package_subject_item_request_builder
        ## 
        def subjects_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessPackageSubject%2Did"] = id
            return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::Subjects::Item::AccessPackageSubjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property entitlementManagement for identityGovernance
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
        ## Get entitlementManagement from identityGovernance
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
        ## Update the navigation property entitlementManagement in identityGovernance
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
        class EntitlementManagementRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
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
        class EntitlementManagementRequestBuilderGetRequestConfiguration
            
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
        class EntitlementManagementRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
