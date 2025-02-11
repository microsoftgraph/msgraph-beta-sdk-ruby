require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebauthnAuthenticatorSelectionCriteria
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Microsoft Entra ID-preferred attachment modality. For more information, see Authenticator Attachment Modality
            @authenticator_attachment
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Microsoft Entra ID-preferred client-side credential discoverability. Currently always true. The WebAuthn authenticator must store the credential identifier on the authenticator.
            @require_resident_key
            ## 
            # Microsoft Entra ID requirement to verify the user is present during credential provisioning. Currently always required.
            @user_verification
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
            ## Gets the authenticatorAttachment property value. Microsoft Entra ID-preferred attachment modality. For more information, see Authenticator Attachment Modality
            ## @return a string
            ## 
            def authenticator_attachment
                return @authenticator_attachment
            end
            ## 
            ## Sets the authenticatorAttachment property value. Microsoft Entra ID-preferred attachment modality. For more information, see Authenticator Attachment Modality
            ## @param value Value to set for the authenticatorAttachment property.
            ## @return a void
            ## 
            def authenticator_attachment=(value)
                @authenticator_attachment = value
            end
            ## 
            ## Instantiates a new WebauthnAuthenticatorSelectionCriteria and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a webauthn_authenticator_selection_criteria
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebauthnAuthenticatorSelectionCriteria.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticatorAttachment" => lambda {|n| @authenticator_attachment = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "requireResidentKey" => lambda {|n| @require_resident_key = n.get_boolean_value() },
                    "userVerification" => lambda {|n| @user_verification = n.get_string_value() },
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
            ## Gets the requireResidentKey property value. Microsoft Entra ID-preferred client-side credential discoverability. Currently always true. The WebAuthn authenticator must store the credential identifier on the authenticator.
            ## @return a boolean
            ## 
            def require_resident_key
                return @require_resident_key
            end
            ## 
            ## Sets the requireResidentKey property value. Microsoft Entra ID-preferred client-side credential discoverability. Currently always true. The WebAuthn authenticator must store the credential identifier on the authenticator.
            ## @param value Value to set for the requireResidentKey property.
            ## @return a void
            ## 
            def require_resident_key=(value)
                @require_resident_key = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("authenticatorAttachment", @authenticator_attachment)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("requireResidentKey", @require_resident_key)
                writer.write_string_value("userVerification", @user_verification)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userVerification property value. Microsoft Entra ID requirement to verify the user is present during credential provisioning. Currently always required.
            ## @return a string
            ## 
            def user_verification
                return @user_verification
            end
            ## 
            ## Sets the userVerification property value. Microsoft Entra ID requirement to verify the user is present during credential provisioning. Currently always required.
            ## @param value Value to set for the userVerification property.
            ## @return a void
            ## 
            def user_verification=(value)
                @user_verification = value
            end
        end
    end
end
