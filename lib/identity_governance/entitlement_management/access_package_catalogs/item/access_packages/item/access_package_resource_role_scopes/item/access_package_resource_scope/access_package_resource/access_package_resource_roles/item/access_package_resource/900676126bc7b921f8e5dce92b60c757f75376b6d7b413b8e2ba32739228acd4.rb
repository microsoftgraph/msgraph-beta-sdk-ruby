require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../models/access_package_resource'
require_relative '../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../../../access_package_catalogs'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../access_packages'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_package_resource_role_scopes'
require_relative '../../../../../item'
require_relative '../../../../access_package_resource_scope'
require_relative '../../../access_package_resource'
require_relative '../../86694b197d2019ee993a02912752b58d9f4660150cbf8ae57b614a3f6be60045'
require_relative '../4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'
require_relative './8f1d1d55ce127c61c49ac2b115bd1e2c0f470e5676812523112fadfd114e4eff'
require_relative './access_package_resource_environment/ea7e4dc7cd32328daa97e583bdda90b4bab1b00b8379e8151ed392cf62cc8742'
require_relative './access_package_resource_scopes/513eb671abe19e9564ac09b352f809976977fe0d70a1cfdf769b7f28546127a9'
require_relative './access_package_resource_scopes/item/67d8a7fc688417e1cdacc04b15d8f8523abd0e3793593b0f359b25d6696b3813'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageCatalogs
                module Item
                    module AccessPackages
                        module Item
                            module AccessPackageResourceRoleScopes
                                module Item
                                    module AccessPackageResourceScope
                                        module AccessPackageResource
                                            module AccessPackageResourceRoles
                                                module Item
                                                    module AccessPackageResource
                                                        ## 
                                                        # Provides operations to manage the accessPackageResource property of the microsoft.graph.accessPackageResourceRole entity.
                                                        class AccessPackageResourceRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            # Provides operations to manage the accessPackageResourceEnvironment property of the microsoft.graph.accessPackageResource entity.
                                                            def access_package_resource_environment()
                                                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceScope::AccessPackageResource::AccessPackageResourceRoles::Item::AccessPackageResource::AccessPackageResourceEnvironment::AccessPackageResourceEnvironmentRequestBuilder.new(@path_parameters, @request_adapter)
                                                            end
                                                            ## 
                                                            # Provides operations to manage the accessPackageResourceScopes property of the microsoft.graph.accessPackageResource entity.
                                                            def access_package_resource_scopes()
                                                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceScope::AccessPackageResource::AccessPackageResourceRoles::Item::AccessPackageResource::AccessPackageResourceScopes::AccessPackageResourceScopesRequestBuilder.new(@path_parameters, @request_adapter)
                                                            end
                                                            ## 
                                                            ## Provides operations to manage the accessPackageResourceScopes property of the microsoft.graph.accessPackageResource entity.
                                                            ## @param id Unique identifier of the item
                                                            ## @return a access_package_resource_scope_item_request_builder
                                                            ## 
                                                            def access_package_resource_scopes_by_id(id)
                                                                raise StandardError, 'id cannot be null' if id.nil?
                                                                url_tpl_params = @path_parameters.clone
                                                                url_tpl_params["accessPackageResourceScope%2Did"] = id
                                                                return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceScope::AccessPackageResource::AccessPackageResourceRoles::Item::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResourceScopeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                            end
                                                            ## 
                                                            ## Instantiates a new AccessPackageResourceRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceScope/accessPackageResource/accessPackageResourceRoles/{accessPackageResourceRole%2Did}/accessPackageResource{?%24select,%24expand}")
                                                            end
                                                            ## 
                                                            ## Delete navigation property accessPackageResource for identityGovernance
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
                                                            ## Get accessPackageResource from identityGovernance
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource
                                                            ## 
                                                            def get(request_configuration=nil)
                                                                request_info = self.to_get_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Update the navigation property accessPackageResource in identityGovernance
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of access_package_resource
                                                            ## 
                                                            def patch(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_patch_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResource.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Delete navigation property accessPackageResource for identityGovernance
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
                                                            ## Get accessPackageResource from identityGovernance
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
                                                            ## Update the navigation property accessPackageResource in identityGovernance
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
                                                            # Get accessPackageResource from identityGovernance
                                                            class AccessPackageResourceRequestBuilderGetQueryParameters
                                                                
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
