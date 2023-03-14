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
                        class IdentityProviderItemRequestBuilder
                            
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # Provides operations to manage the collection of identityContainer entities.
                            def ref()
                                return MicrosoftGraphBeta::Identity::B2cUserFlows::Item::IdentityProviders::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Instantiates a new IdentityProviderItemRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/identity/b2cUserFlows/{b2cIdentityUserFlow%2Did}/identityProviders/{identityProvider%2Did}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                        end
                    end
                end
            end
        end
    end
end
