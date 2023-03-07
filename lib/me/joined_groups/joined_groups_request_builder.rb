require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/group_collection_response'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../me'
require_relative './delta/delta_request_builder'
require_relative './evaluate_dynamic_membership/evaluate_dynamic_membership_request_builder'
require_relative './get_by_ids/get_by_ids_request_builder'
require_relative './get_user_owned_objects/get_user_owned_objects_request_builder'
require_relative './joined_groups'
require_relative './validate_properties/validate_properties_request_builder'

module MicrosoftGraphBeta
    module Me
        module JoinedGroups
            ## 
            # Provides operations to manage the joinedGroups property of the microsoft.graph.user entity.
            class JoinedGroupsRequestBuilder
                
                ## 
                # Provides operations to call the delta method.
                def delta()
                    return MicrosoftGraphBeta::Me::JoinedGroups::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the evaluateDynamicMembership method.
                def evaluate_dynamic_membership()
                    return MicrosoftGraphBeta::Me::JoinedGroups::EvaluateDynamicMembership::EvaluateDynamicMembershipRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getByIds method.
                def get_by_ids()
                    return MicrosoftGraphBeta::Me::JoinedGroups::GetByIds::GetByIdsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getUserOwnedObjects method.
                def get_user_owned_objects()
                    return MicrosoftGraphBeta::Me::JoinedGroups::GetUserOwnedObjects::GetUserOwnedObjectsRequestBuilder.new(@path_parameters, @request_adapter)
                end
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
                # Provides operations to call the validateProperties method.
                def validate_properties()
                    return MicrosoftGraphBeta::Me::JoinedGroups::ValidateProperties::ValidatePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new JoinedGroupsRequestBuilder and sets the default values.
                ## @param pathParameters Path parameters for the request
                ## @param requestAdapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                    raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                    @url_template = "{+baseurl}/me/joinedGroups{?%24top,%24skip,%24filter,%24count,%24orderby,%24select}"
                    @request_adapter = request_adapter
                    path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                    @path_parameters = path_parameters if path_parameters.is_a? Hash
                end
                ## 
                ## Get joinedGroups from me
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of group_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::GroupCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Get joinedGroups from me
                ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
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
                # Get joinedGroups from me
                class JoinedGroupsRequestBuilderGetQueryParameters
                    
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
                    ## @param originalName The original query parameter name in the class.
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

                ## 
                # Configuration for the request such as headers, query parameters, and middleware options.
                class JoinedGroupsRequestBuilderGetRequestConfiguration
                    
                    ## 
                    # Request headers
                    attr_accessor :headers
                    ## 
                    # Request options
                    attr_accessor :options
                    ## 
                    # Request query parameters
                    attr_accessor :query_parameters
                end
            end
        end
    end
end
