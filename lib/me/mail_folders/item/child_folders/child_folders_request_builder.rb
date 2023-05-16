require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/mail_folder'
require_relative '../../../../models/mail_folder_collection_response'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../me'
require_relative '../../mail_folders'
require_relative '../item'
require_relative './child_folders'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'
require_relative './item/mail_folder_item_request_builder'

module MicrosoftGraphBeta
    module Me
        module MailFolders
            module Item
                module ChildFolders
                    ## 
                    # Provides operations to manage the childFolders property of the microsoft.graph.mailFolder entity.
                    class ChildFoldersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to count the resources in the collection.
                        def count()
                            return MicrosoftGraphBeta::Me::MailFolders::Item::ChildFolders::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the delta method.
                        def delta()
                            return MicrosoftGraphBeta::Me::MailFolders::Item::ChildFolders::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the childFolders property of the microsoft.graph.mailFolder entity.
                        ## @param mail_folder_id1 Unique identifier of the item
                        ## @return a mail_folder_item_request_builder
                        ## 
                        def by_mail_folder_id1(mail_folder_id1)
                            raise StandardError, 'mail_folder_id1 cannot be null' if mail_folder_id1.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["mailFolder%2Did1"] = mail_folder_id1
                            return MicrosoftGraphBeta::Me::MailFolders::Item::ChildFolders::Item::MailFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ChildFoldersRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/me/mailFolders/{mailFolder%2Did}/childFolders{?%24top,%24skip,%24filter,%24count,%24orderby,%24select,%24expand}")
                        end
                        ## 
                        ## Get the folder collection under the specified folder. You can use the `.../me/mailFolders` shortcut to get the top-levelfolder collection and navigate to another folder. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of mail_folder_collection_response
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MailFolderCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Create a new mailSearchFolder in the specified user's mailbox.
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of mail_folder
                        ## 
                        def post(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_post_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MailFolder.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Get the folder collection under the specified folder. You can use the `.../me/mailFolders` shortcut to get the top-levelfolder collection and navigate to another folder. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
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
                        ## Create a new mailSearchFolder in the specified user's mailbox.
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
                        # Get the folder collection under the specified folder. You can use the `.../me/mailFolders` shortcut to get the top-levelfolder collection and navigate to another folder. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
                        class ChildFoldersRequestBuilderGetQueryParameters
                            
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
