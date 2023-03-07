require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/outlook_task'
require_relative '../../../../../me'
require_relative '../../../../outlook'
require_relative '../../../task_folders'
require_relative '../../item'
require_relative '../tasks'
require_relative './attachments/attachments_request_builder'
require_relative './attachments/item/attachment_item_request_builder'
require_relative './complete/complete_request_builder'
require_relative './item'
require_relative './multi_value_extended_properties/item/multi_value_legacy_extended_property_item_request_builder'
require_relative './multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative './single_value_extended_properties/item/single_value_legacy_extended_property_item_request_builder'
require_relative './single_value_extended_properties/single_value_extended_properties_request_builder'

module MicrosoftGraphBeta
    module Me
        module Outlook
            module TaskFolders
                module Item
                    module Tasks
                        module Item
                            ## 
                            # Provides operations to manage the tasks property of the microsoft.graph.outlookTaskFolder entity.
                            class OutlookTaskItemRequestBuilder
                                
                                ## 
                                # Provides operations to manage the attachments property of the microsoft.graph.outlookTask entity.
                                def attachments()
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the complete method.
                                def complete()
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::Complete::CompleteRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.outlookTask entity.
                                def multi_value_extended_properties()
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::MultiValueExtendedProperties::MultiValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Path parameters for the request
                                @path_parameters
                                ## 
                                # The request adapter to use to execute the requests.
                                @request_adapter
                                ## 
                                # Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.outlookTask entity.
                                def single_value_extended_properties()
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::SingleValueExtendedProperties::SingleValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Url template to use to build the URL for the current request builder
                                @url_template
                                ## 
                                ## Provides operations to manage the attachments property of the microsoft.graph.outlookTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a attachment_item_request_builder
                                ## 
                                def attachments_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["attachment%2Did"] = id
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::Attachments::Item::AttachmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new OutlookTaskItemRequestBuilder and sets the default values.
                                ## @param pathParameters Path parameters for the request
                                ## @param requestAdapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                    @url_template = "{+baseurl}/me/outlook/taskFolders/{outlookTaskFolder%2Did}/tasks/{outlookTask%2Did}{?%24select}"
                                    @request_adapter = request_adapter
                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                end
                                ## 
                                ## Delete navigation property tasks for me
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
                                ## The tasks in this task folder. Read-only. Nullable.
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of outlook_task
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OutlookTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.outlookTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a multi_value_legacy_extended_property_item_request_builder
                                ## 
                                def multi_value_extended_properties_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["multiValueLegacyExtendedProperty%2Did"] = id
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::MultiValueExtendedProperties::Item::MultiValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Update the navigation property tasks in me
                                ## @param body The request body
                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of outlook_task
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OutlookTask.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.outlookTask entity.
                                ## @param id Unique identifier of the item
                                ## @return a single_value_legacy_extended_property_item_request_builder
                                ## 
                                def single_value_extended_properties_by_id(id)
                                    raise StandardError, 'id cannot be null' if id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["singleValueLegacyExtendedProperty%2Did"] = id
                                    return MicrosoftGraphBeta::Me::Outlook::TaskFolders::Item::Tasks::Item::SingleValueExtendedProperties::Item::SingleValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Delete navigation property tasks for me
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
                                ## The tasks in this task folder. Read-only. Nullable.
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
                                ## Update the navigation property tasks in me
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
                                class OutlookTaskItemRequestBuilderDeleteRequestConfiguration
                                    
                                    ## 
                                    # Request headers
                                    attr_accessor :headers
                                    ## 
                                    # Request options
                                    attr_accessor :options
                                end

                                ## 
                                # The tasks in this task folder. Read-only. Nullable.
                                class OutlookTaskItemRequestBuilderGetQueryParameters
                                    
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
                                            when "select"
                                                return "%24select"
                                            else
                                                return original_name
                                        end
                                    end
                                end

                                ## 
                                # Configuration for the request such as headers, query parameters, and middleware options.
                                class OutlookTaskItemRequestBuilderGetRequestConfiguration
                                    
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
                                class OutlookTaskItemRequestBuilderPatchRequestConfiguration
                                    
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
    end
end
