require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Entity that encapsulates all information required for a user's PFX certificates.
        class UserPFXCertificate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date/time when this PFX certificate was imported.
            @created_date_time
            ## 
            # Encrypted PFX blob.
            @encrypted_pfx_blob
            ## 
            # Encrypted PFX password.
            @encrypted_pfx_password
            ## 
            # Certificate's validity expiration date/time.
            @expiration_date_time
            ## 
            # Supported values for the intended purpose of a user PFX certificate.
            @intended_purpose
            ## 
            # Name of the key (within the provider) used to encrypt the blob.
            @key_name
            ## 
            # Date/time when this PFX certificate was last modified.
            @last_modified_date_time
            ## 
            # Supported values for the padding scheme used by encryption provider.
            @padding_scheme
            ## 
            # Crypto provider used to encrypt this blob.
            @provider_name
            ## 
            # Certificate's validity start date/time.
            @start_date_time
            ## 
            # SHA-1 thumbprint of the PFX certificate.
            @thumbprint
            ## 
            # User Principal Name of the PFX certificate.
            @user_principal_name
            ## 
            ## Instantiates a new userPFXCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date/time when this PFX certificate was imported.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date/time when this PFX certificate was imported.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_p_f_x_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserPFXCertificate.new
            end
            ## 
            ## Gets the encryptedPfxBlob property value. Encrypted PFX blob.
            ## @return a binary
            ## 
            def encrypted_pfx_blob
                return @encrypted_pfx_blob
            end
            ## 
            ## Sets the encryptedPfxBlob property value. Encrypted PFX blob.
            ## @param value Value to set for the encrypted_pfx_blob property.
            ## @return a void
            ## 
            def encrypted_pfx_blob=(value)
                @encrypted_pfx_blob = value
            end
            ## 
            ## Gets the encryptedPfxPassword property value. Encrypted PFX password.
            ## @return a string
            ## 
            def encrypted_pfx_password
                return @encrypted_pfx_password
            end
            ## 
            ## Sets the encryptedPfxPassword property value. Encrypted PFX password.
            ## @param value Value to set for the encrypted_pfx_password property.
            ## @return a void
            ## 
            def encrypted_pfx_password=(value)
                @encrypted_pfx_password = value
            end
            ## 
            ## Gets the expirationDateTime property value. Certificate's validity expiration date/time.
            ## @return a date_time
            ## 
            def expiration_date_time
                return @expiration_date_time
            end
            ## 
            ## Sets the expirationDateTime property value. Certificate's validity expiration date/time.
            ## @param value Value to set for the expiration_date_time property.
            ## @return a void
            ## 
            def expiration_date_time=(value)
                @expiration_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "encryptedPfxBlob" => lambda {|n| @encrypted_pfx_blob = n.get_string_value() },
                    "encryptedPfxPassword" => lambda {|n| @encrypted_pfx_password = n.get_string_value() },
                    "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                    "intendedPurpose" => lambda {|n| @intended_purpose = n.get_enum_value(MicrosoftGraphBeta::Models::UserPfxIntendedPurpose) },
                    "keyName" => lambda {|n| @key_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "paddingScheme" => lambda {|n| @padding_scheme = n.get_enum_value(MicrosoftGraphBeta::Models::UserPfxPaddingScheme) },
                    "providerName" => lambda {|n| @provider_name = n.get_string_value() },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the intendedPurpose property value. Supported values for the intended purpose of a user PFX certificate.
            ## @return a user_pfx_intended_purpose
            ## 
            def intended_purpose
                return @intended_purpose
            end
            ## 
            ## Sets the intendedPurpose property value. Supported values for the intended purpose of a user PFX certificate.
            ## @param value Value to set for the intended_purpose property.
            ## @return a void
            ## 
            def intended_purpose=(value)
                @intended_purpose = value
            end
            ## 
            ## Gets the keyName property value. Name of the key (within the provider) used to encrypt the blob.
            ## @return a string
            ## 
            def key_name
                return @key_name
            end
            ## 
            ## Sets the keyName property value. Name of the key (within the provider) used to encrypt the blob.
            ## @param value Value to set for the key_name property.
            ## @return a void
            ## 
            def key_name=(value)
                @key_name = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Date/time when this PFX certificate was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Date/time when this PFX certificate was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the paddingScheme property value. Supported values for the padding scheme used by encryption provider.
            ## @return a user_pfx_padding_scheme
            ## 
            def padding_scheme
                return @padding_scheme
            end
            ## 
            ## Sets the paddingScheme property value. Supported values for the padding scheme used by encryption provider.
            ## @param value Value to set for the padding_scheme property.
            ## @return a void
            ## 
            def padding_scheme=(value)
                @padding_scheme = value
            end
            ## 
            ## Gets the providerName property value. Crypto provider used to encrypt this blob.
            ## @return a string
            ## 
            def provider_name
                return @provider_name
            end
            ## 
            ## Sets the providerName property value. Crypto provider used to encrypt this blob.
            ## @param value Value to set for the provider_name property.
            ## @return a void
            ## 
            def provider_name=(value)
                @provider_name = value
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
                writer.write_object_value("encryptedPfxBlob", @encrypted_pfx_blob)
                writer.write_string_value("encryptedPfxPassword", @encrypted_pfx_password)
                writer.write_date_time_value("expirationDateTime", @expiration_date_time)
                writer.write_enum_value("intendedPurpose", @intended_purpose)
                writer.write_string_value("keyName", @key_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_enum_value("paddingScheme", @padding_scheme)
                writer.write_string_value("providerName", @provider_name)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the startDateTime property value. Certificate's validity start date/time.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. Certificate's validity start date/time.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the thumbprint property value. SHA-1 thumbprint of the PFX certificate.
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. SHA-1 thumbprint of the PFX certificate.
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
            ## 
            ## Gets the userPrincipalName property value. User Principal Name of the PFX certificate.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User Principal Name of the PFX certificate.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
