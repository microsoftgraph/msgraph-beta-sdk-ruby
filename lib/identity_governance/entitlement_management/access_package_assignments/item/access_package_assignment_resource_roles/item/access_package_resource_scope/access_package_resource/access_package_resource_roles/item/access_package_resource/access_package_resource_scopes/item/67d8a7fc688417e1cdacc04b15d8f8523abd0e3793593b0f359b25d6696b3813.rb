require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../models/access_package_resource_scope'
require_relative '../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../../../access_package_assignments'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../access_package_assignment_resource_roles'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_package_resource_scope'
require_relative '../../../../../access_package_resource'
require_relative '../../../../86694b197d2019ee993a02912752b58d9f4660150cbf8ae57b614a3f6be60045'
require_relative '../../../item'
require_relative '../../8f1d1d55ce127c61c49ac2b115bd1e2c0f470e5676812523112fadfd114e4eff'
require_relative '../3166e3c6d6b998ba3ba459edce9d6a4ef37dc254fda2753fd13926697d752ff5'
require_relative './4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageAssignments
                module Item
                    module AccessPackageAssignmentResourceRoles
                        module Item
                            module AccessPackageResourceScope
                                module AccessPackageResource
                                    module AccessPackageResourceRoles
                                        module Item
                                            module AccessPackageResource
                                                module AccessPackageResourceScopes
                                                    module Item
                                                        ## 
                                                        # Provides operations to manage the accessPackageResourceScopes property of the microsoft.graph.accessPackageResource entity.
                                                        class AccessPackageResourceScopeItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            ## Instantiates a new AccessPackageResourceScopeItemRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageAssignments/{accessPackageAssignment%2Did}/accessPackageAssignmentResourceRoles/{accessPackageAssignmentResourceRole%2Did}/accessPackageResourceScope/accessPackageResource/accessPackageResourceRoles/{accessPackageResourceRole%2Did}/accessPackageResource/accessPackageResourceScopes/{accessPackageResourceScope%2Did}{?%24expand,%24select}")
                                                            end
                                                            ## 
                                                            ## Delete navigation property accessPackageResourceScopes for identityGovernance
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of void
                                                            ## 
                                                            def delete(request_configuration=nil)
                                                                request_info = self.to_delete_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                                            end
                                                            ## 
                                                            ## Read-only. Nullable. Supports $expand.
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource_scope
                                                            ## 
                                                            def get(request_configuration=nil)
                                                                request_info = self.to_get_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Update the navigation property accessPackageResourceScopes in identityGovernance
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource_scope
                                                            ## 
                                                            def patch(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_patch_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceScope.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Delete navigation property accessPackageResourceScopes for identityGovernance
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
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Read-only. Nullable. Supports $expand.
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
                                                            ## Update the navigation property accessPackageResourceScopes in identityGovernance
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
                                                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :PATCH
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                            ## @param raw_url The raw URL to use for the request builder.
                                                            ## @return a access_package_resource_scope_item_request_builder
                                                            ## 
                                                            def with_url(raw_url)
                                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                return AccessPackageResourceScopeItemRequestBuilder.new(raw_url, @request_adapter)
                                                            end

                                                            ## 
                                                            # Read-only. Nullable. Supports $expand.
                                                            class AccessPackageResourceScopeItemRequestBuilderGetQueryParameters
                                                                
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
                        end
                    end
                end
            end
        end
    end
end
