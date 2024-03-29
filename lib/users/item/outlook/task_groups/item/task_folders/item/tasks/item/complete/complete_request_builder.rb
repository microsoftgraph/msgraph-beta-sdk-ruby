require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../users'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../outlook'
require_relative '../../../../../../task_groups'
require_relative '../../../../../item'
require_relative '../../../../task_folders'
require_relative '../../../item'
require_relative '../../tasks'
require_relative '../item'
require_relative './complete'

module MicrosoftGraphBeta
    module Users
        module Item
            module Outlook
                module TaskGroups
                    module Item
                        module TaskFolders
                            module Item
                                module Tasks
                                    module Item
                                        module Complete
                                            ## 
                                            # Provides operations to call the complete method.
                                            class CompleteRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                
                                                ## 
                                                ## Instantiates a new CompleteRequestBuilder and sets the default values.
                                                ## @param path_parameters Path parameters for the request
                                                ## @param request_adapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/outlook/taskGroups/{outlookTaskGroup%2Did}/taskFolders/{outlookTaskFolder%2Did}/tasks/{outlookTask%2Did}/complete")
                                                end
                                                ## 
                                                ## Complete an Outlook task which sets the completedDateTime property to the current date, and the status property to completed. If you are completing a task in a recurring series, in the response, the task collection will contain the completed task in the series, and the next task in the series. The completedDateTime property represents the date when the task is finished. The time portion of completedDateTime is set to midnight UTC by default. By default, this operation (and the POST, GET, and PATCH task operations) returns date-related properties in UTC. You can use the Prefer: outlook.timezone header to have all the date-related properties in the response represented in a time zone different than UTC.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of complete_response
                                                ## 
                                                def post(request_configuration=nil)
                                                    request_info = self.to_post_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Users::Item::Outlook::TaskGroups::Item::TaskFolders::Item::Tasks::Item::Complete::CompleteResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Complete an Outlook task which sets the completedDateTime property to the current date, and the status property to completed. If you are completing a task in a recurring series, in the response, the task collection will contain the completed task in the series, and the next task in the series. The completedDateTime property represents the date when the task is finished. The time portion of completedDateTime is set to midnight UTC by default. By default, this operation (and the POST, GET, and PATCH task operations) returns date-related properties in UTC. You can use the Prefer: outlook.timezone header to have all the date-related properties in the response represented in a time zone different than UTC.
                                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a request_information
                                                ## 
                                                def to_post_request_information(request_configuration=nil)
                                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                    request_info.url_template = @url_template
                                                    request_info.path_parameters = @path_parameters
                                                    request_info.http_method = :POST
                                                    request_info.headers.add('Accept', 'application/json')
                                                    unless request_configuration.nil?
                                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                                        request_info.add_request_options(request_configuration.options)
                                                    end
                                                    return request_info
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
end
