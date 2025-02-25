require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OidcInboundClaimMappingOverride
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # End-user's preferred postal address. The value of the address member is a JSON RFC8259 structure containing some or all of the members defined in the resource type
            @address
            ## 
            # End-user's preferred e-mail address. Its value MUST conform to the RFC 5322 addr-spec syntax.
            @email
            ## 
            # True if the end-user's e-mail address has been verified by the identity provider; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to ensure that this e-mail address was controlled by the end-user at the time the verification was performed. If this claim value is false, or not mapped with any claim of the identity provider, the user is asked to verify email during sign-up if email is required in the user flow.
            @email_verified
            ## 
            # Surname(s) or family name of the end-user.
            @family_name
            ## 
            # Given name(s) or first name(s) of the end-user.
            @given_name
            ## 
            # End-user's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the end-user's locale and preferences.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The claim provides the phone number for the user.
            @phone_number
            ## 
            # True if the end-user's phone number has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to verify the phone number.
            @phone_number_verified
            ## 
            # Subject - Identifier for the end-user at the Issuer.
            @sub
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
            ## Gets the address property value. End-user's preferred postal address. The value of the address member is a JSON RFC8259 structure containing some or all of the members defined in the resource type
            ## @return a oidc_address_inbound_claims
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. End-user's preferred postal address. The value of the address member is a JSON RFC8259 structure containing some or all of the members defined in the resource type
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Instantiates a new OidcInboundClaimMappingOverride and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a oidc_inbound_claim_mapping_override
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OidcInboundClaimMappingOverride.new
            end
            ## 
            ## Gets the email property value. End-user's preferred e-mail address. Its value MUST conform to the RFC 5322 addr-spec syntax.
            ## @return a string
            ## 
            def email
                return @email
            end
            ## 
            ## Sets the email property value. End-user's preferred e-mail address. Its value MUST conform to the RFC 5322 addr-spec syntax.
            ## @param value Value to set for the email property.
            ## @return a void
            ## 
            def email=(value)
                @email = value
            end
            ## 
            ## Gets the email_verified property value. True if the end-user's e-mail address has been verified by the identity provider; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to ensure that this e-mail address was controlled by the end-user at the time the verification was performed. If this claim value is false, or not mapped with any claim of the identity provider, the user is asked to verify email during sign-up if email is required in the user flow.
            ## @return a string
            ## 
            def email_verified
                return @email_verified
            end
            ## 
            ## Sets the email_verified property value. True if the end-user's e-mail address has been verified by the identity provider; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to ensure that this e-mail address was controlled by the end-user at the time the verification was performed. If this claim value is false, or not mapped with any claim of the identity provider, the user is asked to verify email during sign-up if email is required in the user flow.
            ## @param value Value to set for the email_verified property.
            ## @return a void
            ## 
            def email_verified=(value)
                @email_verified = value
            end
            ## 
            ## Gets the family_name property value. Surname(s) or family name of the end-user.
            ## @return a string
            ## 
            def family_name
                return @family_name
            end
            ## 
            ## Sets the family_name property value. Surname(s) or family name of the end-user.
            ## @param value Value to set for the family_name property.
            ## @return a void
            ## 
            def family_name=(value)
                @family_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OidcAddressInboundClaims.create_from_discriminator_value(pn) }) },
                    "email" => lambda {|n| @email = n.get_string_value() },
                    "email_verified" => lambda {|n| @email_verified = n.get_string_value() },
                    "family_name" => lambda {|n| @family_name = n.get_string_value() },
                    "given_name" => lambda {|n| @given_name = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "phone_number" => lambda {|n| @phone_number = n.get_string_value() },
                    "phone_number_verified" => lambda {|n| @phone_number_verified = n.get_string_value() },
                    "sub" => lambda {|n| @sub = n.get_string_value() },
                }
            end
            ## 
            ## Gets the given_name property value. Given name(s) or first name(s) of the end-user.
            ## @return a string
            ## 
            def given_name
                return @given_name
            end
            ## 
            ## Sets the given_name property value. Given name(s) or first name(s) of the end-user.
            ## @param value Value to set for the given_name property.
            ## @return a void
            ## 
            def given_name=(value)
                @given_name = value
            end
            ## 
            ## Gets the name property value. End-user's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the end-user's locale and preferences.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. End-user's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the end-user's locale and preferences.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
            ## Gets the phone_number property value. The claim provides the phone number for the user.
            ## @return a string
            ## 
            def phone_number
                return @phone_number
            end
            ## 
            ## Sets the phone_number property value. The claim provides the phone number for the user.
            ## @param value Value to set for the phone_number property.
            ## @return a void
            ## 
            def phone_number=(value)
                @phone_number = value
            end
            ## 
            ## Gets the phone_number_verified property value. True if the end-user's phone number has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to verify the phone number.
            ## @return a string
            ## 
            def phone_number_verified
                return @phone_number_verified
            end
            ## 
            ## Sets the phone_number_verified property value. True if the end-user's phone number has been verified; otherwise, false. When this claim value is true, this means that your identity provider took affirmative steps to verify the phone number.
            ## @param value Value to set for the phone_number_verified property.
            ## @return a void
            ## 
            def phone_number_verified=(value)
                @phone_number_verified = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("address", @address)
                writer.write_string_value("email", @email)
                writer.write_string_value("email_verified", @email_verified)
                writer.write_string_value("family_name", @family_name)
                writer.write_string_value("given_name", @given_name)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("phone_number", @phone_number)
                writer.write_string_value("phone_number_verified", @phone_number_verified)
                writer.write_string_value("sub", @sub)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sub property value. Subject - Identifier for the end-user at the Issuer.
            ## @return a string
            ## 
            def sub
                return @sub
            end
            ## 
            ## Sets the sub property value. Subject - Identifier for the end-user at the Issuer.
            ## @param value Value to set for the sub property.
            ## @return a void
            ## 
            def sub=(value)
                @sub = value
            end
        end
    end
end
