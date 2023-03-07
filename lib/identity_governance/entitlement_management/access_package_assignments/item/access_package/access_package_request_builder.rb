require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/access_package'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../identity_governance'
require_relative '../../../entitlement_management'
require_relative '../../access_package_assignments'
require_relative '../item'
require_relative './access_package_assignment_policies/access_package_assignment_policies_request_builder'
require_relative './access_package_assignment_policies/item/access_package_assignment_policy_item_request_builder'
require_relative './access_package_catalog/access_package_catalog_request_builder'
require_relative './access_package_resource_role_scopes/access_package_resource_role_scopes_request_builder'
require_relative './access_package_resource_role_scopes/item/access_package_resource_role_scope_item_request_builder'
require_relative './access_packages_incompatible_with/access_packages_incompatible_with_request_builder'
require_relative './access_packages_incompatible_with/item/access_package_item_request_builder'
require_relative './access_package'
require_relative './get_applicable_policy_requirements/get_applicable_policy_requirements_request_builder'
require_relative './incompatible_access_packages/incompatible_access_packages_request_builder'
require_relative './incompatible_access_packages/item/access_package_item_request_builder'
require_relative './incompatible_groups/incompatible_groups_request_builder'
require_relative './incompatible_groups/item/group_item_request_builder'
require_relative './move_to_catalog/move_to_catalog_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageAssignments
                module Item
                    module AccessPackage
                        ## 
                        # Provides operations to manage the accessPackage property of the microsoft.graph.accessPackageAssignment entity.
                        class AccessPackageRequestBuilder
                            
                            ## 
                            # Provides operations to manage the accessPackageAssignmentPolicies property of the microsoft.graph.accessPackage entity.
                            def access_package_assignment_policies()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackageAssignmentPolicies::AccessPackageAssignmentPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the accessPackageCatalog property of the microsoft.graph.accessPackage entity.
                            def access_package_catalog()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackageCatalog::AccessPackageCatalogRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the accessPackageResourceRoleScopes property of the microsoft.graph.accessPackage entity.
                            def access_package_resource_role_scopes()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackageResourceRoleScopes::AccessPackageResourceRoleScopesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the accessPackagesIncompatibleWith property of the microsoft.graph.accessPackage entity.
                            def access_packages_incompatible_with()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackagesIncompatibleWith::AccessPackagesIncompatibleWithRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the getApplicablePolicyRequirements method.
                            def get_applicable_policy_requirements()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::GetApplicablePolicyRequirements::GetApplicablePolicyRequirementsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the incompatibleAccessPackages property of the microsoft.graph.accessPackage entity.
                            def incompatible_access_packages()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::IncompatibleAccessPackages::IncompatibleAccessPackagesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the incompatibleGroups property of the microsoft.graph.accessPackage entity.
                            def incompatible_groups()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::IncompatibleGroups::IncompatibleGroupsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the moveToCatalog method.
                            def move_to_catalog()
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::MoveToCatalog::MoveToCatalogRequestBuilder.new(@path_parameters, @request_adapter)
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
                            ## Provides operations to manage the accessPackageAssignmentPolicies property of the microsoft.graph.accessPackage entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_package_assignment_policy_item_request_builder
                            ## 
                            def access_package_assignment_policies_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessPackageAssignmentPolicy%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackageAssignmentPolicies::Item::AccessPackageAssignmentPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the accessPackageResourceRoleScopes property of the microsoft.graph.accessPackage entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_package_resource_role_scope_item_request_builder
                            ## 
                            def access_package_resource_role_scopes_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessPackageResourceRoleScope%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRoleScopeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the accessPackagesIncompatibleWith property of the microsoft.graph.accessPackage entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_package_item_request_builder
                            ## 
                            def access_packages_incompatible_with_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessPackage%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::AccessPackagesIncompatibleWith::Item::AccessPackageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new AccessPackageRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/identityGovernance/entitlementManagement/accessPackageAssignments/{accessPackageAssignment%2Did}/accessPackage{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Delete navigation property accessPackage for identityGovernance
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
                            ## Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of access_package
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Gets an item from the MicrosoftGraphBeta.identityGovernance.entitlementManagement.accessPackageAssignments.item.accessPackage.incompatibleAccessPackages.item collection
                            ## @param id Unique identifier of the item
                            ## @return a access_package_item_request_builder
                            ## 
                            def incompatible_access_packages_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessPackage%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::IncompatibleAccessPackages::Item::AccessPackageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Gets an item from the MicrosoftGraphBeta.identityGovernance.entitlementManagement.accessPackageAssignments.item.accessPackage.incompatibleGroups.item collection
                            ## @param id Unique identifier of the item
                            ## @return a group_item_request_builder
                            ## 
                            def incompatible_groups_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["group%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackage::IncompatibleGroups::Item::GroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Update the navigation property accessPackage in identityGovernance
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of access_package
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackage.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property accessPackage for identityGovernance
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
                            ## Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
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
                            ## Update the navigation property accessPackage in identityGovernance
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
                            class AccessPackageRequestBuilderDeleteRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                            end

                            ## 
                            # Read-only. Nullable. Supports $filter (eq) on the id property and $expand query parameters.
                            class AccessPackageRequestBuilderGetQueryParameters
                                
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
                            class AccessPackageRequestBuilderGetRequestConfiguration
                                
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
                            class AccessPackageRequestBuilderPatchRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                            end
                        end
                    end
                end
            end
        end
    end
end
