require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The base class for a type of apps
        class WindowsKioskAppBase
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of Windows kiosk app.
            @app_type
            ## 
            # Allow the app to be auto-launched in multi-app kiosk mode
            @auto_launch
            ## 
            # Represents the friendly name of an app
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tile size of Windows app in the start layout.
            @start_layout_tile_size
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the appType property value. The type of Windows kiosk app.
            ## @return a windows_kiosk_app_type
            ## 
            def app_type
                return @app_type
            end
            ## 
            ## Sets the appType property value. The type of Windows kiosk app.
            ## @param value Value to set for the appType property.
            ## @return a void
            ## 
            def app_type=(value)
                @app_type = value
            end
            ## 
            ## Gets the autoLaunch property value. Allow the app to be auto-launched in multi-app kiosk mode
            ## @return a boolean
            ## 
            def auto_launch
                return @auto_launch
            end
            ## 
            ## Sets the autoLaunch property value. Allow the app to be auto-launched in multi-app kiosk mode
            ## @param value Value to set for the autoLaunch property.
            ## @return a void
            ## 
            def auto_launch=(value)
                @auto_launch = value
            end
            ## 
            ## Instantiates a new windowsKioskAppBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_kiosk_app_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windowsKioskDesktopApp"
                            return WindowsKioskDesktopApp.new
                        when "#microsoft.graph.windowsKioskUWPApp"
                            return WindowsKioskUWPApp.new
                        when "#microsoft.graph.windowsKioskWin32App"
                            return WindowsKioskWin32App.new
                    end
                end
                return WindowsKioskAppBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "appType" => lambda {|n| @app_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsKioskAppType) },
                    "autoLaunch" => lambda {|n| @auto_launch = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "startLayoutTileSize" => lambda {|n| @start_layout_tile_size = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAppStartLayoutTileSize) },
                }
            end
            ## 
            ## Gets the name property value. Represents the friendly name of an app
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Represents the friendly name of an app
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("appType", @app_type)
                writer.write_boolean_value("autoLaunch", @auto_launch)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("startLayoutTileSize", @start_layout_tile_size)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startLayoutTileSize property value. The tile size of Windows app in the start layout.
            ## @return a windows_app_start_layout_tile_size
            ## 
            def start_layout_tile_size
                return @start_layout_tile_size
            end
            ## 
            ## Sets the startLayoutTileSize property value. The tile size of Windows app in the start layout.
            ## @param value Value to set for the startLayoutTileSize property.
            ## @return a void
            ## 
            def start_layout_tile_size=(value)
                @start_layout_tile_size = value
            end
        end
    end
end
