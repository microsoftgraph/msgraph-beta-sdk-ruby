require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/device_management_configuration_policy'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../device_management'
require_relative '../../../reusable_policy_settings'
require_relative '../../item'
require_relative '../referencing_configuration_policies'
require_relative './assign/assign_request_builder'
require_relative './assign_just_in_time_configuration/assign_just_in_time_configuration_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './create_copy/create_copy_request_builder'
require_relative './item'
require_relative './reorder/reorder_request_builder'
require_relative './retrieve_just_in_time_configuration/retrieve_just_in_time_configuration_request_builder'
require_relative './retrieve_latest_upgrade_default_baseline_policy/retrieve_latest_upgrade_default_baseline_policy_request_builder'
require_relative './settings/settings_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module ReusablePolicySettings
            module Item
                module ReferencingConfigurationPolicies
                    module Item
                        ## 
                        # Provides operations to manage the referencingConfigurationPolicies property of the microsoft.graph.deviceManagementReusablePolicySetting entity.
                        class DeviceManagementConfigurationPolicyItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to call the assign method.
                            def assign()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the assignJustInTimeConfiguration method.
                            def assign_just_in_time_configuration()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::AssignJustInTimeConfiguration::AssignJustInTimeConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the assignments property of the microsoft.graph.deviceManagementConfigurationPolicy entity.
                            def assignments()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the createCopy method.
                            def create_copy()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::CreateCopy::CreateCopyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the reorder method.
                            def reorder()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Reorder::ReorderRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the retrieveJustInTimeConfiguration method.
                            def retrieve_just_in_time_configuration()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::RetrieveJustInTimeConfiguration::RetrieveJustInTimeConfigurationRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to call the retrieveLatestUpgradeDefaultBaselinePolicy method.
                            def retrieve_latest_upgrade_default_baseline_policy()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::RetrieveLatestUpgradeDefaultBaselinePolicy::RetrieveLatestUpgradeDefaultBaselinePolicyRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the settings property of the microsoft.graph.deviceManagementConfigurationPolicy entity.
                            def settings()
                                return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new DeviceManagementConfigurationPolicyItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/reusablePolicySettings/{deviceManagementReusablePolicySetting%2Did}/referencingConfigurationPolicies/{deviceManagementConfigurationPolicy%2Did}{?%24expand,%24select}")
                            end
                            ## 
                            ## Delete navigation property referencingConfigurationPolicies for deviceManagement
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of void
                            ## 
                            def delete(request_configuration=nil)
                                request_info = self.to_delete_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, nil, error_mapping)
                            end
                            ## 
                            ## configuration policies referencing the current reusable setting. This property is read-only.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of device_management_configuration_policy
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property referencingConfigurationPolicies in deviceManagement
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of device_management_configuration_policy
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Delete navigation property referencingConfigurationPolicies for deviceManagement
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
                            ## configuration policies referencing the current reusable setting. This property is read-only.
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
                            ## Update the navigation property referencingConfigurationPolicies in deviceManagement
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
                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                request_info.url_template = @url_template
                                request_info.path_parameters = @path_parameters
                                request_info.http_method = :PATCH
                                request_info.headers.try_add('Accept', 'application/json')
                                return request_info
                            end
                            ## 
                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                            ## @param raw_url The raw URL to use for the request builder.
                            ## @return a device_management_configuration_policy_item_request_builder
                            ## 
                            def with_url(raw_url)
                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                return DeviceManagementConfigurationPolicyItemRequestBuilder.new(raw_url, @request_adapter)
                            end

                            ## 
                            # configuration policies referencing the current reusable setting. This property is read-only.
                            class DeviceManagementConfigurationPolicyItemRequestBuilderGetQueryParameters
                                
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
    end
end
