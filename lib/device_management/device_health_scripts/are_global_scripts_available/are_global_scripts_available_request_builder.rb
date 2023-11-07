require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/global_device_health_script_state'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../device_health_scripts'
require_relative './are_global_scripts_available'

module MicrosoftGraphBeta
    module DeviceManagement
        module DeviceHealthScripts
            module AreGlobalScriptsAvailable
                ## 
                # Provides operations to call the areGlobalScriptsAvailable method.
                class AreGlobalScriptsAvailableRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    ## Instantiates a new AreGlobalScriptsAvailableRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/deviceHealthScripts/areGlobalScriptsAvailable()")
                    end
                    ## 
                    ## Invoke function areGlobalScriptsAvailable
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of global_device_health_script_state
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GlobalDeviceHealthScriptState.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Invoke function areGlobalScriptsAvailable
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
                        request_info.headers.try_add('Accept', 'application/json;q=1')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a are_global_scripts_available_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return AreGlobalScriptsAvailableRequestBuilder.new(raw_url, @request_adapter)
                    end
                end
            end
        end
    end
end
