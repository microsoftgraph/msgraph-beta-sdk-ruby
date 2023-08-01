require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../users'
require_relative '../../../../../../item'
require_relative '../../../../../pending_access_review_instances'
require_relative '../../../../item'
require_relative '../../../decisions'
require_relative '../../item'
require_relative '../instance'
require_relative './accept_recommendations'

module MicrosoftGraphBeta
    module Users
        module Item
            module PendingAccessReviewInstances
                module Item
                    module Decisions
                        module Item
                            module Instance
                                module AcceptRecommendations
                                    ## 
                                    # Provides operations to call the acceptRecommendations method.
                                    class AcceptRecommendationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        ## Instantiates a new AcceptRecommendationsRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/pendingAccessReviewInstances/{accessReviewInstance%2Did}/decisions/{accessReviewInstanceDecisionItem%2Did}/instance/acceptRecommendations")
                                        end
                                        ## 
                                        ## Allows the acceptance of recommendations on all accessReviewInstanceDecisionItem objects that have not been reviewed for an accessReviewInstance object for which the calling user is a reviewer. Recommendations are generated if recommendationsEnabled is true on the accessReviewScheduleDefinition object. If there is not a recommendation on an accessReviewInstanceDecisionItem object no decision will be recorded.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of void
                                        ## 
                                        def post(request_configuration=nil)
                                            request_info = self.to_post_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, nil, error_mapping)
                                        end
                                        ## 
                                        ## Allows the acceptance of recommendations on all accessReviewInstanceDecisionItem objects that have not been reviewed for an accessReviewInstance object for which the calling user is a reviewer. Recommendations are generated if recommendationsEnabled is true on the accessReviewScheduleDefinition object. If there is not a recommendation on an accessReviewInstanceDecisionItem object no decision will be recorded.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_post_request_information(request_configuration=nil)
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :POST
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            return request_info
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
