require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ClaimsMapping
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The claim that provides the display name or full name for the user. It is a required propoerty.
        @display_name
        ## 
        # The claim that provides the email address of the user.
        @email
        ## 
        # The claim that provides the first name of the user.
        @given_name
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The claim that provides the last name of the user.
        @surname
        ## 
        # The claim that provides the unique identifier for the signed-in user. It is a required propoerty.
        @user_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new claimsMapping and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a claims_mapping
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ClaimsMapping.new
        end
        ## 
        ## Gets the displayName property value. The claim that provides the display name or full name for the user. It is a required propoerty.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The claim that provides the display name or full name for the user. It is a required propoerty.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the email property value. The claim that provides the email address of the user.
        ## @return a string
        ## 
        def email
            return @email
        end
        ## 
        ## Sets the email property value. The claim that provides the email address of the user.
        ## @param value Value to set for the email property.
        ## @return a void
        ## 
        def email=(value)
            @email = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "email" => lambda {|n| @email = n.get_string_value() },
                "givenName" => lambda {|n| @given_name = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "surname" => lambda {|n| @surname = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the givenName property value. The claim that provides the first name of the user.
        ## @return a string
        ## 
        def given_name
            return @given_name
        end
        ## 
        ## Sets the givenName property value. The claim that provides the first name of the user.
        ## @param value Value to set for the given_name property.
        ## @return a void
        ## 
        def given_name=(value)
            @given_name = value
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("email", @email)
            writer.write_string_value("givenName", @given_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("surname", @surname)
            writer.write_string_value("userId", @user_id)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the surname property value. The claim that provides the last name of the user.
        ## @return a string
        ## 
        def surname
            return @surname
        end
        ## 
        ## Sets the surname property value. The claim that provides the last name of the user.
        ## @param value Value to set for the surname property.
        ## @return a void
        ## 
        def surname=(value)
            @surname = value
        end
        ## 
        ## Gets the userId property value. The claim that provides the unique identifier for the signed-in user. It is a required propoerty.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. The claim that provides the unique identifier for the signed-in user. It is a required propoerty.
        ## @param value Value to set for the user_id property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
    end
end
