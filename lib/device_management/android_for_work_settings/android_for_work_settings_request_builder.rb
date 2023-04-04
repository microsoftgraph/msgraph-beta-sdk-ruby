require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/android_for_work_settings'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../device_management'
require_relative './android_for_work_settings'
require_relative './complete_signup/complete_signup_request_builder'
require_relative './request_signup_url/request_signup_url_request_builder'
require_relative './sync_apps/sync_apps_request_builder'
require_relative './unbind/unbind_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidForWorkSettings
            ## 
            # Provides operations to manage the androidForWorkSettings property of the microsoft.graph.deviceManagement entity.
            class AndroidForWorkSettingsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to call the completeSignup method.
                def complete_signup()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkSettings::CompleteSignup::CompleteSignupRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the requestSignupUrl method.
                def request_signup_url()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkSettings::RequestSignupUrl::RequestSignupUrlRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the syncApps method.
                def sync_apps()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkSettings::SyncApps::SyncAppsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the unbind method.
                def unbind()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidForWorkSettings::Unbind::UnbindRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new AndroidForWorkSettingsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/androidForWorkSettings{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property androidForWorkSettings for deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of binary
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, Binary, error_mapping)
                end
                ## 
                ## The singleton Android for Work settings entity.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of android_for_work_settings
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkSettings.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property androidForWorkSettings in deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of android_for_work_settings
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AndroidForWorkSettings.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property androidForWorkSettings for deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                ## The singleton Android for Work settings entity.
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
                ## Update the navigation property androidForWorkSettings in deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
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
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    return request_info
                end

                ## 
                # The singleton Android for Work settings entity.
                class AndroidForWorkSettingsRequestBuilderGetQueryParameters
                    
                    ## 
                    # Expand related entities
                    attr_accessor :expand
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
                            when "expand"
                                return "%24expand"
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
end
