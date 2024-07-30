require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # iOS Device Features Configuration Profile.
        class IosDeviceFeaturesConfiguration < MicrosoftGraphBeta::Models::AppleDeviceFeaturesConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Asset tag information for the device, displayed on the login window and lock screen.
            @asset_tag_template
            ## 
            # Gets or sets iOS Web Content Filter settings, supervised mode only
            @content_filter_settings
            ## 
            # A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            @home_screen_dock_icons
            ## 
            # Gets or sets the number of rows to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridWidth must be configured as well.
            @home_screen_grid_height
            ## 
            # Gets or sets the number of columns to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridHeight must be configured as well.
            @home_screen_grid_width
            ## 
            # A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            @home_screen_pages
            ## 
            # Identity Certificate for the renewal of Kerberos ticket used in single sign-on settings.
            @identity_certificate_for_client_authentication
            ## 
            # Gets or sets a single sign-on extension profile.
            @ios_single_sign_on_extension
            ## 
            # A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            @lock_screen_footnote
            ## 
            # Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            @notification_settings
            ## 
            # Gets or sets a single sign-on extension profile. Deprecated: use IOSSingleSignOnExtension instead.
            @single_sign_on_extension
            ## 
            # PKINIT Certificate for the authentication with single sign-on extension settings.
            @single_sign_on_extension_pkinit_certificate
            ## 
            # The Kerberos login settings that enable apps on receiving devices to authenticate smoothly.
            @single_sign_on_settings
            ## 
            # An enum type for wallpaper display location specifier.
            @wallpaper_display_location
            ## 
            # A wallpaper image must be in either PNG or JPEG format. It requires a supervised device with iOS 8 or later version.
            @wallpaper_image
            ## 
            ## Gets the assetTagTemplate property value. Asset tag information for the device, displayed on the login window and lock screen.
            ## @return a string
            ## 
            def asset_tag_template
                return @asset_tag_template
            end
            ## 
            ## Sets the assetTagTemplate property value. Asset tag information for the device, displayed on the login window and lock screen.
            ## @param value Value to set for the assetTagTemplate property.
            ## @return a void
            ## 
            def asset_tag_template=(value)
                @asset_tag_template = value
            end
            ## 
            ## Instantiates a new IosDeviceFeaturesConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosDeviceFeaturesConfiguration"
            end
            ## 
            ## Gets the contentFilterSettings property value. Gets or sets iOS Web Content Filter settings, supervised mode only
            ## @return a ios_web_content_filter_base
            ## 
            def content_filter_settings
                return @content_filter_settings
            end
            ## 
            ## Sets the contentFilterSettings property value. Gets or sets iOS Web Content Filter settings, supervised mode only
            ## @param value Value to set for the contentFilterSettings property.
            ## @return a void
            ## 
            def content_filter_settings=(value)
                @content_filter_settings = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ios_device_features_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosDeviceFeaturesConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assetTagTemplate" => lambda {|n| @asset_tag_template = n.get_string_value() },
                    "contentFilterSettings" => lambda {|n| @content_filter_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosWebContentFilterBase.create_from_discriminator_value(pn) }) },
                    "homeScreenDockIcons" => lambda {|n| @home_screen_dock_icons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosHomeScreenItem.create_from_discriminator_value(pn) }) },
                    "homeScreenGridHeight" => lambda {|n| @home_screen_grid_height = n.get_number_value() },
                    "homeScreenGridWidth" => lambda {|n| @home_screen_grid_width = n.get_number_value() },
                    "homeScreenPages" => lambda {|n| @home_screen_pages = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosHomeScreenPage.create_from_discriminator_value(pn) }) },
                    "identityCertificateForClientAuthentication" => lambda {|n| @identity_certificate_for_client_authentication = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "iosSingleSignOnExtension" => lambda {|n| @ios_single_sign_on_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosSingleSignOnExtension.create_from_discriminator_value(pn) }) },
                    "lockScreenFootnote" => lambda {|n| @lock_screen_footnote = n.get_string_value() },
                    "notificationSettings" => lambda {|n| @notification_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IosNotificationSettings.create_from_discriminator_value(pn) }) },
                    "singleSignOnExtension" => lambda {|n| @single_sign_on_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SingleSignOnExtension.create_from_discriminator_value(pn) }) },
                    "singleSignOnExtensionPkinitCertificate" => lambda {|n| @single_sign_on_extension_pkinit_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "singleSignOnSettings" => lambda {|n| @single_sign_on_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IosSingleSignOnSettings.create_from_discriminator_value(pn) }) },
                    "wallpaperDisplayLocation" => lambda {|n| @wallpaper_display_location = n.get_enum_value(MicrosoftGraphBeta::Models::IosWallpaperDisplayLocation) },
                    "wallpaperImage" => lambda {|n| @wallpaper_image = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the homeScreenDockIcons property value. A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            ## @return a ios_home_screen_item
            ## 
            def home_screen_dock_icons
                return @home_screen_dock_icons
            end
            ## 
            ## Sets the homeScreenDockIcons property value. A list of app and folders to appear on the Home Screen Dock. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the homeScreenDockIcons property.
            ## @return a void
            ## 
            def home_screen_dock_icons=(value)
                @home_screen_dock_icons = value
            end
            ## 
            ## Gets the homeScreenGridHeight property value. Gets or sets the number of rows to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridWidth must be configured as well.
            ## @return a integer
            ## 
            def home_screen_grid_height
                return @home_screen_grid_height
            end
            ## 
            ## Sets the homeScreenGridHeight property value. Gets or sets the number of rows to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridWidth must be configured as well.
            ## @param value Value to set for the homeScreenGridHeight property.
            ## @return a void
            ## 
            def home_screen_grid_height=(value)
                @home_screen_grid_height = value
            end
            ## 
            ## Gets the homeScreenGridWidth property value. Gets or sets the number of columns to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridHeight must be configured as well.
            ## @return a integer
            ## 
            def home_screen_grid_width
                return @home_screen_grid_width
            end
            ## 
            ## Sets the homeScreenGridWidth property value. Gets or sets the number of columns to render when configuring iOS home screen layout settings. If this value is configured, homeScreenGridHeight must be configured as well.
            ## @param value Value to set for the homeScreenGridWidth property.
            ## @return a void
            ## 
            def home_screen_grid_width=(value)
                @home_screen_grid_width = value
            end
            ## 
            ## Gets the homeScreenPages property value. A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            ## @return a ios_home_screen_page
            ## 
            def home_screen_pages
                return @home_screen_pages
            end
            ## 
            ## Sets the homeScreenPages property value. A list of pages on the Home Screen. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the homeScreenPages property.
            ## @return a void
            ## 
            def home_screen_pages=(value)
                @home_screen_pages = value
            end
            ## 
            ## Gets the identityCertificateForClientAuthentication property value. Identity Certificate for the renewal of Kerberos ticket used in single sign-on settings.
            ## @return a ios_certificate_profile_base
            ## 
            def identity_certificate_for_client_authentication
                return @identity_certificate_for_client_authentication
            end
            ## 
            ## Sets the identityCertificateForClientAuthentication property value. Identity Certificate for the renewal of Kerberos ticket used in single sign-on settings.
            ## @param value Value to set for the identityCertificateForClientAuthentication property.
            ## @return a void
            ## 
            def identity_certificate_for_client_authentication=(value)
                @identity_certificate_for_client_authentication = value
            end
            ## 
            ## Gets the iosSingleSignOnExtension property value. Gets or sets a single sign-on extension profile.
            ## @return a ios_single_sign_on_extension
            ## 
            def ios_single_sign_on_extension
                return @ios_single_sign_on_extension
            end
            ## 
            ## Sets the iosSingleSignOnExtension property value. Gets or sets a single sign-on extension profile.
            ## @param value Value to set for the iosSingleSignOnExtension property.
            ## @return a void
            ## 
            def ios_single_sign_on_extension=(value)
                @ios_single_sign_on_extension = value
            end
            ## 
            ## Gets the lockScreenFootnote property value. A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            ## @return a string
            ## 
            def lock_screen_footnote
                return @lock_screen_footnote
            end
            ## 
            ## Sets the lockScreenFootnote property value. A footnote displayed on the login window and lock screen. Available in iOS 9.3.1 and later.
            ## @param value Value to set for the lockScreenFootnote property.
            ## @return a void
            ## 
            def lock_screen_footnote=(value)
                @lock_screen_footnote = value
            end
            ## 
            ## Gets the notificationSettings property value. Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            ## @return a ios_notification_settings
            ## 
            def notification_settings
                return @notification_settings
            end
            ## 
            ## Sets the notificationSettings property value. Notification settings for each bundle id. Applicable to devices in supervised mode only (iOS 9.3 and later). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the notificationSettings property.
            ## @return a void
            ## 
            def notification_settings=(value)
                @notification_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assetTagTemplate", @asset_tag_template)
                writer.write_object_value("contentFilterSettings", @content_filter_settings)
                writer.write_collection_of_object_values("homeScreenDockIcons", @home_screen_dock_icons)
                writer.write_number_value("homeScreenGridHeight", @home_screen_grid_height)
                writer.write_number_value("homeScreenGridWidth", @home_screen_grid_width)
                writer.write_collection_of_object_values("homeScreenPages", @home_screen_pages)
                writer.write_object_value("identityCertificateForClientAuthentication", @identity_certificate_for_client_authentication)
                writer.write_object_value("iosSingleSignOnExtension", @ios_single_sign_on_extension)
                writer.write_string_value("lockScreenFootnote", @lock_screen_footnote)
                writer.write_collection_of_object_values("notificationSettings", @notification_settings)
                writer.write_object_value("singleSignOnExtension", @single_sign_on_extension)
                writer.write_object_value("singleSignOnExtensionPkinitCertificate", @single_sign_on_extension_pkinit_certificate)
                writer.write_object_value("singleSignOnSettings", @single_sign_on_settings)
                writer.write_enum_value("wallpaperDisplayLocation", @wallpaper_display_location)
                writer.write_object_value("wallpaperImage", @wallpaper_image)
            end
            ## 
            ## Gets the singleSignOnExtension property value. Gets or sets a single sign-on extension profile. Deprecated: use IOSSingleSignOnExtension instead.
            ## @return a single_sign_on_extension
            ## 
            def single_sign_on_extension
                return @single_sign_on_extension
            end
            ## 
            ## Sets the singleSignOnExtension property value. Gets or sets a single sign-on extension profile. Deprecated: use IOSSingleSignOnExtension instead.
            ## @param value Value to set for the singleSignOnExtension property.
            ## @return a void
            ## 
            def single_sign_on_extension=(value)
                @single_sign_on_extension = value
            end
            ## 
            ## Gets the singleSignOnExtensionPkinitCertificate property value. PKINIT Certificate for the authentication with single sign-on extension settings.
            ## @return a ios_certificate_profile_base
            ## 
            def single_sign_on_extension_pkinit_certificate
                return @single_sign_on_extension_pkinit_certificate
            end
            ## 
            ## Sets the singleSignOnExtensionPkinitCertificate property value. PKINIT Certificate for the authentication with single sign-on extension settings.
            ## @param value Value to set for the singleSignOnExtensionPkinitCertificate property.
            ## @return a void
            ## 
            def single_sign_on_extension_pkinit_certificate=(value)
                @single_sign_on_extension_pkinit_certificate = value
            end
            ## 
            ## Gets the singleSignOnSettings property value. The Kerberos login settings that enable apps on receiving devices to authenticate smoothly.
            ## @return a ios_single_sign_on_settings
            ## 
            def single_sign_on_settings
                return @single_sign_on_settings
            end
            ## 
            ## Sets the singleSignOnSettings property value. The Kerberos login settings that enable apps on receiving devices to authenticate smoothly.
            ## @param value Value to set for the singleSignOnSettings property.
            ## @return a void
            ## 
            def single_sign_on_settings=(value)
                @single_sign_on_settings = value
            end
            ## 
            ## Gets the wallpaperDisplayLocation property value. An enum type for wallpaper display location specifier.
            ## @return a ios_wallpaper_display_location
            ## 
            def wallpaper_display_location
                return @wallpaper_display_location
            end
            ## 
            ## Sets the wallpaperDisplayLocation property value. An enum type for wallpaper display location specifier.
            ## @param value Value to set for the wallpaperDisplayLocation property.
            ## @return a void
            ## 
            def wallpaper_display_location=(value)
                @wallpaper_display_location = value
            end
            ## 
            ## Gets the wallpaperImage property value. A wallpaper image must be in either PNG or JPEG format. It requires a supervised device with iOS 8 or later version.
            ## @return a mime_content
            ## 
            def wallpaper_image
                return @wallpaper_image
            end
            ## 
            ## Sets the wallpaperImage property value. A wallpaper image must be in either PNG or JPEG format. It requires a supervised device with iOS 8 or later version.
            ## @param value Value to set for the wallpaperImage property.
            ## @return a void
            ## 
            def wallpaper_image=(value)
                @wallpaper_image = value
            end
        end
    end
end
