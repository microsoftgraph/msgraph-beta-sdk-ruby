require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../device_management'
require_relative './scoped_for_resource_with_resource'

module MicrosoftGraphBeta
    module DeviceManagement
        module ScopedForResourceWithResource
            ## 
            # Provides operations to call the scopedForResource method.
            class ScopedForResourceWithResourceRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new ScopedForResourceWithResourceRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @param resource Usage: resource='{resource}'
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, resource=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/scopedForResource(resource='{resource}')")
                end
                ## 
                ## Invoke function scopedForResource
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of scoped_for_resource_with_resource_get_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::DeviceManagement::ScopedForResourceWithResource::ScopedForResourceWithResourceGetResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Invoke function scopedForResource
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_get_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
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
                ## @return a scoped_for_resource_with_resource_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return ScopedForResourceWithResourceRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
