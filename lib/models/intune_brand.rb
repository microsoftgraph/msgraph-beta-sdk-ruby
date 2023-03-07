require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.
        class IntuneBrand
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Collection of blocked actions on the company portal as per platform and device ownership types.
            @company_portal_blocked_actions
            ## 
            # Email address of the person/organization responsible for IT support.
            @contact_i_t_email_address
            ## 
            # Name of the person/organization responsible for IT support.
            @contact_i_t_name
            ## 
            # Text comments regarding the person/organization responsible for IT support.
            @contact_i_t_notes
            ## 
            # Phone number of the person/organization responsible for IT support.
            @contact_i_t_phone_number
            ## 
            # The custom privacy message used to explain what the organization can see and do on managed devices.
            @custom_can_see_privacy_message
            ## 
            # The custom privacy message used to explain what the organization can’t see or do on managed devices.
            @custom_cant_see_privacy_message
            ## 
            # The custom privacy message used to explain what the organization can’t see or do on managed devices.
            @custom_privacy_message
            ## 
            # Logo image displayed in Company Portal apps which have a dark background behind the logo.
            @dark_background_logo
            ## 
            # Applies to telemetry sent from all clients to the Intune service. When disabled, all proactive troubleshooting and issue warnings within the client are turned off, and telemetry settings appear inactive or hidden to the device user.
            @disable_client_telemetry
            ## 
            # Boolean that indicates if Device Category Selection will be shown in Company Portal
            @disable_device_category_selection
            ## 
            # Company/organization name that is displayed to end users.
            @display_name
            ## 
            # Options available for enrollment flow customization
            @enrollment_availability
            ## 
            # Boolean that represents whether the adminsistrator has disabled the 'Factory Reset' action on corporate owned devices.
            @is_factory_reset_disabled
            ## 
            # Boolean that represents whether the adminsistrator has disabled the 'Remove Device' action on corporate owned devices.
            @is_remove_device_disabled
            ## 
            # Customized image displayed in Company Portal app landing page
            @landing_page_customized_image
            ## 
            # Logo image displayed in Company Portal apps which have a light background behind the logo.
            @light_background_logo
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Display name of the company/organization’s IT helpdesk site.
            @online_support_site_name
            ## 
            # URL to the company/organization’s IT helpdesk site.
            @online_support_site_url
            ## 
            # URL to the company/organization’s privacy policy.
            @privacy_url
            ## 
            # List of scope tags assigned to the default branding profile
            @role_scope_tag_ids
            ## 
            # Boolean that indicates if a push notification is sent to users when their device ownership type changes from personal to corporate
            @send_device_ownership_change_push_notification
            ## 
            # Boolean that indicates if AzureAD Enterprise Apps will be shown in Company Portal
            @show_azure_a_d_enterprise_apps
            ## 
            # Boolean that indicates if ConfigurationManagerApps will be shown in Company Portal
            @show_configuration_manager_apps
            ## 
            # Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            @show_display_name_next_to_logo
            ## 
            # Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            @show_logo
            ## 
            # Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            @show_name_next_to_logo
            ## 
            # Boolean that indicates if Office WebApps will be shown in Company Portal
            @show_office_web_apps
            ## 
            # Primary theme color used in the Company Portal applications and web portal.
            @theme_color
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the companyPortalBlockedActions property value. Collection of blocked actions on the company portal as per platform and device ownership types.
            ## @return a company_portal_blocked_action
            ## 
            def company_portal_blocked_actions
                return @company_portal_blocked_actions
            end
            ## 
            ## Sets the companyPortalBlockedActions property value. Collection of blocked actions on the company portal as per platform and device ownership types.
            ## @param value Value to set for the company_portal_blocked_actions property.
            ## @return a void
            ## 
            def company_portal_blocked_actions=(value)
                @company_portal_blocked_actions = value
            end
            ## 
            ## Instantiates a new intuneBrand and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contactITEmailAddress property value. Email address of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_email_address
                return @contact_i_t_email_address
            end
            ## 
            ## Sets the contactITEmailAddress property value. Email address of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_email_address property.
            ## @return a void
            ## 
            def contact_i_t_email_address=(value)
                @contact_i_t_email_address = value
            end
            ## 
            ## Gets the contactITName property value. Name of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_name
                return @contact_i_t_name
            end
            ## 
            ## Sets the contactITName property value. Name of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_name property.
            ## @return a void
            ## 
            def contact_i_t_name=(value)
                @contact_i_t_name = value
            end
            ## 
            ## Gets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_notes
                return @contact_i_t_notes
            end
            ## 
            ## Sets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_notes property.
            ## @return a void
            ## 
            def contact_i_t_notes=(value)
                @contact_i_t_notes = value
            end
            ## 
            ## Gets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support.
            ## @return a string
            ## 
            def contact_i_t_phone_number
                return @contact_i_t_phone_number
            end
            ## 
            ## Sets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support.
            ## @param value Value to set for the contact_i_t_phone_number property.
            ## @return a void
            ## 
            def contact_i_t_phone_number=(value)
                @contact_i_t_phone_number = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a intune_brand
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IntuneBrand.new
            end
            ## 
            ## Gets the customCanSeePrivacyMessage property value. The custom privacy message used to explain what the organization can see and do on managed devices.
            ## @return a string
            ## 
            def custom_can_see_privacy_message
                return @custom_can_see_privacy_message
            end
            ## 
            ## Sets the customCanSeePrivacyMessage property value. The custom privacy message used to explain what the organization can see and do on managed devices.
            ## @param value Value to set for the custom_can_see_privacy_message property.
            ## @return a void
            ## 
            def custom_can_see_privacy_message=(value)
                @custom_can_see_privacy_message = value
            end
            ## 
            ## Gets the customCantSeePrivacyMessage property value. The custom privacy message used to explain what the organization can’t see or do on managed devices.
            ## @return a string
            ## 
            def custom_cant_see_privacy_message
                return @custom_cant_see_privacy_message
            end
            ## 
            ## Sets the customCantSeePrivacyMessage property value. The custom privacy message used to explain what the organization can’t see or do on managed devices.
            ## @param value Value to set for the custom_cant_see_privacy_message property.
            ## @return a void
            ## 
            def custom_cant_see_privacy_message=(value)
                @custom_cant_see_privacy_message = value
            end
            ## 
            ## Gets the customPrivacyMessage property value. The custom privacy message used to explain what the organization can’t see or do on managed devices.
            ## @return a string
            ## 
            def custom_privacy_message
                return @custom_privacy_message
            end
            ## 
            ## Sets the customPrivacyMessage property value. The custom privacy message used to explain what the organization can’t see or do on managed devices.
            ## @param value Value to set for the custom_privacy_message property.
            ## @return a void
            ## 
            def custom_privacy_message=(value)
                @custom_privacy_message = value
            end
            ## 
            ## Gets the darkBackgroundLogo property value. Logo image displayed in Company Portal apps which have a dark background behind the logo.
            ## @return a mime_content
            ## 
            def dark_background_logo
                return @dark_background_logo
            end
            ## 
            ## Sets the darkBackgroundLogo property value. Logo image displayed in Company Portal apps which have a dark background behind the logo.
            ## @param value Value to set for the dark_background_logo property.
            ## @return a void
            ## 
            def dark_background_logo=(value)
                @dark_background_logo = value
            end
            ## 
            ## Gets the disableClientTelemetry property value. Applies to telemetry sent from all clients to the Intune service. When disabled, all proactive troubleshooting and issue warnings within the client are turned off, and telemetry settings appear inactive or hidden to the device user.
            ## @return a boolean
            ## 
            def disable_client_telemetry
                return @disable_client_telemetry
            end
            ## 
            ## Sets the disableClientTelemetry property value. Applies to telemetry sent from all clients to the Intune service. When disabled, all proactive troubleshooting and issue warnings within the client are turned off, and telemetry settings appear inactive or hidden to the device user.
            ## @param value Value to set for the disable_client_telemetry property.
            ## @return a void
            ## 
            def disable_client_telemetry=(value)
                @disable_client_telemetry = value
            end
            ## 
            ## Gets the disableDeviceCategorySelection property value. Boolean that indicates if Device Category Selection will be shown in Company Portal
            ## @return a boolean
            ## 
            def disable_device_category_selection
                return @disable_device_category_selection
            end
            ## 
            ## Sets the disableDeviceCategorySelection property value. Boolean that indicates if Device Category Selection will be shown in Company Portal
            ## @param value Value to set for the disable_device_category_selection property.
            ## @return a void
            ## 
            def disable_device_category_selection=(value)
                @disable_device_category_selection = value
            end
            ## 
            ## Gets the displayName property value. Company/organization name that is displayed to end users.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Company/organization name that is displayed to end users.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enrollmentAvailability property value. Options available for enrollment flow customization
            ## @return a enrollment_availability_options
            ## 
            def enrollment_availability
                return @enrollment_availability
            end
            ## 
            ## Sets the enrollmentAvailability property value. Options available for enrollment flow customization
            ## @param value Value to set for the enrollment_availability property.
            ## @return a void
            ## 
            def enrollment_availability=(value)
                @enrollment_availability = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "companyPortalBlockedActions" => lambda {|n| @company_portal_blocked_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CompanyPortalBlockedAction.create_from_discriminator_value(pn) }) },
                    "contactITEmailAddress" => lambda {|n| @contact_i_t_email_address = n.get_string_value() },
                    "contactITName" => lambda {|n| @contact_i_t_name = n.get_string_value() },
                    "contactITNotes" => lambda {|n| @contact_i_t_notes = n.get_string_value() },
                    "contactITPhoneNumber" => lambda {|n| @contact_i_t_phone_number = n.get_string_value() },
                    "customCanSeePrivacyMessage" => lambda {|n| @custom_can_see_privacy_message = n.get_string_value() },
                    "customCantSeePrivacyMessage" => lambda {|n| @custom_cant_see_privacy_message = n.get_string_value() },
                    "customPrivacyMessage" => lambda {|n| @custom_privacy_message = n.get_string_value() },
                    "darkBackgroundLogo" => lambda {|n| @dark_background_logo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "disableClientTelemetry" => lambda {|n| @disable_client_telemetry = n.get_boolean_value() },
                    "disableDeviceCategorySelection" => lambda {|n| @disable_device_category_selection = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrollmentAvailability" => lambda {|n| @enrollment_availability = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentAvailabilityOptions) },
                    "isFactoryResetDisabled" => lambda {|n| @is_factory_reset_disabled = n.get_boolean_value() },
                    "isRemoveDeviceDisabled" => lambda {|n| @is_remove_device_disabled = n.get_boolean_value() },
                    "landingPageCustomizedImage" => lambda {|n| @landing_page_customized_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "lightBackgroundLogo" => lambda {|n| @light_background_logo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onlineSupportSiteName" => lambda {|n| @online_support_site_name = n.get_string_value() },
                    "onlineSupportSiteUrl" => lambda {|n| @online_support_site_url = n.get_string_value() },
                    "privacyUrl" => lambda {|n| @privacy_url = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "sendDeviceOwnershipChangePushNotification" => lambda {|n| @send_device_ownership_change_push_notification = n.get_boolean_value() },
                    "showAzureADEnterpriseApps" => lambda {|n| @show_azure_a_d_enterprise_apps = n.get_boolean_value() },
                    "showConfigurationManagerApps" => lambda {|n| @show_configuration_manager_apps = n.get_boolean_value() },
                    "showDisplayNameNextToLogo" => lambda {|n| @show_display_name_next_to_logo = n.get_boolean_value() },
                    "showLogo" => lambda {|n| @show_logo = n.get_boolean_value() },
                    "showNameNextToLogo" => lambda {|n| @show_name_next_to_logo = n.get_boolean_value() },
                    "showOfficeWebApps" => lambda {|n| @show_office_web_apps = n.get_boolean_value() },
                    "themeColor" => lambda {|n| @theme_color = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RgbColor.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isFactoryResetDisabled property value. Boolean that represents whether the adminsistrator has disabled the 'Factory Reset' action on corporate owned devices.
            ## @return a boolean
            ## 
            def is_factory_reset_disabled
                return @is_factory_reset_disabled
            end
            ## 
            ## Sets the isFactoryResetDisabled property value. Boolean that represents whether the adminsistrator has disabled the 'Factory Reset' action on corporate owned devices.
            ## @param value Value to set for the is_factory_reset_disabled property.
            ## @return a void
            ## 
            def is_factory_reset_disabled=(value)
                @is_factory_reset_disabled = value
            end
            ## 
            ## Gets the isRemoveDeviceDisabled property value. Boolean that represents whether the adminsistrator has disabled the 'Remove Device' action on corporate owned devices.
            ## @return a boolean
            ## 
            def is_remove_device_disabled
                return @is_remove_device_disabled
            end
            ## 
            ## Sets the isRemoveDeviceDisabled property value. Boolean that represents whether the adminsistrator has disabled the 'Remove Device' action on corporate owned devices.
            ## @param value Value to set for the is_remove_device_disabled property.
            ## @return a void
            ## 
            def is_remove_device_disabled=(value)
                @is_remove_device_disabled = value
            end
            ## 
            ## Gets the landingPageCustomizedImage property value. Customized image displayed in Company Portal app landing page
            ## @return a mime_content
            ## 
            def landing_page_customized_image
                return @landing_page_customized_image
            end
            ## 
            ## Sets the landingPageCustomizedImage property value. Customized image displayed in Company Portal app landing page
            ## @param value Value to set for the landing_page_customized_image property.
            ## @return a void
            ## 
            def landing_page_customized_image=(value)
                @landing_page_customized_image = value
            end
            ## 
            ## Gets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo.
            ## @return a mime_content
            ## 
            def light_background_logo
                return @light_background_logo
            end
            ## 
            ## Sets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo.
            ## @param value Value to set for the light_background_logo property.
            ## @return a void
            ## 
            def light_background_logo=(value)
                @light_background_logo = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site.
            ## @return a string
            ## 
            def online_support_site_name
                return @online_support_site_name
            end
            ## 
            ## Sets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site.
            ## @param value Value to set for the online_support_site_name property.
            ## @return a void
            ## 
            def online_support_site_name=(value)
                @online_support_site_name = value
            end
            ## 
            ## Gets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site.
            ## @return a string
            ## 
            def online_support_site_url
                return @online_support_site_url
            end
            ## 
            ## Sets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site.
            ## @param value Value to set for the online_support_site_url property.
            ## @return a void
            ## 
            def online_support_site_url=(value)
                @online_support_site_url = value
            end
            ## 
            ## Gets the privacyUrl property value. URL to the company/organization’s privacy policy.
            ## @return a string
            ## 
            def privacy_url
                return @privacy_url
            end
            ## 
            ## Sets the privacyUrl property value. URL to the company/organization’s privacy policy.
            ## @param value Value to set for the privacy_url property.
            ## @return a void
            ## 
            def privacy_url=(value)
                @privacy_url = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of scope tags assigned to the default branding profile
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of scope tags assigned to the default branding profile
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the sendDeviceOwnershipChangePushNotification property value. Boolean that indicates if a push notification is sent to users when their device ownership type changes from personal to corporate
            ## @return a boolean
            ## 
            def send_device_ownership_change_push_notification
                return @send_device_ownership_change_push_notification
            end
            ## 
            ## Sets the sendDeviceOwnershipChangePushNotification property value. Boolean that indicates if a push notification is sent to users when their device ownership type changes from personal to corporate
            ## @param value Value to set for the send_device_ownership_change_push_notification property.
            ## @return a void
            ## 
            def send_device_ownership_change_push_notification=(value)
                @send_device_ownership_change_push_notification = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_object_values("companyPortalBlockedActions", @company_portal_blocked_actions)
                writer.write_string_value("contactITEmailAddress", @contact_i_t_email_address)
                writer.write_string_value("contactITName", @contact_i_t_name)
                writer.write_string_value("contactITNotes", @contact_i_t_notes)
                writer.write_string_value("contactITPhoneNumber", @contact_i_t_phone_number)
                writer.write_string_value("customCanSeePrivacyMessage", @custom_can_see_privacy_message)
                writer.write_string_value("customCantSeePrivacyMessage", @custom_cant_see_privacy_message)
                writer.write_string_value("customPrivacyMessage", @custom_privacy_message)
                writer.write_object_value("darkBackgroundLogo", @dark_background_logo)
                writer.write_boolean_value("disableClientTelemetry", @disable_client_telemetry)
                writer.write_boolean_value("disableDeviceCategorySelection", @disable_device_category_selection)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("enrollmentAvailability", @enrollment_availability)
                writer.write_boolean_value("isFactoryResetDisabled", @is_factory_reset_disabled)
                writer.write_boolean_value("isRemoveDeviceDisabled", @is_remove_device_disabled)
                writer.write_object_value("landingPageCustomizedImage", @landing_page_customized_image)
                writer.write_object_value("lightBackgroundLogo", @light_background_logo)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("onlineSupportSiteName", @online_support_site_name)
                writer.write_string_value("onlineSupportSiteUrl", @online_support_site_url)
                writer.write_string_value("privacyUrl", @privacy_url)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_boolean_value("sendDeviceOwnershipChangePushNotification", @send_device_ownership_change_push_notification)
                writer.write_boolean_value("showAzureADEnterpriseApps", @show_azure_a_d_enterprise_apps)
                writer.write_boolean_value("showConfigurationManagerApps", @show_configuration_manager_apps)
                writer.write_boolean_value("showDisplayNameNextToLogo", @show_display_name_next_to_logo)
                writer.write_boolean_value("showLogo", @show_logo)
                writer.write_boolean_value("showNameNextToLogo", @show_name_next_to_logo)
                writer.write_boolean_value("showOfficeWebApps", @show_office_web_apps)
                writer.write_object_value("themeColor", @theme_color)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the showAzureADEnterpriseApps property value. Boolean that indicates if AzureAD Enterprise Apps will be shown in Company Portal
            ## @return a boolean
            ## 
            def show_azure_a_d_enterprise_apps
                return @show_azure_a_d_enterprise_apps
            end
            ## 
            ## Sets the showAzureADEnterpriseApps property value. Boolean that indicates if AzureAD Enterprise Apps will be shown in Company Portal
            ## @param value Value to set for the show_azure_a_d_enterprise_apps property.
            ## @return a void
            ## 
            def show_azure_a_d_enterprise_apps=(value)
                @show_azure_a_d_enterprise_apps = value
            end
            ## 
            ## Gets the showConfigurationManagerApps property value. Boolean that indicates if ConfigurationManagerApps will be shown in Company Portal
            ## @return a boolean
            ## 
            def show_configuration_manager_apps
                return @show_configuration_manager_apps
            end
            ## 
            ## Sets the showConfigurationManagerApps property value. Boolean that indicates if ConfigurationManagerApps will be shown in Company Portal
            ## @param value Value to set for the show_configuration_manager_apps property.
            ## @return a void
            ## 
            def show_configuration_manager_apps=(value)
                @show_configuration_manager_apps = value
            end
            ## 
            ## Gets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @return a boolean
            ## 
            def show_display_name_next_to_logo
                return @show_display_name_next_to_logo
            end
            ## 
            ## Sets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @param value Value to set for the show_display_name_next_to_logo property.
            ## @return a void
            ## 
            def show_display_name_next_to_logo=(value)
                @show_display_name_next_to_logo = value
            end
            ## 
            ## Gets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            ## @return a boolean
            ## 
            def show_logo
                return @show_logo
            end
            ## 
            ## Sets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not shown.
            ## @param value Value to set for the show_logo property.
            ## @return a void
            ## 
            def show_logo=(value)
                @show_logo = value
            end
            ## 
            ## Gets the showNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @return a boolean
            ## 
            def show_name_next_to_logo
                return @show_name_next_to_logo
            end
            ## 
            ## Sets the showNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image.
            ## @param value Value to set for the show_name_next_to_logo property.
            ## @return a void
            ## 
            def show_name_next_to_logo=(value)
                @show_name_next_to_logo = value
            end
            ## 
            ## Gets the showOfficeWebApps property value. Boolean that indicates if Office WebApps will be shown in Company Portal
            ## @return a boolean
            ## 
            def show_office_web_apps
                return @show_office_web_apps
            end
            ## 
            ## Sets the showOfficeWebApps property value. Boolean that indicates if Office WebApps will be shown in Company Portal
            ## @param value Value to set for the show_office_web_apps property.
            ## @return a void
            ## 
            def show_office_web_apps=(value)
                @show_office_web_apps = value
            end
            ## 
            ## Gets the themeColor property value. Primary theme color used in the Company Portal applications and web portal.
            ## @return a rgb_color
            ## 
            def theme_color
                return @theme_color
            end
            ## 
            ## Sets the themeColor property value. Primary theme color used in the Company Portal applications and web portal.
            ## @param value Value to set for the theme_color property.
            ## @return a void
            ## 
            def theme_color=(value)
                @theme_color = value
            end
        end
    end
end
