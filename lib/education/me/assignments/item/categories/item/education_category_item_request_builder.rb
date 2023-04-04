require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../education'
require_relative '../../../../me'
require_relative '../../../assignments'
require_relative '../../item'
require_relative '../categories'
require_relative './item'
require_relative './ref/ref_request_builder'

module MicrosoftGraphBeta
    module Education
        module Me
            module Assignments
                module Item
                    module Categories
                        module Item
                            ## 
                            # Builds and executes requests for operations under \education\me\assignments\{educationAssignment-id}\categories\{educationCategory-id}
                            class EducationCategoryItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the collection of educationRoot entities.
                                def ref()
                                    return MicrosoftGraphBeta::Education::Me::Assignments::Item::Categories::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new EducationCategoryItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/education/me/assignments/{educationAssignment%2Did}/categories/{educationCategory%2Did}")
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
