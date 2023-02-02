require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../role_management'
require_relative '../../../cloud_p_c'
require_relative '../../role_definitions'
require_relative '../item'
require_relative './8c64e2c261cc5fff699ce2e5e222c25751dd975d6041aace235bb6b84271c4a6'

module MicrosoftGraphBeta::RoleManagement::CloudPC::RoleDefinitions::Item::MicrosoftGraphAssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeId
    ## 
    # Provides operations to call the assignedPrincipals method.
    class AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdRequestBuilder
        
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
        ## Instantiates a new AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/roleManagement/cloudPC/roleDefinitions/{unifiedRoleDefinition%2Did}/microsoft.graph.assignedPrincipals(transitive=@transitive,directoryScopeType='@directoryScopeType',directoryScopeId='@directoryScopeId'){?transitive*,directoryScopeType*,directoryScopeId*,%24top,%24skip,%24search,%24filter,%24count,%24select,%24orderby}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Invoke function assignedPrincipals
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of assigned_principals_with_transitivedirectory_scope_type_directory_scope_type_directory_scope_id_directory_scope_id_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::RoleManagement::CloudPC::RoleDefinitions::Item::MicrosoftGraphAssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeId::AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Invoke function assignedPrincipals
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
        # Invoke function assignedPrincipals
        class AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdRequestBuilderGetQueryParameters
            
            ## 
            # Include count of items
            attr_accessor :count
            ## 
            # Usage: directoryScopeId='@directoryScopeId'
            attr_accessor :directory_scope_id
            ## 
            # Usage: directoryScopeType='@directoryScopeType'
            attr_accessor :directory_scope_type
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
            # Usage: transitive=@transitive
            attr_accessor :transitive
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
        class AssignedPrincipalsWithTransitivedirectoryScopeTypeDirectoryScopeTypeDirectoryScopeIdDirectoryScopeIdRequestBuilderGetRequestConfiguration
            
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
