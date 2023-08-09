require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The base class for a type of apps
        class WindowsKioskUWPApp < MicrosoftGraphBeta::Models::WindowsKioskAppBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # This references an Intune App that will be target to the same assignments as Kiosk configuration
            @app_id
            ## 
            # This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode
            @app_user_model_id
            ## 
            # This references an contained App from an Intune App
            @contained_app_id
            ## 
            ## Gets the appId property value. This references an Intune App that will be target to the same assignments as Kiosk configuration
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. This references an Intune App that will be target to the same assignments as Kiosk configuration
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appUserModelId property value. This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode
            ## @return a string
            ## 
            def app_user_model_id
                return @app_user_model_id
            end
            ## 
            ## Sets the appUserModelId property value. This is the only Application User Model ID (AUMID) that will be available to launch use while in Kiosk Mode
            ## @param value Value to set for the appUserModelId property.
            ## @return a void
            ## 
            def app_user_model_id=(value)
                @app_user_model_id = value
            end
            ## 
            ## Instantiates a new windowsKioskUWPApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskUWPApp"
            end
            ## 
            ## Gets the containedAppId property value. This references an contained App from an Intune App
            ## @return a string
            ## 
            def contained_app_id
                return @contained_app_id
            end
            ## 
            ## Sets the containedAppId property value. This references an contained App from an Intune App
            ## @param value Value to set for the containedAppId property.
            ## @return a void
            ## 
            def contained_app_id=(value)
                @contained_app_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_u_w_p_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskUWPApp.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "appUserModelId" => lambda {|n| @app_user_model_id = n.get_string_value() },
                    "containedAppId" => lambda {|n| @contained_app_id = n.get_string_value() },
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
                writer.write_string_value("appId", @app_id)
                writer.write_string_value("appUserModelId", @app_user_model_id)
                writer.write_string_value("containedAppId", @contained_app_id)
            end
        end
    end
end
