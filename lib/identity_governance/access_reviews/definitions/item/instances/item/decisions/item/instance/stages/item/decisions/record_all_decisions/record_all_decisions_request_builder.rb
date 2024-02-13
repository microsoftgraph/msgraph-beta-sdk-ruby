require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../identity_governance'
require_relative '../../../../../../../../../../../access_reviews'
require_relative '../../../../../../../../../../definitions'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../instances'
require_relative '../../../../../../../item'
require_relative '../../../../../../decisions'
require_relative '../../../../../item'
require_relative '../../../../instance'
require_relative '../../../stages'
require_relative '../../item'
require_relative '../decisions'
require_relative './record_all_decisions'

module MicrosoftGraphBeta
    module IdentityGovernance
        module AccessReviews
            module Definitions
                module Item
                    module Instances
                        module Item
                            module Decisions
                                module Item
                                    module Instance
                                        module Stages
                                            module Item
                                                module Decisions
                                                    module RecordAllDecisions
                                                        ## 
                                                        # Provides operations to call the recordAllDecisions method.
                                                        class RecordAllDecisionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            ## Instantiates a new RecordAllDecisionsRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinition%2Did}/instances/{accessReviewInstance%2Did}/decisions/{accessReviewInstanceDecisionItem%2Did}/instance/stages/{accessReviewStage%2Did}/decisions/recordAllDecisions")
                                                            end
                                                            ## 
                                                            ## As a reviewer of an access review, record a decision for an accessReviewInstanceDecisionItem that is assigned to you and that matches the principal or resource IDs specified. If no IDs are specified, the decisions will apply to every accessReviewInstanceDecisionItem for which you are the reviewer.
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of void
                                                            ## 
                                                            def post(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_post_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                                            end
                                                            ## 
                                                            ## As a reviewer of an access review, record a decision for an accessReviewInstanceDecisionItem that is assigned to you and that matches the principal or resource IDs specified. If no IDs are specified, the decisions will apply to every accessReviewInstanceDecisionItem for which you are the reviewer.
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_post_request_information(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :POST
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                            ## @param raw_url The raw URL to use for the request builder.
                                                            ## @return a record_all_decisions_request_builder
                                                            ## 
                                                            def with_url(raw_url)
                                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                return RecordAllDecisionsRequestBuilder.new(raw_url, @request_adapter)
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
end
