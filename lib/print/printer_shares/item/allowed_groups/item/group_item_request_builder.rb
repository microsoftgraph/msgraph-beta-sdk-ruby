require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../print'
require_relative '../../../printer_shares'
require_relative '../../item'
require_relative '../allowed_groups'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Print
        module PrinterShares
            module Item
                module AllowedGroups
                    module Item
                        ## 
                        # Builds and executes requests for operations under \print\printerShares\{printerShare-id}\allowedGroups\{group-id}
                        class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of print entities.
                            def ref()
                                return MicrosoftGraphBeta::Print::PrinterShares::Item::AllowedGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/print/printerShares/{printerShare%2Did}/allowedGroups/{group%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
