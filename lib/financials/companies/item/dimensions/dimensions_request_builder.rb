require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/dimension_collection_response'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../financials'
require_relative '../../companies'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './dimensions'
require_relative './item/dimension_item_request_builder'

module MicrosoftGraphBeta
    module Financials
        module Companies
            module Item
                module Dimensions
                    ## 
                    # Provides operations to manage the dimensions property of the microsoft.graph.company entity.
                    class DimensionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::Financials::Companies::Item::Dimensions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the dimensions property of the microsoft.graph.company entity.
                        ## @param dimension_id Unique identifier of the item
                        ## @return a dimension_item_request_builder
                        ## 
                        def by_dimension_id(dimension_id)
                            raise StandardError, 'dimension_id cannot be null' if dimension_id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["dimension%2Did"] = dimension_id
                            return MicrosoftGraphBeta::Financials::Companies::Item::Dimensions::Item::DimensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new DimensionsRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/financials/companies/{company%2Did}/dimensions{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                        end
                        ## 
                        ## Get dimensions from financials
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of dimension_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DimensionCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Get dimensions from financials
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
                        # Get dimensions from financials
                        class DimensionsRequestBuilderGetQueryParameters
                            
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
