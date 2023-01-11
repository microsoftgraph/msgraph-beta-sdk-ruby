require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsAssignedAccessProfile < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # These are the only Windows Store Apps that will be available to launch from the Start menu.
        @app_user_model_ids
        ## 
        # These are the paths of the Desktop Apps that will be available on the Start menu and the only apps the user will be able to launch.
        @desktop_app_paths
        ## 
        # This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
        @profile_name
        ## 
        # This setting allows the admin to specify whether the Task Bar is shown or not.
        @show_task_bar
        ## 
        # Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
        @start_menu_layout_xml
        ## 
        # The user accounts that will be locked to this kiosk configuration.
        @user_accounts
        ## 
        ## Gets the appUserModelIds property value. These are the only Windows Store Apps that will be available to launch from the Start menu.
        ## @return a string
        ## 
        def app_user_model_ids
            return @app_user_model_ids
        end
        ## 
        ## Sets the appUserModelIds property value. These are the only Windows Store Apps that will be available to launch from the Start menu.
        ## @param value Value to set for the appUserModelIds property.
        ## @return a void
        ## 
        def app_user_model_ids=(value)
            @app_user_model_ids = value
        end
        ## 
        ## Instantiates a new WindowsAssignedAccessProfile and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_assigned_access_profile
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsAssignedAccessProfile.new
        end
        ## 
        ## Gets the desktopAppPaths property value. These are the paths of the Desktop Apps that will be available on the Start menu and the only apps the user will be able to launch.
        ## @return a string
        ## 
        def desktop_app_paths
            return @desktop_app_paths
        end
        ## 
        ## Sets the desktopAppPaths property value. These are the paths of the Desktop Apps that will be available on the Start menu and the only apps the user will be able to launch.
        ## @param value Value to set for the desktopAppPaths property.
        ## @return a void
        ## 
        def desktop_app_paths=(value)
            @desktop_app_paths = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "appUserModelIds" => lambda {|n| @app_user_model_ids = n.get_collection_of_primitive_values(String) },
                "desktopAppPaths" => lambda {|n| @desktop_app_paths = n.get_collection_of_primitive_values(String) },
                "profileName" => lambda {|n| @profile_name = n.get_string_value() },
                "showTaskBar" => lambda {|n| @show_task_bar = n.get_boolean_value() },
                "startMenuLayoutXml" => lambda {|n| @start_menu_layout_xml = n.get_string_value() },
                "userAccounts" => lambda {|n| @user_accounts = n.get_collection_of_primitive_values(String) },
            })
        end
        ## 
        ## Gets the profileName property value. This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
        ## @return a string
        ## 
        def profile_name
            return @profile_name
        end
        ## 
        ## Sets the profileName property value. This is a friendly name used to identify a group of applications, the layout of these apps on the start menu and the users to whom this kiosk configuration is assigned.
        ## @param value Value to set for the profileName property.
        ## @return a void
        ## 
        def profile_name=(value)
            @profile_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("appUserModelIds", @app_user_model_ids)
            writer.write_collection_of_primitive_values("desktopAppPaths", @desktop_app_paths)
            writer.write_string_value("profileName", @profile_name)
            writer.write_boolean_value("showTaskBar", @show_task_bar)
            writer.write_object_value("startMenuLayoutXml", @start_menu_layout_xml)
            writer.write_collection_of_primitive_values("userAccounts", @user_accounts)
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
        ## @param value Value to set for the showTaskBar property.
        ## @return a void
        ## 
        def show_task_bar=(value)
            @show_task_bar = value
        end
        ## 
        ## Gets the startMenuLayoutXml property value. Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
        ## @return a binary
        ## 
        def start_menu_layout_xml
            return @start_menu_layout_xml
        end
        ## 
        ## Sets the startMenuLayoutXml property value. Allows admins to override the default Start layout and prevents the user from changing it. The layout is modified by specifying an XML file based on a layout modification schema. XML needs to be in Binary format.
        ## @param value Value to set for the startMenuLayoutXml property.
        ## @return a void
        ## 
        def start_menu_layout_xml=(value)
            @start_menu_layout_xml = value
        end
        ## 
        ## Gets the userAccounts property value. The user accounts that will be locked to this kiosk configuration.
        ## @return a string
        ## 
        def user_accounts
            return @user_accounts
        end
        ## 
        ## Sets the userAccounts property value. The user accounts that will be locked to this kiosk configuration.
        ## @param value Value to set for the userAccounts property.
        ## @return a void
        ## 
        def user_accounts=(value)
            @user_accounts = value
        end
    end
end
