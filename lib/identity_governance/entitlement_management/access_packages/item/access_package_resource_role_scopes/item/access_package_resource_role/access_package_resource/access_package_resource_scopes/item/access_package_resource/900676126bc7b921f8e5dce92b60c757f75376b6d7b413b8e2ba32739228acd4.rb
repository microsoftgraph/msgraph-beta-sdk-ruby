require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../models/access_package_resource'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../access_packages'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_package_resource_role_scopes'
require_relative '../../../../../item'
require_relative '../../../../access_package_resource_role'
require_relative '../../../access_package_resource'
require_relative '../../access_package_resource_scopes'
require_relative '../item'
require_relative './8f1d1d55ce127c61c49ac2b115bd1e2c0f470e5676812523112fadfd114e4eff'
require_relative './access_package_resource_environment/ea7e4dc7cd32328daa97e583bdda90b4bab1b00b8379e8151ed392cf62cc8742'
require_relative './access_package_resource_roles/9242dc529c9204382dcda1ea2c9b4fa938719df9926ca3616dc9f98742ce4af8'
require_relative './access_package_resource_roles/item/31c87683d2934cbe51cca2f38bfaeb9f29aafb3387689bc25a6be90160dba231'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackages
                module Item
                    module AccessPackageResourceRoleScopes
                        module Item
                            module AccessPackageResourceRole
                                module AccessPackageResource
                                    module AccessPackageResourceScopes
                                        module Item
                                            module AccessPackageResource
                                                ## 
                                                # Provides operations to manage the accessPackageResource property of the microsoft.graph.accessPackageResourceScope entity.
                                                class AccessPackageResourceRequestBuilder
                                                    
                                                    ## 
                                                    # Provides operations to manage the accessPackageResourceEnvironment property of the microsoft.graph.accessPackageResource entity.
                                                    def access_package_resource_environment()
                                                        return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRole::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResource::AccessPackageResourceEnvironment::AccessPackageResourceEnvironmentRequestBuilder.new(@path_parameters, @request_adapter)
                                                    end
                                                    ## 
                                                    # Provides operations to manage the accessPackageResourceRoles property of the microsoft.graph.accessPackageResource entity.
                                                    def access_package_resource_roles()
                                                        return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRole::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResource::AccessPackageResourceRoles::AccessPackageResourceRolesRequestBuilder.new(@path_parameters, @request_adapter)
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
                                                    ## Provides operations to manage the accessPackageResourceRoles property of the microsoft.graph.accessPackageResource entity.
                                                    ## @param id Unique identifier of the item
                                                    ## @return a access_package_resource_role_item_request_builder
                                                    ## 
                                                    def access_package_resource_roles_by_id(id)
                                                        raise StandardError, 'id cannot be null' if id.nil?
                                                        url_tpl_params = @path_parameters.clone
                                                        url_tpl_params["accessPackageResourceRole%2Did"] = id
                                                        return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRole::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResource::AccessPackageResourceRoles::Item::AccessPackageResourceRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                    end
                                                    ## 
                                                    ## Instantiates a new AccessPackageResourceRequestBuilder and sets the default values.
                                                    ## @param pathParameters Path parameters for the request
                                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                        @url_template = "{+baseurl}/identityGovernance/entitlementManagement/accessPackages/{accessPackage%2Did}/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceRole/accessPackageResource/accessPackageResourceScopes/{accessPackageResourceScope%2Did}/accessPackageResource{?%24select,%24expand}"
                                                        @request_adapter = request_adapter
                                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                    end
                                                    ## 
                                                    ## Delete navigation property accessPackageResource for identityGovernance
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
                                                    ## Get accessPackageResource from identityGovernance
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                                    ## Get accessPackageResource from identityGovernance
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
                                                    ## Update the navigation property accessPackageResource in identityGovernance
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
                                                    class AccessPackageResourceRequestBuilderDeleteRequestConfiguration
                                                        
                                                        ## 
                                                        # Request headers
                                                        attr_accessor :headers
                                                        ## 
                                                        # Request options
                                                        attr_accessor :options
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
                                                    class AccessPackageResourceRequestBuilderGetRequestConfiguration
                                                        
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
                                                    class AccessPackageResourceRequestBuilderPatchRequestConfiguration
                                                        
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
                    end
                end
            end
        end
    end
end
