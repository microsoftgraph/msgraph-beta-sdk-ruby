require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/chat'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../chats'
require_relative './hide_for_user/hide_for_user_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './item'
require_relative './last_message_preview/last_message_preview_request_builder'
require_relative './mark_chat_read_for_user/mark_chat_read_for_user_request_builder'
require_relative './mark_chat_unread_for_user/mark_chat_unread_for_user_request_builder'
require_relative './members/members_request_builder'
require_relative './messages/messages_request_builder'
require_relative './operations/operations_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './pinned_messages/pinned_messages_request_builder'
require_relative './send_activity_notification/send_activity_notification_request_builder'
require_relative './tabs/tabs_request_builder'
require_relative './unhide_for_user/unhide_for_user_request_builder'

module MicrosoftGraphBeta
    module Users
        module Item
            module Chats
                module Item
                    ## 
                    # Provides operations to manage the chats property of the microsoft.graph.user entity.
                    class ChatItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to call the hideForUser method.
                        def hide_for_user()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::HideForUser::HideForUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the installedApps property of the microsoft.graph.chat entity.
                        def installed_apps()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the lastMessagePreview property of the microsoft.graph.chat entity.
                        def last_message_preview()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::LastMessagePreview::LastMessagePreviewRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the markChatReadForUser method.
                        def mark_chat_read_for_user()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::MarkChatReadForUser::MarkChatReadForUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the markChatUnreadForUser method.
                        def mark_chat_unread_for_user()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::MarkChatUnreadForUser::MarkChatUnreadForUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the members property of the microsoft.graph.chat entity.
                        def members()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the messages property of the microsoft.graph.chat entity.
                        def messages()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the operations property of the microsoft.graph.chat entity.
                        def operations()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the permissionGrants property of the microsoft.graph.chat entity.
                        def permission_grants()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the pinnedMessages property of the microsoft.graph.chat entity.
                        def pinned_messages()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::PinnedMessages::PinnedMessagesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the sendActivityNotification method.
                        def send_activity_notification()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::SendActivityNotification::SendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the tabs property of the microsoft.graph.chat entity.
                        def tabs()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::Tabs::TabsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the unhideForUser method.
                        def unhide_for_user()
                            return MicrosoftGraphBeta::Users::Item::Chats::Item::UnhideForUser::UnhideForUserRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ChatItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/chats/{chat%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property chats for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## Retrieve a single chat (without its messages). This method supports federation. To access a chat, at least one chat member must belong to the tenant the request initiated from.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of chat
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Chat.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property chats in users
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of chat
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Chat.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property chats for users
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
                        ## Retrieve a single chat (without its messages). This method supports federation. To access a chat, at least one chat member must belong to the tenant the request initiated from.
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
                        ## Update the navigation property chats in users
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
                        # Retrieve a single chat (without its messages). This method supports federation. To access a chat, at least one chat member must belong to the tenant the request initiated from.
                        class ChatItemRequestBuilderGetQueryParameters
                            
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
