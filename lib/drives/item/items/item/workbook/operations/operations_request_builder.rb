require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../models/workbook_operation'
require_relative '../../../../../../models/workbook_operation_collection_response'
require_relative '../../../../../drives'
require_relative '../../../../item'
require_relative '../../../items'
require_relative '../../item'
require_relative '../workbook'
require_relative './count/count_request_builder'
require_relative './item/workbook_operation_item_request_builder'
require_relative './operations'

module MicrosoftGraphBeta
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Operations
                            ## 
                            # Provides operations to manage the operations property of the microsoft.graph.workbook entity.
                            class OperationsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to count the resources in the collection.
                                def count()
                                    return MicrosoftGraphBeta::Drives::Item::Items::Item::Workbook::Operations::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Provides operations to manage the operations property of the microsoft.graph.workbook entity.
                                ## @param workbook_operation_id The unique identifier of workbookOperation
                                ## @return a workbook_operation_item_request_builder
                                ## 
                                def by_workbook_operation_id(workbook_operation_id)
                                    raise StandardError, 'workbook_operation_id cannot be null' if workbook_operation_id.nil?
                                    url_tpl_params = @path_parameters.clone
                                    url_tpl_params["workbookOperation%2Did"] = workbook_operation_id
                                    return MicrosoftGraphBeta::Drives::Item::Items::Item::Workbook::Operations::Item::WorkbookOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new OperationsRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/operations{?%24search,%24orderby,%24select,%24expand}")
                                end
                                ## 
                                ## Meaningless if this url is called independently. This request is part of all async requests for excel. This is used to retrieve the status of a workbookOperation object. Currently not all requests support async. Take Create session request as an example. Issue an async Create session request, follow the documentation and you may get status code 202 Accepted, async operation starts from here and you can find the url this document required from the response header, from the location part.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of workbook_operation_collection_response
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WorkbookOperationCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Create new navigation property to operations for drives
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of workbook_operation
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WorkbookOperation.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Meaningless if this url is called independently. This request is part of all async requests for excel. This is used to retrieve the status of a workbookOperation object. Currently not all requests support async. Take Create session request as an example. Issue an async Create session request, follow the documentation and you may get status code 202 Accepted, async operation starts from here and you can find the url this document required from the response header, from the location part.
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
                                ## Create new navigation property to operations for drives
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
                                # Meaningless if this url is called independently. This request is part of all async requests for excel. This is used to retrieve the status of a workbookOperation object. Currently not all requests support async. Take Create session request as an example. Issue an async Create session request, follow the documentation and you may get status code 202 Accepted, async operation starts from here and you can find the url this document required from the response header, from the location part.
                                class OperationsRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
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
                                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                                    ## @param original_name The original query parameter name in the class.
                                    ## @return a string
                                    ## 
                                    def get_query_parameter(original_name)
                                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                                        case original_name
                                            when "expand"
                                                return "%24expand"
                                            when "orderby"
                                                return "%24orderby"
                                            when "search"
                                                return "%24search"
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
