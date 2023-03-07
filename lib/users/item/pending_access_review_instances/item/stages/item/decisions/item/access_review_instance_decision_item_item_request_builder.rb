require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../models/access_review_instance_decision_item'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../users'
require_relative '../../../../../../item'
require_relative '../../../../../pending_access_review_instances'
require_relative '../../../../item'
require_relative '../../../stages'
require_relative '../../item'
require_relative '../decisions'
require_relative './insights/insights_request_builder'
require_relative './insights/item/governance_insight_item_request_builder'
require_relative './instance/instance_request_builder'
require_relative './item'

module MicrosoftGraphBeta
    module Users
        module Item
            module PendingAccessReviewInstances
                module Item
                    module Stages
                        module Item
                            module Decisions
                                module Item
                                    ## 
                                    # Provides operations to manage the decisions property of the microsoft.graph.accessReviewStage entity.
                                    class AccessReviewInstanceDecisionItemItemRequestBuilder
                                        
                                        ## 
                                        # Provides operations to manage the insights property of the microsoft.graph.accessReviewInstanceDecisionItem entity.
                                        def insights()
                                            return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::Item::Insights::InsightsRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the instance property of the microsoft.graph.accessReviewInstanceDecisionItem entity.
                                        def instance()
                                            return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::Item::Instance::InstanceRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
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
                                        ## Instantiates a new AccessReviewInstanceDecisionItemItemRequestBuilder and sets the default values.
                                        ## @param pathParameters Path parameters for the request
                                        ## @param requestAdapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                            @url_template = "{+baseurl}/users/{user%2Did}/pendingAccessReviewInstances/{accessReviewInstance%2Did}/stages/{accessReviewStage%2Did}/decisions/{accessReviewInstanceDecisionItem%2Did}{?%24select,%24expand}"
                                            @request_adapter = request_adapter
                                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                                        end
                                        ## 
                                        ## Delete navigation property decisions for users
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
                                        ## Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of access_review_instance_decision_item
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstanceDecisionItem.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Provides operations to manage the insights property of the microsoft.graph.accessReviewInstanceDecisionItem entity.
                                        ## @param id Unique identifier of the item
                                        ## @return a governance_insight_item_request_builder
                                        ## 
                                        def insights_by_id(id)
                                            raise StandardError, 'id cannot be null' if id.nil?
                                            url_tpl_params = @path_parameters.clone
                                            url_tpl_params["governanceInsight%2Did"] = id
                                            return MicrosoftGraphBeta::Users::Item::PendingAccessReviewInstances::Item::Stages::Item::Decisions::Item::Insights::Item::GovernanceInsightItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                        end
                                        ## 
                                        ## Update the navigation property decisions in users
                                        ## @param body The request body
                                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of access_review_instance_decision_item
                                        ## 
                                        def patch(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_patch_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AccessReviewInstanceDecisionItem.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Delete navigation property decisions for users
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
                                        ## Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
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
                                        ## Update the navigation property decisions in users
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
                                        class AccessReviewInstanceDecisionItemItemRequestBuilderDeleteRequestConfiguration
                                            
                                            ## 
                                            # Request headers
                                            attr_accessor :headers
                                            ## 
                                            # Request options
                                            attr_accessor :options
                                        end

                                        ## 
                                        # Each user reviewed in an accessReviewStage has a decision item representing if they were approved, denied, or not yet reviewed.
                                        class AccessReviewInstanceDecisionItemItemRequestBuilderGetQueryParameters
                                            
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
                                        class AccessReviewInstanceDecisionItemItemRequestBuilderGetRequestConfiguration
                                            
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
                                        class AccessReviewInstanceDecisionItemItemRequestBuilderPatchRequestConfiguration
                                            
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
