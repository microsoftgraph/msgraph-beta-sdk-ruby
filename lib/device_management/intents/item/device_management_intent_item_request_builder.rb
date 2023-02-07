require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_management_intent'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../intents'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/device_management_intent_assignment_item_request_builder'
require_relative './categories/categories_request_builder'
require_relative './categories/item/device_management_intent_setting_category_item_request_builder'
require_relative './device_setting_state_summaries/device_setting_state_summaries_request_builder'
require_relative './device_setting_state_summaries/item/device_management_intent_device_setting_state_summary_item_request_builder'
require_relative './device_states/device_states_request_builder'
require_relative './device_states/item/device_management_intent_device_state_item_request_builder'
require_relative './device_state_summary/device_state_summary_request_builder'
require_relative './item'
require_relative './microsoft_graph_assign/microsoft_graph_assign_request_builder'
require_relative './microsoft_graph_compare_with_template_id/microsoft_graph_compare_with_template_id_request_builder'
require_relative './microsoft_graph_create_copy/microsoft_graph_create_copy_request_builder'
require_relative './microsoft_graph_migrate_to_template/microsoft_graph_migrate_to_template_request_builder'
require_relative './microsoft_graph_update_settings/microsoft_graph_update_settings_request_builder'
require_relative './settings/item/device_management_setting_instance_item_request_builder'
require_relative './settings/settings_request_builder'
require_relative './user_states/item/device_management_intent_user_state_item_request_builder'
require_relative './user_states/user_states_request_builder'
require_relative './user_state_summary/user_state_summary_request_builder'

module MicrosoftGraphBeta::DeviceManagement::Intents::Item
    ## 
    # Provides operations to manage the intents property of the microsoft.graph.deviceManagement entity.
    class DeviceManagementIntentItemRequestBuilder
        
        ## 
        # Provides operations to manage the assignments property of the microsoft.graph.deviceManagementIntent entity.
        def assignments()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the categories property of the microsoft.graph.deviceManagementIntent entity.
        def categories()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceSettingStateSummaries property of the microsoft.graph.deviceManagementIntent entity.
        def device_setting_state_summaries()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::DeviceSettingStateSummaries::DeviceSettingStateSummariesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceStates property of the microsoft.graph.deviceManagementIntent entity.
        def device_states()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::DeviceStates::DeviceStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the deviceStateSummary property of the microsoft.graph.deviceManagementIntent entity.
        def device_state_summary()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::DeviceStateSummary::DeviceStateSummaryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the assign method.
        def microsoft_graph_assign()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::MicrosoftGraphAssign::MicrosoftGraphAssignRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the createCopy method.
        def microsoft_graph_create_copy()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::MicrosoftGraphCreateCopy::MicrosoftGraphCreateCopyRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the migrateToTemplate method.
        def microsoft_graph_migrate_to_template()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::MicrosoftGraphMigrateToTemplate::MicrosoftGraphMigrateToTemplateRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the updateSettings method.
        def microsoft_graph_update_settings()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::MicrosoftGraphUpdateSettings::MicrosoftGraphUpdateSettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the settings property of the microsoft.graph.deviceManagementIntent entity.
        def settings()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to manage the userStates property of the microsoft.graph.deviceManagementIntent entity.
        def user_states()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::UserStates::UserStatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the userStateSummary property of the microsoft.graph.deviceManagementIntent entity.
        def user_state_summary()
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::UserStateSummary::UserStateSummaryRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the assignments property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_intent_assignment_item_request_builder
        ## 
        def assignments_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementIntentAssignment%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Assignments::Item::DeviceManagementIntentAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the categories property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_intent_setting_category_item_request_builder
        ## 
        def categories_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementIntentSettingCategory%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Categories::Item::DeviceManagementIntentSettingCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Instantiates a new DeviceManagementIntentItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/deviceManagement/intents/{deviceManagementIntent%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property intents for deviceManagement
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
        ## Provides operations to manage the deviceSettingStateSummaries property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_intent_device_setting_state_summary_item_request_builder
        ## 
        def device_setting_state_summaries_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementIntentDeviceSettingStateSummary%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::DeviceSettingStateSummaries::Item::DeviceManagementIntentDeviceSettingStateSummaryItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Provides operations to manage the deviceStates property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_intent_device_state_item_request_builder
        ## 
        def device_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementIntentDeviceState%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::DeviceStates::Item::DeviceManagementIntentDeviceStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## The device management intents
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device_management_intent
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntent.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to call the compare method.
        ## @param templateId Usage: templateId='{templateId}'
        ## @return a microsoft_graph_compare_with_template_id_request_builder
        ## 
        def microsoft_graph_compare_with_template_id(template_id)
            raise StandardError, 'template_id cannot be null' if template_id.nil?
            return MicrosoftGraphCompareWithTemplateIdRequestBuilder.new(@path_parameters, @request_adapter, templateId)
        end
        ## 
        ## Update the navigation property intents in deviceManagement
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of device_management_intent
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntent.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the settings property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_setting_instance_item_request_builder
        ## 
        def settings_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementSettingInstance%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Settings::Item::DeviceManagementSettingInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property intents for deviceManagement
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
        ## The device management intents
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
        ## Update the navigation property intents in deviceManagement
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
        ## Provides operations to manage the userStates property of the microsoft.graph.deviceManagementIntent entity.
        ## @param id Unique identifier of the item
        ## @return a device_management_intent_user_state_item_request_builder
        ## 
        def user_states_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["deviceManagementIntentUserState%2Did"] = id
            return MicrosoftGraphBeta::DeviceManagement::Intents::Item::UserStates::Item::DeviceManagementIntentUserStateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class DeviceManagementIntentItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # The device management intents
        class DeviceManagementIntentItemRequestBuilderGetQueryParameters
            
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
        class DeviceManagementIntentItemRequestBuilderGetRequestConfiguration
            
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
        class DeviceManagementIntentItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
