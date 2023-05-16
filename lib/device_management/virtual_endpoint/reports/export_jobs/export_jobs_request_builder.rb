require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/cloud_pc_export_job'
require_relative '../../../../models/cloud_pc_export_job_collection_response'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../device_management'
require_relative '../../virtual_endpoint'
require_relative '../reports'
require_relative './count/count_request_builder'
require_relative './export_jobs'
require_relative './item/cloud_pc_export_job_item_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module VirtualEndpoint
            module Reports
                module ExportJobs
                    ## 
                    # Provides operations to manage the exportJobs property of the microsoft.graph.cloudPcReports entity.
                    class ExportJobsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ExportJobs::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the exportJobs property of the microsoft.graph.cloudPcReports entity.
                        ## @param cloud_pc_export_job_id Unique identifier of the item
                        ## @return a cloud_pc_export_job_item_request_builder
                        ## 
                        def by_cloud_pc_export_job_id(cloud_pc_export_job_id)
                            raise StandardError, 'cloud_pc_export_job_id cannot be null' if cloud_pc_export_job_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["cloudPcExportJob%2Did"] = cloud_pc_export_job_id
                            return MicrosoftGraphBeta::DeviceManagement::VirtualEndpoint::Reports::ExportJobs::Item::CloudPcExportJobItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ExportJobsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/virtualEndpoint/reports/exportJobs{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                        end
                        ## 
                        ## The export jobs created for downloading reports.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of cloud_pc_export_job_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcExportJobCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Create a new cloudPcExportJob resource to initiate downloading the entire or specified portion of a report. Use the GET cloudPcExportJob operation to verify the **exportJobStatus** property of the **cloudPcExportJob** resource. When the property becomes `completed`, the report has finished downloading in the location specified by the **exportUrl** property. 
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of cloud_pc_export_job
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::CloudPcExportJob.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## The export jobs created for downloading reports.
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
                        ## Create a new cloudPcExportJob resource to initiate downloading the entire or specified portion of a report. Use the GET cloudPcExportJob operation to verify the **exportJobStatus** property of the **cloudPcExportJob** resource. When the property becomes `completed`, the report has finished downloading in the location specified by the **exportUrl** property. 
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
                        # The export jobs created for downloading reports.
                        class ExportJobsRequestBuilderGetQueryParameters
                            
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
