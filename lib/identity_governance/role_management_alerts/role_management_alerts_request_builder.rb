require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/role_management_alert'
require_relative '../identity_governance'
require_relative './alert_configurations/alert_configurations_request_builder'
require_relative './alert_configurations/item/unified_role_management_alert_configuration_item_request_builder'
require_relative './alert_definitions/alert_definitions_request_builder'
require_relative './alert_definitions/item/unified_role_management_alert_definition_item_request_builder'
require_relative './alerts/alerts_request_builder'
require_relative './alerts/item/unified_role_management_alert_item_request_builder'
require_relative './operations/item/long_running_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './role_management_alerts'

module MicrosoftGraphBeta
    module IdentityGovernance
        module RoleManagementAlerts
            ## 
            # Provides operations to manage the roleManagementAlerts property of the microsoft.graph.identityGovernance entity.
            class RoleManagementAlertsRequestBuilder
                
                ## 
                # Provides operations to manage the alertConfigurations property of the microsoft.graph.roleManagementAlert entity.
                def alert_configurations()
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::AlertConfigurations::AlertConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the alertDefinitions property of the microsoft.graph.roleManagementAlert entity.
                def alert_definitions()
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::AlertDefinitions::AlertDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the alerts property of the microsoft.graph.roleManagementAlert entity.
                def alerts()
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::Alerts::AlertsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the operations property of the microsoft.graph.roleManagementAlert entity.
                def operations()
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
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
                ## Provides operations to manage the alertConfigurations property of the microsoft.graph.roleManagementAlert entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_management_alert_configuration_item_request_builder
                ## 
                def alert_configurations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleManagementAlertConfiguration%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::AlertConfigurations::Item::UnifiedRoleManagementAlertConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the alertDefinitions property of the microsoft.graph.roleManagementAlert entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_management_alert_definition_item_request_builder
                ## 
                def alert_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleManagementAlertDefinition%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::AlertDefinitions::Item::UnifiedRoleManagementAlertDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the alerts property of the microsoft.graph.roleManagementAlert entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_management_alert_item_request_builder
                ## 
                def alerts_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleManagementAlert%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::Alerts::Item::UnifiedRoleManagementAlertItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new RoleManagementAlertsRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/identityGovernance/roleManagementAlerts{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Delete navigation property roleManagementAlerts for identityGovernance
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
                ## Get roleManagementAlerts from identityGovernance
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of role_management_alert
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RoleManagementAlert.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the operations property of the microsoft.graph.roleManagementAlert entity.
                ## @param id Unique identifier of the item
                ## @return a long_running_operation_item_request_builder
                ## 
                def operations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["longRunningOperation%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::RoleManagementAlerts::Operations::Item::LongRunningOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update the navigation property roleManagementAlerts in identityGovernance
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of role_management_alert
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RoleManagementAlert.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property roleManagementAlerts for identityGovernance
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
                ## Get roleManagementAlerts from identityGovernance
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
                ## Update the navigation property roleManagementAlerts in identityGovernance
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
                class RoleManagementAlertsRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Get roleManagementAlerts from identityGovernance
                class RoleManagementAlertsRequestBuilderGetQueryParameters
                    
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
                class RoleManagementAlertsRequestBuilderGetRequestConfiguration
                    
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
                class RoleManagementAlertsRequestBuilderPatchRequestConfiguration
                    
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
