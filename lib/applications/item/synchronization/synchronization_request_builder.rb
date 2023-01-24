require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../../models/synchronization'
require_relative '../../applications'
require_relative '../item'
require_relative './acquire_access_token/acquire_access_token_request_builder'
require_relative './jobs/item/synchronization_job_item_request_builder'
require_relative './jobs/jobs_request_builder'
require_relative './ping/ping_request_builder'
require_relative './synchronization'
require_relative './templates/item/synchronization_template_item_request_builder'
require_relative './templates/templates_request_builder'

module MicrosoftGraphBeta::Applications::Item::Synchronization
    ## 
    # Provides operations to manage the synchronization property of the microsoft.graph.application entity.
    class SynchronizationRequestBuilder
        
        ## 
        # Provides operations to call the acquireAccessToken method.
        def acquire_access_token()
            return MicrosoftGraphBeta::Applications::Item::Synchronization::AcquireAccessToken::AcquireAccessTokenRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the jobs property of the microsoft.graph.synchronization entity.
        def jobs()
            return MicrosoftGraphBeta::Applications::Item::Synchronization::Jobs::JobsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to manage the templates property of the microsoft.graph.synchronization entity.
        def templates()
            return MicrosoftGraphBeta::Applications::Item::Synchronization::Templates::TemplatesRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new SynchronizationRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/applications/{application%2Did}/synchronization{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property synchronization for applications
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.to_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Get synchronization from applications
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of synchronization
        ## 
        def get(request_configuration=nil)
            request_info = self.to_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Synchronization.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to manage the jobs property of the microsoft.graph.synchronization entity.
        ## @param id Unique identifier of the item
        ## @return a synchronization_job_item_request_builder
        ## 
        def jobs_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["synchronizationJob%2Did"] = id
            return MicrosoftGraphBeta::Applications::Item::Synchronization::Jobs::Item::SynchronizationJobItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Update the navigation property synchronization in applications
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a Fiber of synchronization
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.to_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Synchronization.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Provides operations to call the Ping method.
        ## @return a ping_request_builder
        ## 
        def ping()
            return PingRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Provides operations to manage the templates property of the microsoft.graph.synchronization entity.
        ## @param id Unique identifier of the item
        ## @return a synchronization_template_item_request_builder
        ## 
        def templates_by_id(id)
            raise StandardError, 'id cannot be null' if id.nil?
            url_tpl_params = @path_parameters.clone
            url_tpl_params["synchronizationTemplate%2Did"] = id
            return MicrosoftGraphBeta::Applications::Item::Synchronization::Templates::Item::SynchronizationTemplateItemRequestBuilder.new(url_tpl_params, @request_adapter)
        end
        ## 
        ## Delete navigation property synchronization for applications
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_delete_request_information(request_configuration=nil)
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :DELETE
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            return request_info
        end
        ## 
        ## Get synchronization from applications
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
        ## Update the navigation property synchronization in applications
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def to_patch_request_information(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
            request_info.url_template = @url_template
            request_info.path_parameters = @path_parameters
            request_info.http_method = :PATCH
            request_info.headers.add('Accept', 'application/json')
            unless request_configuration.nil?
                request_info.add_headers_from_raw_object(request_configuration.headers)
                request_info.add_request_options(request_configuration.options)
            end
            request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
            return request_info
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SynchronizationRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Get synchronization from applications
        class SynchronizationRequestBuilderGetQueryParameters
            
            ## 
            # Expand related entities
            attr_accessor :expand
            ## 
            # Select properties to be returned
            attr_accessor :select
            ## 
            ## Maps the query parameters names to their encoded names for the URI template parsing.
            ## @param originalName The original query parameter name in the class.
            ## @return a string
            ## 
            def get_query_parameter(original_name)
                raise StandardError, 'original_name cannot be null' if original_name.nil?
                case original_name
                    when "expand"
                        return "%24expand"
                    when "select"
                        return "%24select"
                    else
                        return original_name
                end
            end
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SynchronizationRequestBuilderGetRequestConfiguration
            
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

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SynchronizationRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
