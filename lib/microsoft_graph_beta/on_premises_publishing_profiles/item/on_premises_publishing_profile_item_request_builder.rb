require 'microsoft_kiota_abstractions'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/on_premises_publishing_profile'
require_relative '../on_premises_publishing_profiles'
require_relative './agent_groups/agent_groups_request_builder'
require_relative './agent_groups/item/on_premises_agent_group_item_request_builder'
require_relative './agents/agents_request_builder'
require_relative './agents/item/on_premises_agent_item_request_builder'
require_relative './connector_groups/connector_groups_request_builder'
require_relative './connector_groups/item/connector_group_item_request_builder'
require_relative './connectors/connectors_request_builder'
require_relative './connectors/item/connector_item_request_builder'
require_relative './item'
require_relative './published_resources/item/published_resource_item_request_builder'
require_relative './published_resources/published_resources_request_builder'

module MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item
    ## 
    # Provides operations to manage the collection of onPremisesPublishingProfile entities.
    class OnPremisesPublishingProfileItemRequestBuilder
        
        ## 
        # Provides operations to manage the agentGroups property of the microsoft.graph.onPremisesPublishingProfile entity.
        def agent_groups()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::AgentGroups::AgentGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the agents property of the microsoft.graph.onPremisesPublishingProfile entity.
        def agents()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Agents::AgentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the connectorGroups property of the microsoft.graph.onPremisesPublishingProfile entity.
        def connector_groups()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::ConnectorGroupsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the connectors property of the microsoft.graph.onPremisesPublishingProfile entity.
        def connectors()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Connectors::ConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the publishedResources property of the microsoft.graph.onPremisesPublishingProfile entity.
        def published_resources()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::PublishedResources::PublishedResourcesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the agentGroups property of the microsoft.graph.onPremisesPublishingProfile entity.
        ## @param id Unique identifier of the item
        ## @return a on_premises_agent_group_item_request_builder
        ## 
        def agent_groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["onPremisesAgentGroup%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::AgentGroups::Item::OnPremisesAgentGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the agents property of the microsoft.graph.onPremisesPublishingProfile entity.
        ## @param id Unique identifier of the item
        ## @return a on_premises_agent_item_request_builder
        ## 
        def agents_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["onPremisesAgent%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Agents::Item::OnPremisesAgentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the connectorGroups property of the microsoft.graph.onPremisesPublishingProfile entity.
        ## @param id Unique identifier of the item
        ## @return a connector_group_item_request_builder
        ## 
        def connector_groups_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["connectorGroup%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::ConnectorGroupItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the connectors property of the microsoft.graph.onPremisesPublishingProfile entity.
        ## @param id Unique identifier of the item
        ## @return a connector_item_request_builder
        ## 
        def connectors_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["connector%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Connectors::Item::ConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new OnPremisesPublishingProfileItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete entity from onPremisesPublishingProfiles
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
        ## Get entity from onPremisesPublishingProfiles by key
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
        ## Update entity in onPremisesPublishingProfiles
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
        ## Delete entity from onPremisesPublishingProfiles
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
        ## Get entity from onPremisesPublishingProfiles by key
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of on_premises_publishing_profile
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesPublishingProfile.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update entity in onPremisesPublishingProfiles
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of on_premises_publishing_profile
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OnPremisesPublishingProfile.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the publishedResources property of the microsoft.graph.onPremisesPublishingProfile entity.
        ## @param id Unique identifier of the item
        ## @return a published_resource_item_request_builder
        ## 
        def published_resources_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["publishedResource%2Did"] = id
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::PublishedResources::Item::PublishedResourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class OnPremisesPublishingProfileItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Get entity from onPremisesPublishingProfiles by key
        class OnPremisesPublishingProfileItemRequestBuilderGetQueryParameters
            
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
        class OnPremisesPublishingProfileItemRequestBuilderGetRequestConfiguration
            
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
        class OnPremisesPublishingProfileItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
