require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/directory_object_collection_response'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../directory'
require_relative './count/count_request_builder'
require_relative './deleted_items'
require_relative './get_by_ids/get_by_ids_request_builder'
require_relative './graph_administrative_unit/graph_administrative_unit_request_builder'
require_relative './graph_application/graph_application_request_builder'
require_relative './graph_device/graph_device_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './graph_service_principal/graph_service_principal_request_builder'
require_relative './graph_user/graph_user_request_builder'
require_relative './item/directory_object_item_request_builder'
require_relative './validate_properties/validate_properties_request_builder'

module MicrosoftGraphBeta
    module Directory
        module DeletedItems
            ## 
            # Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
            class DeletedItemsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to count the resources in the collection.
                def count()
                    return MicrosoftGraphBeta::Directory::DeletedItems::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the getByIds method.
                def get_by_ids()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GetByIds::GetByIdsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to administrativeUnit.
                def graph_administrative_unit()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphAdministrativeUnit::GraphAdministrativeUnitRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to application.
                def graph_application()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphApplication::GraphApplicationRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to device.
                def graph_device()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphDevice::GraphDeviceRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to group.
                def graph_group()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to servicePrincipal.
                def graph_service_principal()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphServicePrincipal::GraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Casts the previous resource to user.
                def graph_user()
                    return MicrosoftGraphBeta::Directory::DeletedItems::GraphUser::GraphUserRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the validateProperties method.
                def validate_properties()
                    return MicrosoftGraphBeta::Directory::DeletedItems::ValidateProperties::ValidatePropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the deletedItems property of the microsoft.graph.directory entity.
                ## @param directory_object_id The unique identifier of directoryObject
                ## @return a directory_object_item_request_builder
                ## 
                def by_directory_object_id(directory_object_id)
                    raise StandardError, 'directory_object_id cannot be null' if directory_object_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["directoryObject%2Did"] = directory_object_id
                    return MicrosoftGraphBeta::Directory::DeletedItems::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new DeletedItemsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/directory/deletedItems{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
                end
                ## 
                ## Get deletedItems from directory
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of directory_object_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObjectCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Get deletedItems from directory
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
                ## @return a deleted_items_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return DeletedItemsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get deletedItems from directory
                class DeletedItemsRequestBuilderGetQueryParameters
                    
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
