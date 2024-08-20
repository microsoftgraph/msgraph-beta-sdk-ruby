require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_management_intent'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../device_management'
require_relative '../intents'
require_relative './assign/assign_request_builder'
require_relative './assignments/assignments_request_builder'
require_relative './categories/categories_request_builder'
require_relative './compare_with_template_id/compare_with_template_id_request_builder'
require_relative './create_copy/create_copy_request_builder'
require_relative './device_setting_state_summaries/device_setting_state_summaries_request_builder'
require_relative './device_states/device_states_request_builder'
require_relative './device_state_summary/device_state_summary_request_builder'
require_relative './get_customized_settings/get_customized_settings_request_builder'
require_relative './item'
require_relative './migrate_to_template/migrate_to_template_request_builder'
require_relative './settings/settings_request_builder'
require_relative './update_settings/update_settings_request_builder'
require_relative './user_states/user_states_request_builder'
require_relative './user_state_summary/user_state_summary_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module Intents
            module Item
                ## 
                # Provides operations to manage the intents property of the microsoft.graph.deviceManagement entity.
                class DeviceManagementIntentItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to call the assign method.
                    def assign()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Assign::AssignRequestBuilder.new(@path_parameters, @request_adapter)
                    end
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
                    # Provides operations to call the createCopy method.
                    def create_copy()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::CreateCopy::CreateCopyRequestBuilder.new(@path_parameters, @request_adapter)
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
                    # Provides operations to call the getCustomizedSettings method.
                    def get_customized_settings()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::GetCustomizedSettings::GetCustomizedSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the migrateToTemplate method.
                    def migrate_to_template()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::MigrateToTemplate::MigrateToTemplateRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the settings property of the microsoft.graph.deviceManagementIntent entity.
                    def settings()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateSettings method.
                    def update_settings()
                        return MicrosoftGraphBeta::DeviceManagement::Intents::Item::UpdateSettings::UpdateSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
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
                    ## Provides operations to call the compare method.
                    ## @param template_id Usage: templateId='{templateId}'
                    ## @return a compare_with_template_id_request_builder
                    ## 
                    def compare_with_template_id(template_id)
                        raise StandardError, 'template_id cannot be null' if template_id.nil?
                        return CompareWithTemplateIdRequestBuilder.new(@path_parameters, @request_adapter, templateId)
                    end
                    ## 
                    ## Instantiates a new DeviceManagementIntentItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/intents/{deviceManagementIntent%2Did}{?%24expand,%24select}")
                    end
                    ## 
                    ## Delete navigation property intents for deviceManagement
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
                    ## The device management intents
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_management_intent
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntent.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the navigation property intents in deviceManagement
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_management_intent
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementIntent.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property intents for deviceManagement
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
                    ## The device management intents
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
                    ## Update the navigation property intents in deviceManagement
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
                    ## @return a device_management_intent_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return DeviceManagementIntentItemRequestBuilder.new(raw_url, @request_adapter)
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
