require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/device_local_credential_info'
require_relative '../models/device_local_credential_info_collection_response'
require_relative '../models/o_data_errors_o_data_error'
require_relative './device_local_credentials'
require_relative './item/device_local_credential_info_item_request_builder'

module MicrosoftGraphBeta
    module DeviceLocalCredentials
        ## 
        # Provides operations to manage the collection of deviceLocalCredentialInfo entities.
        class DeviceLocalCredentialsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
            
            ## 
            ## Provides operations to manage the collection of deviceLocalCredentialInfo entities.
            ## @param device_local_credential_info_id The unique identifier of deviceLocalCredentialInfo
            ## @return a device_local_credential_info_item_request_builder
            ## 
            def by_device_local_credential_info_id(device_local_credential_info_id)
                raise StandardError, 'device_local_credential_info_id cannot be null' if device_local_credential_info_id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceLocalCredentialInfo%2Did"] = device_local_credential_info_id
                return MicrosoftGraphBeta::DeviceLocalCredentials::Item::DeviceLocalCredentialInfoItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceLocalCredentialsRequestBuilder and sets the default values.
            ## @param path_parameters Path parameters for the request
            ## @param request_adapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                super(path_parameters, request_adapter, "{+baseurl}/deviceLocalCredentials{?%24search,%24filter,%24orderby,%24select}")
            end
            ## 
            ## Get a list of the deviceLocalCredentialInfo objects and their properties excluding the credentials. 
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_local_credential_info_collection_response
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceLocalCredentialInfoCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Add new entity to deviceLocalCredentials
            ## @param body The request body
            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_local_credential_info
            ## 
            def post(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_post_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceLocalCredentialInfo.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Get a list of the deviceLocalCredentialInfo objects and their properties excluding the credentials. 
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
            ## Add new entity to deviceLocalCredentials
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
            # Get a list of the deviceLocalCredentialInfo objects and their properties excluding the credentials. 
            class DeviceLocalCredentialsRequestBuilderGetQueryParameters
                
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
                ## Maps the query parameters names to their encoded names for the URI template parsing.
                ## @param original_name The original query parameter name in the class.
                ## @return a string
                ## 
                def get_query_parameter(original_name)
                    raise StandardError, 'original_name cannot be null' if original_name.nil?
                    case original_name
                        when "filter"
                            return "%24filter"
                        when "orderby"
                            return "%24orderby"
                        when "search"
                            return "%24search"
                        when "select"
                            return "%24select"
                        else
                            return original_name
                    end
                end
            end
        end
    end
end
