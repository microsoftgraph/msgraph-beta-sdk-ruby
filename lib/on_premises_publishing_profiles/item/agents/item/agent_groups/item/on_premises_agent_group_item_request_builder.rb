require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../on_premises_publishing_profiles'
require_relative '../../../../item'
require_relative '../../../agents'
require_relative '../../item'
require_relative '../agent_groups'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module OnPremisesPublishingProfiles
        module Item
            module Agents
                module Item
                    module AgentGroups
                        module Item
                            ## 
                            # Builds and executes requests for operations under \onPremisesPublishingProfiles\{onPremisesPublishingProfile-id}\agents\{onPremisesAgent-id}\agentGroups\{onPremisesAgentGroup-id}
                            class OnPremisesAgentGroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of onPremisesPublishingProfile entities.
                                def ref()
                                    return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Agents::Item::AgentGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new OnPremisesAgentGroupItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/agents/{onPremisesAgent%2Did}/agentGroups/{onPremisesAgentGroup%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
