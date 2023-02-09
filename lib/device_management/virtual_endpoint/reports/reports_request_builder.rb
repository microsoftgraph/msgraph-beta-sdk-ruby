require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/cloud_pc_reports'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../virtual_endpoint'
require_relative './export_jobs/export_jobs_request_builder'
require_relative './export_jobs/item/cloud_pc_export_job_item_request_builder'
require_relative './microsoft_graph_get_daily_aggregated_remote_connection_reports/microsoft_graph_get_daily_aggregated_remote_connection_reports_request_builder'
require_relative './microsoft_graph_get_real_time_remote_connection_latency_with_cloud_pc_id/microsoft_graph_get_real_time_remote_connection_latency_with_cloud_pc_id_request_builder'
require_relative './microsoft_graph_get_real_time_remote_connection_status_with_cloud_pc_id/microsoft_graph_get_real_time_remote_connection_status_with_cloud_pc_id_request_builder'
require_relative './microsoft_graph_get_remote_connection_historical_reports/microsoft_graph_get_remote_connection_historical_reports_request_builder'
require_relative './microsoft_graph_get_shared_use_license_usage_report/microsoft_graph_get_shared_use_license_usage_report_request_builder'
require_relative './microsoft_graph_get_total_aggregated_remote_connection_reports/microsoft_graph_get_total_aggregated_remote_connection_reports_request_builder'
require_relative './reports'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module Reports
                ## 
                # Provides operations to manage the reports property of the microsoft.graph.virtualEndpoint entity.
                class ReportsRequestBuilder
                    
                    ## 
                    # Provides operations to manage the exportJobs property of the microsoft.graph.cloudPcReports entity.
                    def export_jobs()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ExportJobs::ExportJobsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getDailyAggregatedRemoteConnectionReports method.
                    def microsoft_graph_get_daily_aggregated_remote_connection_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::MicrosoftGraphGetDailyAggregatedRemoteConnectionReports::MicrosoftGraphGetDailyAggregatedRemoteConnectionReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getRemoteConnectionHistoricalReports method.
                    def microsoft_graph_get_remote_connection_historical_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::MicrosoftGraphGetRemoteConnectionHistoricalReports::MicrosoftGraphGetRemoteConnectionHistoricalReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getSharedUseLicenseUsageReport method.
                    def microsoft_graph_get_shared_use_license_usage_report()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::MicrosoftGraphGetSharedUseLicenseUsageReport::MicrosoftGraphGetSharedUseLicenseUsageReportRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getTotalAggregatedRemoteConnectionReports method.
                    def microsoft_graph_get_total_aggregated_remote_connection_reports()
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::MicrosoftGraphGetTotalAggregatedRemoteConnectionReports::MicrosoftGraphGetTotalAggregatedRemoteConnectionReportsRequestBuilder.new(@path_parameters, @request_adapter)
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
                    ## Instantiates a new ReportsRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/deviceManagement/virtualEndpoint/reports{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property reports for deviceManagement
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
                    ## Provides operations to manage the exportJobs property of the microsoft.graph.cloudPcReports entity.
                    ## @param id Unique identifier of the item
                    ## @return a cloud_pc_export_job_item_request_builder
                    ## 
                    def export_jobs_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["cloudPcExportJob%2Did"] = id
                        return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ExportJobs::Item::CloudPcExportJobItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Cloud PC related reports.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_pc_reports
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReports.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getRealTimeRemoteConnectionLatency method.
                    ## @param cloudPcId Usage: cloudPcId='{cloudPcId}'
                    ## @return a microsoft_graph_get_real_time_remote_connection_latency_with_cloud_pc_id_request_builder
                    ## 
                    def microsoft_graph_get_real_time_remote_connection_latency_with_cloud_pc_id(cloud_pc_id)
                        raise StandardError, 'cloud_pc_id cannot be null' if cloud_pc_id.nil?
                        return MicrosoftGraphGetRealTimeRemoteConnectionLatencyWithCloudPcIdRequestBuilder.new(@path_parameters, @request_adapter, cloudPcId)
                    end
                    ## 
                    ## Provides operations to call the getRealTimeRemoteConnectionStatus method.
                    ## @param cloudPcId Usage: cloudPcId='{cloudPcId}'
                    ## @return a microsoft_graph_get_real_time_remote_connection_status_with_cloud_pc_id_request_builder
                    ## 
                    def microsoft_graph_get_real_time_remote_connection_status_with_cloud_pc_id(cloud_pc_id)
                        raise StandardError, 'cloud_pc_id cannot be null' if cloud_pc_id.nil?
                        return MicrosoftGraphGetRealTimeRemoteConnectionStatusWithCloudPcIdRequestBuilder.new(@path_parameters, @request_adapter, cloudPcId)
                    end
                    ## 
                    ## Update the navigation property reports in deviceManagement
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of cloud_pc_reports
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcReports.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property reports for deviceManagement
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
                    ## Cloud PC related reports.
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
                    ## Update the navigation property reports in deviceManagement
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
                    class ReportsRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
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
                    class ReportsRequestBuilderGetRequestConfiguration
                        
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
                    class ReportsRequestBuilderPatchRequestConfiguration
                        
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
