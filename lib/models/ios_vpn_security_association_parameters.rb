require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # VPN Security Association Parameters
    class IosVpnSecurityAssociationParameters
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Lifetime (minutes)
        @lifetime_in_minutes
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Diffie-Hellman Group
        @security_diffie_hellman_group
        ## 
        # Encryption algorithm. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
        @security_encryption_algorithm
        ## 
        # Integrity algorithm. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
        @security_integrity_algorithm
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
        ## Instantiates a new iosVpnSecurityAssociationParameters and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a ios_vpn_security_association_parameters
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return IosVpnSecurityAssociationParameters.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "lifetimeInMinutes" => lambda {|n| @lifetime_in_minutes = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "securityDiffieHellmanGroup" => lambda {|n| @security_diffie_hellman_group = n.get_number_value() },
                "securityEncryptionAlgorithm" => lambda {|n| @security_encryption_algorithm = n.get_enum_value(MicrosoftGraphBeta::Models::VpnEncryptionAlgorithmType) },
                "securityIntegrityAlgorithm" => lambda {|n| @security_integrity_algorithm = n.get_enum_value(MicrosoftGraphBeta::Models::VpnIntegrityAlgorithmType) },
            }
        end
        ## 
        ## Gets the lifetimeInMinutes property value. Lifetime (minutes)
        ## @return a integer
        ## 
        def lifetime_in_minutes
            return @lifetime_in_minutes
        end
        ## 
        ## Sets the lifetimeInMinutes property value. Lifetime (minutes)
        ## @param value Value to set for the lifetime_in_minutes property.
        ## @return a void
        ## 
        def lifetime_in_minutes=(value)
            @lifetime_in_minutes = value
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
        ## Gets the securityDiffieHellmanGroup property value. Diffie-Hellman Group
        ## @return a integer
        ## 
        def security_diffie_hellman_group
            return @security_diffie_hellman_group
        end
        ## 
        ## Sets the securityDiffieHellmanGroup property value. Diffie-Hellman Group
        ## @param value Value to set for the security_diffie_hellman_group property.
        ## @return a void
        ## 
        def security_diffie_hellman_group=(value)
            @security_diffie_hellman_group = value
        end
        ## 
        ## Gets the securityEncryptionAlgorithm property value. Encryption algorithm. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
        ## @return a vpn_encryption_algorithm_type
        ## 
        def security_encryption_algorithm
            return @security_encryption_algorithm
        end
        ## 
        ## Sets the securityEncryptionAlgorithm property value. Encryption algorithm. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
        ## @param value Value to set for the security_encryption_algorithm property.
        ## @return a void
        ## 
        def security_encryption_algorithm=(value)
            @security_encryption_algorithm = value
        end
        ## 
        ## Gets the securityIntegrityAlgorithm property value. Integrity algorithm. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
        ## @return a vpn_integrity_algorithm_type
        ## 
        def security_integrity_algorithm
            return @security_integrity_algorithm
        end
        ## 
        ## Sets the securityIntegrityAlgorithm property value. Integrity algorithm. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
        ## @param value Value to set for the security_integrity_algorithm property.
        ## @return a void
        ## 
        def security_integrity_algorithm=(value)
            @security_integrity_algorithm = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("lifetimeInMinutes", @lifetime_in_minutes)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("securityDiffieHellmanGroup", @security_diffie_hellman_group)
            writer.write_enum_value("securityEncryptionAlgorithm", @security_encryption_algorithm)
            writer.write_enum_value("securityIntegrityAlgorithm", @security_integrity_algorithm)
            writer.write_additional_data(@additional_data)
        end
    end
end
