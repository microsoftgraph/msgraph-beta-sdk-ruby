require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../compliance'
require_relative '../../../../../../../ediscovery'
require_relative '../../../../../../cases'
require_relative '../../../../../item'
require_relative '../../../../review_sets'
require_relative '../../../item'
require_relative '../../queries'
require_relative '../item'
require_relative './microsoft_graph_ediscovery_apply_tags'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module ReviewSets
                        module Item
                            module Queries
                                module Item
                                    module MicrosoftGraphEdiscoveryApplyTags
                                        ## 
                                        # Provides operations to call the applyTags method.
                                        class MicrosoftGraphEdiscoveryApplyTagsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            ## Instantiates a new MicrosoftGraphEdiscoveryApplyTagsRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/reviewSets/{reviewSet%2Did}/queries/{reviewSetQuery%2Did}/microsoft.graph.ediscovery.applyTags")
                                            end
                                            ## 
                                            ## Apply tags to documents that match the specified reviewSetQuery. This API is available in the following national cloud deployments.
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
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, nil, error_mapping)
                                            end
                                            ## 
                                            ## Apply tags to documents that match the specified reviewSetQuery. This API is available in the following national cloud deployments.
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
                                            ## @return a microsoft_graph_ediscovery_apply_tags_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return MicrosoftGraphEdiscoveryApplyTagsRequestBuilder.new(raw_url, @request_adapter)
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
