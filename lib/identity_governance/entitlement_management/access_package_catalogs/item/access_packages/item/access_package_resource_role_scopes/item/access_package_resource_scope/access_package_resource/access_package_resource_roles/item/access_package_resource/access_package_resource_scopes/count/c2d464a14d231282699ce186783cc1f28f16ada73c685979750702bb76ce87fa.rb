require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../../../../../access_package_catalogs'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../access_packages'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../access_package_resource_role_scopes'
require_relative '../../../../../../../item'
require_relative '../../../../../../access_package_resource_scope'
require_relative '../../../../../access_package_resource'
require_relative '../../../../86694b197d2019ee993a02912752b58d9f4660150cbf8ae57b614a3f6be60045'
require_relative '../../../4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'
require_relative '../../8f1d1d55ce127c61c49ac2b115bd1e2c0f470e5676812523112fadfd114e4eff'
require_relative '../3166e3c6d6b998ba3ba459edce9d6a4ef37dc254fda2753fd13926697d752ff5'
require_relative './6c35493a2b937829c9815c39e23af964bc84e5430a7dc104c700bbc0de2b59e3'

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
                                                        module AccessPackageResourceScopes
                                                            module Count
                                                                ## 
                                                                # Provides operations to count the resources in the collection.
                                                                class CountRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                                    
                                                                    ## 
                                                                    ## Instantiates a new CountRequestBuilder and sets the default values.
                                                                    ## @param path_parameters Path parameters for the request
                                                                    ## @param request_adapter The request adapter to use to execute the requests.
                                                                    ## @return a void
                                                                    ## 
                                                                    def initialize(path_parameters, request_adapter)
                                                                        super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceScope/accessPackageResource/accessPackageResourceRoles/{accessPackageResourceRole%2Did}/accessPackageResource/accessPackageResourceScopes/$count{?%24search,%24filter}")
                                                                    end
                                                                    ## 
                                                                    ## Get the number of the resource
                                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                    ## @return a Fiber of integer
                                                                    ## 
                                                                    def get(request_configuration=nil)
                                                                        request_info = self.to_get_request_information(
                                                                            request_configuration
                                                                        )
                                                                        error_mapping = Hash.new
                                                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                        return @request_adapter.send_async(request_info, number, error_mapping)
                                                                    end
                                                                    ## 
                                                                    ## Get the number of the resource
                                                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                    ## @return a request_information
                                                                    ## 
                                                                    def to_get_request_information(request_configuration=nil)
                                                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                        request_info.url_template = @url_template
                                                                        request_info.path_parameters = @path_parameters
                                                                        request_info.http_method = :GET
                                                                        request_info.headers.add('Accept', 'text/plain')
                                                                        unless request_configuration.nil?
                                                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                                            request_info.add_request_options(request_configuration.options)
                                                                        end
                                                                        return request_info
                                                                    end

                                                                    ## 
                                                                    # Get the number of the resource
                                                                    class CountRequestBuilderGetQueryParameters
                                                                        
                                                                        ## 
                                                                        # Filter items by property values
                                                                        attr_accessor :filter
                                                                        ## 
                                                                        # Search items by search phrases
                                                                        attr_accessor :search
                                                                        ## 
                                                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                                        ## @param original_name The original query parameter name in the class.
                                                                        ## @return a string
                                                                        ## 
                                                                        def get_query_parameter(original_name)
                                                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                                            case original_name
                                                                                when "filter"
                                                                                    return "%24filter"
                                                                                when "search"
                                                                                    return "%24search"
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
    end
end
