require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/managed_device'
require_relative '../../models/managed_device_collection_response'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../device_management'
require_relative './app_diagnostics_with_upn/app_diagnostics_with_upn_request_builder'
require_relative './bulk_reprovision_cloud_pc/bulk_reprovision_cloud_pc_request_builder'
require_relative './bulk_restore_cloud_pc/bulk_restore_cloud_pc_request_builder'
require_relative './bulk_set_cloud_pc_review_status/bulk_set_cloud_pc_review_status_request_builder'
require_relative './comanaged_devices'
require_relative './count/count_request_builder'
require_relative './download_app_diagnostics/download_app_diagnostics_request_builder'
require_relative './execute_action/execute_action_request_builder'
require_relative './item/managed_device_item_request_builder'
require_relative './move_devices_to_o_u/move_devices_to_o_u_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module ComanagedDevices
            ## 
            # Provides operations to manage the comanagedDevices property of the microsoft.graph.deviceManagement entity.
            class ComanagedDevicesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to call the bulkReprovisionCloudPc method.
                def bulk_reprovision_cloud_pc()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::BulkReprovisionCloudPc::BulkReprovisionCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the bulkRestoreCloudPc method.
                def bulk_restore_cloud_pc()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::BulkRestoreCloudPc::BulkRestoreCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the bulkSetCloudPcReviewStatus method.
                def bulk_set_cloud_pc_review_status()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::BulkSetCloudPcReviewStatus::BulkSetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to count the resources in the collection.
                def count()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the downloadAppDiagnostics method.
                def download_app_diagnostics()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::DownloadAppDiagnostics::DownloadAppDiagnosticsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the executeAction method.
                def execute_action()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::ExecuteAction::ExecuteActionRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the moveDevicesToOU method.
                def move_devices_to_o_u()
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::MoveDevicesToOU::MoveDevicesToOURequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to call the appDiagnostics method.
                ## @param upn Usage: upn='{upn}'
                ## @return a app_diagnostics_with_upn_request_builder
                ## 
                def app_diagnostics_with_upn(upn)
                    raise StandardError, 'upn cannot be null' if upn.nil?
                    return AppDiagnosticsWithUpnRequestBuilder.new(@path_parameters, @request_adapter, upn)
                end
                ## 
                ## Provides operations to manage the comanagedDevices property of the microsoft.graph.deviceManagement entity.
                ## @param managed_device_id The unique identifier of managedDevice
                ## @return a managed_device_item_request_builder
                ## 
                def by_managed_device_id(managed_device_id)
                    raise StandardError, 'managed_device_id cannot be null' if managed_device_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["managedDevice%2Did"] = managed_device_id
                    return MicrosoftGraphBeta::DeviceManagement::ComanagedDevices::Item::ManagedDeviceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new ComanagedDevicesRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/comanagedDevices{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                end
                ## 
                ## The list of co-managed devices report
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of managed_device_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Create new navigation property to comanagedDevices for deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of managed_device
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## The list of co-managed devices report
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
                ## Create new navigation property to comanagedDevices for deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_post_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a comanaged_devices_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ComanagedDevicesRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # The list of co-managed devices report
                class ComanagedDevicesRequestBuilderGetQueryParameters
                    
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
