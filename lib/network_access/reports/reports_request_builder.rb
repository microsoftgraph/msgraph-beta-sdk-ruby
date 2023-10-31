require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/networkaccess_reports'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../network_access'
require_relative './i04bba7b01069ba246ad5510537de7da30c75b05ce53e31a5928207e9be0e8877/f406787883c66c0f390dd714fc26f80b3dd5a8392261358ec0d9e7ccc6cdb758'
require_relative './i790ff3024a1514ee6095b1a7a84da889b7628ba1de248b547eb6326db091ff6c/c4789c601cffb9322bb229014700c92cfd41038bfcd6e094c9c3ba85f476bc54'
require_relative './id5c8c2a79c0321b875c59a87bc8a020b5a9cfaa890a983cfdf79ad01703c45f6/cb6b7bab359b683416ff884e0495854f6ba890d25e689fef91b4516dc1e64805'
require_relative './microsoft_graph_networkaccess_cross_tenant_access_report_with_start_date_time_with_end_date_time/70db997100180dfa35b647b48f6b6376e411f69e770413a5c77ee26d152e9222'
require_relative './microsoft_graph_networkaccess_destination_report_with_start_date_time_with_end_date_time/6ab07a3be980a603b7389777d758b455941aa88e7bf7f78dae1399797162994a'
require_relative './microsoft_graph_networkaccess_device_report_with_start_date_time_with_end_date_time/69cf46b17b5584e5826a3eea340b4b3df9145af2107971eefac05f201a8e6cd1'
require_relative './microsoft_graph_networkaccess_entities_summaries_with_start_date_time_with_end_date_time/c343498810f476170d90109ce8aea687338eab493410c765b7e829926e56825d'
require_relative './microsoft_graph_networkaccess_traffic_distribution_with_start_date_time_with_end_date_time/675210acc78e68f52553c5242eac2dc3bda5f5410070d1fbbbd6c12c132af128'
require_relative './microsoft_graph_networkaccess_transaction_summaries_with_start_date_time_with_end_date_time/3dbad33a77bc0e7f9f7c2335ee61af2bc979954fe880c43c8b589a46ff09db86'
require_relative './microsoft_graph_networkaccess_user_report_with_start_date_time_with_end_date_time/ad26bf74174c8a593ff329580d0265e3b7688e13d68cb3bd9a9eab88c9d8312d'
require_relative './microsoft_graph_networkaccess_web_category_report_with_start_date_time_with_end_date_time/58305680d5e8b2a8f12b3d39dcbf704af3ee66c27cf4d7e734c9a5d22aef73ca'
require_relative './reports'

module MicrosoftGraphBeta
    module NetworkAccess
        module Reports
            ## 
            # Provides operations to manage the reports property of the microsoft.graph.networkaccess.networkAccessRoot entity.
            class ReportsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new ReportsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/networkAccess/reports{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property reports for networkAccess
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Represents the status of the Global Secure Access services for the tenant.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of networkaccess_reports
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessReports.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to call the crossTenantAccessReport method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_cross_tenant_access_report_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_cross_tenant_access_report_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessCrossTenantAccessReportWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the destinationReport method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_destination_report_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_destination_report_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessDestinationReportWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the deviceReport method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_device_report_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_device_report_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessDeviceReportWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the entitiesSummaries method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_entities_summaries_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_entities_summaries_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessEntitiesSummariesWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the getCrossTenantSummary method.
                ## @param discovery_pivot_date_time Usage: discoveryPivotDateTime={discoveryPivotDateTime}
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_get_cross_tenant_summary_with_start_date_time_with_end_date_time_with_discovery_pivot_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_get_cross_tenant_summary_with_start_date_time_with_end_date_time_with_discovery_pivot_date_time(discovery_pivot_date_time, end_date_time, start_date_time)
                    raise StandardError, 'discovery_pivot_date_time cannot be null' if discovery_pivot_date_time.nil?
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessGetCrossTenantSummaryWithStartDateTimeWithEndDateTimeWithDiscoveryPivotDateTimeRequestBuilder.new(@path_parameters, @request_adapter, discoveryPivotDateTime, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the getDestinationSummaries method.
                ## @param aggregated_by Usage: aggregatedBy='{aggregatedBy}'
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_get_destination_summaries_with_start_date_time_with_end_date_time_with_aggregated_by_request_builder
                ## 
                def microsoft_graph_networkaccess_get_destination_summaries_with_start_date_time_with_end_date_time_with_aggregated_by(aggregated_by, end_date_time, start_date_time)
                    raise StandardError, 'aggregated_by cannot be null' if aggregated_by.nil?
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessGetDestinationSummariesWithStartDateTimeWithEndDateTimeWithAggregatedByRequestBuilder.new(@path_parameters, @request_adapter, aggregatedBy, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the getDeviceUsageSummary method.
                ## @param activity_pivot_date_time Usage: activityPivotDateTime={activityPivotDateTime}
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_get_device_usage_summary_with_start_date_time_with_end_date_time_with_activity_pivot_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_get_device_usage_summary_with_start_date_time_with_end_date_time_with_activity_pivot_date_time(activity_pivot_date_time, end_date_time, start_date_time)
                    raise StandardError, 'activity_pivot_date_time cannot be null' if activity_pivot_date_time.nil?
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessGetDeviceUsageSummaryWithStartDateTimeWithEndDateTimeWithActivityPivotDateTimeRequestBuilder.new(@path_parameters, @request_adapter, activityPivotDateTime, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the trafficDistribution method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_traffic_distribution_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_traffic_distribution_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessTrafficDistributionWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the transactionSummaries method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_transaction_summaries_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_transaction_summaries_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessTransactionSummariesWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the userReport method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_user_report_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_user_report_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessUserReportWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Provides operations to call the webCategoryReport method.
                ## @param end_date_time Usage: endDateTime={endDateTime}
                ## @param start_date_time Usage: startDateTime={startDateTime}
                ## @return a microsoft_graph_networkaccess_web_category_report_with_start_date_time_with_end_date_time_request_builder
                ## 
                def microsoft_graph_networkaccess_web_category_report_with_start_date_time_with_end_date_time(end_date_time, start_date_time)
                    raise StandardError, 'end_date_time cannot be null' if end_date_time.nil?
                    raise StandardError, 'start_date_time cannot be null' if start_date_time.nil?
                    return MicrosoftGraphNetworkaccessWebCategoryReportWithStartDateTimeWithEndDateTimeRequestBuilder.new(@path_parameters, @request_adapter, endDateTime, startDateTime)
                end
                ## 
                ## Update the navigation property reports in networkAccess
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of networkaccess_reports
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessReports.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property reports for networkAccess
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    request_info.headers.try_add('Accept', 'application/json, application/json')
                    return request_info
                end
                ## 
                ## Represents the status of the Global Secure Access services for the tenant.
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
                    request_info.headers.try_add('Accept', 'application/json;q=1')
                    return request_info
                end
                ## 
                ## Update the navigation property reports in networkAccess
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
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json;q=1')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a reports_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ReportsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Represents the status of the Global Secure Access services for the tenant.
                class ReportsRequestBuilderGetQueryParameters
                    
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
