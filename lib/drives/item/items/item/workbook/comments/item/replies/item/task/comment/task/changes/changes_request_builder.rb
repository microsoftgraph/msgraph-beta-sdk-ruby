require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../../../models/workbook_document_task_change'
require_relative '../../../../../../../../../../../../../models/workbook_document_task_change_collection_response'
require_relative '../../../../../../../../../../../../drives'
require_relative '../../../../../../../../../../../item'
require_relative '../../../../../../../../../../items'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../workbook'
require_relative '../../../../../../../comments'
require_relative '../../../../../../item'
require_relative '../../../../../replies'
require_relative '../../../../item'
require_relative '../../../task'
require_relative '../../comment'
require_relative '../task'
require_relative './changes'
require_relative './count/count_request_builder'
require_relative './item/workbook_document_task_change_item_request_builder'
require_relative './item_at_with_index/item_at_with_index_request_builder'

module MicrosoftGraphBeta
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Comments
                            module Item
                                module Replies
                                    module Item
                                        module Task
                                            module Comment
                                                module Task
                                                    module Changes
                                                        ## 
                                                        # Provides operations to manage the changes property of the microsoft.graph.workbookDocumentTask entity.
                                                        class ChangesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                            
                                                            ## 
                                                            # Provides operations to call the count method.
                                                            def count()
                                                                return MicrosoftGraphBeta::Drives::Item::Items::Item::Workbook::Comments::Item::Replies::Item::Task::Comment::Task::Changes::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                                            end
                                                            ## 
                                                            ## Provides operations to manage the changes property of the microsoft.graph.workbookDocumentTask entity.
                                                            ## @param workbook_document_task_change_id The unique identifier of workbookDocumentTaskChange
                                                            ## @return a workbook_document_task_change_item_request_builder
                                                            ## 
                                                            def by_workbook_document_task_change_id(workbook_document_task_change_id)
                                                                raise StandardError, 'workbook_document_task_change_id cannot be null' if workbook_document_task_change_id.nil?
                                                                url_tpl_params = @path_parameters.clone
                                                                url_tpl_params["workbookDocumentTaskChange%2Did"] = workbook_document_task_change_id
                                                                return MicrosoftGraphBeta::Drives::Item::Items::Item::Workbook::Comments::Item::Replies::Item::Task::Comment::Task::Changes::Item::WorkbookDocumentTaskChangeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                                            end
                                                            ## 
                                                            ## Instantiates a new ChangesRequestBuilder and sets the default values.
                                                            ## @param path_parameters Path parameters for the request
                                                            ## @param request_adapter The request adapter to use to execute the requests.
                                                            ## @return a void
                                                            ## 
                                                            def initialize(path_parameters, request_adapter)
                                                                super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/comments/{workbookComment%2Did}/replies/{workbookCommentReply%2Did}/task/comment/task/changes{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                                            end
                                                            ## 
                                                            ## A collection of task change histories.
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of workbook_document_task_change_collection_response
                                                            ## 
                                                            def get(request_configuration=nil)
                                                                request_info = self.to_get_request_information(
                                                                    request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTaskChangeCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## Provides operations to call the itemAt method.
                                                            ## @param index Usage: index={index}
                                                            ## @return a item_at_with_index_request_builder
                                                            ## 
                                                            def item_at_with_index(index)
                                                                raise StandardError, 'index cannot be null' if index.nil?
                                                                return ItemAtWithIndexRequestBuilder.new(@path_parameters, @request_adapter, index)
                                                            end
                                                            ## 
                                                            ## Create new navigation property to changes for drives
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a Fiber of workbook_document_task_change
                                                            ## 
                                                            def post(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = self.to_post_request_information(
                                                                    body, request_configuration
                                                                )
                                                                error_mapping = Hash.new
                                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WorkbookDocumentTaskChange.create_from_discriminator_value(pn) }, error_mapping)
                                                            end
                                                            ## 
                                                            ## A collection of task change histories.
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
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Create new navigation property to changes for drives
                                                            ## @param body The request body
                                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                            ## @return a request_information
                                                            ## 
                                                            def to_post_request_information(body, request_configuration=nil)
                                                                raise StandardError, 'body cannot be null' if body.nil?
                                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                                unless request_configuration.nil?
                                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                    request_info.add_request_options(request_configuration.options)
                                                                end
                                                                request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                                request_info.url_template = @url_template
                                                                request_info.path_parameters = @path_parameters
                                                                request_info.http_method = :POST
                                                                request_info.headers.try_add('Accept', 'application/json')
                                                                return request_info
                                                            end
                                                            ## 
                                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                            ## @param raw_url The raw URL to use for the request builder.
                                                            ## @return a changes_request_builder
                                                            ## 
                                                            def with_url(raw_url)
                                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                                return ChangesRequestBuilder.new(raw_url, @request_adapter)
                                                            end

                                                            ## 
                                                            # A collection of task change histories.
                                                            class ChangesRequestBuilderGetQueryParameters
                                                                
                                                                ## 
                                                                # Include count of items
                                                                attr_accessor :count
                                                                ## 
                                                                # Expand related entities
                                                                attr_accessor :expand
                                                                ## 
                                                                # Filter items by property values
                                                                attr_accessor :filter
                                                                ## 
                                                                # Order items by property values
                                                                attr_accessor :orderby
                                                                ## 
                                                                # Search items by search phrases
                                                                attr_accessor :search
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
                                                                        when "expand"
                                                                            return "%24expand"
                                                                        when "filter"
                                                                            return "%24filter"
                                                                        when "orderby"
                                                                            return "%24orderby"
                                                                        when "search"
                                                                            return "%24search"
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
                    end
                end
            end
        end
    end
end
