require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../on_premises_publishing_profiles'
require_relative '../../../../item'
require_relative '../../../connectors'
require_relative '../../item'
require_relative '../member_of'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module OnPremisesPublishingProfiles
        module Item
            module Connectors
                module Item
                    module MemberOf
                        module Item
                            ## 
                            # Builds and executes requests for operations under \onPremisesPublishingProfiles\{onPremisesPublishingProfile-id}\connectors\{connector-id}\memberOf\{connectorGroup-id}
                            class ConnectorGroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of onPremisesPublishingProfile entities.
                                def ref()
                                    return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::Connectors::Item::MemberOf::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new ConnectorGroupItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/connectors/{connector%2Did}/memberOf/{connectorGroup%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
