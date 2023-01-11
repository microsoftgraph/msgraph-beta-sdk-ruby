require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class IosiPadOSWebClip < MicrosoftGraphBeta::Models::MobileApp
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The web app URL.
        @app_url
        ## 
        # Whether or not to use managed browser. When true, the app will be required to be opened in an Intune-protected browser. When false, the app will not be required to be opened in an Intune-protected browser.
        @use_managed_browser
        ## 
        ## Gets the appUrl property value. The web app URL.
        ## @return a string
        ## 
        def app_url
            return @app_url
        end
        ## 
        ## Sets the appUrl property value. The web app URL.
        ## @param value Value to set for the appUrl property.
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a iosi_pad_o_s_web_clip
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosiPadOSWebClip.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appUrl" => lambda {|n| @app_url = n.get_string_value() },
                "useManagedBrowser" => lambda {|n| @use_managed_browser = n.get_boolean_value() },
            })
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
            writer.write_boolean_value("useManagedBrowser", @use_managed_browser)
        end
        ## 
        ## Gets the useManagedBrowser property value. Whether or not to use managed browser. When true, the app will be required to be opened in an Intune-protected browser. When false, the app will not be required to be opened in an Intune-protected browser.
        ## @return a boolean
        ## 
        def use_managed_browser
            return @use_managed_browser
        end
        ## 
        ## Sets the useManagedBrowser property value. Whether or not to use managed browser. When true, the app will be required to be opened in an Intune-protected browser. When false, the app will not be required to be opened in an Intune-protected browser.
        ## @param value Value to set for the useManagedBrowser property.
        ## @return a void
        ## 
        def use_managed_browser=(value)
            @use_managed_browser = value
        end
    end
end
