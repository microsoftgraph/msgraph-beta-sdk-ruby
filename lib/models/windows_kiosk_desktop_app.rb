require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The base class for a type of apps
        class WindowsKioskDesktopApp < MicrosoftGraphBeta::Models::WindowsKioskAppBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Define the DesktopApplicationID of the app
            @desktop_application_id
            ## 
            # Define the DesktopApplicationLinkPath of the app
            @desktop_application_link_path
            ## 
            # Define the path of a desktop app
            @path
            ## 
            ## Instantiates a new windowsKioskDesktopApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskDesktopApp"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_desktop_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskDesktopApp.new
            end
            ## 
            ## Gets the desktopApplicationId property value. Define the DesktopApplicationID of the app
            ## @return a string
            ## 
            def desktop_application_id
                return @desktop_application_id
            end
            ## 
            ## Sets the desktopApplicationId property value. Define the DesktopApplicationID of the app
            ## @param value Value to set for the desktop_application_id property.
            ## @return a void
            ## 
            def desktop_application_id=(value)
                @desktop_application_id = value
            end
            ## 
            ## Gets the desktopApplicationLinkPath property value. Define the DesktopApplicationLinkPath of the app
            ## @return a string
            ## 
            def desktop_application_link_path
                return @desktop_application_link_path
            end
            ## 
            ## Sets the desktopApplicationLinkPath property value. Define the DesktopApplicationLinkPath of the app
            ## @param value Value to set for the desktop_application_link_path property.
            ## @return a void
            ## 
            def desktop_application_link_path=(value)
                @desktop_application_link_path = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "desktopApplicationId" => lambda {|n| @desktop_application_id = n.get_string_value() },
                    "desktopApplicationLinkPath" => lambda {|n| @desktop_application_link_path = n.get_string_value() },
                    "path" => lambda {|n| @path = n.get_string_value() },
                })
            end
            ## 
            ## Gets the path property value. Define the path of a desktop app
            ## @return a string
            ## 
            def path
                return @path
            end
            ## 
            ## Sets the path property value. Define the path of a desktop app
            ## @param value Value to set for the path property.
            ## @return a void
            ## 
            def path=(value)
                @path = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("desktopApplicationId", @desktop_application_id)
                writer.write_string_value("desktopApplicationLinkPath", @desktop_application_link_path)
                writer.write_string_value("path", @path)
            end
        end
    end
end
