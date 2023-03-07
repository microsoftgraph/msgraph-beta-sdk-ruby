require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/identity_governance/run'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../identity_governance'
require_relative '../../../../../lifecycle_workflows'
require_relative '../../../../deleted_items'
require_relative '../../../workflows'
require_relative '../../item'
require_relative '../runs'
require_relative './item'
require_relative './task_processing_results/item/task_processing_result_item_request_builder'
require_relative './task_processing_results/task_processing_results_request_builder'
require_relative './user_processing_results/item/user_processing_result_item_request_builder'
require_relative './user_processing_results/user_processing_results_request_builder'

module MicrosoftGraphBeta
    module IdentityGovernance
        module LifecycleWorkflows
            module DeletedItems
                module Workflows
                    module Item
                        module Runs
                            module Item
                                ## 
                                # Provides operations to manage the runs property of the microsoft.graph.identityGovernance.workflow entity.
                                class RunItemRequestBuilder
                                    
                                    ## 
                                    # Path parameters for the request
                                    @path_parameters
                                    ## 
                                    # The request adapter to use to execute the requests.
                                    @request_adapter
                                    ## 
                                    # Provides operations to manage the taskProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                    def task_processing_results()
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::DeletedItems::Workflows::Item::Runs::Item::TaskProcessingResults::TaskProcessingResultsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    # Url template to use to build the URL for the current request builder
                                    @url_template
                                    ## 
                                    # Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                    def user_processing_results()
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::DeletedItems::Workflows::Item::Runs::Item::UserProcessingResults::UserProcessingResultsRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new RunItemRequestBuilder and sets the default values.
                                    ## @param pathParameters Path parameters for the request
                                    ## @param requestAdapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                        @url_template = "{+baseurl}/identityGovernance/lifecycleWorkflows/deletedItems/workflows/{workflow%2Did}/runs/{run%2Did}{?%24select,%24expand}"
                                        @request_adapter = request_adapter
                                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                                    end
                                    ## 
                                    ## Get runs from identityGovernance
                                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of run
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::Run.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Provides operations to manage the taskProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                    ## @param id Unique identifier of the item
                                    ## @return a task_processing_result_item_request_builder
                                    ## 
                                    def task_processing_results_by_id(id)
                                        raise StandardError, 'id cannot be null' if id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["taskProcessingResult%2Did"] = id
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::DeletedItems::Workflows::Item::Runs::Item::TaskProcessingResults::Item::TaskProcessingResultItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Get runs from identityGovernance
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
                                    ## Provides operations to manage the userProcessingResults property of the microsoft.graph.identityGovernance.run entity.
                                    ## @param id Unique identifier of the item
                                    ## @return a user_processing_result_item_request_builder
                                    ## 
                                    def user_processing_results_by_id(id)
                                        raise StandardError, 'id cannot be null' if id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["userProcessingResult%2Did"] = id
                                        return MicrosoftGraphBeta::IdentityGovernance::LifecycleWorkflows::DeletedItems::Workflows::Item::Runs::Item::UserProcessingResults::Item::UserProcessingResultItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end

                                    ## 
                                    # Get runs from identityGovernance
                                    class RunItemRequestBuilderGetQueryParameters
                                        
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
                                    class RunItemRequestBuilderGetRequestConfiguration
                                        
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
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
