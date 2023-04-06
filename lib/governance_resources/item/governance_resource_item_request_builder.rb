require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/governance_resource'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../governance_resources'
require_relative './item'
require_relative './parent/parent_request_builder'
require_relative './role_assignment_requests/item/governance_role_assignment_request_item_request_builder'
require_relative './role_assignment_requests/role_assignment_requests_request_builder'
require_relative './role_assignments/item/governance_role_assignment_item_request_builder'
require_relative './role_assignments/role_assignments_request_builder'
require_relative './role_definitions/item/governance_role_definition_item_request_builder'
require_relative './role_definitions/role_definitions_request_builder'
require_relative './role_settings/item/governance_role_setting_item_request_builder'
require_relative './role_settings/role_settings_request_builder'

module MicrosoftGraphBeta
    module GovernanceResources
        module Item
            ## 
            # Provides operations to manage the collection of governanceResource entities.
            class GovernanceResourceItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the parent property of the microsoft.graph.governanceResource entity.
                def parent()
                    return MicrosoftGraphBeta::GovernanceResources::Item::Parent::ParentRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignmentRequests property of the microsoft.graph.governanceResource entity.
                def role_assignment_requests()
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleAssignmentRequests::RoleAssignmentRequestsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleAssignments property of the microsoft.graph.governanceResource entity.
                def role_assignments()
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleAssignments::RoleAssignmentsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleDefinitions property of the microsoft.graph.governanceResource entity.
                def role_definitions()
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleDefinitions::RoleDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the roleSettings property of the microsoft.graph.governanceResource entity.
                def role_settings()
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleSettings::RoleSettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new GovernanceResourceItemRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/governanceResources/{governanceResource%2Did}{?%24select,%24expand}")
                end
                ## 
                ## Delete entity from governanceResources
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
                ## Get entity from governanceResources by key
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of governance_resource
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update entity in governanceResources
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of governance_resource
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the roleAssignmentRequests property of the microsoft.graph.governanceResource entity.
                ## @param id Unique identifier of the item
                ## @return a governance_role_assignment_request_item_request_builder
                ## 
                def role_assignment_requests_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["governanceRoleAssignmentRequest%2Did"] = id
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleAssignmentRequests::Item::GovernanceRoleAssignmentRequestItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleAssignments property of the microsoft.graph.governanceResource entity.
                ## @param id Unique identifier of the item
                ## @return a governance_role_assignment_item_request_builder
                ## 
                def role_assignments_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["governanceRoleAssignment%2Did"] = id
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleAssignments::Item::GovernanceRoleAssignmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleDefinitions property of the microsoft.graph.governanceResource entity.
                ## @param id Unique identifier of the item
                ## @return a governance_role_definition_item_request_builder
                ## 
                def role_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["governanceRoleDefinition%2Did"] = id
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleDefinitions::Item::GovernanceRoleDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the roleSettings property of the microsoft.graph.governanceResource entity.
                ## @param id Unique identifier of the item
                ## @return a governance_role_setting_item_request_builder
                ## 
                def role_settings_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["governanceRoleSetting%2Did"] = id
                    return MicrosoftGraphBeta::GovernanceResources::Item::RoleSettings::Item::GovernanceRoleSettingItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete entity from governanceResources
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
                ## Get entity from governanceResources by key
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
                ## Update entity in governanceResources
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
                # Get entity from governanceResources by key
                class GovernanceResourceItemRequestBuilderGetQueryParameters
                    
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
