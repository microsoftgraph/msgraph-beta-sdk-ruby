require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/cloud_pc_reports'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../virtual_endpoint'
require_relative './export_jobs/export_jobs_request_builder'
require_relative './get_action_status_reports/get_action_status_reports_request_builder'
require_relative './get_cloud_pc_recommendation_reports/get_cloud_pc_recommendation_reports_request_builder'
require_relative './get_connection_quality_reports/get_connection_quality_reports_request_builder'
require_relative './get_daily_aggregated_remote_connection_reports/get_daily_aggregated_remote_connection_reports_request_builder'
require_relative './get_frontline_report/get_frontline_report_request_builder'
require_relative './get_inaccessible_cloud_pc_reports/get_inaccessible_cloud_pc_reports_request_builder'
require_relative './get_raw_remote_connection_reports/get_raw_remote_connection_reports_request_builder'
require_relative './get_real_time_remote_connection_latency_with_cloud_pc_id/get_real_time_remote_connection_latency_with_cloud_pc_id_request_builder'
require_relative './get_real_time_remote_connection_status_with_cloud_pc_id/get_real_time_remote_connection_status_with_cloud_pc_id_request_builder'
require_relative './get_remote_connection_historical_reports/get_remote_connection_historical_reports_request_builder'
require_relative './get_shared_use_license_usage_report/get_shared_use_license_usage_report_request_builder'
require_relative './get_total_aggregated_remote_connection_reports/get_total_aggregated_remote_connection_reports_request_builder'
require_relative './reports'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module Reports
                ## 
                # Provides operations to manage the reports property of the microsoft.graph.virtualEndpoint entity.
                class ReportsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the exportJobs property of the microsoft.graph.cloudPcReports entity.
                    def export_jobs()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ExportJobs::ExportJobsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getActionStatusReports method.
                    def get_action_status_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetActionStatusReports::GetActionStatusReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getCloudPcRecommendationReports method.
                    def get_cloud_pc_recommendation_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetCloudPcRecommendationReports::GetCloudPcRecommendationReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getConnectionQualityReports method.
                    def get_connection_quality_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetConnectionQualityReports::GetConnectionQualityReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getDailyAggregatedRemoteConnectionReports method.
                    def get_daily_aggregated_remote_connection_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetDailyAggregatedRemoteConnectionReports::GetDailyAggregatedRemoteConnectionReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getFrontlineReport method.
                    def get_frontline_report()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetFrontlineReport::GetFrontlineReportRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getInaccessibleCloudPcReports method.
                    def get_inaccessible_cloud_pc_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetInaccessibleCloudPcReports::GetInaccessibleCloudPcReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getRawRemoteConnectionReports method.
                    def get_raw_remote_connection_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetRawRemoteConnectionReports::GetRawRemoteConnectionReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getRemoteConnectionHistoricalReports method.
                    def get_remote_connection_historical_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetRemoteConnectionHistoricalReports::GetRemoteConnectionHistoricalReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getSharedUseLicenseUsageReport method.
                    def get_shared_use_license_usage_report()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetSharedUseLicenseUsageReport::GetSharedUseLicenseUsageReportRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getTotalAggregatedRemoteConnectionReports method.
                    def get_total_aggregated_remote_connection_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::GetTotalAggregatedRemoteConnectionReports::GetTotalAggregatedRemoteConnectionReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new ReportsRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/virtualEndpoint/reports{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property reports for deviceManagement
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
                    ## Cloud PC related reports.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_pc_reports
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReports.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getRealTimeRemoteConnectionLatency method.
                    ## @param cloud_pc_id Usage: cloudPcId='{cloudPcId}'
                    ## @return a get_real_time_remote_connection_latency_with_cloud_pc_id_request_builder
                    ## 
                    def get_real_time_remote_connection_latency_with_cloud_pc_id(cloud_pc_id)
                        raise StandardError, 'cloud_pc_id cannot be null' if cloud_pc_id.nil?
                        return GetRealTimeRemoteConnectionLatencyWithCloudPcIdRequestBuilder.new(@path_parameters, @request_adapter, cloudPcId)
                    end
                    ## 
                    ## Provides operations to call the getRealTimeRemoteConnectionStatus method.
                    ## @param cloud_pc_id Usage: cloudPcId='{cloudPcId}'
                    ## @return a get_real_time_remote_connection_status_with_cloud_pc_id_request_builder
                    ## 
                    def get_real_time_remote_connection_status_with_cloud_pc_id(cloud_pc_id)
                        raise StandardError, 'cloud_pc_id cannot be null' if cloud_pc_id.nil?
                        return GetRealTimeRemoteConnectionStatusWithCloudPcIdRequestBuilder.new(@path_parameters, @request_adapter, cloudPcId)
                    end
                    ## 
                    ## Update the navigation property reports in deviceManagement
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_pc_reports
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReports.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property reports for deviceManagement
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
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Cloud PC related reports.
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
                    ## Update the navigation property reports in deviceManagement
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
                        request_info.headers.try_add('Accept', 'application/json')
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
                    # Cloud PC related reports.
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
end
