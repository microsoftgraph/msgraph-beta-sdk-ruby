require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/ediscovery_user_source'
require_relative '../../../../../../../models/ediscovery_user_source_collection_response'
require_relative '../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../compliance'
require_relative '../../../../../ediscovery'
require_relative '../../../../cases'
require_relative '../../../item'
require_relative '../../legal_holds'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/user_source_item_request_builder'
require_relative './user_sources'

module MicrosoftGraphBeta
    module Compliance
        module Ediscovery
            module Cases
                module Item
                    module LegalHolds
                        module Item
                            module UserSources
                                ## 
                                # Provides operations to manage the userSources property of the microsoft.graph.ediscovery.legalHold entity.
                                class UserSourcesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UserSources::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the userSources property of the microsoft.graph.ediscovery.legalHold entity.
                                    ## @param user_source_id The unique identifier of userSource
                                    ## @return a user_source_item_request_builder
                                    ## 
                                    def by_user_source_id(user_source_id)
                                        raise StandardError, 'user_source_id cannot be null' if user_source_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["userSource%2Did"] = user_source_id
                                        return MicrosoftGraphBeta::Compliance::Ediscovery::Cases::Item::LegalHolds::Item::UserSources::Item::UserSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new UserSourcesRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/compliance/ediscovery/cases/{case%2Did}/legalHolds/{legalHold%2Did}/userSources{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                    end
                                    ## 
                                    ## Get the list of userSource objects associated with a legal hold.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of ediscovery_user_source_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryUserSourceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Adds a userSource to a legalHold object.
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of ediscovery_user_source
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryUserSource.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Get the list of userSource objects associated with a legal hold.
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
                                    ## Adds a userSource to a legalHold object.
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
                                    # Get the list of userSource objects associated with a legal hold.
                                    class UserSourcesRequestBuilderGetQueryParameters
                                        
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
