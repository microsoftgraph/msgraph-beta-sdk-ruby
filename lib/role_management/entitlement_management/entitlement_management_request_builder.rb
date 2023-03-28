require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/rbac_application'
require_relative '../role_management'
require_relative './entitlement_management'
require_relative './i2d583909aac88073f18030b10144d11a264f2e6ef8f31368b1b469bc5b9a0bd5/bbf95d1e964edfb115b600e4ade1567efacd34d7c04a0e9e27e9067c81a38415'
require_relative './i8f0404c6adfa722046a5fe8a7bc0aa8739ac12b66181c6b2fcb3f1c591e89cfe/55d640cf09d685d8ddb80e6c832fa0f6a0a0efd04bb7674d9dff3722869d0cb3'
require_relative './resource_namespaces/item/unified_rbac_resource_namespace_item_request_builder'
require_relative './resource_namespaces/resource_namespaces_request_builder'
require_relative './role_assignment_approvals/item/approval_item_request_builder'
require_relative './role_assignment_approvals/role_assignment_approvals_request_builder'
require_relative './role_assignments/item/unified_role_assignment_item_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_assignment_schedule_instances/item/unified_role_assignment_schedule_instance_item_request_builder'
require_relative './role_assignment_schedule_instances/role_assignment_schedule_instances_request_builder'
require_relative './role_assignment_schedule_requests/item/unified_role_assignment_schedule_request_item_request_builder'
require_relative './role_assignment_schedule_requests/role_assignment_schedule_requests_request_builder'
require_relative './role_assignment_schedules/item/unified_role_assignment_schedule_item_request_builder'
require_relative './role_assignment_schedules/role_assignment_schedules_request_builder'
require_relative './role_definitions/item/unified_role_definition_item_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './role_eligibility_schedule_instances/item/unified_role_eligibility_schedule_instance_item_request_builder'
require_relative './role_eligibility_schedule_instances/role_eligibility_schedule_instances_request_builder'
require_relative './role_eligibility_schedule_requests/item/unified_role_eligibility_schedule_request_item_request_builder'
require_relative './role_eligibility_schedule_requests/role_eligibility_schedule_requests_request_builder'
require_relative './role_eligibility_schedules/item/unified_role_eligibility_schedule_item_request_builder'
require_relative './role_eligibility_schedules/role_eligibility_schedules_request_builder'
require_relative './transitive_role_assignments/item/unified_role_assignment_item_request_builder'
require_relative './transitive_role_assignments/transitive_role_assignments_request_builder'

module MicrosoftGraphBeta
    module RoleManagement
        module EntitlementManagement
            ## 
            # Provides operations to manage the entitlementManagement property of the microsoft.graph.roleManagement entity.
            class EntitlementManagementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the resourceNamespaces property of the microsoft.graph.rbacApplication entity.
                def resource_namespaces()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::ResourceNamespaces::ResourceNamespacesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentApprovals property of the microsoft.graph.rbacApplication entity.
                def role_assignment_approvals()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentApprovals::RoleAssignmentApprovalsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignments property of the microsoft.graph.rbacApplication entity.
                def role_assignments()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_instances()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentScheduleInstances::RoleAssignmentScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedule_requests()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentScheduleRequests::RoleAssignmentScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentSchedules property of the microsoft.graph.rbacApplication entity.
                def role_assignment_schedules()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentSchedules::RoleAssignmentSchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleDefinitions property of the microsoft.graph.rbacApplication entity.
                def role_definitions()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_instances()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilityScheduleInstances::RoleEligibilityScheduleInstancesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilityScheduleRequests property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedule_requests()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilityScheduleRequests::RoleEligibilityScheduleRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleEligibilitySchedules property of the microsoft.graph.rbacApplication entity.
                def role_eligibility_schedules()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilitySchedules::RoleEligibilitySchedulesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the roleScheduleInstances method.
                def role_schedule_instancesdirectory_scope_id_directory_scope_id_app_scope_id_app_scope_id_principal_id_principal_id_role_definition_id_role_definition_id()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::I2d583909aac88073f18030b10144d11a264f2e6ef8f31368b1b469bc5b9a0bd5::RoleScheduleInstancesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the roleSchedules method.
                def role_schedulesdirectory_scope_id_directory_scope_id_app_scope_id_app_scope_id_principal_id_principal_id_role_definition_id_role_definition_id()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::I8f0404c6adfa722046a5fe8a7bc0aa8739ac12b66181c6b2fcb3f1c591e89cfe::RoleSchedulesdirectoryScopeIdDirectoryScopeIdAppScopeIdAppScopeIdPrincipalIdPrincipalIdRoleDefinitionIdRoleDefinitionIdRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the transitiveRoleAssignments property of the microsoft.graph.rbacApplication entity.
                def transitive_role_assignments()
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::TransitiveRoleAssignments::TransitiveRoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new EntitlementManagementRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/roleManagement/entitlementManagement{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property entitlementManagement for roleManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## The RbacApplication for Entitlement Management
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property entitlementManagement in roleManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of rbac_application
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::RbacApplication.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the resourceNamespaces property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_rbac_resource_namespace_item_request_builder
                ## 
                def resource_namespaces_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRbacResourceNamespace%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::ResourceNamespaces::Item::UnifiedRbacResourceNamespaceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentApprovals property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a approval_item_request_builder
                ## 
                def role_assignment_approvals_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["approval%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentApprovals::Item::ApprovalItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignments property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_item_request_builder
                ## 
                def role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignment%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignments::Item::UnifiedRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentScheduleInstances property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_instance_item_request_builder
                ## 
                def role_assignment_schedule_instances_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentScheduleInstance%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentScheduleInstances::Item::UnifiedRoleAssignmentScheduleInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentScheduleRequests property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_request_item_request_builder
                ## 
                def role_assignment_schedule_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentScheduleRequest%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentScheduleRequests::Item::UnifiedRoleAssignmentScheduleRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignmentSchedules property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_schedule_item_request_builder
                ## 
                def role_assignment_schedules_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignmentSchedule%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleAssignmentSchedules::Item::UnifiedRoleAssignmentScheduleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleDefinitions property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_definition_item_request_builder
                ## 
                def role_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleDefinition%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleDefinitions::Item::UnifiedRoleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilityScheduleInstances property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_instance_item_request_builder
                ## 
                def role_eligibility_schedule_instances_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilityScheduleInstance%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilityScheduleInstances::Item::UnifiedRoleEligibilityScheduleInstanceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilityScheduleRequests property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_request_item_request_builder
                ## 
                def role_eligibility_schedule_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilityScheduleRequest%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilityScheduleRequests::Item::UnifiedRoleEligibilityScheduleRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleEligibilitySchedules property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_eligibility_schedule_item_request_builder
                ## 
                def role_eligibility_schedules_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleEligibilitySchedule%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::RoleEligibilitySchedules::Item::UnifiedRoleEligibilityScheduleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property entitlementManagement for roleManagement
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
                ## The RbacApplication for Entitlement Management
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
                ## Update the navigation property entitlementManagement in roleManagement
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
                    request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                    return request_info
                end
                ## 
                ## Provides operations to manage the transitiveRoleAssignments property of the microsoft.graph.rbacApplication entity.
                ## @param id Unique identifier of the item
                ## @return a unified_role_assignment_item_request_builder
                ## 
                def transitive_role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["unifiedRoleAssignment%2Did"] = id
                    return MicrosoftGraphBeta::RoleManagement::EntitlementManagement::TransitiveRoleAssignments::Item::UnifiedRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # The RbacApplication for Entitlement Management
                class EntitlementManagementRequestBuilderGetQueryParameters
                    
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
