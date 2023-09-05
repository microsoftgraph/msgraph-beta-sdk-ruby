require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../device_management'
require_relative './enable_unlicensed_adminstrators'

module MicrosoftGraphBeta
    module DeviceManagement
        module EnableUnlicensedAdminstrators
            ## 
            # Provides operations to call the enableUnlicensedAdminstrators method.
            class EnableUnlicensedAdminstratorsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new EnableUnlicensedAdminstratorsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/enableUnlicensedAdminstrators")
                end
                ## 
                ## Upon enabling, users assigned as administrators via Role Assignment Memberships will no longer require an assigned Intune license. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators will continue to function as-is in that transitive memberships apply and are not subject to the 350 member limit.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def post(request_configuration=nil)
                    request_info = self.to_post_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## Upon enabling, users assigned as administrators via Role Assignment Memberships will no longer require an assigned Intune license. You are limited to 350 unlicensed direct members for each AAD security group in a role assignment, but you can assign multiple AAD security groups to a role if you need to support more than 350 unlicensed administrators. Licensed administrators will continue to function as-is in that transitive memberships apply and are not subject to the 350 member limit.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_post_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :POST
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a enable_unlicensed_adminstrators_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return EnableUnlicensedAdminstratorsRequestBuilder.new(raw_url, @request_adapter)
                end
            end
        end
    end
end
