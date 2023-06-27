require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../rejected_senders'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Groups
        module Item
            module RejectedSenders
                module Item
                    ## 
                    # Builds and executes requests for operations under \groups\{group-id}\rejectedSenders\{directoryObject-id}
                    class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of group entities.
                        def ref()
                            return MicrosoftGraphBeta::Groups::Item::RejectedSenders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/rejectedSenders/{directoryObject%2Did}")
                        end
                    end
                end
            end
        end
    end
end
