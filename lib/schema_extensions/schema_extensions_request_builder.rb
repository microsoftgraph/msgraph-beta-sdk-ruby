require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/o_data_errors_o_data_error'
require_relative '../models/schema_extension'
require_relative '../models/schema_extension_collection_response'
require_relative './count/count_request_builder'
require_relative './item/schema_extension_item_request_builder'
require_relative './schema_extensions'

module MicrosoftGraphBeta
    module SchemaExtensions
        ## 
        # Provides operations to manage the collection of schemaExtension entities.
        class SchemaExtensionsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            # Provides operations to count the resources in the collection.
            def count()
                return MicrosoftGraphBeta::SchemaExtensions::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the collection of schemaExtension entities.
            ## @param schema_extension_id The unique identifier of schemaExtension
            ## @return a schema_extension_item_request_builder
            ## 
            def by_schema_extension_id(schema_extension_id)
                raise StandardError, 'schema_extension_id cannot be null' if schema_extension_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["schemaExtension%2Did"] = schema_extension_id
                return MicrosoftGraphBeta::SchemaExtensions::Item::SchemaExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new SchemaExtensionsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/schemaExtensions{?%24top,%24skip,%24search,%24filter,%24count,%24orderby,%24select,%24expand}")
            end
            ## 
            ## Get a list of schemaExtension objects in your tenant. The schema extensions can be InDevelopment, Available, or Deprecated and includes schema extensions:+ Created by any apps you own in the current tenant.+ Owned by other apps that are marked as Available.+ Created by other developers from other tenants and marked as Available. This is different from other APIs that only return tenant-specific data. Extension data created based on schema extension definitions is tenant-specific and can only be accessed by apps explicitly granted permission. 
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of schema_extension_collection_response
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SchemaExtensionCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Create a new schemaExtension definition and its associated schema extension property to extend a supporting resource type. Schema extensions let you add strongly-typed custom data to a resource. The app that creates a schema extension is the owner app. Depending on the state of the extension, the owner app, and only the owner app, may update or delete the extension.  See examples of how to define a schema extension that describes a training course, use the schema extension definition to create a new group with training course data, and add training course data to an existing group.
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of schema_extension
            ## 
            def post(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_post_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SchemaExtension.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get a list of schemaExtension objects in your tenant. The schema extensions can be InDevelopment, Available, or Deprecated and includes schema extensions:+ Created by any apps you own in the current tenant.+ Owned by other apps that are marked as Available.+ Created by other developers from other tenants and marked as Available. This is different from other APIs that only return tenant-specific data. Extension data created based on schema extension definitions is tenant-specific and can only be accessed by apps explicitly granted permission. 
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
            ## Create a new schemaExtension definition and its associated schema extension property to extend a supporting resource type. Schema extensions let you add strongly-typed custom data to a resource. The app that creates a schema extension is the owner app. Depending on the state of the extension, the owner app, and only the owner app, may update or delete the extension.  See examples of how to define a schema extension that describes a training course, use the schema extension definition to create a new group with training course data, and add training course data to an existing group.
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
            # Get a list of schemaExtension objects in your tenant. The schema extensions can be InDevelopment, Available, or Deprecated and includes schema extensions:+ Created by any apps you own in the current tenant.+ Owned by other apps that are marked as Available.+ Created by other developers from other tenants and marked as Available. This is different from other APIs that only return tenant-specific data. Extension data created based on schema extension definitions is tenant-specific and can only be accessed by apps explicitly granted permission. 
            class SchemaExtensionsRequestBuilderGetQueryParameters
                
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
