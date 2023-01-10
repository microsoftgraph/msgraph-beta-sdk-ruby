require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsKioskSingleUWPApp < MicrosoftGraphBeta::Models::WindowsKioskAppConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The uwpApp property
        @uwp_app
        ## 
        ## Instantiates a new WindowsKioskSingleUWPApp and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsKioskSingleUWPApp"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_kiosk_single_u_w_p_app
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsKioskSingleUWPApp.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "uwpApp" => lambda {|n| @uwp_app = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsKioskUWPApp.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("uwpApp", @uwp_app)
        end
        ## 
        ## Gets the uwpApp property value. The uwpApp property
        ## @return a windows_kiosk_u_w_p_app
        ## 
        def uwp_app
            return @uwp_app
        end
        ## 
        ## Sets the uwpApp property value. The uwpApp property
        ## @param value Value to set for the uwpApp property.
        ## @return a void
        ## 
        def uwp_app=(value)
            @uwp_app = value
        end
    end
end
