require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/device_health_script_policy_state'
require_relative '../../../../models/device_health_script_policy_state_collection_response'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../device_management'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './device_health_script_states'
require_relative './with_id_with_policy_id_with_device_id/with_id_with_policy_id_with_device_id_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module Item
                module DeviceHealthScriptStates
                    ## 
                    # Provides operations to manage the deviceHealthScriptStates property of the microsoft.graph.managedDevice entity.
                    class DeviceHealthScriptStatesRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::DeviceManagement::ManagedDevices::Item::DeviceHealthScriptStates::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
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
                        ## Instantiates a new DeviceHealthScriptStatesRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/deviceManagement/managedDevices/{managedDevice%2Did}/deviceHealthScriptStates{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of device_health_script_policy_state_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScriptPolicyStateCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Create new navigation property to deviceHealthScriptStates for deviceManagement
                        ## @param body Contains properties for policy run state of the device health script.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of device_health_script_policy_state
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
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
                        ## Create new navigation property to deviceHealthScriptStates for deviceManagement
                        ## @param body Contains properties for policy run state of the device health script.
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
                        ## Provides operations to manage the deviceHealthScriptStates property of the microsoft.graph.managedDevice entity.
                        ## @param deviceId Property in multi-part unique identifier of deviceHealthScriptPolicyState
                        ## @param id Property in multi-part unique identifier of deviceHealthScriptPolicyState
                        ## @param policyId Property in multi-part unique identifier of deviceHealthScriptPolicyState
                        ## @return a with_id_with_policy_id_with_device_id_request_builder
                        ## 
                        def with_id_with_policy_id_with_device_id(device_id, id, policy_id)
                            raise StandardError, 'device_id cannot be null' if device_id.nil?
                            raise StandardError, 'id cannot be null' if id.nil?
                            raise StandardError, 'policy_id cannot be null' if policy_id.nil?
                            return WithIdWithPolicyIdWithDeviceIdRequestBuilder.new(@path_parameters, @request_adapter, deviceId, id, policyId)
                        end

                        ## 
                        # Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
                        class DeviceHealthScriptStatesRequestBuilderGetQueryParameters
                            
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
                        class DeviceHealthScriptStatesRequestBuilderGetRequestConfiguration
                            
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
                        class DeviceHealthScriptStatesRequestBuilderPostRequestConfiguration
                            
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
end
