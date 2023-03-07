require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../../models/workbook_range'
require_relative '../../../../../../../../../drives'
require_relative '../../../../../../../../item'
require_relative '../../../../../../../items'
require_relative '../../../../../../item'
require_relative '../../../../../workbook'
require_relative '../../../../worksheets'
require_relative '../../../item'
require_relative '../../tables'
require_relative '../item'
require_relative './convert_to_range'

module MicrosoftGraphBeta
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Worksheets
                            module Item
                                module Tables
                                    module Item
                                        module ConvertToRange
                                            ## 
                                            # Provides operations to call the convertToRange method.
                                            class ConvertToRangeRequestBuilder
                                                
                                                ## 
                                                # Path parameters for the request
                                                @path_parameters
                                                ## 
                                                # The request adapter to use to execute the requests.
                                                @request_adapter
                                                ## 
                                                # Url template to use to build the URL for the current request builder
                                                @url_template
                                                ## 
                                                ## Instantiates a new ConvertToRangeRequestBuilder and sets the default values.
                                                ## @param pathParameters Path parameters for the request
                                                ## @param requestAdapter The request adapter to use to execute the requests.
                                                ## @return a void
                                                ## 
                                                def initialize(path_parameters, request_adapter)
                                                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                    @url_template = "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/worksheets/{workbookWorksheet%2Did}/tables/{workbookTable%2Did}/convertToRange"
                                                    @request_adapter = request_adapter
                                                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                                                end
                                                ## 
                                                ## Converts the table into a normal range of cells. All data is preserved.
                                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                                                ## @return a Fiber of workbook_range
                                                ## 
                                                def post(request_configuration=nil)
                                                    request_info = self.to_post_request_information(
                                                        request_configuration
                                                    )
                                                    error_mapping = Hash.new
                                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::WorkbookRange.create_from_discriminator_value(pn) }, error_mapping)
                                                end
                                                ## 
                                                ## Converts the table into a normal range of cells. All data is preserved.
                                                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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

                                                ## 
                                                # Configuration for the request such as headers, query parameters, and middleware options.
                                                class ConvertToRangeRequestBuilderPostRequestConfiguration
                                                    
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
            end
        end
    end
end
