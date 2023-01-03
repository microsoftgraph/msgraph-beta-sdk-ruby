require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/device_management_configuration_policy'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../device_management'
require_relative '../../../reusable_policy_settings'
require_relative '../../item'
require_relative '../referencing_configuration_policies'
require_relative './assign/assign_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/device_management_configuration_policy_assignment_item_request_builder'
require_relative './create_copy/create_copy_request_builder'
require_relative './item'
require_relative './reorder/reorder_request_builder'
require_relative './settings/item/device_management_configuration_setting_item_request_builder'
require_relative './settings/settings_request_builder'

module MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item
    ## 
    # Provides operations to manage the referencingConfigurationPolicies property of the microsoft.graph.deviceManagementReusablePolicySetting entity.
    class DeviceManagementConfigurationPolicyItemRequestBuilder
        
        ## 
        # Provides operations to call the assign method.
        def assign()
            return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
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
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to call the reorder method.
        def reorder()
            return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Reorder::ReorderRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the settings property of the microsoft.graph.deviceManagementConfigurationPolicy entity.
        def settings()
            return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Provides operations to manage the assignments property of the microsoft.graph.deviceManagementConfigurationPolicy entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_configuration_policy_assignment_item_request_builder
        ## 
        def assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementConfigurationPolicyAssignment%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Assignments::Item::DeviceManagementConfigurationPolicyAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new DeviceManagementConfigurationPolicyItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/deviceManagement/reusablePolicySettings/{deviceManagementReusablePolicySetting%2Did}/referencingConfigurationPolicies/{deviceManagementConfigurationPolicy%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property referencingConfigurationPolicies for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_delete_request_information(request_configuration=nil)
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
        ## configuration policies referencing the current reusable setting. This property is read-only.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## Update the navigation property referencingConfigurationPolicies in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Delete navigation property referencingConfigurationPolicies for deviceManagement
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.create_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## configuration policies referencing the current reusable setting. This property is read-only.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of device_management_configuration_policy
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property referencingConfigurationPolicies in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of device_management_configuration_policy
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the settings property of the microsoft.graph.deviceManagementConfigurationPolicy entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_configuration_setting_item_request_builder
        ## 
        def settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementConfigurationSetting%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::ReusablePolicySettings::Item::ReferencingConfigurationPolicies::Item::Settings::Item::DeviceManagementConfigurationSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DeviceManagementConfigurationPolicyItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
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
        class DeviceManagementConfigurationPolicyItemRequestBuilderGetRequestConfiguration
            
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
        class DeviceManagementConfigurationPolicyItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
