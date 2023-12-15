require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../on_premises_publishing_profiles'
require_relative '../../../../item'
require_relative '../../../connector_groups'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module OnPremisesPublishingProfiles
        module Item
            module ConnectorGroups
                module Item
                    module Members
                        module Item
                            ## 
                            # Builds and executes requests for operations under \onPremisesPublishingProfiles\{onPremisesPublishingProfile-id}\connectorGroups\{connectorGroup-id}\members\{connector-id}
                            class ConnectorItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of onPremisesPublishingProfile entities.
                                def ref()
                                    return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::Members::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ConnectorItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/connectorGroups/{connectorGroup%2Did}/members/{connector%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
