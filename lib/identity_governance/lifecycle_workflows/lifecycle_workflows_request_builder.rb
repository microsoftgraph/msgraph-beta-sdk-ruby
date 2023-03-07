require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/identity_governance/lifecycle_workflows_container'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../identity_governance'
require_relative './custom_task_extensions/custom_task_extensions_request_builder'
require_relative './custom_task_extensions/item/custom_task_extension_item_request_builder'
require_relative './deleted_items/deleted_items_request_builder'
require_relative './lifecycle_workflows'
require_relative './settings/settings_request_builder'
require_relative './task_definitions/item/task_definition_item_request_builder'
require_relative './task_definitions/task_definitions_request_builder'
require_relative './workflows/item/workflow_item_request_builder'
require_relative './workflows/workflows_request_builder'
require_relative './workflow_templates/item/workflow_template_item_request_builder'
require_relative './workflow_templates/workflow_templates_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module LifecycleWorkflows
            ## 
            # Provides operations to manage the lifecycleWorkflows property of the microsoft.graph.identityGovernance entity.
            class LifecycleWorkflowsRequestBuilder
                
                ## 
                # Provides operations to manage the customTaskExtensions property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def custom_task_extensions()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::CustomTaskExtensions::CustomTaskExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the deletedItems property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def deleted_items()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::DeletedItems::DeletedItemsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Path parameters for the request
                @path_parameters
                ## 
                # The request adapter to use to execute the requests.
                @request_adapter
                ## 
                # Provides operations to manage the settings property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def settings()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Settings::SettingsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the taskDefinitions property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def task_definitions()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::TaskDefinitions::TaskDefinitionsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Url template to use to build the URL for the current request builder
                @url_template
                ## 
                # Provides operations to manage the workflows property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def workflows()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::WorkflowsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the workflowTemplates property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                def workflow_templates()
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::WorkflowTemplates::WorkflowTemplatesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new LifecycleWorkflowsRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/identityGovernance/lifecycleWorkflows{?%24select,%24expand}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Provides operations to manage the customTaskExtensions property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                ## @param id Unique identifier of the item
                ## @return a custom_task_extension_item_request_builder
                ## 
                def custom_task_extensions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["customTaskExtension%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::CustomTaskExtensions::Item::CustomTaskExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property lifecycleWorkflows for identityGovernance
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
                ## Get lifecycleWorkflows from identityGovernance
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of lifecycle_workflows_container
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::LifecycleWorkflowsContainer.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property lifecycleWorkflows in identityGovernance
                ## @param body The request body
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of lifecycle_workflows_container
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::LifecycleWorkflowsContainer.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the taskDefinitions property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                ## @param id Unique identifier of the item
                ## @return a task_definition_item_request_builder
                ## 
                def task_definitions_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["taskDefinition%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::TaskDefinitions::Item::TaskDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property lifecycleWorkflows for identityGovernance
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
                ## Get lifecycleWorkflows from identityGovernance
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
                ## Update the navigation property lifecycleWorkflows in identityGovernance
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
                ## Provides operations to manage the workflows property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                ## @param id Unique identifier of the item
                ## @return a workflow_item_request_builder
                ## 
                def workflows_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["workflow%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::WorkflowItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the workflowTemplates property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                ## @param id Unique identifier of the item
                ## @return a workflow_template_item_request_builder
                ## 
                def workflow_templates_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["workflowTemplate%2Did"] = id
                    return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::WorkflowTemplates::Item::WorkflowTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class LifecycleWorkflowsRequestBuilderDeleteRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                end

                ## 
                # Get lifecycleWorkflows from identityGovernance
                class LifecycleWorkflowsRequestBuilderGetQueryParameters
                    
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
                class LifecycleWorkflowsRequestBuilderGetRequestConfiguration
                    
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
                class LifecycleWorkflowsRequestBuilderPatchRequestConfiguration
                    
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
