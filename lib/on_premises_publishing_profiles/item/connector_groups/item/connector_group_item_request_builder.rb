require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/connector_group'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../on_premises_publishing_profiles'
require_relative '../../item'
require_relative '../connector_groups'
require_relative './applications/applications_request_builder'
require_relative './applications_with_app_id/applications_with_app_id_request_builder'
require_relative './applications_with_unique_name/applications_with_unique_name_request_builder'
require_relative './item'
require_relative './members/members_request_builder'

module MicrosoftGraphBeta
    module OnPremisesPublishingProfiles
        module Item
            module ConnectorGroups
                module Item
                    ## 
                    # Provides operations to manage the connectorGroups property of the microsoft.graph.onPremisesPublishingProfile entity.
                    class ConnectorGroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the applications property of the microsoft.graph.connectorGroup entity.
                        def applications()
                            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::Applications::ApplicationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the members property of the microsoft.graph.connectorGroup entity.
                        def members()
                            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the applications property of the microsoft.graph.connectorGroup entity.
                        ## @param app_id Alternate key of application
                        ## @return a applications_with_app_id_request_builder
                        ## 
                        def applications_with_app_id(app_id)
                            raise StandardError, 'app_id cannot be null' if app_id.nil?
                            return ApplicationsWithAppIdRequestBuilder.new(@path_parameters, @request_adapter, appId)
                        end
                        ## 
                        ## Provides operations to manage the applications property of the microsoft.graph.connectorGroup entity.
                        ## @param unique_name Alternate key of application
                        ## @return a applications_with_unique_name_request_builder
                        ## 
                        def applications_with_unique_name(unique_name)
                            raise StandardError, 'unique_name cannot be null' if unique_name.nil?
                            return ApplicationsWithUniqueNameRequestBuilder.new(@path_parameters, @request_adapter, uniqueName)
                        end
                        ## 
                        ## Instantiates a new ConnectorGroupItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/connectorGroups/{connectorGroup%2Did}{?%24expand,%24select}")
                        end
                        ## 
                        ## Delete navigation property connectorGroups for onPremisesPublishingProfiles
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of connector_group
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ConnectorGroup.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property connectorGroups in onPremisesPublishingProfiles
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of connector_group
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ConnectorGroup.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property connectorGroups for onPremisesPublishingProfiles
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_delete_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :DELETE
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Update the navigation property connectorGroups in onPremisesPublishingProfiles
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_patch_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PATCH
                            request_info.headers.try_add('Accept', 'application/json')
                            return request_info
                        end
                        ## 
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a connector_group_item_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return ConnectorGroupItemRequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # List of existing connectorGroup objects for applications published through Application Proxy. Read-only. Nullable.
                        class ConnectorGroupItemRequestBuilderGetQueryParameters
                            
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
