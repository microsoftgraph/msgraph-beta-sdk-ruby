require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebauthnCredentialCreationOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Defines when the challenge in the creation options is no longer valid. Expired challenges are rejected when you attempt to create a new fido2AuthenticationMethod.
            @challenge_timeout_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Defines public key options for the creation of a new WebAuthn public key credential.
            @public_key
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
            ## Gets the challengeTimeoutDateTime property value. Defines when the challenge in the creation options is no longer valid. Expired challenges are rejected when you attempt to create a new fido2AuthenticationMethod.
            ## @return a date_time
            ## 
            def challenge_timeout_date_time
                return @challenge_timeout_date_time
            end
            ## 
            ## Sets the challengeTimeoutDateTime property value. Defines when the challenge in the creation options is no longer valid. Expired challenges are rejected when you attempt to create a new fido2AuthenticationMethod.
            ## @param value Value to set for the challengeTimeoutDateTime property.
            ## @return a void
            ## 
            def challenge_timeout_date_time=(value)
                @challenge_timeout_date_time = value
            end
            ## 
            ## Instantiates a new WebauthnCredentialCreationOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a webauthn_credential_creation_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebauthnCredentialCreationOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "challengeTimeoutDateTime" => lambda {|n| @challenge_timeout_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "publicKey" => lambda {|n| @public_key = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebauthnPublicKeyCredentialCreationOptions.create_from_discriminator_value(pn) }) },
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
            ## Gets the publicKey property value. Defines public key options for the creation of a new WebAuthn public key credential.
            ## @return a webauthn_public_key_credential_creation_options
            ## 
            def public_key
                return @public_key
            end
            ## 
            ## Sets the publicKey property value. Defines public key options for the creation of a new WebAuthn public key credential.
            ## @param value Value to set for the publicKey property.
            ## @return a void
            ## 
            def public_key=(value)
                @public_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("challengeTimeoutDateTime", @challenge_timeout_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("publicKey", @public_key)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
