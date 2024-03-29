require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/identity_governance_user_processing_result_collection_response'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../identity_governance'
require_relative '../../../../../lifecycle_workflows'
require_relative '../../../../workflows'
require_relative '../../../item'
require_relative '../../runs'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/user_processing_result_item_request_builder'
require_relative './microsoft_graph_identity_governance_summary_with_start_date_time_with_end_date_time/36c018190cb6abe4c63d851569a210559aeb9b9bde4779989f2d89224122762b'
require_relative './user_processing_results'

module MicrosoftGraphBeta
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    module Runs
                        module Item
                            module UserProcessingResults
                                ## 
                                # Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                class UserProcessingResultsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Runs::Item::UserProcessingResults::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                    ## @param user_processing_result_id The unique identifier of userProcessingResult
                                    ## @return a user_processing_result_item_request_builder
                                    ## 
                                    def by_user_processing_result_id(user_processing_result_id)
                                        raise StandardError, 'user_processing_result_id cannot be null' if user_processing_result_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["userProcessingResult%2Did"] = user_processing_result_id
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Runs::Item::UserProcessingResults::Item::UserProcessingResultItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new UserProcessingResultsRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}/runs/{run%2Did}/userProcessingResults{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                    end
                                    ## 
                                    ## Get user processing results of a workflow run object.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of identity_governance_user_processing_result_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernanceUserProcessingResultCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Provides operations to call the summary method.
                                    ## @param end_date_time Usage: endDateTime={endDateTime}
                                    ## @param start_date_time Usage: startDateTime={startDateTime}
                                    ## @return a microsoft_graph_identity_governance_summary_with_start_date_time_with_end_date_time_request_builder
                                    ## 
                                    def microsoft_graph_identity_governance_summary_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                                        raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                                        raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                                        return MicrosoftGraphIdentityGovernanceSummaryWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                                    end
                                    ## 
                                    ## Get user processing results of a workflow run object.
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
                                    # Get user processing results of a workflow run object.
                                    class UserProcessingResultsRequestBuilderGetQueryParameters
                                        
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
