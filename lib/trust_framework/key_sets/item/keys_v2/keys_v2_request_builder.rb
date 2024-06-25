require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/o_data_errors_o_data_error'
require_relative '../../../../models/trust_framework_key_v2_collection_response'
require_relative '../../../trust_framework'
require_relative '../../key_sets'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/trust_framework_key_v2_k_item_request_builder'
require_relative './keys_v2'

module MicrosoftGraphBeta
    module TrustFramework
        module KeySets
            module Item
                module Keys_v2
                    ## 
                    # Provides operations to manage the keys_v2 property of the microsoft.graph.trustFrameworkKeySet entity.
                    class KeysV2RequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::TrustFramework::KeySets::Item::Keys_v2::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the keys_v2 property of the microsoft.graph.trustFrameworkKeySet entity.
                        ## @param trust_framework_key_v2_kid The unique identifier of trustFrameworkKey_v2
                        ## @return a trust_framework_key_v2_k_item_request_builder
                        ## 
                        def by_trust_framework_key_v2_kid(trust_framework_key_v2_kid)
                            raise StandardError, 'trust_framework_key_v2_kid cannot be null' if trust_framework_key_v2_kid.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["trustFrameworkKey_v2%2Dkid"] = trust_framework_key_v2_kid
                            return MicrosoftGraphBeta::TrustFramework::KeySets::Item::Keys_v2::Item::TrustFrameworkKeyV2KItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new KeysV2RequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/trustFramework/keySets/{trustFrameworkKeySet%2Did}/keys_v2{?%24count,%24expand,%24filter,%24orderby,%24search,%24select,%24skip,%24top}")
                        end
                        ## 
                        ## Read the properties and relationships of a trustFrameworkKeyv2 object.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of trust_framework_key_v2_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::TrustFrameworkKeyV2CollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Read the properties and relationships of a trustFrameworkKeyv2 object.
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
                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                        ## @param raw_url The raw URL to use for the request builder.
                        ## @return a keys_v2_request_builder
                        ## 
                        def with_url(raw_url)
                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                            return KeysV2RequestBuilder.new(raw_url, @request_adapter)
                        end

                        ## 
                        # Read the properties and relationships of a trustFrameworkKeyv2 object.
                        class KeysV2RequestBuilderGetQueryParameters
                            
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
