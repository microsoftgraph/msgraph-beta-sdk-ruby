require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../education'
require_relative '../../../classes'
require_relative '../../item'
require_relative '../members'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Education
        module Classes
            module Item
                module Members
                    module Item
                        ## 
                        # Builds and executes requests for operations under \education\classes\{educationClass-id}\members\{educationUser-id}
                        class EducationUserItemRequestBuilder
                            
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # Provides operations to manage the collection of educationRoot entities.
                            def ref()
                                return MicrosoftGraphBeta::Education::Classes::Item::Members::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Instantiates a new EducationUserItemRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/education/classes/{educationClass%2Did}/members/{educationUser%2Did}"
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
