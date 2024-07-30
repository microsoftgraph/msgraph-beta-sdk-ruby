require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebauthnPublicKeyCredential
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The untyped results from the execution of extensions requested by the client when creating a new public key credential.
            @client_extension_results
            ## 
            # The credential ID created by the WebAuthn Authenticator.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Response data returned from a WebAuthn authenticator after it creates a new public key credential.
            @response
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
            ## Gets the clientExtensionResults property value. The untyped results from the execution of extensions requested by the client when creating a new public key credential.
            ## @return a webauthn_authentication_extensions_client_outputs
            ## 
            def client_extension_results
                return @client_extension_results
            end
            ## 
            ## Sets the clientExtensionResults property value. The untyped results from the execution of extensions requested by the client when creating a new public key credential.
            ## @param value Value to set for the clientExtensionResults property.
            ## @return a void
            ## 
            def client_extension_results=(value)
                @client_extension_results = value
            end
            ## 
            ## Instantiates a new WebauthnPublicKeyCredential and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a webauthn_public_key_credential
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebauthnPublicKeyCredential.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "clientExtensionResults" => lambda {|n| @client_extension_results = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebauthnAuthenticationExtensionsClientOutputs.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "response" => lambda {|n| @response = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebauthnAuthenticatorAttestationResponse.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the id property value. The credential ID created by the WebAuthn Authenticator.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The credential ID created by the WebAuthn Authenticator.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the response property value. Response data returned from a WebAuthn authenticator after it creates a new public key credential.
            ## @return a webauthn_authenticator_attestation_response
            ## 
            def response
                return @response
            end
            ## 
            ## Sets the response property value. Response data returned from a WebAuthn authenticator after it creates a new public key credential.
            ## @param value Value to set for the response property.
            ## @return a void
            ## 
            def response=(value)
                @response = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("clientExtensionResults", @client_extension_results)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("response", @response)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
