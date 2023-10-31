require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/business_scenario_task'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../solutions'
require_relative '../../../../business_scenarios'
require_relative '../../../item'
require_relative '../../planner'
require_relative '../tasks'
require_relative './assigned_to_task_board_format/assigned_to_task_board_format_request_builder'
require_relative './bucket_task_board_format/bucket_task_board_format_request_builder'
require_relative './details/details_request_builder'
require_relative './item'
require_relative './progress_task_board_format/progress_task_board_format_request_builder'

module MicrosoftGraphBeta
    module Solutions
        module BusinessScenarios
            module Item
                module Planner
                    module Tasks
                        module Item
                            ## 
                            # Provides operations to manage the tasks property of the microsoft.graph.businessScenarioPlanner entity.
                            class BusinessScenarioTaskItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the assignedToTaskBoardFormat property of the microsoft.graph.plannerTask entity.
                                def assigned_to_task_board_format()
                                    return MicrosoftGraphBeta::Solutions::BusinessScenarios::Item::Planner::Tasks::Item::AssignedToTaskBoardFormat::AssignedToTaskBoardFormatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the bucketTaskBoardFormat property of the microsoft.graph.plannerTask entity.
                                def bucket_task_board_format()
                                    return MicrosoftGraphBeta::Solutions::BusinessScenarios::Item::Planner::Tasks::Item::BucketTaskBoardFormat::BucketTaskBoardFormatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the details property of the microsoft.graph.plannerTask entity.
                                def details()
                                    return MicrosoftGraphBeta::Solutions::BusinessScenarios::Item::Planner::Tasks::Item::Details::DetailsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the progressTaskBoardFormat property of the microsoft.graph.plannerTask entity.
                                def progress_task_board_format()
                                    return MicrosoftGraphBeta::Solutions::BusinessScenarios::Item::Planner::Tasks::Item::ProgressTaskBoardFormat::ProgressTaskBoardFormatRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new BusinessScenarioTaskItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/solutions/businessScenarios/{businessScenario%2Did}/planner/tasks/{businessScenarioTask%2Did}{?%24select,%24expand}")
                                end
                                ## 
                                ## Delete a businessScenarioTask object. This API is available in the following national cloud deployments.
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
                                ## Read the properties and relationships of a businessScenarioTask object. This API is available in the following national cloud deployments.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of business_scenario_task
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the properties of a businessScenarioTask object. This API is available in the following national cloud deployments.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of business_scenario_task
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::BusinessScenarioTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete a businessScenarioTask object. This API is available in the following national cloud deployments.
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
                                    request_info.headers.try_add('Accept', 'application/json, application/json')
                                    return request_info
                                end
                                ## 
                                ## Read the properties and relationships of a businessScenarioTask object. This API is available in the following national cloud deployments.
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
                                    request_info.headers.try_add('Accept', 'application/json;q=1')
                                    return request_info
                                end
                                ## 
                                ## Update the properties of a businessScenarioTask object. This API is available in the following national cloud deployments.
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
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.try_add('Accept', 'application/json;q=1')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a business_scenario_task_item_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return BusinessScenarioTaskItemRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # Read the properties and relationships of a businessScenarioTask object. This API is available in the following national cloud deployments.
                                class BusinessScenarioTaskItemRequestBuilderGetQueryParameters
                                    
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
    end
end
