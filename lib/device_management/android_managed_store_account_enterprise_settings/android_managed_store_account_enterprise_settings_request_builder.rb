require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/android_managed_store_account_enterprise_settings'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../device_management'
require_relative './add_apps/add_apps_request_builder'
require_relative './android_managed_store_account_enterprise_settings'
require_relative './approve_apps/approve_apps_request_builder'
require_relative './complete_signup/complete_signup_request_builder'
require_relative './create_google_play_web_token/create_google_play_web_token_request_builder'
require_relative './request_signup_url/request_signup_url_request_builder'
require_relative './set_android_device_owner_fully_managed_enrollment_state/set_android_device_owner_fully_managed_enrollment_state_request_builder'
require_relative './sync_apps/sync_apps_request_builder'
require_relative './unbind/unbind_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module AndroidManagedStoreAccountEnterpriseSettings
            ## 
            # Provides operations to manage the androidManagedStoreAccountEnterpriseSettings property of the microsoft.graph.deviceManagement entity.
            class AndroidManagedStoreAccountEnterpriseSettingsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to call the addApps method.
                def add_apps()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::AddApps::AddAppsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the approveApps method.
                def approve_apps()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::ApproveApps::ApproveAppsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the completeSignup method.
                def complete_signup()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::CompleteSignup::CompleteSignupRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the createGooglePlayWebToken method.
                def create_google_play_web_token()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::CreateGooglePlayWebToken::CreateGooglePlayWebTokenRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the requestSignupUrl method.
                def request_signup_url()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::RequestSignupUrl::RequestSignupUrlRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the setAndroidDeviceOwnerFullyManagedEnrollmentState method.
                def set_android_device_owner_fully_managed_enrollment_state()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::SetAndroidDeviceOwnerFullyManagedEnrollmentState::SetAndroidDeviceOwnerFullyManagedEnrollmentStateRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the syncApps method.
                def sync_apps()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::SyncApps::SyncAppsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the unbind method.
                def unbind()
                    return MicrosoftGraphBeta::DeviceManagement::AndroidManagedStoreAccountEnterpriseSettings::Unbind::UnbindRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new AndroidManagedStoreAccountEnterpriseSettingsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/androidManagedStoreAccountEnterpriseSettings{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property androidManagedStoreAccountEnterpriseSettings for deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of void
                ## 
                def delete(request_configuration=nil)
                    request_info = self.to_delete_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, nil, error_mapping)
                end
                ## 
                ## The singleton Android managed store account enterprise settings entity.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of android_managed_store_account_enterprise_settings
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedStoreAccountEnterpriseSettings.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property androidManagedStoreAccountEnterpriseSettings in deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of android_managed_store_account_enterprise_settings
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedStoreAccountEnterpriseSettings.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property androidManagedStoreAccountEnterpriseSettings for deviceManagement
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_delete_request_information(request_configuration=nil)
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :DELETE
                    return request_info
                end
                ## 
                ## The singleton Android managed store account enterprise settings entity.
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
                ## Update the navigation property androidManagedStoreAccountEnterpriseSettings in deviceManagement
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a request_information
                ## 
                def to_patch_request_information(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                    unless request_configuration.nil?
                        request_info.add_headers_from_raw_object(request_configuration.headers)
                        request_info.add_request_options(request_configuration.options)
                    end
                    request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                    request_info.url_template = @url_template
                    request_info.path_parameters = @path_parameters
                    request_info.http_method = :PATCH
                    request_info.headers.try_add('Accept', 'application/json')
                    return request_info
                end
                ## 
                ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                ## @param raw_url The raw URL to use for the request builder.
                ## @return a android_managed_store_account_enterprise_settings_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return AndroidManagedStoreAccountEnterpriseSettingsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # The singleton Android managed store account enterprise settings entity.
                class AndroidManagedStoreAccountEnterpriseSettingsRequestBuilderGetQueryParameters
                    
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
