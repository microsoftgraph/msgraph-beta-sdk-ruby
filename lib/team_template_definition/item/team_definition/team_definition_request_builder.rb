require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/team'
require_relative '../../team_template_definition'
require_relative '../item'
require_relative './all_channels/all_channels_request_builder'
require_relative './archive/archive_request_builder'
require_relative './channels/channels_request_builder'
require_relative './clone/clone_request_builder'
require_relative './complete_migration/complete_migration_request_builder'
require_relative './group/group_request_builder'
require_relative './incoming_channels/incoming_channels_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './members/members_request_builder'
require_relative './operations/operations_request_builder'
require_relative './owners/owners_request_builder'
require_relative './permission_grants/permission_grants_request_builder'
require_relative './photo/photo_request_builder'
require_relative './primary_channel/primary_channel_request_builder'
require_relative './schedule/schedule_request_builder'
require_relative './send_activity_notification/send_activity_notification_request_builder'
require_relative './tags/tags_request_builder'
require_relative './team_definition'
require_relative './template/template_request_builder'
require_relative './template_definition/template_definition_request_builder'
require_relative './unarchive/unarchive_request_builder'

module MicrosoftGraphBeta
    module TeamTemplateDefinition
        module Item
            module TeamDefinition
                ## 
                # Provides operations to manage the teamDefinition property of the microsoft.graph.teamTemplateDefinition entity.
                class TeamDefinitionRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the allChannels property of the microsoft.graph.team entity.
                    def all_channels()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::AllChannels::AllChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the archive method.
                    def archive()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Archive::ArchiveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the channels property of the microsoft.graph.team entity.
                    def channels()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Channels::ChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the clone method.
                    def clone()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Clone::CloneRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the completeMigration method.
                    def complete_migration()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::CompleteMigration::CompleteMigrationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the group property of the microsoft.graph.team entity.
                    def group()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Group::GroupRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the incomingChannels property of the microsoft.graph.team entity.
                    def incoming_channels()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::IncomingChannels::IncomingChannelsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the installedApps property of the microsoft.graph.team entity.
                    def installed_apps()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the members property of the microsoft.graph.team entity.
                    def members()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the operations property of the microsoft.graph.team entity.
                    def operations()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the owners property of the microsoft.graph.team entity.
                    def owners()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Owners::OwnersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the permissionGrants property of the microsoft.graph.team entity.
                    def permission_grants()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::PermissionGrants::PermissionGrantsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the photo property of the microsoft.graph.team entity.
                    def photo()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Photo::PhotoRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the primaryChannel property of the microsoft.graph.team entity.
                    def primary_channel()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::PrimaryChannel::PrimaryChannelRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the schedule property of the microsoft.graph.team entity.
                    def schedule()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Schedule::ScheduleRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the sendActivityNotification method.
                    def send_activity_notification()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::SendActivityNotification::SendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the tags property of the microsoft.graph.team entity.
                    def tags()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Tags::TagsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the template property of the microsoft.graph.team entity.
                    def template()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Template::TemplateRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the templateDefinition property of the microsoft.graph.team entity.
                    def template_definition()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::TemplateDefinition::TemplateDefinitionRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unarchive method.
                    def unarchive()
                        return MicrosoftGraphBeta::TeamTemplateDefinition::Item::TeamDefinition::Unarchive::UnarchiveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new TeamDefinitionRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/teamTemplateDefinition/{teamTemplateDefinition%2Did}/teamDefinition{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property teamDefinition for teamTemplateDefinition
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
                    ## Get the properties of the team associated with a teamTemplateDefinition object.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of team
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property teamDefinition in teamTemplateDefinition
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of team
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Team.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property teamDefinition for teamTemplateDefinition
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
                    ## Get the properties of the team associated with a teamTemplateDefinition object.
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
                    ## Update the navigation property teamDefinition in teamTemplateDefinition
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
                    # Get the properties of the team associated with a teamTemplateDefinition object.
                    class TeamDefinitionRequestBuilderGetQueryParameters
                        
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
