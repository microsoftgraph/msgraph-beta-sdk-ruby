require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../on_premises_publishing_profiles'
require_relative '../../../../item'
require_relative '../../../connector_groups'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::Members::Item
    ## 
    # Builds and executes requests for operations under \onPremisesPublishingProfiles\{onPremisesPublishingProfile-id}\connectorGroups\{connectorGroup-id}\members\{connector-id}
    class ConnectorItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of onPremisesPublishingProfile entities.
        def ref()
            return MicrosoftGraphBeta::OnPremisesPublishingProfiles::Item::ConnectorGroups::Item::Members::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new ConnectorItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/onPremisesPublishingProfiles/{onPremisesPublishingProfile%2Did}/connectorGroups/{connectorGroup%2Did}/members/{connector%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
