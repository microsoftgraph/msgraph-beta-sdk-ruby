require 'microsoft_kiota_abstractions'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/synchronization_job'
require_relative '../../../../service_principals'
require_relative '../../../item'
require_relative '../../synchronization'
require_relative '../jobs'
require_relative './item'
require_relative './pause/pause_request_builder'
require_relative './provision_on_demand/provision_on_demand_request_builder'
require_relative './restart/restart_request_builder'
require_relative './schema/schema_request_builder'
require_relative './start/start_request_builder'
require_relative './stop/stop_request_builder'
require_relative './validate_credentials/validate_credentials_request_builder'

module MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item
    ## 
    # Provides operations to manage the jobs property of the microsoft.graph.synchronization entity.
    class SynchronizationJobItemRequestBuilder
        
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to call the pause method.
        def pause()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::Pause::PauseRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the provisionOnDemand method.
        def provision_on_demand()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::ProvisionOnDemand::ProvisionOnDemandRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Provides operations to call the restart method.
        def restart()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::Restart::RestartRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to manage the schema property of the microsoft.graph.synchronizationJob entity.
        def schema()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::Schema::SchemaRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the start method.
        def start()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::Start::StartRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Provides operations to call the stop method.
        def stop()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::Stop::StopRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        # Provides operations to call the validateCredentials method.
        def validate_credentials()
            return MicrosoftGraphBeta::ServicePrincipals::Item::Synchronization::Jobs::Item::ValidateCredentials::ValidateCredentialsRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        ## Instantiates a new SynchronizationJobItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/synchronization/jobs/{synchronizationJob%2Did}{?%24select,%24expand}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
        ## 
        ## Delete navigation property jobs for servicePrincipals
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_delete_request_information(request_configuration=nil)
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
        ## Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_get_request_information(request_configuration=nil)
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
        ## Update the navigation property jobs in servicePrincipals
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a request_information
        ## 
        def create_patch_request_information(body, request_configuration=nil)
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
        ## Delete navigation property jobs for servicePrincipals
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of void
        ## 
        def delete(request_configuration=nil)
            request_info = self.create_delete_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, nil, error_mapping)
        end
        ## 
        ## Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of synchronization_job
        ## 
        def get(request_configuration=nil)
            request_info = self.create_get_request_information(
                request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SynchronizationJob.create_from_discriminator_value(pn) }, error_mapping)
        end
        ## 
        ## Update the navigation property jobs in servicePrincipals
        ## @param body The request body
        ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
        ## @return a CompletableFuture of synchronization_job
        ## 
        def patch(body, request_configuration=nil)
            raise StandardError, 'body cannot be null' if body.nil?
            request_info = self.create_patch_request_information(
                body, request_configuration
            )
            error_mapping = Hash.new
            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SynchronizationJob.create_from_discriminator_value(pn) }, error_mapping)
        end

        ## 
        # Configuration for the request such as headers, query parameters, and middleware options.
        class SynchronizationJobItemRequestBuilderDeleteRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end

        ## 
        # Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory.
        class SynchronizationJobItemRequestBuilderGetQueryParameters
            
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
        class SynchronizationJobItemRequestBuilderGetRequestConfiguration
            
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
        class SynchronizationJobItemRequestBuilderPatchRequestConfiguration
            
            ## 
            # Request headers
            attr_accessor :headers
            ## 
            # Request options
            attr_accessor :options
        end
    end
end
