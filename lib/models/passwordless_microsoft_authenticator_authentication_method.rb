require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PasswordlessMicrosoftAuthenticatorAuthenticationMethod < MicrosoftGraphBeta::Models::AuthenticationMethod
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The timestamp when this method was registered to the user.
        @creation_date_time
        ## 
        # The device property
        @device
        ## 
        # The display name of the mobile device as given by the user.
        @display_name
        ## 
        ## Instantiates a new PasswordlessMicrosoftAuthenticatorAuthenticationMethod and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethod"
        end
        ## 
        ## Gets the createdDateTime property value. The createdDateTime property
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The createdDateTime property
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a passwordless_microsoft_authenticator_authentication_method
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PasswordlessMicrosoftAuthenticatorAuthenticationMethod.new
        end
        ## 
        ## Gets the creationDateTime property value. The timestamp when this method was registered to the user.
        ## @return a date_time
        ## 
        def creation_date_time
            return @creation_date_time
        end
        ## 
        ## Sets the creationDateTime property value. The timestamp when this method was registered to the user.
        ## @param value Value to set for the creationDateTime property.
        ## @return a void
        ## 
        def creation_date_time=(value)
            @creation_date_time = value
        end
        ## 
        ## Gets the device property value. The device property
        ## @return a device
        ## 
        def device
            return @device
        end
        ## 
        ## Sets the device property value. The device property
        ## @param value Value to set for the device property.
        ## @return a void
        ## 
        def device=(value)
            @device = value
        end
        ## 
        ## Gets the displayName property value. The display name of the mobile device as given by the user.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the mobile device as given by the user.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                "device" => lambda {|n| @device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Device.create_from_discriminator_value(pn) }) },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_date_time_value("creationDateTime", @creation_date_time)
            writer.write_object_value("device", @device)
            writer.write_string_value("displayName", @display_name)
        end
    end
end
