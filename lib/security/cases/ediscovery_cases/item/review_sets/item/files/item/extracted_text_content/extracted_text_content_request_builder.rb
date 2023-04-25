require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../security'
require_relative '../../../../../../../cases'
require_relative '../../../../../../ediscovery_cases'
require_relative '../../../../../item'
require_relative '../../../../review_sets'
require_relative '../../../item'
require_relative '../../files'
require_relative '../item'
require_relative './extracted_text_content'

module MicrosoftGraphBeta
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module Files
                                module Item
                                    module ExtractedTextContent
                                        ## 
                                        # Provides operations to manage the media for the security entity.
                                        class ExtractedTextContentRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            ## Instantiates a new ExtractedTextContentRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/reviewSets/{ediscoveryReviewSet%2Did}/files/{ediscoveryFile%2Did}/extractedTextContent")
                                            end
                                            ## 
                                            ## Get extractedTextContent for the navigation property files from security
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of binary
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, Binary, error_mapping)
                                            end
                                            ## 
                                            ## Update extractedTextContent for the navigation property files in security
                                            ## @param body Binary request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of binary
                                            ## 
                                            def put(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_put_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, Binary, error_mapping)
                                            end
                                            ## 
                                            ## Get extractedTextContent for the navigation property files from security
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_get_request_information(request_configuration=nil)
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :GET
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                return request_info
                                            end
                                            ## 
                                            ## Update extractedTextContent for the navigation property files in security
                                            ## @param body Binary request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a request_information
                                            ## 
                                            def to_put_request_information(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :PUT
                                                unless request_configuration.nil?
                                                    request_info.add_headers_from_raw_object(request_configuration.headers)
                                                    request_info.add_request_options(request_configuration.options)
                                                end
                                                request_info.set_content_from_parsable(@request_adapter, "", body)
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
