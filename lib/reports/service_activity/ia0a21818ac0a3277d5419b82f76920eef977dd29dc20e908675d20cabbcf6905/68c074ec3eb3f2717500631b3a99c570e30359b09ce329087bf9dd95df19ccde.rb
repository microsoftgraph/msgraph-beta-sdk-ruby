require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../reports'
require_relative '../service_activity'
require_relative './ia0a21818ac0a3277d5419b82f76920eef977dd29dc20e908675d20cabbcf6905'

module MicrosoftGraphBeta
    module Reports
        module ServiceActivity
            module Ia0a21818ac0a3277d5419b82f76920eef977dd29dc20e908675d20cabbcf6905
                ## 
                # Provides operations to call the getMetricsForSamlSignInSuccess method.
                class GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder and sets the default values.
                    ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                    ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter, exclusive_interval_end_date_time=nil, inclusive_interval_start_date_time=nil)
                        super(path_parameters, request_adapter, "{+baseurl}/reports/serviceActivity/getMetricsForSamlSignInSuccess(inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime},exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime},aggregationIntervalInMinutes=@aggregationIntervalInMinutes){?%24count,%24filter,%24search,%24skip,%24top,aggregationIntervalInMinutes*}")
                    end
                    ## 
                    ## Invoke function getMetricsForSamlSignInSuccess
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_get_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Reports::ServiceActivity::Ia0a21818ac0a3277d5419b82f76920eef977dd29dc20e908675d20cabbcf6905::GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke function getMetricsForSamlSignInSuccess
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Invoke function getMetricsForSamlSignInSuccess
                    class GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilderGetQueryParameters
                        
                        ## 
                        # Usage: aggregationIntervalInMinutes=@aggregationIntervalInMinutes
                        attr_accessor :aggregation_interval_in_minutes
                        ## 
                        # Include count of items
                        attr_accessor :count
                        ## 
                        # Filter items by property values
                        attr_accessor :filter
                        ## 
                        # Search items by search phrases
                        attr_accessor :search
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
                                when "aggregation_interval_in_minutes"
                                    return "aggregationIntervalInMinutes"
                                when "count"
                                    return "%24count"
                                when "filter"
                                    return "%24filter"
                                when "search"
                                    return "%24search"
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
