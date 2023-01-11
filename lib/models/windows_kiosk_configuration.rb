require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsKioskConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Enable public browsing kiosk mode for the Microsoft Edge browser. The Default is false.
        @edge_kiosk_enable_public_browsing
        ## 
        # Specify URLs that the kiosk browser is allowed to navigate to
        @kiosk_browser_blocked_url_exceptions
        ## 
        # Specify URLs that the kiosk browsers should not navigate to
        @kiosk_browser_blocked_u_r_ls
        ## 
        # Specify the default URL the browser should navigate to on launch.
        @kiosk_browser_default_url
        ## 
        # Enable the kiosk browser's end session button. By default, the end session button is disabled.
        @kiosk_browser_enable_end_session_button
        ## 
        # Enable the kiosk browser's home button. By default, the home button is disabled.
        @kiosk_browser_enable_home_button
        ## 
        # Enable the kiosk browser's navigation buttons(forward/back). By default, the navigation buttons are disabled.
        @kiosk_browser_enable_navigation_buttons
        ## 
        # Specify the number of minutes the session is idle until the kiosk browser restarts in a fresh state.  Valid values are 1-1440. Valid values 1 to 1440
        @kiosk_browser_restart_on_idle_time_in_minutes
        ## 
        # This policy setting allows to define a list of Kiosk profiles for a Kiosk configuration. This collection can contain a maximum of 3 elements.
        @kiosk_profiles
        ## 
        # force update schedule for Kiosk devices.
        @windows_kiosk_force_update_schedule
        ## 
        ## Instantiates a new WindowsKioskConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsKioskConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_kiosk_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsKioskConfiguration.new
        end
        ## 
        ## Gets the edgeKioskEnablePublicBrowsing property value. Enable public browsing kiosk mode for the Microsoft Edge browser. The Default is false.
        ## @return a boolean
        ## 
        def edge_kiosk_enable_public_browsing
            return @edge_kiosk_enable_public_browsing
        end
        ## 
        ## Sets the edgeKioskEnablePublicBrowsing property value. Enable public browsing kiosk mode for the Microsoft Edge browser. The Default is false.
        ## @param value Value to set for the edgeKioskEnablePublicBrowsing property.
        ## @return a void
        ## 
        def edge_kiosk_enable_public_browsing=(value)
            @edge_kiosk_enable_public_browsing = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "edgeKioskEnablePublicBrowsing" => lambda {|n| @edge_kiosk_enable_public_browsing = n.get_boolean_value() },
                "kioskBrowserBlockedUrlExceptions" => lambda {|n| @kiosk_browser_blocked_url_exceptions = n.get_collection_of_primitive_values(String) },
                "kioskBrowserBlockedURLs" => lambda {|n| @kiosk_browser_blocked_u_r_ls = n.get_collection_of_primitive_values(String) },
                "kioskBrowserDefaultUrl" => lambda {|n| @kiosk_browser_default_url = n.get_string_value() },
                "kioskBrowserEnableEndSessionButton" => lambda {|n| @kiosk_browser_enable_end_session_button = n.get_boolean_value() },
                "kioskBrowserEnableHomeButton" => lambda {|n| @kiosk_browser_enable_home_button = n.get_boolean_value() },
                "kioskBrowserEnableNavigationButtons" => lambda {|n| @kiosk_browser_enable_navigation_buttons = n.get_boolean_value() },
                "kioskBrowserRestartOnIdleTimeInMinutes" => lambda {|n| @kiosk_browser_restart_on_idle_time_in_minutes = n.get_number_value() },
                "kioskProfiles" => lambda {|n| @kiosk_profiles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskProfile.create_from_discriminator_value(pn) }) },
                "windowsKioskForceUpdateSchedule" => lambda {|n| @windows_kiosk_force_update_schedule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskForceUpdateSchedule.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the kioskBrowserBlockedUrlExceptions property value. Specify URLs that the kiosk browser is allowed to navigate to
        ## @return a string
        ## 
        def kiosk_browser_blocked_url_exceptions
            return @kiosk_browser_blocked_url_exceptions
        end
        ## 
        ## Sets the kioskBrowserBlockedUrlExceptions property value. Specify URLs that the kiosk browser is allowed to navigate to
        ## @param value Value to set for the kioskBrowserBlockedUrlExceptions property.
        ## @return a void
        ## 
        def kiosk_browser_blocked_url_exceptions=(value)
            @kiosk_browser_blocked_url_exceptions = value
        end
        ## 
        ## Gets the kioskBrowserBlockedURLs property value. Specify URLs that the kiosk browsers should not navigate to
        ## @return a string
        ## 
        def kiosk_browser_blocked_u_r_ls
            return @kiosk_browser_blocked_u_r_ls
        end
        ## 
        ## Sets the kioskBrowserBlockedURLs property value. Specify URLs that the kiosk browsers should not navigate to
        ## @param value Value to set for the kioskBrowserBlockedURLs property.
        ## @return a void
        ## 
        def kiosk_browser_blocked_u_r_ls=(value)
            @kiosk_browser_blocked_u_r_ls = value
        end
        ## 
        ## Gets the kioskBrowserDefaultUrl property value. Specify the default URL the browser should navigate to on launch.
        ## @return a string
        ## 
        def kiosk_browser_default_url
            return @kiosk_browser_default_url
        end
        ## 
        ## Sets the kioskBrowserDefaultUrl property value. Specify the default URL the browser should navigate to on launch.
        ## @param value Value to set for the kioskBrowserDefaultUrl property.
        ## @return a void
        ## 
        def kiosk_browser_default_url=(value)
            @kiosk_browser_default_url = value
        end
        ## 
        ## Gets the kioskBrowserEnableEndSessionButton property value. Enable the kiosk browser's end session button. By default, the end session button is disabled.
        ## @return a boolean
        ## 
        def kiosk_browser_enable_end_session_button
            return @kiosk_browser_enable_end_session_button
        end
        ## 
        ## Sets the kioskBrowserEnableEndSessionButton property value. Enable the kiosk browser's end session button. By default, the end session button is disabled.
        ## @param value Value to set for the kioskBrowserEnableEndSessionButton property.
        ## @return a void
        ## 
        def kiosk_browser_enable_end_session_button=(value)
            @kiosk_browser_enable_end_session_button = value
        end
        ## 
        ## Gets the kioskBrowserEnableHomeButton property value. Enable the kiosk browser's home button. By default, the home button is disabled.
        ## @return a boolean
        ## 
        def kiosk_browser_enable_home_button
            return @kiosk_browser_enable_home_button
        end
        ## 
        ## Sets the kioskBrowserEnableHomeButton property value. Enable the kiosk browser's home button. By default, the home button is disabled.
        ## @param value Value to set for the kioskBrowserEnableHomeButton property.
        ## @return a void
        ## 
        def kiosk_browser_enable_home_button=(value)
            @kiosk_browser_enable_home_button = value
        end
        ## 
        ## Gets the kioskBrowserEnableNavigationButtons property value. Enable the kiosk browser's navigation buttons(forward/back). By default, the navigation buttons are disabled.
        ## @return a boolean
        ## 
        def kiosk_browser_enable_navigation_buttons
            return @kiosk_browser_enable_navigation_buttons
        end
        ## 
        ## Sets the kioskBrowserEnableNavigationButtons property value. Enable the kiosk browser's navigation buttons(forward/back). By default, the navigation buttons are disabled.
        ## @param value Value to set for the kioskBrowserEnableNavigationButtons property.
        ## @return a void
        ## 
        def kiosk_browser_enable_navigation_buttons=(value)
            @kiosk_browser_enable_navigation_buttons = value
        end
        ## 
        ## Gets the kioskBrowserRestartOnIdleTimeInMinutes property value. Specify the number of minutes the session is idle until the kiosk browser restarts in a fresh state.  Valid values are 1-1440. Valid values 1 to 1440
        ## @return a integer
        ## 
        def kiosk_browser_restart_on_idle_time_in_minutes
            return @kiosk_browser_restart_on_idle_time_in_minutes
        end
        ## 
        ## Sets the kioskBrowserRestartOnIdleTimeInMinutes property value. Specify the number of minutes the session is idle until the kiosk browser restarts in a fresh state.  Valid values are 1-1440. Valid values 1 to 1440
        ## @param value Value to set for the kioskBrowserRestartOnIdleTimeInMinutes property.
        ## @return a void
        ## 
        def kiosk_browser_restart_on_idle_time_in_minutes=(value)
            @kiosk_browser_restart_on_idle_time_in_minutes = value
        end
        ## 
        ## Gets the kioskProfiles property value. This policy setting allows to define a list of Kiosk profiles for a Kiosk configuration. This collection can contain a maximum of 3 elements.
        ## @return a windows_kiosk_profile
        ## 
        def kiosk_profiles
            return @kiosk_profiles
        end
        ## 
        ## Sets the kioskProfiles property value. This policy setting allows to define a list of Kiosk profiles for a Kiosk configuration. This collection can contain a maximum of 3 elements.
        ## @param value Value to set for the kioskProfiles property.
        ## @return a void
        ## 
        def kiosk_profiles=(value)
            @kiosk_profiles = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("edgeKioskEnablePublicBrowsing", @edge_kiosk_enable_public_browsing)
            writer.write_collection_of_primitive_values("kioskBrowserBlockedUrlExceptions", @kiosk_browser_blocked_url_exceptions)
            writer.write_collection_of_primitive_values("kioskBrowserBlockedURLs", @kiosk_browser_blocked_u_r_ls)
            writer.write_string_value("kioskBrowserDefaultUrl", @kiosk_browser_default_url)
            writer.write_boolean_value("kioskBrowserEnableEndSessionButton", @kiosk_browser_enable_end_session_button)
            writer.write_boolean_value("kioskBrowserEnableHomeButton", @kiosk_browser_enable_home_button)
            writer.write_boolean_value("kioskBrowserEnableNavigationButtons", @kiosk_browser_enable_navigation_buttons)
            writer.write_number_value("kioskBrowserRestartOnIdleTimeInMinutes", @kiosk_browser_restart_on_idle_time_in_minutes)
            writer.write_collection_of_object_values("kioskProfiles", @kiosk_profiles)
            writer.write_object_value("windowsKioskForceUpdateSchedule", @windows_kiosk_force_update_schedule)
        end
        ## 
        ## Gets the windowsKioskForceUpdateSchedule property value. force update schedule for Kiosk devices.
        ## @return a windows_kiosk_force_update_schedule
        ## 
        def windows_kiosk_force_update_schedule
            return @windows_kiosk_force_update_schedule
        end
        ## 
        ## Sets the windowsKioskForceUpdateSchedule property value. force update schedule for Kiosk devices.
        ## @param value Value to set for the windowsKioskForceUpdateSchedule property.
        ## @return a void
        ## 
        def windows_kiosk_force_update_schedule=(value)
            @windows_kiosk_force_update_schedule = value
        end
    end
end
