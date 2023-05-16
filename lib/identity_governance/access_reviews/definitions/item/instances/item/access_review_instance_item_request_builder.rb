require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/access_review_instance'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../identity_governance'
require_relative '../../../../access_reviews'
require_relative '../../../definitions'
require_relative '../../item'
require_relative '../instances'
require_relative './accept_recommendations/accept_recommendations_request_builder'
require_relative './apply_decisions/apply_decisions_request_builder'
require_relative './batch_record_decisions/batch_record_decisions_request_builder'
require_relative './contacted_reviewers/contacted_reviewers_request_builder'
require_relative './decisions/decisions_request_builder'
require_relative './definition/definition_request_builder'
require_relative './item'
require_relative './reset_decisions/reset_decisions_request_builder'
require_relative './send_reminder/send_reminder_request_builder'
require_relative './stages/stages_request_builder'
require_relative './stop/stop_request_builder'
require_relative './stop_apply_decisions/stop_apply_decisions_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module AccessReviews
            module Definitions
                module Item
                    module Instances
                        module Item
                            ## 
                            # Provides operations to manage the instances property of the microsoft.graph.accessReviewScheduleDefinition entity.
                            class AccessReviewInstanceItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to call the acceptRecommendations method.
                                def accept_recommendations()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::AcceptRecommendations::AcceptRecommendationsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the applyDecisions method.
                                def apply_decisions()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ApplyDecisions::ApplyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the batchRecordDecisions method.
                                def batch_record_decisions()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::BatchRecordDecisions::BatchRecordDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the contactedReviewers property of the microsoft.graph.accessReviewInstance entity.
                                def contacted_reviewers()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ContactedReviewers::ContactedReviewersRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the decisions property of the microsoft.graph.accessReviewInstance entity.
                                def decisions()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Decisions::DecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the definition property of the microsoft.graph.accessReviewInstance entity.
                                def definition()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Definition::DefinitionRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the resetDecisions method.
                                def reset_decisions()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::ResetDecisions::ResetDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the sendReminder method.
                                def send_reminder()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::SendReminder::SendReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the stages property of the microsoft.graph.accessReviewInstance entity.
                                def stages()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Stages::StagesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stop method.
                                def stop()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the stopApplyDecisions method.
                                def stop_apply_decisions()
                                    return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Definitions::Item::Instances::Item::StopApplyDecisions::StopApplyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new AccessReviewInstanceItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/accessReviews/definitions/{accessReviewScheduleDefinition%2Did}/instances/{accessReviewInstance%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete navigation property instances for identityGovernance
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def delete(request_configuration=nil)
                                    request_info = self.to_delete_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Retrieve an accessReviewInstance object using the identifier of an accessReviewInstance and its parent accessReviewScheduleDefinition. This returns all properties of the instance except for the associated accessReviewInstanceDecisionItems. To retrieve the decisions on the instance, use List accessReviewInstanceDecisionItem.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_review_instance
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstance.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the properties of an accessReviewInstance object. Only the **reviewers** and **fallbackReviewers** properties can be updated but the **scope** property is also required in the request body. You can only add reviewers to the **fallbackReviewers** property but can't remove existing **fallbackReviewers**. To update an **accessReviewInstance**, it's **status** must be `InProgress`.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of access_review_instance
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstance.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete navigation property instances for identityGovernance
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_delete_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :DELETE
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                                ## 
                                ## Retrieve an accessReviewInstance object using the identifier of an accessReviewInstance and its parent accessReviewScheduleDefinition. This returns all properties of the instance except for the associated accessReviewInstanceDecisionItems. To retrieve the decisions on the instance, use List accessReviewInstanceDecisionItem.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_get_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :GET
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                                ## 
                                ## Update the properties of an accessReviewInstance object. Only the **reviewers** and **fallbackReviewers** properties can be updated but the **scope** property is also required in the request body. You can only add reviewers to the **fallbackReviewers** property but can't remove existing **fallbackReviewers**. To update an **accessReviewInstance**, it's **status** must be `InProgress`.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_patch_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    return request_info
                                end

                                ## 
                                # Retrieve an accessReviewInstance object using the identifier of an accessReviewInstance and its parent accessReviewScheduleDefinition. This returns all properties of the instance except for the associated accessReviewInstanceDecisionItems. To retrieve the decisions on the instance, use List accessReviewInstanceDecisionItem.
                                class AccessReviewInstanceItemRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
                                    ## 
                                    # Select properties to be returned
                                    attr_accessor :select
                                    ## 
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param original_name The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "expand"
                                                return "%24expand"
                                            when "select"
                                                return "%24select"
                                            else
                                                return original_name
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
