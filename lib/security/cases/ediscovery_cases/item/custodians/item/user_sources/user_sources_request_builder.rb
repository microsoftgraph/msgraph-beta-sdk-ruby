require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../models/security/user_source'
require_relative '../../../../../../../models/security/user_source_collection_response'
require_relative '../../../../../../security'
require_relative '../../../../../cases'
require_relative '../../../../ediscovery_cases'
require_relative '../../../item'
require_relative '../../custodians'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/user_source_item_request_builder'
require_relative './user_sources'

module MicrosoftGraphBeta
    module Security
        module Cases
            module EdiscoveryCases
                module Item
                    module Custodians
                        module Item
                            module UserSources
                                ## 
                                # Provides operations to manage the userSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                class UserSourcesRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    # Provides operations to count the resources in the collection.
                                    def count()
                                        return MicrosoftGraphBeta::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UserSources::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                    end
                                    ## 
                                    ## Provides operations to manage the userSources property of the microsoft.graph.security.ediscoveryCustodian entity.
                                    ## @param user_source_id Unique identifier of the item
                                    ## @return a user_source_item_request_builder
                                    ## 
                                    def by_user_source_id(user_source_id)
                                        raise StandardError, 'user_source_id cannot be null' if user_source_id.nil?
                                        url_tpl_params = @path_parameters.clone
                                        url_tpl_params["userSource%2Did"] = user_source_id
                                        return MicrosoftGraphBeta::Security::Cases::EdiscoveryCases::Item::Custodians::Item::UserSources::Item::UserSourceItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                    end
                                    ## 
                                    ## Instantiates a new UserSourcesRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/security/cases/ediscoveryCases/{ediscoveryCase%2Did}/custodians/{ediscoveryCustodian%2Did}/userSources{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                                    end
                                    ## 
                                    ## Data source entity for a custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of user_source_collection_response
                                    ## 
                                    def get(request_configuration=nil)
                                        request_info = self.to_get_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Security::UserSourceCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Create new navigation property to userSources for security
                                    ## @param body The request body
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of user_source
                                    ## 
                                    def post(body, request_configuration=nil)
                                        raise StandardError, 'body cannot be null' if body.nil?
                                        request_info = self.to_post_request_information(
                                            body, request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Security::UserSource.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## Data source entity for a custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
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
                                    ## Create new navigation property to userSources for security
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
                                    # Data source entity for a custodian. This is the container for a custodian's mailbox and OneDrive for Business site.
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
