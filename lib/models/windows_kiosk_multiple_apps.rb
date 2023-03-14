require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsKioskMultipleApps < MicrosoftGraphBeta::Models::WindowsKioskAppConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # This setting allows access to Downloads folder in file explorer.
            @allow_access_to_downloads_folder
            ## 
            # These are the only Windows Store Apps that will be available to launch from the Start menu. This collection can contain a maximum of 128 elements.
            @apps
            ## 
            # This setting indicates that desktop apps are allowed. Default to true.
            @disallow_desktop_apps
            ## 
            # This setting allows the admin to specify whether the Task Bar is shown or not.
            @show_task_bar
            ## 
            # Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
            @start_menu_layout_xml
            ## 
            ## Gets the allowAccessToDownloadsFolder property value. This setting allows access to Downloads folder in file explorer.
            ## @return a boolean
            ## 
            def allow_access_to_downloads_folder
                return @allow_access_to_downloads_folder
            end
            ## 
            ## Sets the allowAccessToDownloadsFolder property value. This setting allows access to Downloads folder in file explorer.
            ## @param value Value to set for the allow_access_to_downloads_folder property.
            ## @return a void
            ## 
            def allow_access_to_downloads_folder=(value)
                @allow_access_to_downloads_folder = value
            end
            ## 
            ## Gets the apps property value. These are the only Windows Store Apps that will be available to launch from the Start menu. This collection can contain a maximum of 128 elements.
            ## @return a windows_kiosk_app_base
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. These are the only Windows Store Apps that will be available to launch from the Start menu. This collection can contain a maximum of 128 elements.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Instantiates a new WindowsKioskMultipleApps and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskMultipleApps"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_multiple_apps
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskMultipleApps.new
            end
            ## 
            ## Gets the disallowDesktopApps property value. This setting indicates that desktop apps are allowed. Default to true.
            ## @return a boolean
            ## 
            def disallow_desktop_apps
                return @disallow_desktop_apps
            end
            ## 
            ## Sets the disallowDesktopApps property value. This setting indicates that desktop apps are allowed. Default to true.
            ## @param value Value to set for the disallow_desktop_apps property.
            ## @return a void
            ## 
            def disallow_desktop_apps=(value)
                @disallow_desktop_apps = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowAccessToDownloadsFolder" => lambda {|n| @allow_access_to_downloads_folder = n.get_boolean_value() },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskAppBase.create_from_discriminator_value(pn) }) },
                    "disallowDesktopApps" => lambda {|n| @disallow_desktop_apps = n.get_boolean_value() },
                    "showTaskBar" => lambda {|n| @show_task_bar = n.get_boolean_value() },
                    "startMenuLayoutXml" => lambda {|n| @start_menu_layout_xml = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
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
                writer.write_boolean_value("allowAccessToDownloadsFolder", @allow_access_to_downloads_folder)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_boolean_value("disallowDesktopApps", @disallow_desktop_apps)
                writer.write_boolean_value("showTaskBar", @show_task_bar)
                writer.write_object_value("startMenuLayoutXml", @start_menu_layout_xml)
            end
            ## 
            ## Gets the showTaskBar property value. This setting allows the admin to specify whether the Task Bar is shown or not.
            ## @return a boolean
            ## 
            def show_task_bar
                return @show_task_bar
            end
            ## 
            ## Sets the showTaskBar property value. This setting allows the admin to specify whether the Task Bar is shown or not.
            ## @param value Value to set for the show_task_bar property.
            ## @return a void
            ## 
            def show_task_bar=(value)
                @show_task_bar = value
            end
            ## 
            ## Gets the startMenuLayoutXml property value. Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
            ## @return a base64url
            ## 
            def start_menu_layout_xml
                return @start_menu_layout_xml
            end
            ## 
            ## Sets the startMenuLayoutXml property value. Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
            ## @param value Value to set for the start_menu_layout_xml property.
            ## @return a void
            ## 
            def start_menu_layout_xml=(value)
                @start_menu_layout_xml = value
            end
        end
    end
end
