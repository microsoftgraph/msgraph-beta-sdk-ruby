require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IosiPadOSWebClip < MicrosoftGraphBeta::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates iOS/iPadOS web clip app URL. Example: 'https://www.contoso.com'
            @app_url
            ## 
            # Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app, such as Safari or the app specified with targetApplicationBundleIdentifier.
            @full_screen_enabled
            ## 
            # Whether or not a full screen web clip can navigate to an external web site without showing the Safari UI. Defaults to false. If FALSE, the Safari UI appears when navigating away. If TRUE, the Safari UI will not be shown.
            @ignore_manifest_scope
            ## 
            # Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding "shine" to the icon. If FALSE, SpringBoard can add "shine".
            @pre_composed_icon_enabled
            ## 
            # Specifies the application bundle identifier which opens the URL. Available in iOS 14 and later.
            @target_application_bundle_identifier
            ## 
            # Whether or not to use managed browser. When TRUE, the app will be required to be opened in Microsoft Edge. When FALSE, the app will not be required to be opened in Microsoft Edge. By default, this property is set to FALSE.
            @use_managed_browser
            ## 
            ## Gets the appUrl property value. Indicates iOS/iPadOS web clip app URL. Example: 'https://www.contoso.com'
            ## @return a string
            ## 
            def app_url
                return @app_url
            end
            ## 
            ## Sets the appUrl property value. Indicates iOS/iPadOS web clip app URL. Example: 'https://www.contoso.com'
            ## @param value Value to set for the app_url property.
            ## @return a void
            ## 
            def app_url=(value)
                @app_url = value
            end
            ## 
            ## Instantiates a new IosiPadOSWebClip and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.iosiPadOSWebClip"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a iosi_pad_o_s_web_clip
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IosiPadOSWebClip.new
            end
            ## 
            ## Gets the fullScreenEnabled property value. Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app, such as Safari or the app specified with targetApplicationBundleIdentifier.
            ## @return a boolean
            ## 
            def full_screen_enabled
                return @full_screen_enabled
            end
            ## 
            ## Sets the fullScreenEnabled property value. Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app, such as Safari or the app specified with targetApplicationBundleIdentifier.
            ## @param value Value to set for the full_screen_enabled property.
            ## @return a void
            ## 
            def full_screen_enabled=(value)
                @full_screen_enabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appUrl" => lambda {|n| @app_url = n.get_string_value() },
                    "fullScreenEnabled" => lambda {|n| @full_screen_enabled = n.get_boolean_value() },
                    "ignoreManifestScope" => lambda {|n| @ignore_manifest_scope = n.get_boolean_value() },
                    "preComposedIconEnabled" => lambda {|n| @pre_composed_icon_enabled = n.get_boolean_value() },
                    "targetApplicationBundleIdentifier" => lambda {|n| @target_application_bundle_identifier = n.get_string_value() },
                    "useManagedBrowser" => lambda {|n| @use_managed_browser = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the ignoreManifestScope property value. Whether or not a full screen web clip can navigate to an external web site without showing the Safari UI. Defaults to false. If FALSE, the Safari UI appears when navigating away. If TRUE, the Safari UI will not be shown.
            ## @return a boolean
            ## 
            def ignore_manifest_scope
                return @ignore_manifest_scope
            end
            ## 
            ## Sets the ignoreManifestScope property value. Whether or not a full screen web clip can navigate to an external web site without showing the Safari UI. Defaults to false. If FALSE, the Safari UI appears when navigating away. If TRUE, the Safari UI will not be shown.
            ## @param value Value to set for the ignore_manifest_scope property.
            ## @return a void
            ## 
            def ignore_manifest_scope=(value)
                @ignore_manifest_scope = value
            end
            ## 
            ## Gets the preComposedIconEnabled property value. Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding "shine" to the icon. If FALSE, SpringBoard can add "shine".
            ## @return a boolean
            ## 
            def pre_composed_icon_enabled
                return @pre_composed_icon_enabled
            end
            ## 
            ## Sets the preComposedIconEnabled property value. Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding "shine" to the icon. If FALSE, SpringBoard can add "shine".
            ## @param value Value to set for the pre_composed_icon_enabled property.
            ## @return a void
            ## 
            def pre_composed_icon_enabled=(value)
                @pre_composed_icon_enabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appUrl", @app_url)
                writer.write_boolean_value("fullScreenEnabled", @full_screen_enabled)
                writer.write_boolean_value("ignoreManifestScope", @ignore_manifest_scope)
                writer.write_boolean_value("preComposedIconEnabled", @pre_composed_icon_enabled)
                writer.write_string_value("targetApplicationBundleIdentifier", @target_application_bundle_identifier)
                writer.write_boolean_value("useManagedBrowser", @use_managed_browser)
            end
            ## 
            ## Gets the targetApplicationBundleIdentifier property value. Specifies the application bundle identifier which opens the URL. Available in iOS 14 and later.
            ## @return a string
            ## 
            def target_application_bundle_identifier
                return @target_application_bundle_identifier
            end
            ## 
            ## Sets the targetApplicationBundleIdentifier property value. Specifies the application bundle identifier which opens the URL. Available in iOS 14 and later.
            ## @param value Value to set for the target_application_bundle_identifier property.
            ## @return a void
            ## 
            def target_application_bundle_identifier=(value)
                @target_application_bundle_identifier = value
            end
            ## 
            ## Gets the useManagedBrowser property value. Whether or not to use managed browser. When TRUE, the app will be required to be opened in Microsoft Edge. When FALSE, the app will not be required to be opened in Microsoft Edge. By default, this property is set to FALSE.
            ## @return a boolean
            ## 
            def use_managed_browser
                return @use_managed_browser
            end
            ## 
            ## Sets the useManagedBrowser property value. Whether or not to use managed browser. When TRUE, the app will be required to be opened in Microsoft Edge. When FALSE, the app will not be required to be opened in Microsoft Edge. By default, this property is set to FALSE.
            ## @param value Value to set for the use_managed_browser property.
            ## @return a void
            ## 
            def use_managed_browser=(value)
                @use_managed_browser = value
            end
        end
    end
end
