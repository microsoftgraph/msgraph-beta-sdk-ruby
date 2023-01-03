require 'microsoft_kiota_abstractions'
require_relative '../../../../../../models/device'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../users'
require_relative '../../../../item'
require_relative '../../../authentication'
require_relative '../../passwordless_microsoft_authenticator_methods'
require_relative '../item'
require_relative './check_member_groups/check_member_groups_request_builder'
require_relative './check_member_objects/check_member_objects_request_builder'
require_relative './commands/commands_request_builder'
require_relative './commands/item/command_item_request_builder'
require_relative './device'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './get_member_groups/get_member_groups_request_builder'
require_relative './get_member_objects/get_member_objects_request_builder'
require_relative './member_of/item/directory_object_item_request_builder'
require_relative './member_of/member_of_request_builder'
require_relative './registered_owners/item/directory_object_item_request_builder'
require_relative './registered_owners/registered_owners_request_builder'
require_relative './registered_users/item/directory_object_item_request_builder'
require_relative './registered_users/registered_users_request_builder'
require_relative './restore/restore_request_builder'
require_relative './transitive_member_of/item/directory_object_item_request_builder'
require_relative './transitive_member_of/transitive_member_of_request_builder'
require_relative './usage_rights/item/usage_right_item_request_builder'
require_relative './usage_rights/usage_rights_request_builder'

module MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device
    ## 
    # Provides operations to manage the device property of the microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod entity.
    class DeviceRequestBuilder
        
        ## 
        # Provides operations to call the checkMemberGroups method.
        def check_member_groups()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::CheckMemberGroups::CheckMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the checkMemberObjects method.
        def check_member_objects()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::CheckMemberObjects::CheckMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the commands property of the microsoft.graph.device entity.
        def commands()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::Commands::CommandsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the extensions property of the microsoft.graph.device entity.
        def extensions()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberGroups method.
        def get_member_groups()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::GetMemberGroups::GetMemberGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getMemberObjects method.
        def get_member_objects()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::GetMemberObjects::GetMemberObjectsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the memberOf property of the microsoft.graph.device entity.
        def member_of()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::MemberOf::MemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the registeredOwners property of the microsoft.graph.device entity.
        def registered_owners()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::RegisteredOwners::RegisteredOwnersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the registeredUsers property of the microsoft.graph.device entity.
        def registered_users()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::RegisteredUsers::RegisteredUsersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to call the restore method.
        def restore()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::Restore::RestoreRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the transitiveMemberOf property of the microsoft.graph.device entity.
        def transitive_member_of()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::TransitiveMemberOf::TransitiveMemberOfRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the usageRights property of the microsoft.graph.device entity.
        def usage_rights()
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::UsageRights::UsageRightsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the commands property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a command_item_request_builder
        ## 
        def commands_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["command%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::Commands::Item::CommandItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new DeviceRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/users/{user%2Did}/authentication/passwordlessMicrosoftAuthenticatorMethods/{passwordlessMicrosoftAuthenticatorAuthenticationMethod%2Did}/device{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property device for users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_delete_request_information(request_configuration=nil)
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
        ## Get device from users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## Update the navigation property device in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Delete navigation property device for users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.create_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Provides operations to manage the extensions property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a extension_item_request_builder
        ## 
        def extensions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["extension%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Get device from users
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of device
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Device.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the memberOf property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::MemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property device in users
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of device
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Device.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Gets an item from the MicrosoftGraphBeta.users.item.authentication.passwordlessMicrosoftAuthenticatorMethods.item.device.registeredOwners.item collection
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def registered_owners_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::RegisteredOwners::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the registeredUsers property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def registered_users_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::RegisteredUsers::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the transitiveMemberOf property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a directory_object_item_request_builder
        ## 
        def transitive_member_of_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["directoryObject%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::TransitiveMemberOf::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the usageRights property of the microsoft.graph.device entity.
        ## @param id Unique identifier of the item
        ## @return a usage_right_item_request_builder
        ## 
        def usage_rights_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["usageRight%2Did"] = id
            return MicrosoftGraphBeta::Users::Item::Authentication::PasswordlessMicrosoftAuthenticatorMethods::Item::Device::UsageRights::Item::UsageRightItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DeviceRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Get device from users
        class DeviceRequestBuilderGetQueryParameters
            
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
        class DeviceRequestBuilderGetRequestConfiguration
            
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
        class DeviceRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
