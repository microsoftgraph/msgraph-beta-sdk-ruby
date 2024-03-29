require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/managed_tenants_managed_tenant_alert'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../tenant_relationships'
require_relative '../../managed_tenants'
require_relative '../managed_tenant_alerts'
require_relative './alert_logs/alert_logs_request_builder'
require_relative './alert_rule/alert_rule_request_builder'
require_relative './api_notifications/api_notifications_request_builder'
require_relative './email_notifications/email_notifications_request_builder'
require_relative './item'
require_relative './microsoft_graph_managed_tenants_add_user_input_log/microsoft_graph_managed_tenants_add_user_input_log_request_builder'

module MicrosoftGraphBeta
    module TenantRelationships
        module ManagedTenants
            module ManagedTenantAlerts
                module Item
                    ## 
                    # Provides operations to manage the managedTenantAlerts property of the microsoft.graph.managedTenants.managedTenant entity.
                    class ManagedTenantAlertItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the alertLogs property of the microsoft.graph.managedTenants.managedTenantAlert entity.
                        def alert_logs()
                            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::AlertLogs::AlertLogsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the alertRule property of the microsoft.graph.managedTenants.managedTenantAlert entity.
                        def alert_rule()
                            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::AlertRule::AlertRuleRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the apiNotifications property of the microsoft.graph.managedTenants.managedTenantAlert entity.
                        def api_notifications()
                            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::ApiNotifications::ApiNotificationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the emailNotifications property of the microsoft.graph.managedTenants.managedTenantAlert entity.
                        def email_notifications()
                            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::EmailNotifications::EmailNotificationsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the addUserInputLog method.
                        def microsoft_graph_managed_tenants_add_user_input_log()
                            return MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagedTenantAlerts::Item::MicrosoftGraphManagedTenantsAddUserInputLog::MicrosoftGraphManagedTenantsAddUserInputLogRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ManagedTenantAlertItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/tenantRelationships/managedTenants/managedTenantAlerts/{managedTenantAlert%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property managedTenantAlerts for tenantRelationships
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
                        ## Get managedTenantAlerts from tenantRelationships
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of managed_tenants_managed_tenant_alert
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlert.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property managedTenantAlerts in tenantRelationships
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of managed_tenants_managed_tenant_alert
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlert.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property managedTenantAlerts for tenantRelationships
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Get managedTenantAlerts from tenantRelationships
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                        ## Update the navigation property managedTenantAlerts in tenantRelationships
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            return request_info
                        end

                        ## 
                        # Get managedTenantAlerts from tenantRelationships
                        class ManagedTenantAlertItemRequestBuilderGetQueryParameters
                            
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
