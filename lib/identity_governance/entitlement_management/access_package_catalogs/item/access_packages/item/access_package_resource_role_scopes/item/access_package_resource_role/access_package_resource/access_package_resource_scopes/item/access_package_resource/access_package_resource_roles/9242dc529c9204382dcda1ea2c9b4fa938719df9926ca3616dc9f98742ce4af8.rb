require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../../models/access_package_resource_role'
require_relative '../../../../../../../../../../../../../../models/access_package_resource_role_collection_response'
require_relative '../../../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../../entitlement_management'
require_relative '../../../../../../../../../../../access_package_catalogs'
require_relative '../../../../../../../../../../item'
require_relative '../../../../../../../../../access_packages'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../access_package_resource_role_scopes'
require_relative '../../../../../../item'
require_relative '../../../../../access_package_resource_role'
require_relative '../../../../access_package_resource'
require_relative '../../../3166e3c6d6b998ba3ba459edce9d6a4ef37dc254fda2753fd13926697d752ff5'
require_relative '../../4a33eacd5fa65f2b2e2871cd131286b53c415b131666d71173bb6e3fe59361b3'
require_relative '../8f1d1d55ce127c61c49ac2b115bd1e2c0f470e5676812523112fadfd114e4eff'
require_relative './86694b197d2019ee993a02912752b58d9f4660150cbf8ae57b614a3f6be60045'
require_relative './count/c2d464a14d231282699ce186783cc1f28f16ada73c685979750702bb76ce87fa'
require_relative './item/31c87683d2934cbe51cca2f38bfaeb9f29aafb3387689bc25a6be90160dba231'

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
                                            module AccessPackageResourceScopes
                                                module Item
                                                    module AccessPackageResource
                                                        module AccessPackageResourceRoles
                                                            ## 
                                                            # Provides operations to manage the accessPackageResourceRoles property of the microsoft.graph.accessPackageResource entity.
                                                            class AccessPackageResourceRolesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                                
                                                                ## 
                                                                # Provides operations to count the resources in the collection.
                                                                def count()
                                                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRole::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResource::AccessPackageResourceRoles::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                                                end
                                                                ## 
                                                                ## Provides operations to manage the accessPackageResourceRoles property of the microsoft.graph.accessPackageResource entity.
                                                                ## @param access_package_resource_role_id Unique identifier of the item
                                                                ## @return a access_package_resource_role_item_request_builder
                                                                ## 
                                                                def by_access_package_resource_role_id(access_package_resource_role_id)
                                                                    raise StandardError, 'access_package_resource_role_id cannot be null' if access_package_resource_role_id.nil?
                                                                    url_tpl_params = @path_parameters.clone
                                                                    url_tpl_params["accessPackageResourceRole%2Did"] = access_package_resource_role_id
                                                                    return MicrosoftGraphBeta::IdentityGovernance::EntitlementManagement::AccessPackageCatalogs::Item::AccessPackages::Item::AccessPackageResourceRoleScopes::Item::AccessPackageResourceRole::AccessPackageResource::AccessPackageResourceScopes::Item::AccessPackageResource::AccessPackageResourceRoles::Item::AccessPackageResourceRoleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                                end
                                                                ## 
                                                                ## Instantiates a new AccessPackageResourceRolesRequestBuilder and sets the default values.
                                                                ## @param path_parameters Path parameters for the request
                                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                                ## @return a void
                                                                ## 
                                                                def initialize(path_parameters, request_adapter)
                                                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/accessPackageResourceRoleScopes/{accessPackageResourceRoleScope%2Did}/accessPackageResourceRole/accessPackageResource/accessPackageResourceScopes/{accessPackageResourceScope%2Did}/accessPackageResource/accessPackageResourceRoles{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                                                end
                                                                ## 
                                                                ## Read-only. Nullable. Supports $expand.
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of access_package_resource_role_collection_response
                                                                ## 
                                                                def get(request_configuration=nil)
                                                                    request_info = self.to_get_request_information(
                                                                        request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRoleCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                                end
                                                                ## 
                                                                ## Create new navigation property to accessPackageResourceRoles for identityGovernance
                                                                ## @param body The request body
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a Fiber of access_package_resource_role
                                                                ## 
                                                                def post(body, request_configuration=nil)
                                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                                    request_info = self.to_post_request_information(
                                                                        body, request_configuration
                                                                    )
                                                                    error_mapping = Hash.new
                                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageResourceRole.create_from_discriminator_value(pn) }, error_mapping)
                                                                end
                                                                ## 
                                                                ## Read-only. Nullable. Supports $expand.
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
                                                                ## Create new navigation property to accessPackageResourceRoles for identityGovernance
                                                                ## @param body The request body
                                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                                ## @return a request_information
                                                                ## 
                                                                def to_post_request_information(body, request_configuration=nil)
                                                                    raise StandardError, 'body cannot be null' if body.nil?
                                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                    request_info.url_template = @url_template
                                                                    request_info.path_parameters = @path_parameters
                                                                    request_info.http_method = :POST
                                                                    request_info.headers.add('Accept', 'application/json')
                                                                    unless request_configuration.nil?
                                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                        request_info.add_request_options(request_configuration.options)
                                                                    end
                                                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                                    return request_info
                                                                end

                                                                ## 
                                                                # Read-only. Nullable. Supports $expand.
                                                                class AccessPackageResourceRolesRequestBuilderGetQueryParameters
                                                                    
                                                                    ## 
                                                                    # Include count of items
                                                                    attr_accessor :count
                                                                    ## 
                                                                    # Expand related entities
                                                                    attr_accessor :expand
                                                                    ## 
                                                                    # Filter items by property values
                                                                    attr_accessor :filter
                                                                    ## 
                                                                    # Order items by property values
                                                                    attr_accessor :orderby
                                                                    ## 
                                                                    # Search items by search phrases
                                                                    attr_accessor :search
                                                                    ## 
                                                                    # Select properties to be returned
                                                                    attr_accessor :select
                                                                    ## 
                                                                    # Skip the first n items
                                                                    attr_accessor :skip
                                                                    ## 
                                                                    # Show only the first n items
                                                                    attr_accessor :top
                                                                    ## 
                                                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                                                    ## @param original_name The original query parameter name in the class.
                                                                    ## @return a string
                                                                    ## 
                                                                    def get_query_parameter(original_name)
                                                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                                                        case original_name
                                                                            when "count"
                                                                                return "%24count"
                                                                            when "expand"
                                                                                return "%24expand"
                                                                            when "filter"
                                                                                return "%24filter"
                                                                            when "orderby"
                                                                                return "%24orderby"
                                                                            when "search"
                                                                                return "%24search"
                                                                            when "select"
                                                                                return "%24select"
                                                                            when "skip"
                                                                                return "%24skip"
                                                                            when "top"
                                                                                return "%24top"
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
