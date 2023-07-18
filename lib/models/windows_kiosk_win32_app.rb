require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # KioskModeApp v4 for Win32 app support
        class WindowsKioskWin32App < MicrosoftGraphBeta::Models::WindowsKioskAppBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode
            @classic_app_path
            ## 
            # Edge kiosk (url) for Edge kiosk mode
            @edge_kiosk
            ## 
            # Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440
            @edge_kiosk_idle_timeout_minutes
            ## 
            # Edge kiosk type
            @edge_kiosk_type
            ## 
            # Edge first run flag for Edge kiosk mode
            @edge_no_first_run
            ## 
            ## Gets the classicAppPath property value. This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode
            ## @return a string
            ## 
            def classic_app_path
                return @classic_app_path
            end
            ## 
            ## Sets the classicAppPath property value. This is the classicapppath to be used by v4 Win32 app while in Kiosk Mode
            ## @param value Value to set for the classic_app_path property.
            ## @return a void
            ## 
            def classic_app_path=(value)
                @classic_app_path = value
            end
            ## 
            ## Instantiates a new windowsKioskWin32App and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsKioskWin32App"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_win32_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsKioskWin32App.new
            end
            ## 
            ## Gets the edgeKiosk property value. Edge kiosk (url) for Edge kiosk mode
            ## @return a string
            ## 
            def edge_kiosk
                return @edge_kiosk
            end
            ## 
            ## Sets the edgeKiosk property value. Edge kiosk (url) for Edge kiosk mode
            ## @param value Value to set for the edge_kiosk property.
            ## @return a void
            ## 
            def edge_kiosk=(value)
                @edge_kiosk = value
            end
            ## 
            ## Gets the edgeKioskIdleTimeoutMinutes property value. Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440
            ## @return a integer
            ## 
            def edge_kiosk_idle_timeout_minutes
                return @edge_kiosk_idle_timeout_minutes
            end
            ## 
            ## Sets the edgeKioskIdleTimeoutMinutes property value. Edge kiosk idle timeout in minutes for Edge kiosk mode. Valid values 0 to 1440
            ## @param value Value to set for the edge_kiosk_idle_timeout_minutes property.
            ## @return a void
            ## 
            def edge_kiosk_idle_timeout_minutes=(value)
                @edge_kiosk_idle_timeout_minutes = value
            end
            ## 
            ## Gets the edgeKioskType property value. Edge kiosk type
            ## @return a windows_edge_kiosk_type
            ## 
            def edge_kiosk_type
                return @edge_kiosk_type
            end
            ## 
            ## Sets the edgeKioskType property value. Edge kiosk type
            ## @param value Value to set for the edge_kiosk_type property.
            ## @return a void
            ## 
            def edge_kiosk_type=(value)
                @edge_kiosk_type = value
            end
            ## 
            ## Gets the edgeNoFirstRun property value. Edge first run flag for Edge kiosk mode
            ## @return a boolean
            ## 
            def edge_no_first_run
                return @edge_no_first_run
            end
            ## 
            ## Sets the edgeNoFirstRun property value. Edge first run flag for Edge kiosk mode
            ## @param value Value to set for the edge_no_first_run property.
            ## @return a void
            ## 
            def edge_no_first_run=(value)
                @edge_no_first_run = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classicAppPath" => lambda {|n| @classic_app_path = n.get_string_value() },
                    "edgeKiosk" => lambda {|n| @edge_kiosk = n.get_string_value() },
                    "edgeKioskIdleTimeoutMinutes" => lambda {|n| @edge_kiosk_idle_timeout_minutes = n.get_number_value() },
                    "edgeKioskType" => lambda {|n| @edge_kiosk_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsEdgeKioskType) },
                    "edgeNoFirstRun" => lambda {|n| @edge_no_first_run = n.get_boolean_value() },
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
                writer.write_string_value("classicAppPath", @classic_app_path)
                writer.write_string_value("edgeKiosk", @edge_kiosk)
                writer.write_number_value("edgeKioskIdleTimeoutMinutes", @edge_kiosk_idle_timeout_minutes)
                writer.write_enum_value("edgeKioskType", @edge_kiosk_type)
                writer.write_boolean_value("edgeNoFirstRun", @edge_no_first_run)
            end
        end
    end
end
