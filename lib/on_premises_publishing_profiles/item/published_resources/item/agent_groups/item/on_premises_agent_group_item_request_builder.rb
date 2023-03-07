require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../on_premises_publishing_profiles'
require_relative '../../../../item'
require_relative '../../../published_resources'
require_relative '../../item'
require_relative '../agent_groups'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module OnPremisesPublishingProfiles
        module Item
            module PublishedResources
                module Item
                    module AgentGroups
                        module Item
                            ## 
                            # Builds and executes requests for operations under \onPremisesPublishingProfiles\{onPremisesPublishingProfile-id}\publishedResources\{publishedResource-id}\agentGroups\{onPremisesAgentGroup-id}
                            class OnPremisesAgentGroupItemRequestBuilder
                                
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # Provides operations to manage the collection of onPremisesPublishingProfile entities.
                                def ref()
                                    return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::PublishedResources::Item::AgentGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                ## Instantiates a new OnPremisesAgentGroupItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/publishedResources/{publishedResource%2Did}/agentGroups/{onPremisesAgentGroup%2Did}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
