require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WindowsKioskLocalUser < MicrosoftGraphBeta::Models::WindowsKioskUser
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The local user that will be locked to this kiosk configuration
        @user_name
        ## 
        ## Instantiates a new WindowsKioskLocalUser and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsKioskLocalUser"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_kiosk_local_user
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsKioskLocalUser.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "userName" => lambda {|n| @user_name = n.get_string_value() },
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
            writer.write_string_value("userName", @user_name)
        end
        ## 
        ## Gets the userName property value. The local user that will be locked to this kiosk configuration
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. The local user that will be locked to this kiosk configuration
        ## @param value Value to set for the userName property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
        end
    end
end
