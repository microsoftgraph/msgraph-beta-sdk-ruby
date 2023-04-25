require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/access_review_instance_decision_item'
require_relative '../../../../../../../models/access_review_instance_decision_item_collection_response'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../users'
require_relative '../../../../../item'
require_relative '../../../../pending_access_review_instances'
require_relative '../../../item'
require_relative '../../stages'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './decisions'
require_relative './filter_by_current_user_with_on/filter_by_current_user_with_on_request_builder'
require_relative './item/access_review_instance_decision_item_item_request_builder'
require_relative './record_all_decisions/record_all_decisions_request_builder'

module MicrosoftGraphBeta
    module Users
        module Item
            module PendingAccessReviewInstances
                module Item
                    module Stages
                        module Item
                            module Decisions
                                ## 
                                # Provides operations to manage the decisions property of the microsoft.graph.accessReviewStage entity.
                                class DecisionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Provides operations to call the recordAllDecisions method.
                                    def record_all_decisions()
                                        return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::RecordAllDecisions::RecordAllDecisionsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the decisions property of the microsoft.graph.accessReviewStage entity.
                                    ## @param access_review_instance_decision_item_id Unique identifier of the item
                                    ## @return a access_review_instance_decision_item_item_request_builder
                                    ## 
                                    def by_access_review_instance_decision_item_id(access_review_instance_decision_item_id)
                                        raise StandardError, 'access_review_instance_decision_item_id cannot be null' if access_review_instance_decision_item_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["accessReviewInstanceDecisionItem%2Did"] = access_review_instance_decision_item_id
                                        return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::Item::AccessReviewInstanceDecisionItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new DecisionsRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/pendingAccessReviewInstances/{accessReviewInstance%2Did}/stages/{accessReviewStage%2Did}/decisions{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                    end
                                    ## 
                                    ## Provides operations to call the filterByCurrentUser method.
                                    ## @param on Usage: on='{on}'
                                    ## @return a filter_by_current_user_with_on_request_builder
                                    ## 
                                    def filter_by_current_user_with_on(on)
                                        raise StandardError, 'on cannot be null' if on.nil?
                                        return FilterByCurrentUserWithOnRequestBuilder.new(@path_parameters, @request_adapter, on)
                                    end
                                    ## 
                                    ## Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of access_review_instance_decision_item_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstanceDecisionItemCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Create new navigation property to decisions for users
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of access_review_instance_decision_item
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstanceDecisionItem.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
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
                                    ## Create new navigation property to decisions for users
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_post_request_information(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :POST
                                        request_info.headers.add('Accept', 'application/json')
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                        return request_info
                                    end

                                    ## 
                                    # Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
                                    class DecisionsRequestBuilderGetQueryParameters
                                        
                                        ## 
                                        # Include count of items
                                        attr_accessor :count
                                        ## 
                                        # Expand related entities
                                        attr_accessor :expand
                                        ## 
                                        # Filter items by property values
                                        attr_accessor :filter
                                        ## 
                                        # Order items by property values
                                        attr_accessor :orderby
                                        ## 
                                        # Search items by search phrases
                                        attr_accessor :search
                                        ## 
                                        # Select properties to be returned
                                        attr_accessor :select
                                        ## 
                                        # Skip the first n items
                                        attr_accessor :skip
                                        ## 
                                        # Show only the first n items
                                        attr_accessor :top
                                        ## 
                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                        ## @param original_name The original query parameter name in the class.
                                        ## @return a string
                                        ## 
                                        def get_query_parameter(original_name)
                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                            case original_name
                                                when "count"
                                                    return "%24count"
                                                when "expand"
                                                    return "%24expand"
                                                when "filter"
                                                    return "%24filter"
                                                when "orderby"
                                                    return "%24orderby"
                                                when "search"
                                                    return "%24search"
                                                when "select"
                                                    return "%24select"
                                                when "skip"
                                                    return "%24skip"
                                                when "top"
                                                    return "%24top"
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
end
