require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/networkaccess_device_usage_summary'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../network_access'
require_relative '../reports'
require_relative './id5c8c2a79c0321b875c59a87bc8a020b5a9cfaa890a983cfdf79ad01703c45f6'

module MicrosoftGraphBeta
    module NetworkAccess
        module Reports
            module Id5c8c2a79c0321b875c59a87bc8a020b5a9cfaa890a983cfdf79ad01703c45f6
                ## 
                # Provides operations to call the getDeviceUsageSummary method.
                class MicrosoftGraphNetworkaccessGetDeviceUsageSummaryWithStartDateTimeWithEndDateTimeWithActivityPivotDateTimeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new MicrosoftGraphNetworkaccessGetDeviceUsageSummaryWithStartDateTimeWithEndDateTimeWithActivityPivotDateTimeRequestBuilder and sets the default values.
                    ## @param activity_pivot_date_time Usage: activityPivotDateTime={activityPivotDateTime}
                    ## @param end_date_time Usage: endDateTime={endDateTime}
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @param start_date_time Usage: startDateTime={startDateTime}
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter, activity_pivot_date_time=nil, end_date_time=nil, start_date_time=nil)
                        super(path_parameters, request_adapter, "{+baseurl}/networkAccess/reports/microsoft.graph.networkaccess.getDeviceUsageSummary(startDateTime={startDateTime},endDateTime={endDateTime},activityPivotDateTime={activityPivotDateTime})")
                    end
                    ## 
                    ## Invoke function getDeviceUsageSummary
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of networkaccess_device_usage_summary
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessDeviceUsageSummary.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke function getDeviceUsageSummary
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
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
                    ## @return a microsoft_graph_networkaccess_get_device_usage_summary_with_start_date_time_with_end_date_time_with_activity_pivot_date_time_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return MicrosoftGraphNetworkaccessGetDeviceUsageSummaryWithStartDateTimeWithEndDateTimeWithActivityPivotDateTimeRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
