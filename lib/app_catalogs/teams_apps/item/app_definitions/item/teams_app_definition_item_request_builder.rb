require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/teams_app_definition'
require_relative '../../../../app_catalogs'
require_relative '../../../teams_apps'
require_relative '../../item'
require_relative '../app_definitions'
require_relative './bot/bot_request_builder'
require_relative './color_icon/color_icon_request_builder'
require_relative './item'
require_relative './outline_icon/outline_icon_request_builder'

module MicrosoftGraphBeta
    module AppCatalogs
        module TeamsApps
            module Item
                module AppDefinitions
                    module Item
                        ## 
                        # Provides operations to manage the appDefinitions property of the microsoft.graph.teamsApp entity.
                        class TeamsAppDefinitionItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the bot property of the microsoft.graph.teamsAppDefinition entity.
                            def bot()
                                return MicrosoftGraphBeta::AppCatalogs::TeamsApps::Item::AppDefinitions::Item::Bot::BotRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the colorIcon property of the microsoft.graph.teamsAppDefinition entity.
                            def color_icon()
                                return MicrosoftGraphBeta::AppCatalogs::TeamsApps::Item::AppDefinitions::Item::ColorIcon::ColorIconRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the outlineIcon property of the microsoft.graph.teamsAppDefinition entity.
                            def outline_icon()
                                return MicrosoftGraphBeta::AppCatalogs::TeamsApps::Item::AppDefinitions::Item::OutlineIcon::OutlineIconRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new TeamsAppDefinitionItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/appCatalogs/teamsApps/{teamsApp%2Did}/appDefinitions/{teamsAppDefinition%2Did}{?%24select,%24expand}")
                            end
                            ## 
                            ## Delete navigation property appDefinitions for appCatalogs
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## The details for each version of the app.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of teams_app_definition
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppDefinition.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Publish an app to the Microsoft Teams app catalog.Specifically, this API publishes the app to your organization's catalog (the tenant app catalog);the created resource will have a distributionMethod property value of organization. The requiresReview property allows any user to submit an app for review by an administrator. Admins can approve or reject these apps via this API or the Microsoft Teams admin center.
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of teams_app_definition
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppDefinition.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property appDefinitions for appCatalogs
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
                            ## The details for each version of the app.
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
                            ## Publish an app to the Microsoft Teams app catalog.Specifically, this API publishes the app to your organization's catalog (the tenant app catalog);the created resource will have a distributionMethod property value of organization. The requiresReview property allows any user to submit an app for review by an administrator. Admins can approve or reject these apps via this API or the Microsoft Teams admin center.
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
                            # The details for each version of the app.
                            class TeamsAppDefinitionItemRequestBuilderGetQueryParameters
                                
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
