require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/outlook_task'
require_relative '../../../../../../../models/outlook_task_collection_response'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../me'
require_relative '../../../../../outlook'
require_relative '../../../../task_groups'
require_relative '../../../item'
require_relative '../../task_folders'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/outlook_task_item_request_builder'
require_relative './tasks'

module MicrosoftGraphBeta
    module Me
        module Outlook
            module TaskGroups
                module Item
                    module TaskFolders
                        module Item
                            module Tasks
                                ## 
                                # Provides operations to manage the tasks property of the microsoft.graph.outlookTaskFolder entity.
                                class TasksRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraphBeta::Me::Outlook::TaskGroups::Item::TaskFolders::Item::Tasks::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the tasks property of the microsoft.graph.outlookTaskFolder entity.
                                    ## @param outlook_task_id The unique identifier of outlookTask
                                    ## @return a outlook_task_item_request_builder
                                    ## 
                                    def by_outlook_task_id(outlook_task_id)
                                        raise StandardError, 'outlook_task_id cannot be null' if outlook_task_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["outlookTask%2Did"] = outlook_task_id
                                        return MicrosoftGraphBeta::Me::Outlook::TaskGroups::Item::TaskFolders::Item::Tasks::Item::OutlookTaskItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new TasksRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/me/outlook/taskGroups/{outlookTaskGroup%2Did}/taskFolders/{outlookTaskFolder%2Did}/tasks{?%24top,%24skip,%24filter,%24count,%24orderby,%24select}")
                                    end
                                    ## 
                                    ## Get all the Outlook tasks in the specified folder. By default, this operation (and the POST, PATCH, and complete task operations) returnsdate-related properties in UTC.  You can use a Prefer: outlook.timezone request header to have all the date-related properties in the response represented in a time zonedifferent than UTC. See an example for getting a single task. You can apply the header similarly to get multiple tasks. If there is more than one task group, and you want to get all the tasks in a specific task group, firstget all the task folders in that task group,and then get the tasks in each of these task folders.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of outlook_task_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OutlookTaskCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Create an Outlook task in the specified task folder. The POST method always ignores the time portion of startDateTime and dueDateTime in the request body, and assumes the time to be always midnight in the specified time zone.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of outlook_task
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OutlookTask.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Get all the Outlook tasks in the specified folder. By default, this operation (and the POST, PATCH, and complete task operations) returnsdate-related properties in UTC.  You can use a Prefer: outlook.timezone request header to have all the date-related properties in the response represented in a time zonedifferent than UTC. See an example for getting a single task. You can apply the header similarly to get multiple tasks. If there is more than one task group, and you want to get all the tasks in a specific task group, firstget all the task folders in that task group,and then get the tasks in each of these task folders.
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
                                    ## Create an Outlook task in the specified task folder. The POST method always ignores the time portion of startDateTime and dueDateTime in the request body, and assumes the time to be always midnight in the specified time zone.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_post_request_information(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :POST
                                        request_info.headers.add('Accept', 'application/json')
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                        return request_info
                                    end

                                    ## 
                                    # Get all the Outlook tasks in the specified folder. By default, this operation (and the POST, PATCH, and complete task operations) returnsdate-related properties in UTC.  You can use a Prefer: outlook.timezone request header to have all the date-related properties in the response represented in a time zonedifferent than UTC. See an example for getting a single task. You can apply the header similarly to get multiple tasks. If there is more than one task group, and you want to get all the tasks in a specific task group, firstget all the task folders in that task group,and then get the tasks in each of these task folders.
                                    class TasksRequestBuilderGetQueryParameters
                                        
                                        ## 
                                        # Include count of items
                                        attr_accessor :count
                                        ## 
                                        # Filter items by property values
                                        attr_accessor :filter
                                        ## 
                                        # Order items by property values
                                        attr_accessor :orderby
                                        ## 
                                        # Select properties to be returned
                                        attr_accessor :select
                                        ## 
                                        # Skip the first n items
                                        attr_accessor :skip
                                        ## 
                                        # Show only the first n items
                                        attr_accessor :top
                                        ## 
                                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                                        ## @param original_name The original query parameter name in the class.
                                        ## @return a string
                                        ## 
                                        def get_query_parameter(original_name)
                                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                                            case original_name
                                                when "count"
                                                    return "%24count"
                                                when "filter"
                                                    return "%24filter"
                                                when "orderby"
                                                    return "%24orderby"
                                                when "select"
                                                    return "%24select"
                                                when "skip"
                                                    return "%24skip"
                                                when "top"
                                                    return "%24top"
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
end
