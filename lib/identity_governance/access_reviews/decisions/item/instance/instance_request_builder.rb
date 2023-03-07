require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/access_review_instance'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../identity_governance'
require_relative '../../../access_reviews'
require_relative '../../decisions'
require_relative '../item'
require_relative './accept_recommendations/accept_recommendations_request_builder'
require_relative './apply_decisions/apply_decisions_request_builder'
require_relative './batch_record_decisions/batch_record_decisions_request_builder'
require_relative './contacted_reviewers/contacted_reviewers_request_builder'
require_relative './contacted_reviewers/item/access_review_reviewer_item_request_builder'
require_relative './decisions/decisions_request_builder'
require_relative './decisions/item/access_review_instance_decision_item_item_request_builder'
require_relative './definition/definition_request_builder'
require_relative './instance'
require_relative './reset_decisions/reset_decisions_request_builder'
require_relative './send_reminder/send_reminder_request_builder'
require_relative './stages/item/access_review_stage_item_request_builder'
require_relative './stages/stages_request_builder'
require_relative './stop/stop_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module AccessReviews
            module Decisions
                module Item
                    module Instance
                        ## 
                        # Provides operations to manage the instance property of the microsoft.graph.accessReviewInstanceDecisionItem entity.
                        class InstanceRequestBuilder
                            
                            ## 
                            # Provides operations to call the acceptRecommendations method.
                            def accept_recommendations()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::AcceptRecommendations::AcceptRecommendationsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the applyDecisions method.
                            def apply_decisions()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::ApplyDecisions::ApplyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the batchRecordDecisions method.
                            def batch_record_decisions()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::BatchRecordDecisions::BatchRecordDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the contactedReviewers property of the microsoft.graph.accessReviewInstance entity.
                            def contacted_reviewers()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::ContactedReviewers::ContactedReviewersRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the decisions property of the microsoft.graph.accessReviewInstance entity.
                            def decisions()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Decisions::DecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the definition property of the microsoft.graph.accessReviewInstance entity.
                            def definition()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Definition::DefinitionRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Path parameters for the request
                            @path_parameters
                            ## 
                            # The request adapter to use to execute the requests.
                            @request_adapter
                            ## 
                            # Provides operations to call the resetDecisions method.
                            def reset_decisions()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::ResetDecisions::ResetDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the sendReminder method.
                            def send_reminder()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::SendReminder::SendReminderRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the stages property of the microsoft.graph.accessReviewInstance entity.
                            def stages()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Stages::StagesRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the stop method.
                            def stop()
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Url template to use to build the URL for the current request builder
                            @url_template
                            ## 
                            ## Instantiates a new InstanceRequestBuilder and sets the default values.
                            ## @param pathParameters Path parameters for the request
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/identityGovernance/accessReviews/decisions/{accessReviewInstanceDecisionItem%2Did}/instance{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Provides operations to manage the contactedReviewers property of the microsoft.graph.accessReviewInstance entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_review_reviewer_item_request_builder
                            ## 
                            def contacted_reviewers_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessReviewReviewer%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::ContactedReviewers::Item::AccessReviewReviewerItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the decisions property of the microsoft.graph.accessReviewInstance entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_review_instance_decision_item_item_request_builder
                            ## 
                            def decisions_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessReviewInstanceDecisionItem%2Did1"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Decisions::Item::AccessReviewInstanceDecisionItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Delete navigation property instance for identityGovernance
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## There is exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## Update the navigation property instance in identityGovernance
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## Provides operations to manage the stages property of the microsoft.graph.accessReviewInstance entity.
                            ## @param id Unique identifier of the item
                            ## @return a access_review_stage_item_request_builder
                            ## 
                            def stages_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["accessReviewStage%2Did"] = id
                                return MicrosoftGraphBeta::IdentityGovernance::AccessReviews::Decisions::Item::Instance::Stages::Item::AccessReviewStageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Delete navigation property instance for identityGovernance
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## There is exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                            ## Update the navigation property instance in identityGovernance
                            ## @param body The request body
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                return request_info
                            end

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class InstanceRequestBuilderDeleteRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                            end

                            ## 
                            # There is exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on.
                            class InstanceRequestBuilderGetQueryParameters
                                
                                ## 
                                # Expand related entities
                                attr_accessor :expand
                                ## 
                                # Select properties to be returned
                                attr_accessor :select
                                ## 
                                ## Maps the query parameters names to their encoded names for the URI template parsing.
                                ## @param originalName The original query parameter name in the class.
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

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class InstanceRequestBuilderGetRequestConfiguration
                                
                                ## 
                                # Request headers
                                attr_accessor :headers
                                ## 
                                # Request options
                                attr_accessor :options
                                ## 
                                # Request query parameters
                                attr_accessor :query_parameters
                            end

                            ## 
                            # Configuration for the request such as headers, query parameters, and middleware options.
                            class InstanceRequestBuilderPatchRequestConfiguration
                                
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
