require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties and inherited properties for macOS web apps.
        class MacOSWebClip < MicrosoftGraphBeta::Models::MobileApp
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The web app URL starting with http:// or https://, such as https://learn.microsoft.com/mem/.
            @app_url
            ## 
            # Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app.
            @full_screen_enabled
            ## 
            # Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding 'shine' to the icon. If FALSE, SpringBoard can add 'shine'.
            @pre_composed_icon_enabled
            ## 
            ## Gets the appUrl property value. The web app URL starting with http:// or https://, such as https://learn.microsoft.com/mem/.
            ## @return a string
            ## 
            def app_url
                return @app_url
            end
            ## 
            ## Sets the appUrl property value. The web app URL starting with http:// or https://, such as https://learn.microsoft.com/mem/.
            ## @param value Value to set for the appUrl property.
            ## @return a void
            ## 
            def app_url=(value)
                @app_url = value
            end
            ## 
            ## Instantiates a new macOSWebClip and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSWebClip"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_web_clip
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSWebClip.new
            end
            ## 
            ## Gets the fullScreenEnabled property value. Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app.
            ## @return a boolean
            ## 
            def full_screen_enabled
                return @full_screen_enabled
            end
            ## 
            ## Sets the fullScreenEnabled property value. Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app.
            ## @param value Value to set for the fullScreenEnabled property.
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
                    "preComposedIconEnabled" => lambda {|n| @pre_composed_icon_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the preComposedIconEnabled property value. Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding 'shine' to the icon. If FALSE, SpringBoard can add 'shine'.
            ## @return a boolean
            ## 
            def pre_composed_icon_enabled
                return @pre_composed_icon_enabled
            end
            ## 
            ## Sets the preComposedIconEnabled property value. Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding 'shine' to the icon. If FALSE, SpringBoard can add 'shine'.
            ## @param value Value to set for the preComposedIconEnabled property.
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
                writer.write_boolean_value("preComposedIconEnabled", @pre_composed_icon_enabled)
            end
        end
    end
end
