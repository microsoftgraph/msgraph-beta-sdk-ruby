require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../../models/suggested_enrollment_limit'
require_relative '../device_management'
require_relative './get_suggested_enrollment_limit_with_enrollment_type'

module MicrosoftGraphBeta
    module DeviceManagement
        module GetSuggestedEnrollmentLimitWithEnrollmentType
            ## 
            # Provides operations to call the getSuggestedEnrollmentLimit method.
            class GetSuggestedEnrollmentLimitWithEnrollmentTypeRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                ## Instantiates a new GetSuggestedEnrollmentLimitWithEnrollmentTypeRequestBuilder and sets the default values.
                ## @param enrollment_type Usage: enrollmentType='{enrollmentType}'
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter, enrollment_type=nil)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/getSuggestedEnrollmentLimit(enrollmentType='{enrollmentType}')")
                end
                ## 
                ## Invoke function getSuggestedEnrollmentLimit
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of suggested_enrollment_limit
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::SuggestedEnrollmentLimit.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Invoke function getSuggestedEnrollmentLimit
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
                        request_info.add_request_options(request_configuration.options)
                    end
                    return request_info
                end
            end
        end
    end
end
