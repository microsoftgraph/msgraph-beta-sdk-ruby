require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './count/count_request_builder'
require_relative './graph_room/graph_room_request_builder'
require_relative './item/place_item_request_builder'
require_relative './places'

module MicrosoftGraphBeta
    module Places
        ## 
        # Builds and executes requests for operations under \places
        class PlacesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to count the resources in the collection.
            def count()
                return MicrosoftGraphBeta::Places::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Casts the previous resource to room.
            def graph_room()
                return MicrosoftGraphBeta::Places::GraphRoom::GraphRoomRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the collection of place entities.
            ## @param place_id Unique identifier of the item
            ## @return a place_item_request_builder
            ## 
            def by_place_id(place_id)
                raise StandardError, 'place_id cannot be null' if place_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["place%2Did"] = place_id
                return MicrosoftGraphBeta::Places::Item::PlaceItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new PlacesRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/places")
            end
        end
    end
end
