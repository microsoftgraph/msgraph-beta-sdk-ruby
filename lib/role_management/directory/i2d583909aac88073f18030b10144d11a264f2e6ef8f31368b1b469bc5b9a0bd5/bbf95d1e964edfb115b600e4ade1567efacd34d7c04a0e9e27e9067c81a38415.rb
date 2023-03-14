require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../role_management'
require_relative '../directory'
require_relative './i2d583909aac88073f18030b10144d11a264f2e6ef8f31368b1b469bc5b9a0bd5'

module MicrosoftGraphBeta
    module RoleManagement
        module Directory
            module I2d583909aac88073f18030b10144d11a264f2e6ef8f31368b1b469bc5b9a0bd5
                ## 
                # Provides operations to call the roleScheduleInstances method.
                class RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilder
                    
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
                    ## Instantiates a new RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/roleManagement/directory/roleScheduleInstances(directoryScopeId='@directoryScopeId',appScopeId='@appScopeId',principalId='@principalId',roleDefinitionId='@roleDefinitionId'){?directoryScopeId*,appScopeId*,principalId*,roleDefinitionId*,%24top,%24skip,%24search,%24filter,%24count,%24select,%24orderby}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Invoke function roleScheduleInstances
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of role_schedule_instancesdirectory_scope_id_directory_scope_id_app_scope_id_app_scope_id_principal_id_principal_id_role_definition_id_role_definition_id_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::RoleManagement::Directory::I2d583909aac88073f18030b10144d11a264f2e6ef8f31368b1b469bc5b9a0bd5::RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke function roleScheduleInstances
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
                    # Invoke function roleScheduleInstances
                    class RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilderGetQueryParameters
                        
                        ## 
                        # Usage: appScopeId='@appScopeId'
                        attr_accessor :app_scope_id
                        ## 
                        # Include count of items
                        attr_accessor :count
                        ## 
                        # Usage: directoryScopeId='@directoryScopeId'
                        attr_accessor :directory_scope_id
                        ## 
                        # Filter items by property values
                        attr_accessor :filter
                        ## 
                        # Order items by property values
                        attr_accessor :orderby
                        ## 
                        # Usage: principalId='@principalId'
                        attr_accessor :principal_id
                        ## 
                        # Usage: roleDefinitionId='@roleDefinitionId'
                        attr_accessor :role_definition_id
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
                        ## @param originalName The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "count"
                                    return "%24count"
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

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilderGetRequestConfiguration
                        
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
