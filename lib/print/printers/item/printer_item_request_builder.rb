require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../../models/printer'
require_relative '../../print'
require_relative '../printers'
require_relative './connectors/connectors_request_builder'
require_relative './connectors/item/print_connector_item_request_builder'
require_relative './item'
require_relative './microsoft_graph_get_capabilities/get_capabilities_request_builder'
require_relative './microsoft_graph_reset_defaults/reset_defaults_request_builder'
require_relative './microsoft_graph_restore_factory_defaults/restore_factory_defaults_request_builder'
require_relative './share/share_request_builder'
require_relative './shares/item/printer_share_item_request_builder'
require_relative './shares/shares_request_builder'
require_relative './task_triggers/item/print_task_trigger_item_request_builder'
require_relative './task_triggers/task_triggers_request_builder'

module MicrosoftGraphBeta::Print::Printers::Item
    ## 
    # Provides operations to manage the printers property of the microsoft.graph.print entity.
    class PrinterItemRequestBuilder
        
        ## 
        # Provides operations to manage the connectors property of the microsoft.graph.printer entity.
        def connectors()
            return MicrosoftGraphBeta::Print::Printers::Item::Connectors::ConnectorsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the getCapabilities method.
        def microsoft_graph_get_capabilities()
            return MicrosoftGraphBeta::Print::Printers::Item::MicrosoftGraphGetCapabilities::GetCapabilitiesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the resetDefaults method.
        def microsoft_graph_reset_defaults()
            return MicrosoftGraphBeta::Print::Printers::Item::MicrosoftGraphResetDefaults::ResetDefaultsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the restoreFactoryDefaults method.
        def microsoft_graph_restore_factory_defaults()
            return MicrosoftGraphBeta::Print::Printers::Item::MicrosoftGraphRestoreFactoryDefaults::RestoreFactoryDefaultsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the share property of the microsoft.graph.printer entity.
        def share()
            return MicrosoftGraphBeta::Print::Printers::Item::Share::ShareRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the shares property of the microsoft.graph.printer entity.
        def shares()
            return MicrosoftGraphBeta::Print::Printers::Item::Shares::SharesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the taskTriggers property of the microsoft.graph.printer entity.
        def task_triggers()
            return MicrosoftGraphBeta::Print::Printers::Item::TaskTriggers::TaskTriggersRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the connectors property of the microsoft.graph.printer entity.
        ## @param id Unique identifier of the item
        ## @return a print_connector_item_request_builder
        ## 
        def connectors_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["printConnector%2Did"] = id
            return MicrosoftGraphBeta::Print::Printers::Item::Connectors::Item::PrintConnectorItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new PrinterItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param printerId key: id of printer
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter, printer_id=nil)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/print/printers/{printer%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property printers for print
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
        ## The list of printers registered in the tenant.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of printer
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Printer.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property printers in print
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of printer
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Printer.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the shares property of the microsoft.graph.printer entity.
        ## @param id Unique identifier of the item
        ## @return a printer_share_item_request_builder
        ## 
        def shares_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["printerShare%2Did"] = id
            return MicrosoftGraphBeta::Print::Printers::Item::Shares::Item::PrinterShareItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the taskTriggers property of the microsoft.graph.printer entity.
        ## @param id Unique identifier of the item
        ## @return a print_task_trigger_item_request_builder
        ## 
        def task_triggers_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["printTaskTrigger%2Did"] = id
            return MicrosoftGraphBeta::Print::Printers::Item::TaskTriggers::Item::PrintTaskTriggerItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property printers for print
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
        ## The list of printers registered in the tenant.
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
        ## Update the navigation property printers in print
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
        class PrinterItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The list of printers registered in the tenant.
        class PrinterItemRequestBuilderGetQueryParameters
            
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
        class PrinterItemRequestBuilderGetRequestConfiguration
            
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
        class PrinterItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
