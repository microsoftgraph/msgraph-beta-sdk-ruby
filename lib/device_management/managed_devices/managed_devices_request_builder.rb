require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/managed_device'
require_relative '../../models/managed_device_collection_response'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../device_management'
require_relative './app_diagnostics_with_upn/app_diagnostics_with_upn_request_builder'
require_relative './bulk_reprovision_cloud_pc/bulk_reprovision_cloud_pc_request_builder'
require_relative './bulk_restore_cloud_pc/bulk_restore_cloud_pc_request_builder'
require_relative './bulk_set_cloud_pc_review_status/bulk_set_cloud_pc_review_status_request_builder'
require_relative './count/count_request_builder'
require_relative './download_app_diagnostics/download_app_diagnostics_request_builder'
require_relative './execute_action/execute_action_request_builder'
require_relative './managed_devices'
require_relative './move_devices_to_o_u/move_devices_to_o_u_request_builder'

module MicrosoftGraphBeta::DeviceManagement::ManagedDevices
    ## 
    # Provides operations to manage the managedDevices property of the microsoft.graph.deviceManagement entity.
    class ManagedDevicesRequestBuilder
        
        ## 
        # Provides operations to call the bulkReprovisionCloudPc method.
        def bulk_reprovision_cloud_pc()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::BulkReprovisionCloudPc::BulkReprovisionCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bulkRestoreCloudPc method.
        def bulk_restore_cloud_pc()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::BulkRestoreCloudPc::BulkRestoreCloudPcRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the bulkSetCloudPcReviewStatus method.
        def bulk_set_cloud_pc_review_status()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::BulkSetCloudPcReviewStatus::BulkSetCloudPcReviewStatusRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to count the resources in the collection.
        def count()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the downloadAppDiagnostics method.
        def download_app_diagnostics()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::DownloadAppDiagnostics::DownloadAppDiagnosticsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the executeAction method.
        def execute_action()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::ExecuteAction::ExecuteActionRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the moveDevicesToOU method.
        def move_devices_to_o_u()
            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::MoveDevicesToOU::MoveDevicesToOURequestBuilder.new(@path_parameters, @request_adapter)
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
        ## Provides operations to call the appDiagnostics method.
        ## @param upn Usage: upn='{upn}'
        ## @return a app_diagnostics_with_upn_request_builder
        ## 
        def app_diagnostics_with_upn(upn)
            raise StandardError, 'upn cannot be null' if upn.nil?
            return AppDiagnosticsWithUpnRequestBuilder.new(@path_parameters, @request_adapter, upn)
        end
        ## 
        ## Instantiates a new ManagedDevicesRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/deviceManagement/managedDevices{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## The list of managed devices.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_device_collection_response
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Create new navigation property to managedDevices for deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of managed_device
        ## 
        def post(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_post_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## The list of managed devices.
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
        ## Create new navigation property to managedDevices for deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # The list of managed devices.
        class ManagedDevicesRequestBuilderGetQueryParameters
            
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
            ## @param originalName The original query parameter name in the class.
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class ManagedDevicesRequestBuilderGetRequestConfiguration
            
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
        class ManagedDevicesRequestBuilderPostRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
