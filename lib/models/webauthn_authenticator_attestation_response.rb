require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebauthnAuthenticatorAttestationResponse
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Base64URL encoded, cryptographically protected attestation about the WebAuthn Authenticator.
            @attestation_object
            ## 
            # The clientDataJSON property
            @client_data_j_s_o_n
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the attestationObject property value. Base64URL encoded, cryptographically protected attestation about the WebAuthn Authenticator.
            ## @return a string
            ## 
            def attestation_object
                return @attestation_object
            end
            ## 
            ## Sets the attestationObject property value. Base64URL encoded, cryptographically protected attestation about the WebAuthn Authenticator.
            ## @param value Value to set for the attestationObject property.
            ## @return a void
            ## 
            def attestation_object=(value)
                @attestation_object = value
            end
            ## 
            ## Gets the clientDataJSON property value. The clientDataJSON property
            ## @return a string
            ## 
            def client_data_j_s_o_n
                return @client_data_j_s_o_n
            end
            ## 
            ## Sets the clientDataJSON property value. The clientDataJSON property
            ## @param value Value to set for the clientDataJSON property.
            ## @return a void
            ## 
            def client_data_j_s_o_n=(value)
                @client_data_j_s_o_n = value
            end
            ## 
            ## Instantiates a new WebauthnAuthenticatorAttestationResponse and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a webauthn_authenticator_attestation_response
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebauthnAuthenticatorAttestationResponse.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "attestationObject" => lambda {|n| @attestation_object = n.get_string_value() },
                    "clientDataJSON" => lambda {|n| @client_data_j_s_o_n = n.get_string_value() },
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
                writer.write_string_value("attestationObject", @attestation_object)
                writer.write_string_value("clientDataJSON", @client_data_j_s_o_n)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
