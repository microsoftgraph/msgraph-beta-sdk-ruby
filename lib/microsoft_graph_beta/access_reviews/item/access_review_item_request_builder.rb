require 'microsoft_kiota_abstractions'
require_relative '../../models/access_review'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../access_reviews'
require_relative './apply_decisions/apply_decisions_request_builder'
require_relative './decisions/decisions_request_builder'
require_relative './decisions/item/access_review_decision_item_request_builder'
require_relative './instances/instances_request_builder'
require_relative './instances/item/access_review_item_request_builder'
require_relative './item'
require_relative './my_decisions/item/access_review_decision_item_request_builder'
require_relative './my_decisions/my_decisions_request_builder'
require_relative './reset_decisions/reset_decisions_request_builder'
require_relative './reviewers/item/access_review_reviewer_item_request_builder'
require_relative './reviewers/reviewers_request_builder'
require_relative './send_reminder/send_reminder_request_builder'
require_relative './stop/stop_request_builder'

module MicrosoftGraphBeta::AccessReviews::Item
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class AccessReviewItemRequestBuilder
        
        ## 
        # Provides operations to call the applyDecisions method.
        def apply_decisions()
            return MicrosoftGraphBeta::AccessReviews::Item::ApplyDecisions::ApplyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the decisions property of the microsoft.graph.accessReview entity.
        def decisions()
            return MicrosoftGraphBeta::AccessReviews::Item::Decisions::DecisionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the instances property of the microsoft.graph.accessReview entity.
        def instances()
            return MicrosoftGraphBeta::AccessReviews::Item::Instances::InstancesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the myDecisions property of the microsoft.graph.accessReview entity.
        def my_decisions()
            return MicrosoftGraphBeta::AccessReviews::Item::MyDecisions::MyDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
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
            return MicrosoftGraphBeta::AccessReviews::Item::ResetDecisions::ResetDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the reviewers property of the microsoft.graph.accessReview entity.
        def reviewers()
            return MicrosoftGraphBeta::AccessReviews::Item::Reviewers::ReviewersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the sendReminder method.
        def send_reminder()
            return MicrosoftGraphBeta::AccessReviews::Item::SendReminder::SendReminderRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stop method.
        def stop()
            return MicrosoftGraphBeta::AccessReviews::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new AccessReviewItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/accessReviews/{accessReview%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## In the Azure AD access reviews feature, delete an accessReview object.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_delete_request_information(request_configuration=nil)
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
        ## In the Azure AD access reviews feature, retrieve an accessReview object.   To retrieve the reviewers of the access review, use the list accessReview reviewers API. To retrieve the decisions of the access review, use the list accessReview decisions API, or the list my accessReview decisions API. If this is a recurring access review, no decisions will be associated with the recurring access review series. Instead, use the `instances` relationship of that series to retrieve an accessReview collection of the past, current, and future instances of the access review. Each past and current instance will have decisions.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## In the Azure AD access reviews feature, update an existing accessReview object to change one or more of its properties. This API is not intended to change the reviewers or decisions of a review.  To change the reviewers, use the addReviewer or removeReviewer APIs.  To stop an already-started one-time review, or an already-started instance of a recurring review, early, use the stop API. To apply the decisions to the target group or app access rights, use the apply API. 
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Provides operations to manage the decisions property of the microsoft.graph.accessReview entity.
        ## @param id Unique identifier of the item
        ## @return a access_review_decision_item_request_builder
        ## 
        def decisions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReviewDecision%2Did"] = id
            return MicrosoftGraphBeta::AccessReviews::Item::Decisions::Item::AccessReviewDecisionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## In the Azure AD access reviews feature, delete an accessReview object.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.create_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## In the Azure AD access reviews feature, retrieve an accessReview object.   To retrieve the reviewers of the access review, use the list accessReview reviewers API. To retrieve the decisions of the access review, use the list accessReview decisions API, or the list my accessReview decisions API. If this is a recurring access review, no decisions will be associated with the recurring access review series. Instead, use the `instances` relationship of that series to retrieve an accessReview collection of the past, current, and future instances of the access review. Each past and current instance will have decisions.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of access_review
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReview.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the instances property of the microsoft.graph.accessReview entity.
        ## @param id Unique identifier of the item
        ## @return a access_review_item_request_builder
        ## 
        def instances_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReview%2Did1"] = id
            return MicrosoftGraphBeta::AccessReviews::Item::Instances::Item::AccessReviewItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the myDecisions property of the microsoft.graph.accessReview entity.
        ## @param id Unique identifier of the item
        ## @return a access_review_decision_item_request_builder
        ## 
        def my_decisions_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReviewDecision%2Did"] = id
            return MicrosoftGraphBeta::AccessReviews::Item::MyDecisions::Item::AccessReviewDecisionItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## In the Azure AD access reviews feature, update an existing accessReview object to change one or more of its properties. This API is not intended to change the reviewers or decisions of a review.  To change the reviewers, use the addReviewer or removeReviewer APIs.  To stop an already-started one-time review, or an already-started instance of a recurring review, early, use the stop API. To apply the decisions to the target group or app access rights, use the apply API. 
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of access_review
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReview.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the reviewers property of the microsoft.graph.accessReview entity.
        ## @param id Unique identifier of the item
        ## @return a access_review_reviewer_item_request_builder
        ## 
        def reviewers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["accessReviewReviewer%2Did"] = id
            return MicrosoftGraphBeta::AccessReviews::Item::Reviewers::Item::AccessReviewReviewerItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class AccessReviewItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # In the Azure AD access reviews feature, retrieve an accessReview object.   To retrieve the reviewers of the access review, use the list accessReview reviewers API. To retrieve the decisions of the access review, use the list accessReview decisions API, or the list my accessReview decisions API. If this is a recurring access review, no decisions will be associated with the recurring access review series. Instead, use the `instances` relationship of that series to retrieve an accessReview collection of the past, current, and future instances of the access review. Each past and current instance will have decisions.
        class AccessReviewItemRequestBuilderGetQueryParameters
            
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
        class AccessReviewItemRequestBuilderGetRequestConfiguration
            
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
        class AccessReviewItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
