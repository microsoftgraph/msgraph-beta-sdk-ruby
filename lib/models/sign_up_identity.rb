require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SignUpIdentity
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The signUpIdentifier property
            @sign_up_identifier
            ## 
            # The signUpIdentifierType property
            @sign_up_identifier_type
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
            ## Instantiates a new SignUpIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sign_up_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SignUpIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "signUpIdentifier" => lambda {|n| @sign_up_identifier = n.get_string_value() },
                    "signUpIdentifierType" => lambda {|n| @sign_up_identifier_type = n.get_enum_value(MicrosoftGraphBeta::Models::SignUpIdentifierType) },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("signUpIdentifier", @sign_up_identifier)
                writer.write_enum_value("signUpIdentifierType", @sign_up_identifier_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signUpIdentifier property value. The signUpIdentifier property
            ## @return a string
            ## 
            def sign_up_identifier
                return @sign_up_identifier
            end
            ## 
            ## Sets the signUpIdentifier property value. The signUpIdentifier property
            ## @param value Value to set for the signUpIdentifier property.
            ## @return a void
            ## 
            def sign_up_identifier=(value)
                @sign_up_identifier = value
            end
            ## 
            ## Gets the signUpIdentifierType property value. The signUpIdentifierType property
            ## @return a sign_up_identifier_type
            ## 
            def sign_up_identifier_type
                return @sign_up_identifier_type
            end
            ## 
            ## Sets the signUpIdentifierType property value. The signUpIdentifierType property
            ## @param value Value to set for the signUpIdentifierType property.
            ## @return a void
            ## 
            def sign_up_identifier_type=(value)
                @sign_up_identifier_type = value
            end
        end
    end
end
