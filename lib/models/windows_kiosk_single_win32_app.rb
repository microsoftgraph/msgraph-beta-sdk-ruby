require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsKioskSingleWin32App < MicrosoftGraphBeta::Models::WindowsKioskAppConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The win32App property
        @win32_app
        ## 
        ## Instantiates a new WindowsKioskSingleWin32App and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsKioskSingleWin32App"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_kiosk_single_win32_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsKioskSingleWin32App.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "win32App" => lambda {|n| @win32_app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskWin32App.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("win32App", @win32_app)
        end
        ## 
        ## Gets the win32App property value. The win32App property
        ## @return a windows_kiosk_win32_app
        ## 
        def win32_app
            return @win32_app
        end
        ## 
        ## Sets the win32App property value. The win32App property
        ## @param value Value to set for the win32_app property.
        ## @return a void
        ## 
        def win32_app=(value)
            @win32_app = value
        end
    end
end
