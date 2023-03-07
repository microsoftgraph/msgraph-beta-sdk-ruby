require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../access_reviews'
require_relative '../../../../../../../../../definitions'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../instances'
require_relative '../../../../../../item'
require_relative '../../../../../stages'
require_relative '../../../../item'
require_relative '../../../decisions'
require_relative '../../item'
require_relative '../instance'
require_relative './batch_record_decisions'

module MicrosoftGraphBeta
    module IdentityGovernance
        module AccessReviews
            module Definitions
                module Item
                    module Instances
                        module Item
                            module Stages
                                module Item
                                    module Decisions
                                        module Item
                                            module Instance
                                                module BatchRecordDecisions
                                                    ## 
                                                    # Provides operations to call the batchRecordDecisions method.
                                                    class BatchRecordDecisionsRequestBuilder
                                                        
                                                        ## 
                                                        # Path parameters for the request
                                                        @path_parameters
                                                        ## 
                                                        # The request adapter to use to execute the requests.
                                                        @request_adapter
                                                        ## 
                                                        # Url template to use to build the URL for the current request builder
                                                        @url_template
                                                        ## 
                                                        ## Instantiates a new BatchRecordDecisionsRequestBuilder and sets the default values.
                                                        ## @param pathParameters Path parameters for the request
                                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                            @url_template = "{+baseurl}/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinition%2Did}/instances/{accessReviewInstance%2Did}/stages/{accessReviewStage%2Did}/decisions/{accessReviewInstanceDecisionItem%2Did}/instance/batchRecordDecisions"
                                                            @request_adapter = request_adapter
                                                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                        end
                                                        ## 
                                                        ## Enables reviewers to review all accessReviewInstanceDecisionItem objects in batches by using **principalId**, **resourceId**, or neither.
                                                        ## @param body The request body
                                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of void
                                                        ## 
                                                        def post(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = self.to_post_request_information(
                                                                body, request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, nil, error_mapping)
                                                        end
                                                        ## 
                                                        ## Enables reviewers to review all accessReviewInstanceDecisionItem objects in batches by using **principalId**, **resourceId**, or neither.
                                                        ## @param body The request body
                                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a request_information
                                                        ## 
                                                        def to_post_request_information(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                            request_info.url_template = @url_template
                                                            request_info.path_parameters = @path_parameters
                                                            request_info.http_method = :POST
                                                            unless request_configuration.nil?
                                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                request_info.add_request_options(request_configuration.options)
                                                            end
                                                            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                                            return request_info
                                                        end

                                                        ## 
                                                        # Configuration for the request such as headers, query parameters, and middleware options.
                                                        class BatchRecordDecisionsRequestBuilderPostRequestConfiguration
                                                            
                                                            ## 
                                                            # Request headers
                                                            attr_accessor :headers
                                                            ## 
                                                            # Request options
                                                            attr_accessor :options
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
            end
        end
    end
end
