require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/authentication_methods_root'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../reports'
require_relative './authentication_methods'
require_relative './microsoft_graph_users_registered_by_feature/users_registered_by_feature_request_builder'
require_relative './microsoft_graph_users_registered_by_feature_with_included_user_types_with_included_user_roles/users_registered_by_feature_with_included_user_types_with_included_user_roles_request_builder'
require_relative './microsoft_graph_users_registered_by_method/users_registered_by_method_request_builder'
require_relative './microsoft_graph_users_registered_by_method_with_included_user_types_with_included_user_roles/users_registered_by_method_with_included_user_types_with_included_user_roles_request_builder'
require_relative './user_registration_details/item/user_registration_details_item_request_builder'
require_relative './user_registration_details/user_registration_details_request_builder'

module MicrosoftGraphBeta::Reports::AuthenticationMethods
    ## 
    # Provides operations to manage the authenticationMethods property of the microsoft.graph.reportRoot entity.
    class AuthenticationMethodsRequestBuilder
        
        ## 
        # Provides operations to call the usersRegisteredByFeature method.
        def microsoft_graph_users_registered_by_feature()
            return MicrosoftGraphBeta::Reports::AuthenticationMethods::MicrosoftGraphUsersRegisteredByFeature::UsersRegisteredByFeatureRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the usersRegisteredByMethod method.
        def microsoft_graph_users_registered_by_method()
            return MicrosoftGraphBeta::Reports::AuthenticationMethods::MicrosoftGraphUsersRegisteredByMethod::UsersRegisteredByMethodRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Provides operations to manage the userRegistrationDetails property of the microsoft.graph.authenticationMethodsRoot entity.
        def user_registration_details()
            return MicrosoftGraphBeta::Reports::AuthenticationMethods::UserRegistrationDetails::UserRegistrationDetailsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new AuthenticationMethodsRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/reports/authenticationMethods{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property authenticationMethods for reports
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
        ## Container for navigation properties for Azure AD authentication methods resources.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of authentication_methods_root
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to call the usersRegisteredByFeature method.
        ## @param includedUserRoles Usage: includedUserRoles='{includedUserRoles}'
        ## @param includedUserTypes Usage: includedUserTypes='{includedUserTypes}'
        ## @return a users_registered_by_feature_with_included_user_types_with_included_user_roles_request_builder
        ## 
        def microsoft_graph_users_registered_by_feature_with_included_user_types_with_included_user_roles(included_user_roles, included_user_types)
            raise StandardError, 'included_user_roles cannot be null' if included_user_roles.nil?
            raise StandardError, 'included_user_types cannot be null' if included_user_types.nil?
            return UsersRegisteredByFeatureWithIncludedUserTypesWithIncludedUserRolesRequestBuilder.new(@path_parameters, @request_adapter, includedUserRoles, includedUserTypes)
        end
        ## 
        ## Provides operations to call the usersRegisteredByMethod method.
        ## @param includedUserRoles Usage: includedUserRoles='{includedUserRoles}'
        ## @param includedUserTypes Usage: includedUserTypes='{includedUserTypes}'
        ## @return a users_registered_by_method_with_included_user_types_with_included_user_roles_request_builder
        ## 
        def microsoft_graph_users_registered_by_method_with_included_user_types_with_included_user_roles(included_user_roles, included_user_types)
            raise StandardError, 'included_user_roles cannot be null' if included_user_roles.nil?
            raise StandardError, 'included_user_types cannot be null' if included_user_types.nil?
            return UsersRegisteredByMethodWithIncludedUserTypesWithIncludedUserRolesRequestBuilder.new(@path_parameters, @request_adapter, includedUserRoles, includedUserTypes)
        end
        ## 
        ## Update the navigation property authenticationMethods in reports
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of authentication_methods_root
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationMethodsRoot.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Delete navigation property authenticationMethods for reports
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
        ## Container for navigation properties for Azure AD authentication methods resources.
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
        ## Update the navigation property authenticationMethods in reports
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
        ## Provides operations to manage the userRegistrationDetails property of the microsoft.graph.authenticationMethodsRoot entity.
        ## @param id Unique identifier of the item
        ## @return a user_registration_details_item_request_builder
        ## 
        def user_registration_details_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["userRegistrationDetails%2Did"] = id
            return MicrosoftGraphBeta::Reports::AuthenticationMethods::UserRegistrationDetails::Item::UserRegistrationDetailsItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class AuthenticationMethodsRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Container for navigation properties for Azure AD authentication methods resources.
        class AuthenticationMethodsRequestBuilderGetQueryParameters
            
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
        class AuthenticationMethodsRequestBuilderGetRequestConfiguration
            
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
        class AuthenticationMethodsRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
