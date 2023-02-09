require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative '../models/device_app_management'
require_relative '../models/o_data_errors/o_data_error'
require_relative './android_managed_app_protections/android_managed_app_protections_request_builder'
require_relative './android_managed_app_protections/item/android_managed_app_protection_item_request_builder'
require_relative './default_managed_app_protections/default_managed_app_protections_request_builder'
require_relative './default_managed_app_protections/item/default_managed_app_protection_item_request_builder'
require_relative './device_app_management_tasks/device_app_management_tasks_request_builder'
require_relative './device_app_management_tasks/item/device_app_management_task_item_request_builder'
require_relative './device_app_management'
require_relative './enterprise_code_signing_certificates/enterprise_code_signing_certificates_request_builder'
require_relative './enterprise_code_signing_certificates/item/enterprise_code_signing_certificate_item_request_builder'
require_relative './ios_lob_app_provisioning_configurations/ios_lob_app_provisioning_configurations_request_builder'
require_relative './ios_lob_app_provisioning_configurations/item/ios_lob_app_provisioning_configuration_item_request_builder'
require_relative './ios_managed_app_protections/ios_managed_app_protections_request_builder'
require_relative './ios_managed_app_protections/item/ios_managed_app_protection_item_request_builder'
require_relative './managed_app_policies/item/managed_app_policy_item_request_builder'
require_relative './managed_app_policies/managed_app_policies_request_builder'
require_relative './managed_app_registrations/item/managed_app_registration_item_request_builder'
require_relative './managed_app_registrations/managed_app_registrations_request_builder'
require_relative './managed_app_statuses/item/managed_app_status_item_request_builder'
require_relative './managed_app_statuses/managed_app_statuses_request_builder'
require_relative './managed_e_book_categories/item/managed_e_book_category_item_request_builder'
require_relative './managed_e_book_categories/managed_e_book_categories_request_builder'
require_relative './managed_e_books/item/managed_e_book_item_request_builder'
require_relative './managed_e_books/managed_e_books_request_builder'
require_relative './mdm_windows_information_protection_policies/item/mdm_windows_information_protection_policy_item_request_builder'
require_relative './mdm_windows_information_protection_policies/mdm_windows_information_protection_policies_request_builder'
require_relative './microsoft_graph_sync_microsoft_store_for_business_apps/microsoft_graph_sync_microsoft_store_for_business_apps_request_builder'
require_relative './mobile_app_categories/item/mobile_app_category_item_request_builder'
require_relative './mobile_app_categories/mobile_app_categories_request_builder'
require_relative './mobile_app_configurations/item/managed_device_mobile_app_configuration_item_request_builder'
require_relative './mobile_app_configurations/mobile_app_configurations_request_builder'
require_relative './mobile_apps/item/mobile_app_item_request_builder'
require_relative './mobile_apps/mobile_apps_request_builder'
require_relative './policy_sets/item/policy_set_item_request_builder'
require_relative './policy_sets/policy_sets_request_builder'
require_relative './symantec_code_signing_certificate/symantec_code_signing_certificate_request_builder'
require_relative './targeted_managed_app_configurations/item/targeted_managed_app_configuration_item_request_builder'
require_relative './targeted_managed_app_configurations/targeted_managed_app_configurations_request_builder'
require_relative './vpp_tokens/item/vpp_token_item_request_builder'
require_relative './vpp_tokens/vpp_tokens_request_builder'
require_relative './wdac_supplemental_policies/item/windows_defender_application_control_supplemental_policy_item_request_builder'
require_relative './wdac_supplemental_policies/wdac_supplemental_policies_request_builder'
require_relative './windows_information_protection_device_registrations/item/windows_information_protection_device_registration_item_request_builder'
require_relative './windows_information_protection_device_registrations/windows_information_protection_device_registrations_request_builder'
require_relative './windows_information_protection_policies/item/windows_information_protection_policy_item_request_builder'
require_relative './windows_information_protection_policies/windows_information_protection_policies_request_builder'
require_relative './windows_information_protection_wipe_actions/item/windows_information_protection_wipe_action_item_request_builder'
require_relative './windows_information_protection_wipe_actions/windows_information_protection_wipe_actions_request_builder'
require_relative './windows_managed_app_protections/item/windows_managed_app_protection_item_request_builder'
require_relative './windows_managed_app_protections/windows_managed_app_protections_request_builder'
require_relative './windows_management_app/windows_management_app_request_builder'

