require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/service_activity'
require_relative '../reports'
require_relative './i89ba2a583af7d339d827e6d94f2772b75855c8500c0f12f16c5455a1315fc244/297ab721eb3df4db503c54594f2c14c68c6f2a3f8e86c6655206e891d9b4d4a6'
require_relative './i9ac34f0509edcb5d6bbfbbc269d67a27c97c49dfb31ee38c1bf4c30f04dc5115/099fe69c3ef7dae9fdb834bd5c5d9aa8a435fe78975dd909e71c729c793012cb'
require_relative './ia0a21818ac0a3277d5419b82f76920eef977dd29dc20e908675d20cabbcf6905/68c074ec3eb3f2717500631b3a99c570e30359b09ce329087bf9dd95df19ccde'
require_relative './ibd23993d75324c4c49c081331c63a800388b0eef73300a6162c701ffdb8ead77/00af6ad3202a2bdbcd71c6d386e27dfe3ed3d93420a7ad45002f31898ee05d7b'
require_relative './ic2f09e85b5c85875cbfe7d2abc99663967375ded176da816e2d5bce868722e20/2fdff003a8c0705c9980479e95a2381e13eacd9c921c13e8a048c983aec5f3c9'
require_relative './service_activity'

module MicrosoftGraphBeta
    module Reports
        module ServiceActivity
            ## 
            # Provides operations to manage the serviceActivity property of the microsoft.graph.reportRoot entity.
            class ServiceActivityRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new ServiceActivityRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/reports/serviceActivity{?%24expand,%24select}")
                end
                ## 
                ## Delete navigation property serviceActivity for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Reports that relate to tenant-level authentication activities in Microsoft Entra.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_activity
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ServiceActivity.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the getMetricsForConditionalAccessCompliantDevicesSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_conditional_access_compliant_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_conditional_access_compliant_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForConditionalAccessCompliantDevicesSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForConditionalAccessManagedDevicesSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_conditional_access_managed_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_conditional_access_managed_devices_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForConditionalAccessManagedDevicesSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForMfaSignInFailure method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_mfa_sign_in_failure_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_mfa_sign_in_failure_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForMfaSignInFailureWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForMfaSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_mfa_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_mfa_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForMfaSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Provides operations to call the getMetricsForSamlSignInSuccess method.
                ## @param exclusive_interval_end_date_time Usage: exclusiveIntervalEndDateTime={exclusiveIntervalEndDateTime}
                ## @param inclusive_interval_start_date_time Usage: inclusiveIntervalStartDateTime={inclusiveIntervalStartDateTime}
                ## @return a get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes_request_builder
                ## 
                def get_metrics_for_saml_sign_in_success_with_inclusive_interval_start_date_time_with_exclusive_interval_end_date_time_with_aggregation_interval_in_minutes(exclusive_interval_end_date_time, inclusive_interval_start_date_time)
                    raise StandardError, 'exclusive_interval_end_date_time cannot be null' if exclusive_interval_end_date_time.nil?
                    raise StandardError, 'inclusive_interval_start_date_time cannot be null' if inclusive_interval_start_date_time.nil?
                    return GetMetricsForSamlSignInSuccessWithInclusiveIntervalStartDateTimeWithExclusiveIntervalEndDateTimeWithAggregationIntervalInMinutesRequestBuilder.new(@path_parameters, @request_adapter, exclusiveIntervalEndDateTime, inclusiveIntervalStartDateTime)
                end
                ## 
                ## Update the navigation property serviceActivity in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_activity
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ServiceActivity.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property serviceActivity for reports
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = '{+baseurl}/reports/serviceActivity'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Reports that relate to tenant-level authentication activities in Microsoft Entra.
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
                ## Update the navigation property serviceActivity in reports
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_patch_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    request_info.url_template = '{+baseurl}/reports/serviceActivity'
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a service_activity_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ServiceActivityRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Reports that relate to tenant-level authentication activities in Microsoft Entra.
                class ServiceActivityRequestBuilderGetQueryParameters
                    
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
