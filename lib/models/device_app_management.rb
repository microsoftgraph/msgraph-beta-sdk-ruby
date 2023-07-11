require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Singleton entity that acts as a container for all device app management functionality.
        class DeviceAppManagement < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Android managed app policies.
            @android_managed_app_protections
            ## 
            # Default managed app policies.
            @default_managed_app_protections
            ## 
            # Device app management tasks.
            @device_app_management_tasks
            ## 
            # The Windows Enterprise Code Signing Certificate.
            @enterprise_code_signing_certificates
            ## 
            # The IOS Lob App Provisioning Configurations.
            @ios_lob_app_provisioning_configurations
            ## 
            # iOS managed app policies.
            @ios_managed_app_protections
            ## 
            # Whether the account is enabled for syncing applications from the Microsoft Store for Business.
            @is_enabled_for_microsoft_store_for_business
            ## 
            # Managed app policies.
            @managed_app_policies
            ## 
            # The managed app registrations.
            @managed_app_registrations
            ## 
            # The managed app statuses.
            @managed_app_statuses
            ## 
            # The mobile eBook categories.
            @managed_e_book_categories
            ## 
            # The Managed eBook.
            @managed_e_books
            ## 
            # Windows information protection for apps running on devices which are MDM enrolled.
            @mdm_windows_information_protection_policies
            ## 
            # The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is -<country/regioncode2>, where  is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.
            @microsoft_store_for_business_language
            ## 
            # The last time an application sync from the Microsoft Store for Business was completed.
            @microsoft_store_for_business_last_completed_application_sync_time
            ## 
            # The last time the apps from the Microsoft Store for Business were synced successfully for the account.
            @microsoft_store_for_business_last_successful_sync_date_time
            ## 
            # Portal to which admin syncs available Microsoft Store for Business apps. This is available in the Intune Admin Console.
            @microsoft_store_for_business_portal_selection
            ## 
            # The mobile app categories.
            @mobile_app_categories
            ## 
            # The Managed Device Mobile Application Configurations.
            @mobile_app_configurations
            ## 
            # The mobile apps.
            @mobile_apps
            ## 
            # The PolicySet of Policies and Applications
            @policy_sets
            ## 
            # The WinPhone Symantec Code Signing Certificate.
            @symantec_code_signing_certificate
            ## 
            # Targeted managed app configurations.
            @targeted_managed_app_configurations
            ## 
            # List of Vpp tokens for this organization.
            @vpp_tokens
            ## 
            # The collection of Windows Defender Application Control Supplemental Policies.
            @wdac_supplemental_policies
            ## 
            # Windows information protection device registrations that are not MDM enrolled.
            @windows_information_protection_device_registrations
            ## 
            # Windows information protection for apps running on devices which are not MDM enrolled.
            @windows_information_protection_policies
            ## 
            # Windows information protection wipe actions.
            @windows_information_protection_wipe_actions
            ## 
            # Windows managed app policies.
            @windows_managed_app_protections
            ## 
            # Windows management app.
            @windows_management_app
            ## 
            ## Gets the androidManagedAppProtections property value. Android managed app policies.
            ## @return a android_managed_app_protection
            ## 
            def android_managed_app_protections
                return @android_managed_app_protections
            end
            ## 
            ## Sets the androidManagedAppProtections property value. Android managed app policies.
            ## @param value Value to set for the android_managed_app_protections property.
            ## @return a void
            ## 
            def android_managed_app_protections=(value)
                @android_managed_app_protections = value
            end
            ## 
            ## Instantiates a new deviceAppManagement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_app_management
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceAppManagement.new
            end
            ## 
            ## Gets the defaultManagedAppProtections property value. Default managed app policies.
            ## @return a default_managed_app_protection
            ## 
            def default_managed_app_protections
                return @default_managed_app_protections
            end
            ## 
            ## Sets the defaultManagedAppProtections property value. Default managed app policies.
            ## @param value Value to set for the default_managed_app_protections property.
            ## @return a void
            ## 
            def default_managed_app_protections=(value)
                @default_managed_app_protections = value
            end
            ## 
            ## Gets the deviceAppManagementTasks property value. Device app management tasks.
            ## @return a device_app_management_task
            ## 
            def device_app_management_tasks
                return @device_app_management_tasks
            end
            ## 
            ## Sets the deviceAppManagementTasks property value. Device app management tasks.
            ## @param value Value to set for the device_app_management_tasks property.
            ## @return a void
            ## 
            def device_app_management_tasks=(value)
                @device_app_management_tasks = value
            end
            ## 
            ## Gets the enterpriseCodeSigningCertificates property value. The Windows Enterprise Code Signing Certificate.
            ## @return a enterprise_code_signing_certificate
            ## 
            def enterprise_code_signing_certificates
                return @enterprise_code_signing_certificates
            end
            ## 
            ## Sets the enterpriseCodeSigningCertificates property value. The Windows Enterprise Code Signing Certificate.
            ## @param value Value to set for the enterprise_code_signing_certificates property.
            ## @return a void
            ## 
            def enterprise_code_signing_certificates=(value)
                @enterprise_code_signing_certificates = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "androidManagedAppProtections" => lambda {|n| @android_managed_app_protections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AndroidManagedAppProtection.create_from_discriminator_value(pn) }) },
                    "defaultManagedAppProtections" => lambda {|n| @default_managed_app_protections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DefaultManagedAppProtection.create_from_discriminator_value(pn) }) },
                    "deviceAppManagementTasks" => lambda {|n| @device_app_management_tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAppManagementTask.create_from_discriminator_value(pn) }) },
                    "enterpriseCodeSigningCertificates" => lambda {|n| @enterprise_code_signing_certificates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EnterpriseCodeSigningCertificate.create_from_discriminator_value(pn) }) },
                    "iosLobAppProvisioningConfigurations" => lambda {|n| @ios_lob_app_provisioning_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosLobAppProvisioningConfiguration.create_from_discriminator_value(pn) }) },
                    "iosManagedAppProtections" => lambda {|n| @ios_managed_app_protections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosManagedAppProtection.create_from_discriminator_value(pn) }) },
                    "isEnabledForMicrosoftStoreForBusiness" => lambda {|n| @is_enabled_for_microsoft_store_for_business = n.get_boolean_value() },
                    "managedAppPolicies" => lambda {|n| @managed_app_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppPolicy.create_from_discriminator_value(pn) }) },
                    "managedAppRegistrations" => lambda {|n| @managed_app_registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppRegistration.create_from_discriminator_value(pn) }) },
                    "managedAppStatuses" => lambda {|n| @managed_app_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppStatus.create_from_discriminator_value(pn) }) },
                    "managedEBookCategories" => lambda {|n| @managed_e_book_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedEBookCategory.create_from_discriminator_value(pn) }) },
                    "managedEBooks" => lambda {|n| @managed_e_books = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedEBook.create_from_discriminator_value(pn) }) },
                    "mdmWindowsInformationProtectionPolicies" => lambda {|n| @mdm_windows_information_protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MdmWindowsInformationProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "microsoftStoreForBusinessLanguage" => lambda {|n| @microsoft_store_for_business_language = n.get_string_value() },
                    "microsoftStoreForBusinessLastCompletedApplicationSyncTime" => lambda {|n| @microsoft_store_for_business_last_completed_application_sync_time = n.get_date_time_value() },
                    "microsoftStoreForBusinessLastSuccessfulSyncDateTime" => lambda {|n| @microsoft_store_for_business_last_successful_sync_date_time = n.get_date_time_value() },
                    "microsoftStoreForBusinessPortalSelection" => lambda {|n| @microsoft_store_for_business_portal_selection = n.get_enum_value(MicrosoftGraphBeta::Models::MicrosoftStoreForBusinessPortalSelectionOptions) },
                    "mobileAppCategories" => lambda {|n| @mobile_app_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppCategory.create_from_discriminator_value(pn) }) },
                    "mobileAppConfigurations" => lambda {|n| @mobile_app_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceMobileAppConfiguration.create_from_discriminator_value(pn) }) },
                    "mobileApps" => lambda {|n| @mobile_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileApp.create_from_discriminator_value(pn) }) },
                    "policySets" => lambda {|n| @policy_sets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PolicySet.create_from_discriminator_value(pn) }) },
                    "symantecCodeSigningCertificate" => lambda {|n| @symantec_code_signing_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SymantecCodeSigningCertificate.create_from_discriminator_value(pn) }) },
                    "targetedManagedAppConfigurations" => lambda {|n| @targeted_managed_app_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TargetedManagedAppConfiguration.create_from_discriminator_value(pn) }) },
                    "vppTokens" => lambda {|n| @vpp_tokens = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::VppToken.create_from_discriminator_value(pn) }) },
                    "wdacSupplementalPolicies" => lambda {|n| @wdac_supplemental_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicy.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionDeviceRegistrations" => lambda {|n| @windows_information_protection_device_registrations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsInformationProtectionDeviceRegistration.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionPolicies" => lambda {|n| @windows_information_protection_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsInformationProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "windowsInformationProtectionWipeActions" => lambda {|n| @windows_information_protection_wipe_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsInformationProtectionWipeAction.create_from_discriminator_value(pn) }) },
                    "windowsManagedAppProtections" => lambda {|n| @windows_managed_app_protections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsManagedAppProtection.create_from_discriminator_value(pn) }) },
                    "windowsManagementApp" => lambda {|n| @windows_management_app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsManagementApp.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the iosLobAppProvisioningConfigurations property value. The IOS Lob App Provisioning Configurations.
            ## @return a ios_lob_app_provisioning_configuration
            ## 
            def ios_lob_app_provisioning_configurations
                return @ios_lob_app_provisioning_configurations
            end
            ## 
            ## Sets the iosLobAppProvisioningConfigurations property value. The IOS Lob App Provisioning Configurations.
            ## @param value Value to set for the ios_lob_app_provisioning_configurations property.
            ## @return a void
            ## 
            def ios_lob_app_provisioning_configurations=(value)
                @ios_lob_app_provisioning_configurations = value
            end
            ## 
            ## Gets the iosManagedAppProtections property value. iOS managed app policies.
            ## @return a ios_managed_app_protection
            ## 
            def ios_managed_app_protections
                return @ios_managed_app_protections
            end
            ## 
            ## Sets the iosManagedAppProtections property value. iOS managed app policies.
            ## @param value Value to set for the ios_managed_app_protections property.
            ## @return a void
            ## 
            def ios_managed_app_protections=(value)
                @ios_managed_app_protections = value
            end
            ## 
            ## Gets the isEnabledForMicrosoftStoreForBusiness property value. Whether the account is enabled for syncing applications from the Microsoft Store for Business.
            ## @return a boolean
            ## 
            def is_enabled_for_microsoft_store_for_business
                return @is_enabled_for_microsoft_store_for_business
            end
            ## 
            ## Sets the isEnabledForMicrosoftStoreForBusiness property value. Whether the account is enabled for syncing applications from the Microsoft Store for Business.
            ## @param value Value to set for the is_enabled_for_microsoft_store_for_business property.
            ## @return a void
            ## 
            def is_enabled_for_microsoft_store_for_business=(value)
                @is_enabled_for_microsoft_store_for_business = value
            end
            ## 
            ## Gets the managedAppPolicies property value. Managed app policies.
            ## @return a managed_app_policy
            ## 
            def managed_app_policies
                return @managed_app_policies
            end
            ## 
            ## Sets the managedAppPolicies property value. Managed app policies.
            ## @param value Value to set for the managed_app_policies property.
            ## @return a void
            ## 
            def managed_app_policies=(value)
                @managed_app_policies = value
            end
            ## 
            ## Gets the managedAppRegistrations property value. The managed app registrations.
            ## @return a managed_app_registration
            ## 
            def managed_app_registrations
                return @managed_app_registrations
            end
            ## 
            ## Sets the managedAppRegistrations property value. The managed app registrations.
            ## @param value Value to set for the managed_app_registrations property.
            ## @return a void
            ## 
            def managed_app_registrations=(value)
                @managed_app_registrations = value
            end
            ## 
            ## Gets the managedAppStatuses property value. The managed app statuses.
            ## @return a managed_app_status
            ## 
            def managed_app_statuses
                return @managed_app_statuses
            end
            ## 
            ## Sets the managedAppStatuses property value. The managed app statuses.
            ## @param value Value to set for the managed_app_statuses property.
            ## @return a void
            ## 
            def managed_app_statuses=(value)
                @managed_app_statuses = value
            end
            ## 
            ## Gets the managedEBookCategories property value. The mobile eBook categories.
            ## @return a managed_e_book_category
            ## 
            def managed_e_book_categories
                return @managed_e_book_categories
            end
            ## 
            ## Sets the managedEBookCategories property value. The mobile eBook categories.
            ## @param value Value to set for the managed_e_book_categories property.
            ## @return a void
            ## 
            def managed_e_book_categories=(value)
                @managed_e_book_categories = value
            end
            ## 
            ## Gets the managedEBooks property value. The Managed eBook.
            ## @return a managed_e_book
            ## 
            def managed_e_books
                return @managed_e_books
            end
            ## 
            ## Sets the managedEBooks property value. The Managed eBook.
            ## @param value Value to set for the managed_e_books property.
            ## @return a void
            ## 
            def managed_e_books=(value)
                @managed_e_books = value
            end
            ## 
            ## Gets the mdmWindowsInformationProtectionPolicies property value. Windows information protection for apps running on devices which are MDM enrolled.
            ## @return a mdm_windows_information_protection_policy
            ## 
            def mdm_windows_information_protection_policies
                return @mdm_windows_information_protection_policies
            end
            ## 
            ## Sets the mdmWindowsInformationProtectionPolicies property value. Windows information protection for apps running on devices which are MDM enrolled.
            ## @param value Value to set for the mdm_windows_information_protection_policies property.
            ## @return a void
            ## 
            def mdm_windows_information_protection_policies=(value)
                @mdm_windows_information_protection_policies = value
            end
            ## 
            ## Gets the microsoftStoreForBusinessLanguage property value. The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is -<country/regioncode2>, where  is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.
            ## @return a string
            ## 
            def microsoft_store_for_business_language
                return @microsoft_store_for_business_language
            end
            ## 
            ## Sets the microsoftStoreForBusinessLanguage property value. The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is -<country/regioncode2>, where  is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.
            ## @param value Value to set for the microsoft_store_for_business_language property.
            ## @return a void
            ## 
            def microsoft_store_for_business_language=(value)
                @microsoft_store_for_business_language = value
            end
            ## 
            ## Gets the microsoftStoreForBusinessLastCompletedApplicationSyncTime property value. The last time an application sync from the Microsoft Store for Business was completed.
            ## @return a date_time
            ## 
            def microsoft_store_for_business_last_completed_application_sync_time
                return @microsoft_store_for_business_last_completed_application_sync_time
            end
            ## 
            ## Sets the microsoftStoreForBusinessLastCompletedApplicationSyncTime property value. The last time an application sync from the Microsoft Store for Business was completed.
            ## @param value Value to set for the microsoft_store_for_business_last_completed_application_sync_time property.
            ## @return a void
            ## 
            def microsoft_store_for_business_last_completed_application_sync_time=(value)
                @microsoft_store_for_business_last_completed_application_sync_time = value
            end
            ## 
            ## Gets the microsoftStoreForBusinessLastSuccessfulSyncDateTime property value. The last time the apps from the Microsoft Store for Business were synced successfully for the account.
            ## @return a date_time
            ## 
            def microsoft_store_for_business_last_successful_sync_date_time
                return @microsoft_store_for_business_last_successful_sync_date_time
            end
            ## 
            ## Sets the microsoftStoreForBusinessLastSuccessfulSyncDateTime property value. The last time the apps from the Microsoft Store for Business were synced successfully for the account.
            ## @param value Value to set for the microsoft_store_for_business_last_successful_sync_date_time property.
            ## @return a void
            ## 
            def microsoft_store_for_business_last_successful_sync_date_time=(value)
                @microsoft_store_for_business_last_successful_sync_date_time = value
            end
            ## 
            ## Gets the microsoftStoreForBusinessPortalSelection property value. Portal to which admin syncs available Microsoft Store for Business apps. This is available in the Intune Admin Console.
            ## @return a microsoft_store_for_business_portal_selection_options
            ## 
            def microsoft_store_for_business_portal_selection
                return @microsoft_store_for_business_portal_selection
            end
            ## 
            ## Sets the microsoftStoreForBusinessPortalSelection property value. Portal to which admin syncs available Microsoft Store for Business apps. This is available in the Intune Admin Console.
            ## @param value Value to set for the microsoft_store_for_business_portal_selection property.
            ## @return a void
            ## 
            def microsoft_store_for_business_portal_selection=(value)
                @microsoft_store_for_business_portal_selection = value
            end
            ## 
            ## Gets the mobileAppCategories property value. The mobile app categories.
            ## @return a mobile_app_category
            ## 
            def mobile_app_categories
                return @mobile_app_categories
            end
            ## 
            ## Sets the mobileAppCategories property value. The mobile app categories.
            ## @param value Value to set for the mobile_app_categories property.
            ## @return a void
            ## 
            def mobile_app_categories=(value)
                @mobile_app_categories = value
            end
            ## 
            ## Gets the mobileAppConfigurations property value. The Managed Device Mobile Application Configurations.
            ## @return a managed_device_mobile_app_configuration
            ## 
            def mobile_app_configurations
                return @mobile_app_configurations
            end
            ## 
            ## Sets the mobileAppConfigurations property value. The Managed Device Mobile Application Configurations.
            ## @param value Value to set for the mobile_app_configurations property.
            ## @return a void
            ## 
            def mobile_app_configurations=(value)
                @mobile_app_configurations = value
            end
            ## 
            ## Gets the mobileApps property value. The mobile apps.
            ## @return a mobile_app
            ## 
            def mobile_apps
                return @mobile_apps
            end
            ## 
            ## Sets the mobileApps property value. The mobile apps.
            ## @param value Value to set for the mobile_apps property.
            ## @return a void
            ## 
            def mobile_apps=(value)
                @mobile_apps = value
            end
            ## 
            ## Gets the policySets property value. The PolicySet of Policies and Applications
            ## @return a policy_set
            ## 
            def policy_sets
                return @policy_sets
            end
            ## 
            ## Sets the policySets property value. The PolicySet of Policies and Applications
            ## @param value Value to set for the policy_sets property.
            ## @return a void
            ## 
            def policy_sets=(value)
                @policy_sets = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("androidManagedAppProtections", @android_managed_app_protections)
                writer.write_collection_of_object_values("defaultManagedAppProtections", @default_managed_app_protections)
                writer.write_collection_of_object_values("deviceAppManagementTasks", @device_app_management_tasks)
                writer.write_collection_of_object_values("enterpriseCodeSigningCertificates", @enterprise_code_signing_certificates)
                writer.write_collection_of_object_values("iosLobAppProvisioningConfigurations", @ios_lob_app_provisioning_configurations)
                writer.write_collection_of_object_values("iosManagedAppProtections", @ios_managed_app_protections)
                writer.write_boolean_value("isEnabledForMicrosoftStoreForBusiness", @is_enabled_for_microsoft_store_for_business)
                writer.write_collection_of_object_values("managedAppPolicies", @managed_app_policies)
                writer.write_collection_of_object_values("managedAppRegistrations", @managed_app_registrations)
                writer.write_collection_of_object_values("managedAppStatuses", @managed_app_statuses)
                writer.write_collection_of_object_values("managedEBookCategories", @managed_e_book_categories)
                writer.write_collection_of_object_values("managedEBooks", @managed_e_books)
                writer.write_collection_of_object_values("mdmWindowsInformationProtectionPolicies", @mdm_windows_information_protection_policies)
                writer.write_string_value("microsoftStoreForBusinessLanguage", @microsoft_store_for_business_language)
                writer.write_date_time_value("microsoftStoreForBusinessLastCompletedApplicationSyncTime", @microsoft_store_for_business_last_completed_application_sync_time)
                writer.write_date_time_value("microsoftStoreForBusinessLastSuccessfulSyncDateTime", @microsoft_store_for_business_last_successful_sync_date_time)
                writer.write_enum_value("microsoftStoreForBusinessPortalSelection", @microsoft_store_for_business_portal_selection)
                writer.write_collection_of_object_values("mobileAppCategories", @mobile_app_categories)
                writer.write_collection_of_object_values("mobileAppConfigurations", @mobile_app_configurations)
                writer.write_collection_of_object_values("mobileApps", @mobile_apps)
                writer.write_collection_of_object_values("policySets", @policy_sets)
                writer.write_object_value("symantecCodeSigningCertificate", @symantec_code_signing_certificate)
                writer.write_collection_of_object_values("targetedManagedAppConfigurations", @targeted_managed_app_configurations)
                writer.write_collection_of_object_values("vppTokens", @vpp_tokens)
                writer.write_collection_of_object_values("wdacSupplementalPolicies", @wdac_supplemental_policies)
                writer.write_collection_of_object_values("windowsInformationProtectionDeviceRegistrations", @windows_information_protection_device_registrations)
                writer.write_collection_of_object_values("windowsInformationProtectionPolicies", @windows_information_protection_policies)
                writer.write_collection_of_object_values("windowsInformationProtectionWipeActions", @windows_information_protection_wipe_actions)
                writer.write_collection_of_object_values("windowsManagedAppProtections", @windows_managed_app_protections)
                writer.write_object_value("windowsManagementApp", @windows_management_app)
            end
            ## 
            ## Gets the symantecCodeSigningCertificate property value. The WinPhone Symantec Code Signing Certificate.
            ## @return a symantec_code_signing_certificate
            ## 
            def symantec_code_signing_certificate
                return @symantec_code_signing_certificate
            end
            ## 
            ## Sets the symantecCodeSigningCertificate property value. The WinPhone Symantec Code Signing Certificate.
            ## @param value Value to set for the symantec_code_signing_certificate property.
            ## @return a void
            ## 
            def symantec_code_signing_certificate=(value)
                @symantec_code_signing_certificate = value
            end
            ## 
            ## Gets the targetedManagedAppConfigurations property value. Targeted managed app configurations.
            ## @return a targeted_managed_app_configuration
            ## 
            def targeted_managed_app_configurations
                return @targeted_managed_app_configurations
            end
            ## 
            ## Sets the targetedManagedAppConfigurations property value. Targeted managed app configurations.
            ## @param value Value to set for the targeted_managed_app_configurations property.
            ## @return a void
            ## 
            def targeted_managed_app_configurations=(value)
                @targeted_managed_app_configurations = value
            end
            ## 
            ## Gets the vppTokens property value. List of Vpp tokens for this organization.
            ## @return a vpp_token
            ## 
            def vpp_tokens
                return @vpp_tokens
            end
            ## 
            ## Sets the vppTokens property value. List of Vpp tokens for this organization.
            ## @param value Value to set for the vpp_tokens property.
            ## @return a void
            ## 
            def vpp_tokens=(value)
                @vpp_tokens = value
            end
            ## 
            ## Gets the wdacSupplementalPolicies property value. The collection of Windows Defender Application Control Supplemental Policies.
            ## @return a windows_defender_application_control_supplemental_policy
            ## 
            def wdac_supplemental_policies
                return @wdac_supplemental_policies
            end
            ## 
            ## Sets the wdacSupplementalPolicies property value. The collection of Windows Defender Application Control Supplemental Policies.
            ## @param value Value to set for the wdac_supplemental_policies property.
            ## @return a void
            ## 
            def wdac_supplemental_policies=(value)
                @wdac_supplemental_policies = value
            end
            ## 
            ## Gets the windowsInformationProtectionDeviceRegistrations property value. Windows information protection device registrations that are not MDM enrolled.
            ## @return a windows_information_protection_device_registration
            ## 
            def windows_information_protection_device_registrations
                return @windows_information_protection_device_registrations
            end
            ## 
            ## Sets the windowsInformationProtectionDeviceRegistrations property value. Windows information protection device registrations that are not MDM enrolled.
            ## @param value Value to set for the windows_information_protection_device_registrations property.
            ## @return a void
            ## 
            def windows_information_protection_device_registrations=(value)
                @windows_information_protection_device_registrations = value
            end
            ## 
            ## Gets the windowsInformationProtectionPolicies property value. Windows information protection for apps running on devices which are not MDM enrolled.
            ## @return a windows_information_protection_policy
            ## 
            def windows_information_protection_policies
                return @windows_information_protection_policies
            end
            ## 
            ## Sets the windowsInformationProtectionPolicies property value. Windows information protection for apps running on devices which are not MDM enrolled.
            ## @param value Value to set for the windows_information_protection_policies property.
            ## @return a void
            ## 
            def windows_information_protection_policies=(value)
                @windows_information_protection_policies = value
            end
            ## 
            ## Gets the windowsInformationProtectionWipeActions property value. Windows information protection wipe actions.
            ## @return a windows_information_protection_wipe_action
            ## 
            def windows_information_protection_wipe_actions
                return @windows_information_protection_wipe_actions
            end
            ## 
            ## Sets the windowsInformationProtectionWipeActions property value. Windows information protection wipe actions.
            ## @param value Value to set for the windows_information_protection_wipe_actions property.
            ## @return a void
            ## 
            def windows_information_protection_wipe_actions=(value)
                @windows_information_protection_wipe_actions = value
            end
            ## 
            ## Gets the windowsManagedAppProtections property value. Windows managed app policies.
            ## @return a windows_managed_app_protection
            ## 
            def windows_managed_app_protections
                return @windows_managed_app_protections
            end
            ## 
            ## Sets the windowsManagedAppProtections property value. Windows managed app policies.
            ## @param value Value to set for the windows_managed_app_protections property.
            ## @return a void
            ## 
            def windows_managed_app_protections=(value)
                @windows_managed_app_protections = value
            end
            ## 
            ## Gets the windowsManagementApp property value. Windows management app.
            ## @return a windows_management_app
            ## 
            def windows_management_app
                return @windows_management_app
            end
            ## 
            ## Sets the windowsManagementApp property value. Windows management app.
            ## @param value Value to set for the windows_management_app property.
            ## @return a void
            ## 
            def windows_management_app=(value)
                @windows_management_app = value
            end
        end
    end
end
