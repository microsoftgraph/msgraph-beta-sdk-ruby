require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/dep_onboarding_setting'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../device_management'
require_relative '../dep_onboarding_settings'
require_relative './default_ios_enrollment_profile/default_ios_enrollment_profile_request_builder'
require_relative './default_mac_os_enrollment_profile/default_mac_os_enrollment_profile_request_builder'
require_relative './enrollment_profiles/enrollment_profiles_request_builder'
require_relative './enrollment_profiles/item/enrollment_profile_item_request_builder'
require_relative './generate_encryption_public_key/generate_encryption_public_key_request_builder'
require_relative './get_encryption_public_key/get_encryption_public_key_request_builder'
require_relative './imported_apple_device_identities/imported_apple_device_identities_request_builder'
require_relative './imported_apple_device_identities/item/imported_apple_device_identity_item_request_builder'
require_relative './item'
require_relative './share_for_school_data_sync_service/share_for_school_data_sync_service_request_builder'
require_relative './sync_with_apple_device_enrollment_program/sync_with_apple_device_enrollment_program_request_builder'
require_relative './unshare_for_school_data_sync_service/unshare_for_school_data_sync_service_request_builder'
require_relative './upload_dep_token/upload_dep_token_request_builder'

module MicrosoftGraphBeta
    module DeviceManagement
        module DepOnboardingSettings
            module Item
                ## 
                # Provides operations to manage the depOnboardingSettings property of the microsoft.graph.deviceManagement entity.
                class DepOnboardingSettingItemRequestBuilder
                    
                    ## 
                    # Provides operations to manage the defaultIosEnrollmentProfile property of the microsoft.graph.depOnboardingSetting entity.
                    def default_ios_enrollment_profile()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::DefaultIosEnrollmentProfile::DefaultIosEnrollmentProfileRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the defaultMacOsEnrollmentProfile property of the microsoft.graph.depOnboardingSetting entity.
                    def default_mac_os_enrollment_profile()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::DefaultMacOsEnrollmentProfile::DefaultMacOsEnrollmentProfileRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the enrollmentProfiles property of the microsoft.graph.depOnboardingSetting entity.
                    def enrollment_profiles()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::EnrollmentProfiles::EnrollmentProfilesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the generateEncryptionPublicKey method.
                    def generate_encryption_public_key()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::GenerateEncryptionPublicKey::GenerateEncryptionPublicKeyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getEncryptionPublicKey method.
                    def get_encryption_public_key()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::GetEncryptionPublicKey::GetEncryptionPublicKeyRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the importedAppleDeviceIdentities property of the microsoft.graph.depOnboardingSetting entity.
                    def imported_apple_device_identities()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::ImportedAppleDeviceIdentities::ImportedAppleDeviceIdentitiesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to call the shareForSchoolDataSyncService method.
                    def share_for_school_data_sync_service()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::ShareForSchoolDataSyncService::ShareForSchoolDataSyncServiceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the syncWithAppleDeviceEnrollmentProgram method.
                    def sync_with_apple_device_enrollment_program()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::SyncWithAppleDeviceEnrollmentProgram::SyncWithAppleDeviceEnrollmentProgramRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the unshareForSchoolDataSyncService method.
                    def unshare_for_school_data_sync_service()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::UnshareForSchoolDataSyncService::UnshareForSchoolDataSyncServiceRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the uploadDepToken method.
                    def upload_dep_token()
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::UploadDepToken::UploadDepTokenRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Instantiates a new DepOnboardingSettingItemRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/deviceManagement/depOnboardingSettings/{depOnboardingSetting%2Did}{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property depOnboardingSettings for deviceManagement
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
                    ## Provides operations to manage the enrollmentProfiles property of the microsoft.graph.depOnboardingSetting entity.
                    ## @param id Unique identifier of the item
                    ## @return a enrollment_profile_item_request_builder
                    ## 
                    def enrollment_profiles_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["enrollmentProfile%2Did"] = id
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::EnrollmentProfiles::Item::EnrollmentProfileItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## This collections of multiple DEP tokens per-tenant.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of dep_onboarding_setting
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DepOnboardingSetting.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the importedAppleDeviceIdentities property of the microsoft.graph.depOnboardingSetting entity.
                    ## @param id Unique identifier of the item
                    ## @return a imported_apple_device_identity_item_request_builder
                    ## 
                    def imported_apple_device_identities_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["importedAppleDeviceIdentity%2Did"] = id
                        return MicrosoftGraphBeta::DeviceManagement::DepOnboardingSettings::Item::ImportedAppleDeviceIdentities::Item::ImportedAppleDeviceIdentityItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property depOnboardingSettings in deviceManagement
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of dep_onboarding_setting
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DepOnboardingSetting.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property depOnboardingSettings for deviceManagement
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
                    ## This collections of multiple DEP tokens per-tenant.
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
                    ## Update the navigation property depOnboardingSettings in deviceManagement
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
                    class DepOnboardingSettingItemRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # This collections of multiple DEP tokens per-tenant.
                    class DepOnboardingSettingItemRequestBuilderGetQueryParameters
                        
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
                    class DepOnboardingSettingItemRequestBuilderGetRequestConfiguration
                        
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
                    class DepOnboardingSettingItemRequestBuilderPatchRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end
                end
            end
        end
    end
end
