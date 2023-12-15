require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph_beta'
require_relative '../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../device_management'
require_relative '../../../dep_onboarding_settings'
require_relative '../../item'
require_relative '../imported_apple_device_identities'
require_relative './import_apple_device_identity_list'

module MicrosoftGraphBeta
    module DeviceManagement
        module DepOnboardingSettings
            module Item
                module ImportedAppleDeviceIdentities
                    module ImportAppleDeviceIdentityList
                        ## 
                        # Provides operations to call the importAppleDeviceIdentityList method.
                        class ImportAppleDeviceIdentityListRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            ## Instantiates a new ImportAppleDeviceIdentityListRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/deviceManagement/depOnboardingSettings/{depOnboardingSetting%2Did}/importedAppleDeviceIdentities/importAppleDeviceIdentityList")
                            end
                            ## 
                            ## Invoke action importAppleDeviceIdentityList
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of import_apple_device_identity_list_response
                            ## 
                            def post(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_post_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::ImportedAppleDeviceIdentities::ImportAppleDeviceIdentityList::ImportAppleDeviceIdentityListResponse.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Invoke action importAppleDeviceIdentityList
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
                        end
                    end
                end
            end
        end
    end
end
