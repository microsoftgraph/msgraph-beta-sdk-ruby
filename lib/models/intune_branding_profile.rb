require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IntuneBrandingProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments for the branding profile
            @assignments
            ## 
            # Collection of blocked actions on the company portal as per platform and device ownership types.
            @company_portal_blocked_actions
            ## 
            # E-mail address of the person/organization responsible for IT support
            @contact_i_t_email_address
            ## 
            # Name of the person/organization responsible for IT support
            @contact_i_t_name
            ## 
            # Text comments regarding the person/organization responsible for IT support
            @contact_i_t_notes
            ## 
            # Phone number of the person/organization responsible for IT support
            @contact_i_t_phone_number
            ## 
            # Time when the BrandingProfile was created
            @created_date_time
            ## 
            # Text comments regarding what the admin has access to on the device
            @custom_can_see_privacy_message
            ## 
            # Text comments regarding what the admin doesn't have access to on the device
            @custom_cant_see_privacy_message
            ## 
            # Text comments regarding what the admin doesn't have access to on the device
            @custom_privacy_message
            ## 
            # Applies to telemetry sent from all clients to the Intune service. When disabled, all proactive troubleshooting and issue warnings within the client are turned off, and telemetry settings appear inactive or hidden to the device user.
            @disable_client_telemetry
            ## 
            # Boolean that indicates if Device Category Selection will be shown in Company Portal
            @disable_device_category_selection
            ## 
            # Company/organization name that is displayed to end users
            @display_name
            ## 
            # Options available for enrollment flow customization
            @enrollment_availability
            ## 
            # Boolean that represents whether the profile is used as default or not
            @is_default_profile
            ## 
            # Boolean that represents whether the adminsistrator has disabled the 'Factory Reset' action on corporate owned devices.
            @is_factory_reset_disabled
            ## 
            # Boolean that represents whether the adminsistrator has disabled the 'Remove Device' action on corporate owned devices.
            @is_remove_device_disabled
            ## 
            # Customized image displayed in Company Portal apps landing page
            @landing_page_customized_image
            ## 
            # Time when the BrandingProfile was last modified
            @last_modified_date_time
            ## 
            # Logo image displayed in Company Portal apps which have a light background behind the logo
            @light_background_logo
            ## 
            # Display name of the company/organization’s IT helpdesk site
            @online_support_site_name
            ## 
            # URL to the company/organization’s IT helpdesk site
            @online_support_site_url
            ## 
            # URL to the company/organization’s privacy policy
            @privacy_url
            ## 
            # Description of the profile
            @profile_description
            ## 
            # Name of the profile
            @profile_name
            ## 
            # List of scope tags assigned to the branding profile
            @role_scope_tag_ids
            ## 
            # Boolean that indicates if a push notification is sent to users when their device ownership type changes from personal to corporate
            @send_device_ownership_change_push_notification
            ## 
            # Boolean that indicates if AzureAD Enterprise Apps will be shown in Company Portal
            @show_azure_a_d_enterprise_apps
            ## 
            # Boolean that indicates if Configuration Manager Apps will be shown in Company Portal
            @show_configuration_manager_apps
            ## 
            # Boolean that represents whether the administrator-supplied display name will be shown next to the logo image or not
            @show_display_name_next_to_logo
            ## 
            # Boolean that represents whether the administrator-supplied logo images are shown or not
            @show_logo
            ## 
            # Boolean that indicates if Office WebApps will be shown in Company Portal
            @show_office_web_apps
            ## 
            # Primary theme color used in the Company Portal applications and web portal
            @theme_color
            ## 
            # Logo image displayed in Company Portal apps which have a theme color background behind the logo
            @theme_color_logo
            ## 
            ## Gets the assignments property value. The list of group assignments for the branding profile
            ## @return a intune_branding_profile_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for the branding profile
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
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
            ## Instantiates a new IntuneBrandingProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contactITEmailAddress property value. E-mail address of the person/organization responsible for IT support
            ## @return a string
            ## 
            def contact_i_t_email_address
                return @contact_i_t_email_address
            end
            ## 
            ## Sets the contactITEmailAddress property value. E-mail address of the person/organization responsible for IT support
            ## @param value Value to set for the contact_i_t_email_address property.
            ## @return a void
            ## 
            def contact_i_t_email_address=(value)
                @contact_i_t_email_address = value
            end
            ## 
            ## Gets the contactITName property value. Name of the person/organization responsible for IT support
            ## @return a string
            ## 
            def contact_i_t_name
                return @contact_i_t_name
            end
            ## 
            ## Sets the contactITName property value. Name of the person/organization responsible for IT support
            ## @param value Value to set for the contact_i_t_name property.
            ## @return a void
            ## 
            def contact_i_t_name=(value)
                @contact_i_t_name = value
            end
            ## 
            ## Gets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support
            ## @return a string
            ## 
            def contact_i_t_notes
                return @contact_i_t_notes
            end
            ## 
            ## Sets the contactITNotes property value. Text comments regarding the person/organization responsible for IT support
            ## @param value Value to set for the contact_i_t_notes property.
            ## @return a void
            ## 
            def contact_i_t_notes=(value)
                @contact_i_t_notes = value
            end
            ## 
            ## Gets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support
            ## @return a string
            ## 
            def contact_i_t_phone_number
                return @contact_i_t_phone_number
            end
            ## 
            ## Sets the contactITPhoneNumber property value. Phone number of the person/organization responsible for IT support
            ## @param value Value to set for the contact_i_t_phone_number property.
            ## @return a void
            ## 
            def contact_i_t_phone_number=(value)
                @contact_i_t_phone_number = value
            end
            ## 
            ## Gets the createdDateTime property value. Time when the BrandingProfile was created
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Time when the BrandingProfile was created
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a intune_branding_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IntuneBrandingProfile.new
            end
            ## 
            ## Gets the customCanSeePrivacyMessage property value. Text comments regarding what the admin has access to on the device
            ## @return a string
            ## 
            def custom_can_see_privacy_message
                return @custom_can_see_privacy_message
            end
            ## 
            ## Sets the customCanSeePrivacyMessage property value. Text comments regarding what the admin has access to on the device
            ## @param value Value to set for the custom_can_see_privacy_message property.
            ## @return a void
            ## 
            def custom_can_see_privacy_message=(value)
                @custom_can_see_privacy_message = value
            end
            ## 
            ## Gets the customCantSeePrivacyMessage property value. Text comments regarding what the admin doesn't have access to on the device
            ## @return a string
            ## 
            def custom_cant_see_privacy_message
                return @custom_cant_see_privacy_message
            end
            ## 
            ## Sets the customCantSeePrivacyMessage property value. Text comments regarding what the admin doesn't have access to on the device
            ## @param value Value to set for the custom_cant_see_privacy_message property.
            ## @return a void
            ## 
            def custom_cant_see_privacy_message=(value)
                @custom_cant_see_privacy_message = value
            end
            ## 
            ## Gets the customPrivacyMessage property value. Text comments regarding what the admin doesn't have access to on the device
            ## @return a string
            ## 
            def custom_privacy_message
                return @custom_privacy_message
            end
            ## 
            ## Sets the customPrivacyMessage property value. Text comments regarding what the admin doesn't have access to on the device
            ## @param value Value to set for the custom_privacy_message property.
            ## @return a void
            ## 
            def custom_privacy_message=(value)
                @custom_privacy_message = value
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
            ## Gets the displayName property value. Company/organization name that is displayed to end users
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Company/organization name that is displayed to end users
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
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IntuneBrandingProfileAssignment.create_from_discriminator_value(pn) }) },
                    "companyPortalBlockedActions" => lambda {|n| @company_portal_blocked_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CompanyPortalBlockedAction.create_from_discriminator_value(pn) }) },
                    "contactITEmailAddress" => lambda {|n| @contact_i_t_email_address = n.get_string_value() },
                    "contactITName" => lambda {|n| @contact_i_t_name = n.get_string_value() },
                    "contactITNotes" => lambda {|n| @contact_i_t_notes = n.get_string_value() },
                    "contactITPhoneNumber" => lambda {|n| @contact_i_t_phone_number = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customCanSeePrivacyMessage" => lambda {|n| @custom_can_see_privacy_message = n.get_string_value() },
                    "customCantSeePrivacyMessage" => lambda {|n| @custom_cant_see_privacy_message = n.get_string_value() },
                    "customPrivacyMessage" => lambda {|n| @custom_privacy_message = n.get_string_value() },
                    "disableClientTelemetry" => lambda {|n| @disable_client_telemetry = n.get_boolean_value() },
                    "disableDeviceCategorySelection" => lambda {|n| @disable_device_category_selection = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrollmentAvailability" => lambda {|n| @enrollment_availability = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentAvailabilityOptions) },
                    "isDefaultProfile" => lambda {|n| @is_default_profile = n.get_boolean_value() },
                    "isFactoryResetDisabled" => lambda {|n| @is_factory_reset_disabled = n.get_boolean_value() },
                    "isRemoveDeviceDisabled" => lambda {|n| @is_remove_device_disabled = n.get_boolean_value() },
                    "landingPageCustomizedImage" => lambda {|n| @landing_page_customized_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "lightBackgroundLogo" => lambda {|n| @light_background_logo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "onlineSupportSiteName" => lambda {|n| @online_support_site_name = n.get_string_value() },
                    "onlineSupportSiteUrl" => lambda {|n| @online_support_site_url = n.get_string_value() },
                    "privacyUrl" => lambda {|n| @privacy_url = n.get_string_value() },
                    "profileDescription" => lambda {|n| @profile_description = n.get_string_value() },
                    "profileName" => lambda {|n| @profile_name = n.get_string_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "sendDeviceOwnershipChangePushNotification" => lambda {|n| @send_device_ownership_change_push_notification = n.get_boolean_value() },
                    "showAzureADEnterpriseApps" => lambda {|n| @show_azure_a_d_enterprise_apps = n.get_boolean_value() },
                    "showConfigurationManagerApps" => lambda {|n| @show_configuration_manager_apps = n.get_boolean_value() },
                    "showDisplayNameNextToLogo" => lambda {|n| @show_display_name_next_to_logo = n.get_boolean_value() },
                    "showLogo" => lambda {|n| @show_logo = n.get_boolean_value() },
                    "showOfficeWebApps" => lambda {|n| @show_office_web_apps = n.get_boolean_value() },
                    "themeColor" => lambda {|n| @theme_color = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RgbColor.create_from_discriminator_value(pn) }) },
                    "themeColorLogo" => lambda {|n| @theme_color_logo = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isDefaultProfile property value. Boolean that represents whether the profile is used as default or not
            ## @return a boolean
            ## 
            def is_default_profile
                return @is_default_profile
            end
            ## 
            ## Sets the isDefaultProfile property value. Boolean that represents whether the profile is used as default or not
            ## @param value Value to set for the is_default_profile property.
            ## @return a void
            ## 
            def is_default_profile=(value)
                @is_default_profile = value
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
            ## Gets the landingPageCustomizedImage property value. Customized image displayed in Company Portal apps landing page
            ## @return a mime_content
            ## 
            def landing_page_customized_image
                return @landing_page_customized_image
            end
            ## 
            ## Sets the landingPageCustomizedImage property value. Customized image displayed in Company Portal apps landing page
            ## @param value Value to set for the landing_page_customized_image property.
            ## @return a void
            ## 
            def landing_page_customized_image=(value)
                @landing_page_customized_image = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Time when the BrandingProfile was last modified
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Time when the BrandingProfile was last modified
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo
            ## @return a mime_content
            ## 
            def light_background_logo
                return @light_background_logo
            end
            ## 
            ## Sets the lightBackgroundLogo property value. Logo image displayed in Company Portal apps which have a light background behind the logo
            ## @param value Value to set for the light_background_logo property.
            ## @return a void
            ## 
            def light_background_logo=(value)
                @light_background_logo = value
            end
            ## 
            ## Gets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site
            ## @return a string
            ## 
            def online_support_site_name
                return @online_support_site_name
            end
            ## 
            ## Sets the onlineSupportSiteName property value. Display name of the company/organization’s IT helpdesk site
            ## @param value Value to set for the online_support_site_name property.
            ## @return a void
            ## 
            def online_support_site_name=(value)
                @online_support_site_name = value
            end
            ## 
            ## Gets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site
            ## @return a string
            ## 
            def online_support_site_url
                return @online_support_site_url
            end
            ## 
            ## Sets the onlineSupportSiteUrl property value. URL to the company/organization’s IT helpdesk site
            ## @param value Value to set for the online_support_site_url property.
            ## @return a void
            ## 
            def online_support_site_url=(value)
                @online_support_site_url = value
            end
            ## 
            ## Gets the privacyUrl property value. URL to the company/organization’s privacy policy
            ## @return a string
            ## 
            def privacy_url
                return @privacy_url
            end
            ## 
            ## Sets the privacyUrl property value. URL to the company/organization’s privacy policy
            ## @param value Value to set for the privacy_url property.
            ## @return a void
            ## 
            def privacy_url=(value)
                @privacy_url = value
            end
            ## 
            ## Gets the profileDescription property value. Description of the profile
            ## @return a string
            ## 
            def profile_description
                return @profile_description
            end
            ## 
            ## Sets the profileDescription property value. Description of the profile
            ## @param value Value to set for the profile_description property.
            ## @return a void
            ## 
            def profile_description=(value)
                @profile_description = value
            end
            ## 
            ## Gets the profileName property value. Name of the profile
            ## @return a string
            ## 
            def profile_name
                return @profile_name
            end
            ## 
            ## Sets the profileName property value. Name of the profile
            ## @param value Value to set for the profile_name property.
            ## @return a void
            ## 
            def profile_name=(value)
                @profile_name = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of scope tags assigned to the branding profile
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of scope tags assigned to the branding profile
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
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_collection_of_object_values("companyPortalBlockedActions", @company_portal_blocked_actions)
                writer.write_string_value("contactITEmailAddress", @contact_i_t_email_address)
                writer.write_string_value("contactITName", @contact_i_t_name)
                writer.write_string_value("contactITNotes", @contact_i_t_notes)
                writer.write_string_value("contactITPhoneNumber", @contact_i_t_phone_number)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("customCanSeePrivacyMessage", @custom_can_see_privacy_message)
                writer.write_string_value("customCantSeePrivacyMessage", @custom_cant_see_privacy_message)
                writer.write_string_value("customPrivacyMessage", @custom_privacy_message)
                writer.write_boolean_value("disableClientTelemetry", @disable_client_telemetry)
                writer.write_boolean_value("disableDeviceCategorySelection", @disable_device_category_selection)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("enrollmentAvailability", @enrollment_availability)
                writer.write_boolean_value("isDefaultProfile", @is_default_profile)
                writer.write_boolean_value("isFactoryResetDisabled", @is_factory_reset_disabled)
                writer.write_boolean_value("isRemoveDeviceDisabled", @is_remove_device_disabled)
                writer.write_object_value("landingPageCustomizedImage", @landing_page_customized_image)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("lightBackgroundLogo", @light_background_logo)
                writer.write_string_value("onlineSupportSiteName", @online_support_site_name)
                writer.write_string_value("onlineSupportSiteUrl", @online_support_site_url)
                writer.write_string_value("privacyUrl", @privacy_url)
                writer.write_string_value("profileDescription", @profile_description)
                writer.write_string_value("profileName", @profile_name)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_boolean_value("sendDeviceOwnershipChangePushNotification", @send_device_ownership_change_push_notification)
                writer.write_boolean_value("showAzureADEnterpriseApps", @show_azure_a_d_enterprise_apps)
                writer.write_boolean_value("showConfigurationManagerApps", @show_configuration_manager_apps)
                writer.write_boolean_value("showDisplayNameNextToLogo", @show_display_name_next_to_logo)
                writer.write_boolean_value("showLogo", @show_logo)
                writer.write_boolean_value("showOfficeWebApps", @show_office_web_apps)
                writer.write_object_value("themeColor", @theme_color)
                writer.write_object_value("themeColorLogo", @theme_color_logo)
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
            ## Gets the showConfigurationManagerApps property value. Boolean that indicates if Configuration Manager Apps will be shown in Company Portal
            ## @return a boolean
            ## 
            def show_configuration_manager_apps
                return @show_configuration_manager_apps
            end
            ## 
            ## Sets the showConfigurationManagerApps property value. Boolean that indicates if Configuration Manager Apps will be shown in Company Portal
            ## @param value Value to set for the show_configuration_manager_apps property.
            ## @return a void
            ## 
            def show_configuration_manager_apps=(value)
                @show_configuration_manager_apps = value
            end
            ## 
            ## Gets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image or not
            ## @return a boolean
            ## 
            def show_display_name_next_to_logo
                return @show_display_name_next_to_logo
            end
            ## 
            ## Sets the showDisplayNameNextToLogo property value. Boolean that represents whether the administrator-supplied display name will be shown next to the logo image or not
            ## @param value Value to set for the show_display_name_next_to_logo property.
            ## @return a void
            ## 
            def show_display_name_next_to_logo=(value)
                @show_display_name_next_to_logo = value
            end
            ## 
            ## Gets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not
            ## @return a boolean
            ## 
            def show_logo
                return @show_logo
            end
            ## 
            ## Sets the showLogo property value. Boolean that represents whether the administrator-supplied logo images are shown or not
            ## @param value Value to set for the show_logo property.
            ## @return a void
            ## 
            def show_logo=(value)
                @show_logo = value
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
            ## Gets the themeColor property value. Primary theme color used in the Company Portal applications and web portal
            ## @return a rgb_color
            ## 
            def theme_color
                return @theme_color
            end
            ## 
            ## Sets the themeColor property value. Primary theme color used in the Company Portal applications and web portal
            ## @param value Value to set for the theme_color property.
            ## @return a void
            ## 
            def theme_color=(value)
                @theme_color = value
            end
            ## 
            ## Gets the themeColorLogo property value. Logo image displayed in Company Portal apps which have a theme color background behind the logo
            ## @return a mime_content
            ## 
            def theme_color_logo
                return @theme_color_logo
            end
            ## 
            ## Sets the themeColorLogo property value. Logo image displayed in Company Portal apps which have a theme color background behind the logo
            ## @param value Value to set for the theme_color_logo property.
            ## @return a void
            ## 
            def theme_color_logo=(value)
                @theme_color_logo = value
            end
        end
    end
end
