require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/access_package_assignment_resource_role'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../identity_governance'
require_relative '../../../../entitlement_management'
require_relative '../../../access_package_assignments'
require_relative '../../item'
require_relative '../access_package_assignment_resource_roles'
require_relative './access_package_assignments/access_package_assignments_request_builder'
require_relative './access_package_resource_role/access_package_resource_role_request_builder'
require_relative './access_package_resource_scope/access_package_resource_scope_request_builder'
require_relative './access_package_subject/access_package_subject_request_builder'
require_relative './item'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageAssignments
                module Item
                    module AccessPackageAssignmentResourceRoles
                        module Item
                            ## 
                            # Provides operations to manage the accessPackageAssignmentResourceRoles property of the microsoft.graph.accessPackageAssignment entity.
                            class AccessPackageAssignmentResourceRoleItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the accessPackageAssignments property of the microsoft.graph.accessPackageAssignmentResourceRole entity.
                                def access_package_assignments()
                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackageAssignmentResourceRoles::Item::AccessPackageAssignments::AccessPackageAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the accessPackageResourceRole property of the microsoft.graph.accessPackageAssignmentResourceRole entity.
                                def access_package_resource_role()
                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackageAssignmentResourceRoles::Item::AccessPackageResourceRole::AccessPackageResourceRoleRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the accessPackageResourceScope property of the microsoft.graph.accessPackageAssignmentResourceRole entity.
                                def access_package_resource_scope()
                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackageAssignmentResourceRoles::Item::AccessPackageResourceScope::AccessPackageResourceScopeRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the accessPackageSubject property of the microsoft.graph.accessPackageAssignmentResourceRole entity.
                                def access_package_subject()
                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageAssignments::Item::AccessPackageAssignmentResourceRoles::Item::AccessPackageSubject::AccessPackageSubjectRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new AccessPackageAssignmentResourceRoleItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageAssignments/{accessPackageAssignment%2Did}/accessPackageAssignmentResourceRoles/{accessPackageAssignmentResourceRole%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete navigation property accessPackageAssignmentResourceRoles for identityGovernance
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
                                ## The resource roles delivered to the target user for this assignment. Read-only. Nullable.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_package_assignment_resource_role
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentResourceRole.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the navigation property accessPackageAssignmentResourceRoles in identityGovernance
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_package_assignment_resource_role
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageAssignmentResourceRole.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property accessPackageAssignmentResourceRoles for identityGovernance
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
                                ## The resource roles delivered to the target user for this assignment. Read-only. Nullable.
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
                                ## Update the navigation property accessPackageAssignmentResourceRoles in identityGovernance
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
                                # The resource roles delivered to the target user for this assignment. Read-only. Nullable.
                                class AccessPackageAssignmentResourceRoleItemRequestBuilderGetQueryParameters
                                    
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
            end
        end
    end
end
