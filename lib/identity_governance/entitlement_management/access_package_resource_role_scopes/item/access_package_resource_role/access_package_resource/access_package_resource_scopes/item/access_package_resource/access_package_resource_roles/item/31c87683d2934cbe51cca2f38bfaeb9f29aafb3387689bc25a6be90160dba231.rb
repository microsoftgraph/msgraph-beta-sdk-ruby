require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../models/access_package_resource_role'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../access_package_resource_role_scopes'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_package_resource_role'
require_relative '../../../../../access_package_resource'
require_relative '../../../../access_package_resource_scopes'
require_relative '../../../item'
require_relative '../../access_package_resource'
require_relative '../86694b197d2019ee993a02912752b58d9f4660150cbf8ae57b614a3f6be60045'
require_relative './4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageResourceRoleScopes
                module Item
                    module AccessPackageResourceRole
                        module AccessPackageResource
                            module AccessPackageResourceScopes
                                module Item
                                    module AccessPackageResource
                                        module AccessPackageResourceRoles
                                            module Item
                                                ## 
                                                # Provides operations to manage the accessPackageResourceRoles property of the microsoft.graph.accessPackageResource entity.
                                                class AccessPackageResourceRoleItemRequestBuilder
                                                    
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
                                                    ## Instantiates a new AccessPackageResourceRoleItemRequestBuilder and sets the default values.
                                                    ## @param pathParameters Path parameters for the request
                                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                        @url_template = "{+baseurl}/identityGovernance/entitlementManagement/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceRole/accessPackageResource/accessPackageResourceScopes/{accessPackageResourceScope%2Did}/accessPackageResource/accessPackageResourceRoles/{accessPackageResourceRole%2Did}{?%24select,%24expand}"
                                                        @request_adapter = request_adapter
                                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                    end
                                                    ## 
                                                    ## Delete navigation property accessPackageResourceRoles for identityGovernance
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
                                                    ## Read-only. Nullable. Supports $expand.
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of access_package_resource_role
                                                    ## 
                                                    def get(request_configuration=nil)
                                                        request_info = self.to_get_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Update the navigation property accessPackageResourceRoles in identityGovernance
                                                    ## @param body The request body
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of access_package_resource_role
                                                    ## 
                                                    def patch(body, request_configuration=nil)
                                                        raise StandardError, 'body cannot be null' if body.nil?
                                                        request_info = self.to_patch_request_information(
                                                            body, request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Delete navigation property accessPackageResourceRoles for identityGovernance
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
                                                    ## Read-only. Nullable. Supports $expand.
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
                                                    ## Update the navigation property accessPackageResourceRoles in identityGovernance
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
                                                    class AccessPackageResourceRoleItemRequestBuilderDeleteRequestConfiguration
                                                        
                                                        ## 
                                                        # Request headers
                                                        attr_accessor :headers
                                                        ## 
                                                        # Request options
                                                        attr_accessor :options
                                                    end

                                                    ## 
                                                    # Read-only. Nullable. Supports $expand.
                                                    class AccessPackageResourceRoleItemRequestBuilderGetQueryParameters
                                                        
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
                                                    class AccessPackageResourceRoleItemRequestBuilderGetRequestConfiguration
                                                        
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
                                                    class AccessPackageResourceRoleItemRequestBuilderPatchRequestConfiguration
                                                        
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
