require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/device_health_script_policy_state'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../device_management'
require_relative '../../../managed_devices'
require_relative '../../item'
require_relative '../device_health_script_states'
require_relative './with_id_with_policy_id_with_device_id'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module DeviceHealthScriptStates
                    module WithIdWithPolicyIdWithDeviceId
                        ## 
                        # Provides operations to manage the deviceHealthScriptStates property of the microsoft.graph.managedDevice entity.
                        class WithIdWithPolicyIdWithDeviceIdRequestBuilder
                            
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
                            ## Instantiates a new WithIdWithPolicyIdWithDeviceIdRequestBuilder and sets the default values.
                            ## @param deviceId Property in multi-part unique identifier of deviceHealthScriptPolicyState
                            ## @param id Property in multi-part unique identifier of deviceHealthScriptPolicyState
                            ## @param pathParameters Path parameters for the request
                            ## @param policyId Property in multi-part unique identifier of deviceHealthScriptPolicyState
                            ## @param requestAdapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter, device_id=nil, id=nil, policy_id=nil)
                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                @url_template = "{+baseurl}/deviceManagement/managedDevices/{managedDevice%2Did}/deviceHealthScriptStates/id='{id}',policyId='{policyId}',deviceId='{deviceId}'{?%24select,%24expand}"
                                @request_adapter = request_adapter
                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                            end
                            ## 
                            ## Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of device_health_script_policy_state
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScriptPolicyState.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
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
                            # Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
                            class WithIdWithPolicyIdWithDeviceIdRequestBuilderGetQueryParameters
                                
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
                            class WithIdWithPolicyIdWithDeviceIdRequestBuilderGetRequestConfiguration
                                
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
                        end
                    end
                end
            end
        end
    end
end
