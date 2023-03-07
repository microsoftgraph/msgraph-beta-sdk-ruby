require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationStrength
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Identifier of the authentication strength.
            @authentication_strength_id
            ## 
            # The authenticationStrengthResult property
            @authentication_strength_result
            ## 
            # The name of the authentication strength.
            @display_name
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the authenticationStrengthId property value. Identifier of the authentication strength.
            ## @return a string
            ## 
            def authentication_strength_id
                return @authentication_strength_id
            end
            ## 
            ## Sets the authenticationStrengthId property value. Identifier of the authentication strength.
            ## @param value Value to set for the authentication_strength_id property.
            ## @return a void
            ## 
            def authentication_strength_id=(value)
                @authentication_strength_id = value
            end
            ## 
            ## Gets the authenticationStrengthResult property value. The authenticationStrengthResult property
            ## @return a authentication_strength_result
            ## 
            def authentication_strength_result
                return @authentication_strength_result
            end
            ## 
            ## Sets the authenticationStrengthResult property value. The authenticationStrengthResult property
            ## @param value Value to set for the authentication_strength_result property.
            ## @return a void
            ## 
            def authentication_strength_result=(value)
                @authentication_strength_result = value
            end
            ## 
            ## Instantiates a new authenticationStrength and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a authentication_strength
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationStrength.new
            end
            ## 
            ## Gets the displayName property value. The name of the authentication strength.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the authentication strength.
            ## @param value Value to set for the display_name property.
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
                return {
                    "authenticationStrengthId" => lambda {|n| @authentication_strength_id = n.get_string_value() },
                    "authenticationStrengthResult" => lambda {|n| @authentication_strength_result = n.get_enum_value(MicrosoftGraphBeta::Models::AuthenticationStrengthResult) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
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
                writer.write_string_value("authenticationStrengthId", @authentication_strength_id)
                writer.write_enum_value("authenticationStrengthResult", @authentication_strength_result)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
