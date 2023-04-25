require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../identity'
require_relative '../../../b2c_user_flows'
require_relative '../../item'
require_relative '../identity_providers'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Identity
        module B2cUserFlows
            module Item
                module IdentityProviders
                    module Item
                        ## 
                        # Builds and executes requests for operations under \identity\b2cUserFlows\{b2cIdentityUserFlow-id}\identityProviders\{identityProvider-id}
                        class IdentityProviderItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the collection of identityContainer entities.
                            def ref()
                                return MicrosoftGraphBeta::Identity::B2cUserFlows::Item::IdentityProviders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new IdentityProviderItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/identity/b2cUserFlows/{b2cIdentityUserFlow%2Did}/identityProviders/{identityProvider%2Did}")
                            end
                        end
                    end
                end
            end
        end
    end
end
