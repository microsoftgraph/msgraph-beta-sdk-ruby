require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/identity_governance/workflow'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../identity_governance'
require_relative '../../lifecycle_workflows'
require_relative '../workflows'
require_relative './execution_scope/execution_scope_request_builder'
require_relative './execution_scope/item/user_item_request_builder'
require_relative './item'
require_relative './microsoft_graph_identity_governance_activate/microsoft_graph_identity_governance_activate_request_builder'
require_relative './microsoft_graph_identity_governance_create_new_version/microsoft_graph_identity_governance_create_new_version_request_builder'
require_relative './microsoft_graph_identity_governance_restore/microsoft_graph_identity_governance_restore_request_builder'
require_relative './runs/item/run_item_request_builder'
require_relative './runs/runs_request_builder'
require_relative './task_reports/item/task_report_item_request_builder'
require_relative './task_reports/task_reports_request_builder'
require_relative './user_processing_results/item/user_processing_result_item_request_builder'
require_relative './user_processing_results/user_processing_results_request_builder'
require_relative './versions/item/workflow_version_version_number_item_request_builder'
require_relative './versions/versions_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module LifecycleWorkflows
            module Workflows
                module Item
                    ## 
                    # Provides operations to manage the workflows property of the microsoft.graph.identityGovernance.lifecycleWorkflowsContainer entity.
                    class WorkflowItemRequestBuilder
                        
                        ## 
                        # Provides operations to manage the executionScope property of the microsoft.graph.identityGovernance.workflow entity.
                        def execution_scope()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::ExecutionScope::ExecutionScopeRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the activate method.
                        def microsoft_graph_identity_governance_activate()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceActivate::MicrosoftGraphIdentityGovernanceActivateRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the createNewVersion method.
                        def microsoft_graph_identity_governance_create_new_version()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceCreateNewVersion::MicrosoftGraphIdentityGovernanceCreateNewVersionRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the restore method.
                        def microsoft_graph_identity_governance_restore()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::MicrosoftGraphIdentityGovernanceRestore::MicrosoftGraphIdentityGovernanceRestoreRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Path parameters for the request
                        @path_parameters
                        ## 
                        # The request adapter to use to execute the requests.
                        @request_adapter
                        ## 
                        # Provides operations to manage the runs property of the microsoft.graph.identityGovernance.workflow entity.
                        def runs()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Runs::RunsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the taskReports property of the microsoft.graph.identityGovernance.workflow entity.
                        def task_reports()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::TaskReportsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Url template to use to build the URL for the current request builder
                        @url_template
                        ## 
                        # Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.workflow entity.
                        def user_processing_results()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::UserProcessingResults::UserProcessingResultsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the versions property of the microsoft.graph.identityGovernance.workflow entity.
                        def versions()
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Versions::VersionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new WorkflowItemRequestBuilder and sets the default values.
                        ## @param pathParameters Path parameters for the request
                        ## @param requestAdapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                            @url_template = "{+baseurl}/identityGovernance/lifecycleWorkflows/workflows/{workflow%2Did}{?%24select,%24expand}"
                            @request_adapter = request_adapter
                            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                            @path_parameters = path_parameters if path_parameters.is_a? Hash
                        end
                        ## 
                        ## Delete navigation property workflows for identityGovernance
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
                        ## Provides operations to manage the executionScope property of the microsoft.graph.identityGovernance.workflow entity.
                        ## @param id Unique identifier of the item
                        ## @return a user_item_request_builder
                        ## 
                        def execution_scope_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["user%2Did"] = id
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::ExecutionScope::Item::UserItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## The workflows in the lifecycle workflows instance.
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of workflow
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::Workflow.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Update the navigation property workflows in identityGovernance
                        ## @param body The request body
                        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of workflow
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::Workflow.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the runs property of the microsoft.graph.identityGovernance.workflow entity.
                        ## @param id Unique identifier of the item
                        ## @return a run_item_request_builder
                        ## 
                        def runs_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["run%2Did"] = id
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Runs::Item::RunItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the taskReports property of the microsoft.graph.identityGovernance.workflow entity.
                        ## @param id Unique identifier of the item
                        ## @return a task_report_item_request_builder
                        ## 
                        def task_reports_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["taskReport%2Did"] = id
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::TaskReports::Item::TaskReportItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property workflows for identityGovernance
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
                        ## The workflows in the lifecycle workflows instance.
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
                        ## Update the navigation property workflows in identityGovernance
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
                        ## Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.workflow entity.
                        ## @param id Unique identifier of the item
                        ## @return a user_processing_result_item_request_builder
                        ## 
                        def user_processing_results_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["userProcessingResult%2Did"] = id
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::UserProcessingResults::Item::UserProcessingResultItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the versions property of the microsoft.graph.identityGovernance.workflow entity.
                        ## @param id Unique identifier of the item
                        ## @return a workflow_version_version_number_item_request_builder
                        ## 
                        def versions_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["workflowVersion%2DversionNumber"] = id
                            return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::Workflows::Item::Versions::Item::WorkflowVersionVersionNumberItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end

                        ## 
                        # Configuration for the request such as headers, query parameters, and middleware options.
                        class WorkflowItemRequestBuilderDeleteRequestConfiguration
                            
                            ## 
                            # Request headers
                            attr_accessor :headers
                            ## 
                            # Request options
                            attr_accessor :options
                        end

                        ## 
                        # The workflows in the lifecycle workflows instance.
                        class WorkflowItemRequestBuilderGetQueryParameters
                            
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
                        class WorkflowItemRequestBuilderGetRequestConfiguration
                            
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
                        class WorkflowItemRequestBuilderPatchRequestConfiguration
                            
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
end
