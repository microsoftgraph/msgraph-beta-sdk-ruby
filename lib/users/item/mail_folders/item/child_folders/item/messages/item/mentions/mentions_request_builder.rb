require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../models/mention'
require_relative '../../../../../../../../../models/mention_collection_response'
require_relative '../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../users'
require_relative '../../../../../../../item'
require_relative '../../../../../../mail_folders'
require_relative '../../../../../item'
require_relative '../../../../child_folders'
require_relative '../../../item'
require_relative '../../messages'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './item/mention_item_request_builder'
require_relative './mentions'

module MicrosoftGraphBeta
    module Users
        module Item
            module MailFolders
                module Item
                    module ChildFolders
                        module Item
                            module Messages
                                module Item
                                    module Mentions
                                        ## 
                                        # Provides operations to manage the mentions property of the microsoft.graph.message entity.
                                        class MentionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            # Provides operations to count the resources in the collection.
                                            def count()
                                                return MicrosoftGraphBeta::Users::Item::MailFolders::Item::ChildFolders::Item::Messages::Item::Mentions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Provides operations to manage the mentions property of the microsoft.graph.message entity.
                                            ## @param mention_id The unique identifier of mention
                                            ## @return a mention_item_request_builder
                                            ## 
                                            def by_mention_id(mention_id)
                                                raise StandardError, 'mention_id cannot be null' if mention_id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["mention%2Did"] = mention_id
                                                return MicrosoftGraphBeta::Users::Item::MailFolders::Item::ChildFolders::Item::Messages::Item::Mentions::Item::MentionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new MentionsRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/mailFolders/{mailFolder%2Did}/childFolders/{mailFolder%2Did1}/messages/{message%2Did}/mentions{?%24count,%24expand,%24filter,%24orderby,%24select,%24skip,%24top}")
                                            end
                                            ## 
                                            ## A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of mention_collection_response
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::MentionCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Create new navigation property to mentions for users
                                            ## @param body The request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of mention
                                            ## 
                                            def post(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_post_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["XXX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Mention.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
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
                                            ## Create new navigation property to mentions for users
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
                                                request_info.set_content_from_parsable(@request_adapter, 'application/json', body)
                                                request_info.url_template = @url_template
                                                request_info.path_parameters = @path_parameters
                                                request_info.http_method = :POST
                                                request_info.headers.try_add('Accept', 'application/json')
                                                return request_info
                                            end
                                            ## 
                                            ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                            ## @param raw_url The raw URL to use for the request builder.
                                            ## @return a mentions_request_builder
                                            ## 
                                            def with_url(raw_url)
                                                raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                return MentionsRequestBuilder.new(raw_url, @request_adapter)
                                            end

                                            ## 
                                            # A collection of mentions in the message, ordered by the createdDateTime from the newest to the oldest. By default, a GET /messages does not return this property unless you apply $expand on the property.
                                            class MentionsRequestBuilderGetQueryParameters
                                                
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
                end
            end
        end
    end
end
