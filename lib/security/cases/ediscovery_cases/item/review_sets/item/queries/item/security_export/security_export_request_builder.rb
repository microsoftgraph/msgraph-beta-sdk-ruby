require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../security'
require_relative '../../../../../../../cases'
require_relative '../../../../../../ediscovery_cases'
require_relative '../../../../../item'
require_relative '../../../../review_sets'
require_relative '../../../item'
require_relative '../../queries'
require_relative '../item'
require_relative './security_export'

module MicrosoftGraphBeta
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module ReviewSets
                        module Item
                            module Queries
                                module Item
                                    module SecurityExport
                                        ## 
                                        # Provides operations to call the export method.
                                        class SecurityExportRequestBuilder
                                            
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
                                            ## Instantiates a new SecurityExportRequestBuilder and sets the default values.
                                            ## @param pathParameters Path parameters for the request
                                            ## @param requestAdapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                                                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                                                @url_template = "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/reviewSets/{ediscoveryReviewSet%2Did}/queries/{ediscoveryReviewSetQuery%2Did}/security.export"
                                                @request_adapter = request_adapter
                                                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                                                @path_parameters = path_parameters if path_parameters.is_a? Hash
                                            end
                                            ## 
                                            ## Initiate an export from a **reviewSet** query.  For details, see Export documents from a review set in eDiscovery (Premium).
                                            ## @param body The request body
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                            ## Initiate an export from a **reviewSet** query.  For details, see Export documents from a review set in eDiscovery (Premium).
                                            ## @param body The request body
                                            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                                                request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                                                return request_info
                                            end

                                            ## 
                                            # Configuration for the request such as headers, query parameters, and middleware options.
                                            class SecurityExportRequestBuilderPostRequestConfiguration
                                                
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
