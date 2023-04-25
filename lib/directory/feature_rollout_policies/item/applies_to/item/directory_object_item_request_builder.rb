require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../directory'
require_relative '../../../feature_rollout_policies'
require_relative '../../item'
require_relative '../applies_to'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Directory
        module FeatureRolloutPolicies
            module Item
                module AppliesTo
                    module Item
                        ## 
                        # Builds and executes requests for operations under \directory\featureRolloutPolicies\{featureRolloutPolicy-id}\appliesTo\{directoryObject-id}
                        class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of directory entities.
                            def ref()
                                return MicrosoftGraphBeta::Directory::FeatureRolloutPolicies::Item::AppliesTo::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/directory/featureRolloutPolicies/{featureRolloutPolicy%2Did}/appliesTo/{directoryObject%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
