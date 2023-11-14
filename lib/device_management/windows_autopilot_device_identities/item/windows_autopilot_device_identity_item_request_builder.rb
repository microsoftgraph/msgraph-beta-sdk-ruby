require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../../models/windows_autopilot_device_identity'
require_relative '../../device_management'
require_relative '../windows_autopilot_device_identities'
require_relative './allow_next_enrollment/allow_next_enrollment_request_builder'
require_relative './assign_resource_account_to_device/assign_resource_account_to_device_request_builder'
require_relative './assign_user_to_device/assign_user_to_device_request_builder'
require_relative './deployment_profile/deployment_profile_request_builder'
require_relative './intended_deployment_profile/intended_deployment_profile_request_builder'
require_relative './item'
require_relative './unassign_resource_account_from_device/unassign_resource_account_from_device_request_builder'
require_relative './unassign_user_from_device/unassign_user_from_device_request_builder'
require_relative './update_device_properties/update_device_properties_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module WindowsAutopilotDeviceIdentities
            module Item
                ## 
                # Provides operations to manage the windowsAutopilotDeviceIdentities property of the microsoft.graph.deviceManagement entity.
                class WindowsAutopilotDeviceIdentityItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the allowNextEnrollment method.
                    def allow_next_enrollment()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::AllowNextEnrollment::AllowNextEnrollmentRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the assignResourceAccountToDevice method.
                    def assign_resource_account_to_device()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::AssignResourceAccountToDevice::AssignResourceAccountToDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the assignUserToDevice method.
                    def assign_user_to_device()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::AssignUserToDevice::AssignUserToDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deploymentProfile property of the microsoft.graph.windowsAutopilotDeviceIdentity entity.
                    def deployment_profile()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::DeploymentProfile::DeploymentProfileRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the intendedDeploymentProfile property of the microsoft.graph.windowsAutopilotDeviceIdentity entity.
                    def intended_deployment_profile()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::IntendedDeploymentProfile::IntendedDeploymentProfileRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unassignResourceAccountFromDevice method.
                    def unassign_resource_account_from_device()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::UnassignResourceAccountFromDevice::UnassignResourceAccountFromDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unassignUserFromDevice method.
                    def unassign_user_from_device()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::UnassignUserFromDevice::UnassignUserFromDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateDeviceProperties method.
                    def update_device_properties()
                        return MicrosoftGraphBeta::DeviceManagement::WindowsAutopilotDeviceIdentities::Item::UpdateDeviceProperties::UpdateDevicePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new WindowsAutopilotDeviceIdentityItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/windowsAutopilotDeviceIdentities/{windowsAutopilotDeviceIdentity%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property windowsAutopilotDeviceIdentities for deviceManagement
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
                    ## The Windows autopilot device identities contained collection.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of windows_autopilot_device_identity
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property windowsAutopilotDeviceIdentities in deviceManagement
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of windows_autopilot_device_identity
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property windowsAutopilotDeviceIdentities for deviceManagement
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
                    ## The Windows autopilot device identities contained collection.
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
                    ## Update the navigation property windowsAutopilotDeviceIdentities in deviceManagement
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
                    ## @return a windows_autopilot_device_identity_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return WindowsAutopilotDeviceIdentityItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # The Windows autopilot device identities contained collection.
                    class WindowsAutopilotDeviceIdentityItemRequestBuilderGetQueryParameters
                        
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