module MicrosoftGraphBeta
    module DeviceAppManagement
        ## 
        # Provides operations to manage the deviceAppManagement singleton.
        class DeviceAppManagementRequestBuilder
            
            ## 
            # Provides operations to manage the androidManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def android_managed_app_protections()
                return MicrosoftGraphBeta::DeviceAppManagement::AndroidManagedAppProtections::AndroidManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the defaultManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def default_managed_app_protections()
                return MicrosoftGraphBeta::DeviceAppManagement::DefaultManagedAppProtections::DefaultManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the deviceAppManagementTasks property of the microsoft.graph.deviceAppManagement entity.
            def device_app_management_tasks()
                return MicrosoftGraphBeta::DeviceAppManagement::DeviceAppManagementTasks::DeviceAppManagementTasksRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the enterpriseCodeSigningCertificates property of the microsoft.graph.deviceAppManagement entity.
            def enterprise_code_signing_certificates()
                return MicrosoftGraphBeta::DeviceAppManagement::EnterpriseCodeSigningCertificates::EnterpriseCodeSigningCertificatesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the iosLobAppProvisioningConfigurations property of the microsoft.graph.deviceAppManagement entity.
            def ios_lob_app_provisioning_configurations()
                return MicrosoftGraphBeta::DeviceAppManagement::IosLobAppProvisioningConfigurations::IosLobAppProvisioningConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the iosManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def ios_managed_app_protections()
                return MicrosoftGraphBeta::DeviceAppManagement::IosManagedAppProtections::IosManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppPolicies property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_policies()
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppPolicies::ManagedAppPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppRegistrations property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_registrations()
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppRegistrations::ManagedAppRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedAppStatuses property of the microsoft.graph.deviceAppManagement entity.
            def managed_app_statuses()
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppStatuses::ManagedAppStatusesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedEBookCategories property of the microsoft.graph.deviceAppManagement entity.
            def managed_e_book_categories()
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedEBookCategories::ManagedEBookCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the managedEBooks property of the microsoft.graph.deviceAppManagement entity.
            def managed_e_books()
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedEBooks::ManagedEBooksRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mdmWindowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            def mdm_windows_information_protection_policies()
                return MicrosoftGraphBeta::DeviceAppManagement::MdmWindowsInformationProtectionPolicies::MdmWindowsInformationProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to call the syncMicrosoftStoreForBusinessApps method.
            def microsoft_graph_sync_microsoft_store_for_business_apps()
                return MicrosoftGraphBeta::DeviceAppManagement::MicrosoftGraphSyncMicrosoftStoreForBusinessApps::MicrosoftGraphSyncMicrosoftStoreForBusinessAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppCategories property of the microsoft.graph.deviceAppManagement entity.
            def mobile_app_categories()
                return MicrosoftGraphBeta::DeviceAppManagement::MobileAppCategories::MobileAppCategoriesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            def mobile_app_configurations()
                return MicrosoftGraphBeta::DeviceAppManagement::MobileAppConfigurations::MobileAppConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
            def mobile_apps()
                return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::MobileAppsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Path parameters for the request
            @path_parameters
            ## 
            # Provides operations to manage the policySets property of the microsoft.graph.deviceAppManagement entity.
            def policy_sets()
                return MicrosoftGraphBeta::DeviceAppManagement::PolicySets::PolicySetsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # The request adapter to use to execute the requests.
            @request_adapter
            ## 
            # Provides operations to manage the symantecCodeSigningCertificate property of the microsoft.graph.deviceAppManagement entity.
            def symantec_code_signing_certificate()
                return MicrosoftGraphBeta::DeviceAppManagement::SymantecCodeSigningCertificate::SymantecCodeSigningCertificateRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the targetedManagedAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            def targeted_managed_app_configurations()
                return MicrosoftGraphBeta::DeviceAppManagement::TargetedManagedAppConfigurations::TargetedManagedAppConfigurationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Url template to use to build the URL for the current request builder
            @url_template
            ## 
            # Provides operations to manage the vppTokens property of the microsoft.graph.deviceAppManagement entity.
            def vpp_tokens()
                return MicrosoftGraphBeta::DeviceAppManagement::VppTokens::VppTokensRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the wdacSupplementalPolicies property of the microsoft.graph.deviceAppManagement entity.
            def wdac_supplemental_policies()
                return MicrosoftGraphBeta::DeviceAppManagement::WdacSupplementalPolicies::WdacSupplementalPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionDeviceRegistrations property of the microsoft.graph.deviceAppManagement entity.
            def windows_information_protection_device_registrations()
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionDeviceRegistrations::WindowsInformationProtectionDeviceRegistrationsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            def windows_information_protection_policies()
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionPolicies::WindowsInformationProtectionPoliciesRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsInformationProtectionWipeActions property of the microsoft.graph.deviceAppManagement entity.
            def windows_information_protection_wipe_actions()
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionWipeActions::WindowsInformationProtectionWipeActionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            def windows_managed_app_protections()
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsManagedAppProtections::WindowsManagedAppProtectionsRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            # Provides operations to manage the windowsManagementApp property of the microsoft.graph.deviceAppManagement entity.
            def windows_management_app()
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsManagementApp::WindowsManagementAppRequestBuilder.new(@path_parameters, @request_adapter)
            end
            ## 
            ## Provides operations to manage the androidManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a android_managed_app_protection_item_request_builder
            ## 
            def android_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["androidManagedAppProtection%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::AndroidManagedAppProtections::Item::AndroidManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Instantiates a new DeviceAppManagementRequestBuilder and sets the default values.
            ## @param pathParameters Path parameters for the request
            ## @param requestAdapter The request adapter to use to execute the requests.
            ## @return a void
            ## 
            def initialize(path_parameters, request_adapter)
                raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                @url_template = "{+baseurl}/deviceAppManagement{?%24select,%24expand}"
                @request_adapter = request_adapter
                path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                @path_parameters = path_parameters if path_parameters.is_a? Hash
            end
            ## 
            ## Provides operations to manage the defaultManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a default_managed_app_protection_item_request_builder
            ## 
            def default_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["defaultManagedAppProtection%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::DefaultManagedAppProtections::Item::DefaultManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the deviceAppManagementTasks property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a device_app_management_task_item_request_builder
            ## 
            def device_app_management_tasks_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["deviceAppManagementTask%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::DeviceAppManagementTasks::Item::DeviceAppManagementTaskItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the enterpriseCodeSigningCertificates property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a enterprise_code_signing_certificate_item_request_builder
            ## 
            def enterprise_code_signing_certificates_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["enterpriseCodeSigningCertificate%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::EnterpriseCodeSigningCertificates::Item::EnterpriseCodeSigningCertificateItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceAppManagement
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def get(request_configuration=nil)
                request_info = self.to_get_request_information(
                    request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the iosLobAppProvisioningConfigurations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a ios_lob_app_provisioning_configuration_item_request_builder
            ## 
            def ios_lob_app_provisioning_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["iosLobAppProvisioningConfiguration%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::IosLobAppProvisioningConfigurations::Item::IosLobAppProvisioningConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the iosManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a ios_managed_app_protection_item_request_builder
            ## 
            def ios_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["iosManagedAppProtection%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::IosManagedAppProtections::Item::IosManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_policy_item_request_builder
            ## 
            def managed_app_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppPolicy%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppPolicies::Item::ManagedAppPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppRegistrations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_registration_item_request_builder
            ## 
            def managed_app_registrations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppRegistration%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppRegistrations::Item::ManagedAppRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedAppStatuses property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_app_status_item_request_builder
            ## 
            def managed_app_statuses_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedAppStatus%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedAppStatuses::Item::ManagedAppStatusItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedEBookCategories property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_e_book_category_item_request_builder
            ## 
            def managed_e_book_categories_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedEBookCategory%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedEBookCategories::Item::ManagedEBookCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the managedEBooks property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_e_book_item_request_builder
            ## 
            def managed_e_books_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedEBook%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::ManagedEBooks::Item::ManagedEBookItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mdmWindowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mdm_windows_information_protection_policy_item_request_builder
            ## 
            def mdm_windows_information_protection_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mdmWindowsInformationProtectionPolicy%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::MdmWindowsInformationProtectionPolicies::Item::MdmWindowsInformationProtectionPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileAppCategories property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mobile_app_category_item_request_builder
            ## 
            def mobile_app_categories_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mobileAppCategory%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::MobileAppCategories::Item::MobileAppCategoryItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a managed_device_mobile_app_configuration_item_request_builder
            ## 
            def mobile_app_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["managedDeviceMobileAppConfiguration%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::MobileAppConfigurations::Item::ManagedDeviceMobileAppConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the mobileApps property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a mobile_app_item_request_builder
            ## 
            def mobile_apps_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["mobileApp%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::MobileApps::Item::MobileAppItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Update deviceAppManagement
            ## @param body The request body
            ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
            ## @return a Fiber of device_app_management
            ## 
            def patch(body, request_configuration=nil)
                raise StandardError, 'body cannot be null' if body.nil?
                request_info = self.to_patch_request_information(
                    body, request_configuration
                )
                error_mapping = Hash.new
                error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::DeviceAppManagement.create_from_discriminator_value(pn) }, error_mapping)
            end
            ## 
            ## Provides operations to manage the policySets property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a policy_set_item_request_builder
            ## 
            def policy_sets_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["policySet%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::PolicySets::Item::PolicySetItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the targetedManagedAppConfigurations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a targeted_managed_app_configuration_item_request_builder
            ## 
            def targeted_managed_app_configurations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["targetedManagedAppConfiguration%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::TargetedManagedAppConfigurations::Item::TargetedManagedAppConfigurationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Get deviceAppManagement
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
            ## Update deviceAppManagement
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
            ## Provides operations to manage the vppTokens property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a vpp_token_item_request_builder
            ## 
            def vpp_tokens_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["vppToken%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::VppTokens::Item::VppTokenItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the wdacSupplementalPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_defender_application_control_supplemental_policy_item_request_builder
            ## 
            def wdac_supplemental_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsDefenderApplicationControlSupplementalPolicy%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::WdacSupplementalPolicies::Item::WindowsDefenderApplicationControlSupplementalPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionDeviceRegistrations property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_device_registration_item_request_builder
            ## 
            def windows_information_protection_device_registrations_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionDeviceRegistration%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionDeviceRegistrations::Item::WindowsInformationProtectionDeviceRegistrationItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionPolicies property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_policy_item_request_builder
            ## 
            def windows_information_protection_policies_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionPolicy%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionPolicies::Item::WindowsInformationProtectionPolicyItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsInformationProtectionWipeActions property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_information_protection_wipe_action_item_request_builder
            ## 
            def windows_information_protection_wipe_actions_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsInformationProtectionWipeAction%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsInformationProtectionWipeActions::Item::WindowsInformationProtectionWipeActionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end
            ## 
            ## Provides operations to manage the windowsManagedAppProtections property of the microsoft.graph.deviceAppManagement entity.
            ## @param id Unique identifier of the item
            ## @return a windows_managed_app_protection_item_request_builder
            ## 
            def windows_managed_app_protections_by_id(id)
                raise StandardError, 'id cannot be null' if id.nil?
                url_tpl_params = @path_parameters.clone
                url_tpl_params["windowsManagedAppProtection%2Did"] = id
                return MicrosoftGraphBeta::DeviceAppManagement::WindowsManagedAppProtections::Item::WindowsManagedAppProtectionItemRequestBuilder.new(url_tpl_params, @request_adapter)
            end

            ## 
            # Get deviceAppManagement
            class DeviceAppManagementRequestBuilderGetQueryParameters
                
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
            class DeviceAppManagementRequestBuilderGetRequestConfiguration
                
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
            class DeviceAppManagementRequestBuilderPatchRequestConfiguration
                
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
