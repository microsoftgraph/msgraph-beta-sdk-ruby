require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/device_management_template'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../templates'
require_relative './categories/categories_request_builder'
require_relative './categories/item/device_management_template_setting_category_item_request_builder'
require_relative './compare_with_template_id/compare_with_template_id_request_builder'
require_relative './create_instance/create_instance_request_builder'
require_relative './item'
require_relative './migratable_to/item/device_management_template_item_request_builder'
require_relative './migratable_to/migratable_to_request_builder'
require_relative './settings/item/device_management_setting_instance_item_request_builder'
require_relative './settings/settings_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module Templates
            module Item
                ## 
                # Provides operations to manage the templates property of the microsoft.graph.deviceManagement entity.
                class DeviceManagementTemplateItemRequestBuilder
                    
                    ## 
                    # Provides operations to manage the categories property of the microsoft.graph.deviceManagementTemplate entity.
                    def categories()
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the createInstance method.
                    def create_instance()
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::CreateInstance::CreateInstanceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the migratableTo property of the microsoft.graph.deviceManagementTemplate entity.
                    def migratable_to()
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::MigratableTo::MigratableToRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to manage the settings property of the microsoft.graph.deviceManagementTemplate entity.
                    def settings()
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Provides operations to manage the categories property of the microsoft.graph.deviceManagementTemplate entity.
                    ## @param id Unique identifier of the item
                    ## @return a device_management_template_setting_category_item_request_builder
                    ## 
                    def categories_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["deviceManagementTemplateSettingCategory%2Did"] = id
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::Categories::Item::DeviceManagementTemplateSettingCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to call the compare method.
                    ## @param templateId Usage: templateId='{templateId}'
                    ## @return a compare_with_template_id_request_builder
                    ## 
                    def compare_with_template_id(template_id)
                        raise StandardError, 'template_id cannot be null' if template_id.nil?
                        return CompareWithTemplateIdRequestBuilder.new(@path_parameters, @request_adapter, templateId)
                    end
                    ## 
                    ## Instantiates a new DeviceManagementTemplateItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/deviceManagement/templates/{deviceManagementTemplate%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property templates for deviceManagement
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
                    ## The available templates
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_management_template
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplate.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the migratableTo property of the microsoft.graph.deviceManagementTemplate entity.
                    ## @param id Unique identifier of the item
                    ## @return a device_management_template_item_request_builder
                    ## 
                    def migratable_to_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["deviceManagementTemplate%2Did1"] = id
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::MigratableTo::Item::DeviceManagementTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property templates in deviceManagement
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of device_management_template
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplate.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the settings property of the microsoft.graph.deviceManagementTemplate entity.
                    ## @param id Unique identifier of the item
                    ## @return a device_management_setting_instance_item_request_builder
                    ## 
                    def settings_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["deviceManagementSettingInstance%2Did"] = id
                        return MicrosoftGraphBeta::DeviceManagement::Templates::Item::Settings::Item::DeviceManagementSettingInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property templates for deviceManagement
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
                    ## The available templates
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
                    ## Update the navigation property templates in deviceManagement
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
                    class DeviceManagementTemplateItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # The available templates
                    class DeviceManagementTemplateItemRequestBuilderGetQueryParameters
                        
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
                    class DeviceManagementTemplateItemRequestBuilderGetRequestConfiguration
                        
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
                    class DeviceManagementTemplateItemRequestBuilderPatchRequestConfiguration
                        
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
