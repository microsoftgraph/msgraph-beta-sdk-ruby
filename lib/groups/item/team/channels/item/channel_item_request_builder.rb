require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/channel'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../groups'
require_relative '../../../item'
require_relative '../../team'
require_relative '../channels'
require_relative './complete_migration/complete_migration_request_builder'
require_relative './does_user_have_accessuser_id_user_id_tenant_id_tenant_id_user_principal_name_user_principal_name/732db1068832007d49ec9b451d8ca1cfd0136d0663ec94246815c75150bfdfa9'
require_relative './files_folder/files_folder_request_builder'
require_relative './item'
require_relative './members/members_request_builder'
require_relative './messages/messages_request_builder'
require_relative './provision_email/provision_email_request_builder'
require_relative './remove_email/remove_email_request_builder'
require_relative './shared_with_teams/shared_with_teams_request_builder'
require_relative './tabs/tabs_request_builder'

module MicrosoftGraphBeta
    module Groups
        module Item
            module Team
                module Channels
                    module Item
                        ## 
                        # Provides operations to manage the channels property of the microsoft.graph.team entity.
                        class ChannelItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to call the completeMigration method.
                            def complete_migration()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::CompleteMigration::CompleteMigrationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the doesUserHaveAccess method.
                            def does_user_have_accessuser_id_user_id_tenant_id_tenant_id_user_principal_name_user_principal_name()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalName::DoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the filesFolder property of the microsoft.graph.channel entity.
                            def files_folder()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::FilesFolder::FilesFolderRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the members property of the microsoft.graph.channel entity.
                            def members()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the messages property of the microsoft.graph.channel entity.
                            def messages()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the provisionEmail method.
                            def provision_email()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::ProvisionEmail::ProvisionEmailRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the removeEmail method.
                            def remove_email()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::RemoveEmail::RemoveEmailRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the sharedWithTeams property of the microsoft.graph.channel entity.
                            def shared_with_teams()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::SharedWithTeams::SharedWithTeamsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the tabs property of the microsoft.graph.channel entity.
                            def tabs()
                                return MicrosoftGraphBeta::Groups::Item::Team::Channels::Item::Tabs::TabsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new ChannelItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/team/channels/{channel%2Did}{?%24select,%24expand}")
                            end
                            ## 
                            ## Delete the channel.
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
                            ## Retrieve the properties and relationships of a channel. This method supports federation. Only a user who is a member of the shared channel can retrieve channel information.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of channel
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Channel.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the properties of the specified channel.
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of channel
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Channel.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete the channel.
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
                            ## Retrieve the properties and relationships of a channel. This method supports federation. Only a user who is a member of the shared channel can retrieve channel information.
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
                            ## Update the properties of the specified channel.
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
                            # Retrieve the properties and relationships of a channel. This method supports federation. Only a user who is a member of the shared channel can retrieve channel information.
                            class ChannelItemRequestBuilderGetQueryParameters
                                
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
end
