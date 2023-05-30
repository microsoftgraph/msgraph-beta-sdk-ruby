require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../compliance'
require_relative '../../../../../ediscovery'
require_relative '../../../../cases'
require_relative '../../../item'
require_relative '../../review_sets'
require_relative '../item'
require_relative './microsoft_graph_ediscovery_export'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module ReviewSets
                        module Item
                            module MicrosoftGraphEdiscoveryExport
                                ## 
                                # Provides operations to call the export method.
                                class MicrosoftGraphEdiscoveryExportRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new MicrosoftGraphEdiscoveryExportRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/reviewSets/{reviewSet%2Did}/microsoft.graph.ediscovery.export")
                                    end
                                    ## 
                                    ## Initiate an export from a **reviewSet**.  For details, see Export documents from a review set in Advanced eDiscovery.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of void
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, nil, error_mapping)
                                    end
                                    ## 
                                    ## Initiate an export from a **reviewSet**.  For details, see Export documents from a review set in Advanced eDiscovery.
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
                                        unless request_configuration.nil?
                                            request_info.add_headers_from_raw_object(request_configuration.headers)
                                            request_info.add_request_options(request_configuration.options)
                                        end
                                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
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
