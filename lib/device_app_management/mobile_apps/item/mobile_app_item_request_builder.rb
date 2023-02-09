require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/mobile_app'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_app_management'
require_relative '../mobile_apps'
require_relative './assignments/assignments_request_builder'
require_relative './assignments/item/mobile_app_assignment_item_request_builder'
require_relative './categories/categories_request_builder'
require_relative './categories/item/mobile_app_category_item_request_builder'
require_relative './device_statuses/device_statuses_request_builder'
require_relative './device_statuses/item/mobile_app_install_status_item_request_builder'
require_relative './install_summary/install_summary_request_builder'
require_relative './item'
require_relative './microsoft_graph_assign/microsoft_graph_assign_request_builder'
require_relative './microsoft_graph_get_related_app_states_with_user_principal_name_with_device_id/microsoft_graph_get_related_app_states_with_user_principal_name_with_device_id_request_builder'
require_relative './microsoft_graph_managed_mobile_lob_app/microsoft_graph_managed_mobile_lob_app_request_builder'
require_relative './microsoft_graph_mobile_lob_app/microsoft_graph_mobile_lob_app_request_builder'
require_relative './microsoft_graph_update_relationships/microsoft_graph_update_relationships_request_builder'
require_relative './relationships/item/mobile_app_relationship_item_request_builder'
require_relative './relationships/relationships_request_builder'
require_relative './user_statuses/item/user_app_install_status_item_request_builder'
require_relative './user_statuses/user_statuses_request_builder'

module MicrosoftGraphBeta
    module DeviceAppManagement
        module MobileApps
            module Item
                ## 
                # Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
                class MobileAppItemRequestBuilder
                    
                    ## 
                    # Provides operations to manage the assignments property of the microsoft.graph.mobileApp entity.
                    def assignments()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Assignments::AssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the categories property of the microsoft.graph.mobileApp entity.
                    def categories()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Categories::CategoriesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the deviceStatuses property of the microsoft.graph.mobileApp entity.
                    def device_statuses()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::DeviceStatuses::DeviceStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the installSummary property of the microsoft.graph.mobileApp entity.
                    def install_summary()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::InstallSummary::InstallSummaryRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the assign method.
                    def microsoft_graph_assign()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::MicrosoftGraphAssign::MicrosoftGraphAssignRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to managedMobileLobApp.
                    def microsoft_graph_managed_mobile_lob_app()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::MicrosoftGraphManagedMobileLobApp::MicrosoftGraphManagedMobileLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to mobileLobApp.
                    def microsoft_graph_mobile_lob_app()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::MicrosoftGraphMobileLobApp::MicrosoftGraphMobileLobAppRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the updateRelationships method.
                    def microsoft_graph_update_relationships()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::MicrosoftGraphUpdateRelationships::MicrosoftGraphUpdateRelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # Provides operations to manage the relationships property of the microsoft.graph.mobileApp entity.
                    def relationships()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Relationships::RelationshipsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    # Provides operations to manage the userStatuses property of the microsoft.graph.mobileApp entity.
                    def user_statuses()
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::UserStatuses::UserStatusesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the assignments property of the microsoft.graph.mobileApp entity.
                    ## @param id Unique identifier of the item
                    ## @return a mobile_app_assignment_item_request_builder
                    ## 
                    def assignments_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["mobileAppAssignment%2Did"] = id
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Assignments::Item::MobileAppAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the categories property of the microsoft.graph.mobileApp entity.
                    ## @param id Unique identifier of the item
                    ## @return a mobile_app_category_item_request_builder
                    ## 
                    def categories_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["mobileAppCategory%2Did"] = id
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Categories::Item::MobileAppCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new MobileAppItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/deviceAppManagement/mobileApps/{mobileApp%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property mobileApps for deviceAppManagement
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
                    ## Provides operations to manage the deviceStatuses property of the microsoft.graph.mobileApp entity.
                    ## @param id Unique identifier of the item
                    ## @return a mobile_app_install_status_item_request_builder
                    ## 
                    def device_statuses_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["mobileAppInstallStatus%2Did"] = id
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::DeviceStatuses::Item::MobileAppInstallStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## The mobile apps.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mobile_app
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MobileApp.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to call the getRelatedAppStates method.
                    ## @param deviceId Usage: deviceId='{deviceId}'
                    ## @param userPrincipalName Usage: userPrincipalName='{userPrincipalName}'
                    ## @return a microsoft_graph_get_related_app_states_with_user_principal_name_with_device_id_request_builder
                    ## 
                    def microsoft_graph_get_related_app_states_with_user_principal_name_with_device_id(device_id, user_principal_name)
                        raise StandardError, 'device_id cannot be null' if device_id.nil?
                        raise StandardError, 'user_principal_name cannot be null' if user_principal_name.nil?
                        return MicrosoftGraphGetRelatedAppStatesWithUserPrincipalNameWithDeviceIdRequestBuilder.new(@path_parameters, @request_adapter, deviceId, userPrincipalName)
                    end
                    ## 
                    ## Update the navigation property mobileApps in deviceAppManagement
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mobile_app
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MobileApp.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the relationships property of the microsoft.graph.mobileApp entity.
                    ## @param id Unique identifier of the item
                    ## @return a mobile_app_relationship_item_request_builder
                    ## 
                    def relationships_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["mobileAppRelationship%2Did"] = id
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::Relationships::Item::MobileAppRelationshipItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property mobileApps for deviceAppManagement
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
                    ## The mobile apps.
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
                    ## Update the navigation property mobileApps in deviceAppManagement
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
                    ## Provides operations to manage the userStatuses property of the microsoft.graph.mobileApp entity.
                    ## @param id Unique identifier of the item
                    ## @return a user_app_install_status_item_request_builder
                    ## 
                    def user_statuses_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["userAppInstallStatus%2Did"] = id
                        return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::UserStatuses::Item::UserAppInstallStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class MobileAppItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # The mobile apps.
                    class MobileAppItemRequestBuilderGetQueryParameters
                        
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
                    class MobileAppItemRequestBuilderGetRequestConfiguration
                        
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
                    class MobileAppItemRequestBuilderPatchRequestConfiguration
                        
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
