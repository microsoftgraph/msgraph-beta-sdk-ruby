require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../models/access_package_resource_environment'
require_relative '../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../access_package_catalogs'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_packages'
require_relative '../../../../../item'
require_relative '../../../../access_package_resource_role_scopes'
require_relative '../../../item'
require_relative '../../access_package_resource_role'
require_relative '../access_package_resource'
require_relative './0fe6d2558623feb11e305d850dc38f321cd9f58c754883283e4c90bbd2799e05'

module MicrosoftGraphBeta
    module IdentityGovernance
        module EntitlementManagement
            module AccessPackageCatalogs
                module Item
                    module AccessPackages
                        module Item
                            module AccessPackageResourceRoleScopes
                                module Item
                                    module AccessPackageResourceRole
                                        module AccessPackageResource
                                            module AccessPackageResourceEnvironment
                                                ## 
                                                # Provides operations to manage the accessPackageResourceEnvironment property of the microsoft.graph.accessPackageResource entity.
                                                class AccessPackageResourceEnvironmentRequestBuilder
                                                    
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
                                                    ## Instantiates a new AccessPackageResourceEnvironmentRequestBuilder and sets the default values.
                                                    ## @param pathParameters Path parameters for the request
                                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                                    ## @return a void
                                                    ## 
                                                    def initialize(path_parameters, request_adapter)
                                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                        @url_template = "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceRole/accessPackageResource/accessPackageResourceEnvironment{?%24select,%24expand}"
                                                        @request_adapter = request_adapter
                                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                    end
                                                    ## 
                                                    ## Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
                                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                    ## @return a Fiber of access_package_resource_environment
                                                    ## 
                                                    def get(request_configuration=nil)
                                                        request_info = self.to_get_request_information(
                                                            request_configuration
                                                        )
                                                        error_mapping = Hash.new
                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceEnvironment.create_from_discriminator_value(pn) }, error_mapping)
                                                    end
                                                    ## 
                                                    ## Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
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
                                                    # Contains the environment information for the resource. This can be set using either the @odata.bind annotation or the environment's originId.Supports $expand.
                                                    class AccessPackageResourceEnvironmentRequestBuilderGetQueryParameters
                                                        
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
                                                    class AccessPackageResourceEnvironmentRequestBuilderGetRequestConfiguration
                                                        
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
