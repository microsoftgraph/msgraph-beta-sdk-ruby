require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../print'
require_relative '../../../printer_shares'
require_relative '../../item'
require_relative '../allowed_users'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Print
        module PrinterShares
            module Item
                module AllowedUsers
                    module Item
                        ## 
                        # Builds and executes requests for operations under \print\printerShares\{printerShare-id}\allowedUsers\{user-id}
                        class UserItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of print entities.
                            def ref()
                                return MicrosoftGraphBeta::Print::PrinterShares::Item::AllowedUsers::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new UserItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/print/printerShares/{printerShare%2Did}/allowedUsers/{user%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
