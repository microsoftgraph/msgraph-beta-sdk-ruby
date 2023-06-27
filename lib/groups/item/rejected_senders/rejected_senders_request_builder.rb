require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/directory_object_collection_response'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../groups'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/directory_object_item_request_builder'
require_relative './ref/ref_request_builder'
require_relative './rejected_senders'

module MicrosoftGraphBeta
    module Groups
        module Item
            module RejectedSenders
                ## 
                # Provides operations to manage the rejectedSenders property of the microsoft.graph.group entity.
                class RejectedSendersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraphBeta::Groups::Item::RejectedSenders::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the collection of group entities.
                    def ref()
                        return MicrosoftGraphBeta::Groups::Item::RejectedSenders::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Gets an item from the MicrosoftGraphBeta.groups.item.rejectedSenders.item collection
                    ## @param directory_object_id Unique identifier of the item
                    ## @return a directory_object_item_request_builder
                    ## 
                    def by_directory_object_id(directory_object_id)
                        raise StandardError, 'directory_object_id cannot be null' if directory_object_id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["directoryObject%2Did"] = directory_object_id
                        return MicrosoftGraphBeta::Groups::Item::RejectedSenders::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new RejectedSendersRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/rejectedSenders{?%24top,%24skip,%24filter,%24count,%24orderby,%24select}")
                    end
                    ## 
                    ## Get a list of users or groups that are in the rejected-senders list for this group. Users in the rejected senders list cannot post to conversations of the group (identified in the GET request URL). Make sure you do not specify the same user or group in the rejected senders and accepted senders lists, otherwise you will get an error.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of directory_object_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObjectCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Get a list of users or groups that are in the rejected-senders list for this group. Users in the rejected senders list cannot post to conversations of the group (identified in the GET request URL). Make sure you do not specify the same user or group in the rejected senders and accepted senders lists, otherwise you will get an error.
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
                    # Get a list of users or groups that are in the rejected-senders list for this group. Users in the rejected senders list cannot post to conversations of the group (identified in the GET request URL). Make sure you do not specify the same user or group in the rejected senders and accepted senders lists, otherwise you will get an error.
                    class RejectedSendersRequestBuilderGetQueryParameters
                        
                        ## 
                        # Include count of items
                        attr_accessor :count
                        ## 
                        # Filter items by property values
                        attr_accessor :filter
                        ## 
                        # Order items by property values
                        attr_accessor :orderby
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
                                when "filter"
                                    return "%24filter"
                                when "orderby"
                                    return "%24orderby"
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
