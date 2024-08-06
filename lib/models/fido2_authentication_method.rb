require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Fido2AuthenticationMethod < MicrosoftGraphBeta::Models::AuthenticationMethod
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Authenticator Attestation GUID, an identifier that indicates the type (such as make and model) of the authenticator.
            @aa_guid
            ## 
            # The attestation certificate or certificates attached to this security key.
            @attestation_certificates
            ## 
            # The attestation level of this FIDO2 security key. Possible values are: attested, notAttested, unknownFutureValue.
            @attestation_level
            ## 
            # The display name of the key as given by the user.
            @display_name
            ## 
            # The manufacturer-assigned model of the FIDO2 security key.
            @model
            ## 
            # Contains the WebAuthn public key credential information being registered. Only used for write requests. This property isn't returned on read operations.
            @public_key_credential
            ## 
            ## Gets the aaGuid property value. Authenticator Attestation GUID, an identifier that indicates the type (such as make and model) of the authenticator.
            ## @return a string
            ## 
            def aa_guid
                return @aa_guid
            end
            ## 
            ## Sets the aaGuid property value. Authenticator Attestation GUID, an identifier that indicates the type (such as make and model) of the authenticator.
            ## @param value Value to set for the aaGuid property.
            ## @return a void
            ## 
            def aa_guid=(value)
                @aa_guid = value
            end
            ## 
            ## Gets the attestationCertificates property value. The attestation certificate or certificates attached to this security key.
            ## @return a string
            ## 
            def attestation_certificates
                return @attestation_certificates
            end
            ## 
            ## Sets the attestationCertificates property value. The attestation certificate or certificates attached to this security key.
            ## @param value Value to set for the attestationCertificates property.
            ## @return a void
            ## 
            def attestation_certificates=(value)
                @attestation_certificates = value
            end
            ## 
            ## Gets the attestationLevel property value. The attestation level of this FIDO2 security key. Possible values are: attested, notAttested, unknownFutureValue.
            ## @return a attestation_level
            ## 
            def attestation_level
                return @attestation_level
            end
            ## 
            ## Sets the attestationLevel property value. The attestation level of this FIDO2 security key. Possible values are: attested, notAttested, unknownFutureValue.
            ## @param value Value to set for the attestationLevel property.
            ## @return a void
            ## 
            def attestation_level=(value)
                @attestation_level = value
            end
            ## 
            ## Instantiates a new Fido2AuthenticationMethod and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.fido2AuthenticationMethod"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a fido2_authentication_method
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Fido2AuthenticationMethod.new
            end
            ## 
            ## Gets the displayName property value. The display name of the key as given by the user.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the key as given by the user.
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
                    "aaGuid" => lambda {|n| @aa_guid = n.get_string_value() },
                    "attestationCertificates" => lambda {|n| @attestation_certificates = n.get_collection_of_primitive_values(String) },
                    "attestationLevel" => lambda {|n| @attestation_level = n.get_enum_value(MicrosoftGraphBeta::Models::AttestationLevel) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "publicKeyCredential" => lambda {|n| @public_key_credential = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WebauthnPublicKeyCredential.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the model property value. The manufacturer-assigned model of the FIDO2 security key.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. The manufacturer-assigned model of the FIDO2 security key.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the publicKeyCredential property value. Contains the WebAuthn public key credential information being registered. Only used for write requests. This property isn't returned on read operations.
            ## @return a webauthn_public_key_credential
            ## 
            def public_key_credential
                return @public_key_credential
            end
            ## 
            ## Sets the publicKeyCredential property value. Contains the WebAuthn public key credential information being registered. Only used for write requests. This property isn't returned on read operations.
            ## @param value Value to set for the publicKeyCredential property.
            ## @return a void
            ## 
            def public_key_credential=(value)
                @public_key_credential = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("aaGuid", @aa_guid)
                writer.write_collection_of_primitive_values("attestationCertificates", @attestation_certificates)
                writer.write_enum_value("attestationLevel", @attestation_level)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("model", @model)
                writer.write_object_value("publicKeyCredential", @public_key_credential)
            end
        end
    end
end
