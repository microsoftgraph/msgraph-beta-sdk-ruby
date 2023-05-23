require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../mobility_management_policies'
require_relative '../../item'
require_relative '../included_groups'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module MobilityManagementPolicies
        module Item
            module IncludedGroups
                module Item
                    ## 
                    # Builds and executes requests for operations under \mobilityManagementPolicies\{mobilityManagementPolicy-id}\includedGroups\{group-id}
                    class GroupItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the collection of mobilityManagementPolicy entities.
                        def ref()
                            return MicrosoftGraphBeta::MobilityManagementPolicies::Item::IncludedGroups::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new GroupItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/mobilityManagementPolicies/{mobilityManagementPolicy%2Did}/includedGroups/{group%2Did}")
                        end
                    end
                end
            end
        end
    end
end
