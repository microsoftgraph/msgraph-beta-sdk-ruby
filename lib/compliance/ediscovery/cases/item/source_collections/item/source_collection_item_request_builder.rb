require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph_beta'
require_relative '../../../../../../models/ediscovery_source_collection'
require_relative '../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../compliance'
require_relative '../../../../ediscovery'
require_relative '../../../cases'
require_relative '../../item'
require_relative '../source_collections'
require_relative './additional_sources/additional_sources_request_builder'
require_relative './add_to_review_set_operation/add_to_review_set_operation_request_builder'
require_relative './custodian_sources/custodian_sources_request_builder'
require_relative './item'
require_relative './last_estimate_statistics_operation/last_estimate_statistics_operation_request_builder'
require_relative './microsoft_graph_ediscovery_estimate_statistics/microsoft_graph_ediscovery_estimate_statistics_request_builder'
require_relative './microsoft_graph_ediscovery_purge_data/microsoft_graph_ediscovery_purge_data_request_builder'
require_relative './noncustodial_sources/noncustodial_sources_request_builder'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module SourceCollections
                        module Item
                            ## 
                            # Provides operations to manage the sourceCollections property of the microsoft.graph.ediscovery.case entity.
                            class SourceCollectionItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                # Provides operations to manage the additionalSources property of the microsoft.graph.ediscovery.sourceCollection entity.
                                def additional_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::AdditionalSources::AdditionalSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the addToReviewSetOperation property of the microsoft.graph.ediscovery.sourceCollection entity.
                                def add_to_review_set_operation()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::AddToReviewSetOperation::AddToReviewSetOperationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the custodianSources property of the microsoft.graph.ediscovery.sourceCollection entity.
                                def custodian_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::CustodianSources::CustodianSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the lastEstimateStatisticsOperation property of the microsoft.graph.ediscovery.sourceCollection entity.
                                def last_estimate_statistics_operation()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::LastEstimateStatisticsOperation::LastEstimateStatisticsOperationRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the estimateStatistics method.
                                def microsoft_graph_ediscovery_estimate_statistics()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::MicrosoftGraphEdiscoveryEstimateStatistics::MicrosoftGraphEdiscoveryEstimateStatisticsRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to call the purgeData method.
                                def microsoft_graph_ediscovery_purge_data()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::MicrosoftGraphEdiscoveryPurgeData::MicrosoftGraphEdiscoveryPurgeDataRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                # Provides operations to manage the noncustodialSources property of the microsoft.graph.ediscovery.sourceCollection entity.
                                def noncustodial_sources()
                                    return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::SourceCollections::Item::NoncustodialSources::NoncustodialSourcesRequestBuilder.new(@path_parameters, @request_adapter)
                                end
                                ## 
                                ## Instantiates a new SourceCollectionItemRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/sourceCollections/{sourceCollection%2Did}{?%24expand,%24select}")
                                end
                                ## 
                                ## Delete a sourceCollection object.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of void
                                ## 
                                def delete(request_configuration=nil)
                                    request_info = self.to_delete_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, nil, error_mapping)
                                end
                                ## 
                                ## Returns a list of sourceCollection objects associated with this case.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_source_collection
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoverySourceCollection.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Update the properties of a sourceCollection object.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of ediscovery_source_collection
                                ## 
                                def patch(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_patch_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoverySourceCollection.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Delete a sourceCollection object.
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_delete_request_information(request_configuration=nil)
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.url_template = '{+baseurl}/compliance/ediscovery/cases/{case%2Did}/sourceCollections/{sourceCollection%2Did}'
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :DELETE
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a list of sourceCollection objects associated with this case.
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
                                ## Update the properties of a sourceCollection object.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_patch_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                    request_info.url_template = '{+baseurl}/compliance/ediscovery/cases/{case%2Did}/sourceCollections/{sourceCollection%2Did}'
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :PATCH
                                    request_info.headers.try_add('Accept', 'application/json')
                                    return request_info
                                end
                                ## 
                                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                ## @param raw_url The raw URL to use for the request builder.
                                ## @return a source_collection_item_request_builder
                                ## 
                                def with_url(raw_url)
                                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                    return SourceCollectionItemRequestBuilder.new(raw_url, @request_adapter)
                                end

                                ## 
                                # Returns a list of sourceCollection objects associated with this case.
                                class SourceCollectionItemRequestBuilderGetQueryParameters
                                    
                                    ## 
                                    # Expand related entities
                                    attr_accessor :expand
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
