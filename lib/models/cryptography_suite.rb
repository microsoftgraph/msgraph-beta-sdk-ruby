require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # VPN Security Association Parameters
        class CryptographySuite
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Authentication Transform Constants. Possible values are: md5_96, sha1_96, sha_256_128, aes128Gcm, aes192Gcm, aes256Gcm.
            @authentication_transform_constants
            ## 
            # Cipher Transform Constants. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            @cipher_transform_constants
            ## 
            # Diffie Hellman Group. Possible values are: group1, group2, group14, ecp256, ecp384, group24.
            @dh_group
            ## 
            # Encryption Method. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            @encryption_method
            ## 
            # Integrity Check Method. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
            @integrity_check_method
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Perfect Forward Secrecy Group. Possible values are: pfs1, pfs2, pfs2048, ecp256, ecp384, pfsMM, pfs24.
            @pfs_group
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
            ## Gets the authenticationTransformConstants property value. Authentication Transform Constants. Possible values are: md5_96, sha1_96, sha_256_128, aes128Gcm, aes192Gcm, aes256Gcm.
            ## @return a authentication_transform_constant
            ## 
            def authentication_transform_constants
                return @authentication_transform_constants
            end
            ## 
            ## Sets the authenticationTransformConstants property value. Authentication Transform Constants. Possible values are: md5_96, sha1_96, sha_256_128, aes128Gcm, aes192Gcm, aes256Gcm.
            ## @param value Value to set for the authentication_transform_constants property.
            ## @return a void
            ## 
            def authentication_transform_constants=(value)
                @authentication_transform_constants = value
            end
            ## 
            ## Gets the cipherTransformConstants property value. Cipher Transform Constants. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            ## @return a vpn_encryption_algorithm_type
            ## 
            def cipher_transform_constants
                return @cipher_transform_constants
            end
            ## 
            ## Sets the cipherTransformConstants property value. Cipher Transform Constants. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            ## @param value Value to set for the cipher_transform_constants property.
            ## @return a void
            ## 
            def cipher_transform_constants=(value)
                @cipher_transform_constants = value
            end
            ## 
            ## Instantiates a new cryptographySuite and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cryptography_suite
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CryptographySuite.new
            end
            ## 
            ## Gets the dhGroup property value. Diffie Hellman Group. Possible values are: group1, group2, group14, ecp256, ecp384, group24.
            ## @return a diffie_hellman_group
            ## 
            def dh_group
                return @dh_group
            end
            ## 
            ## Sets the dhGroup property value. Diffie Hellman Group. Possible values are: group1, group2, group14, ecp256, ecp384, group24.
            ## @param value Value to set for the dh_group property.
            ## @return a void
            ## 
            def dh_group=(value)
                @dh_group = value
            end
            ## 
            ## Gets the encryptionMethod property value. Encryption Method. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            ## @return a vpn_encryption_algorithm_type
            ## 
            def encryption_method
                return @encryption_method
            end
            ## 
            ## Sets the encryptionMethod property value. Encryption Method. Possible values are: aes256, des, tripleDes, aes128, aes128Gcm, aes256Gcm, aes192, aes192Gcm, chaCha20Poly1305.
            ## @param value Value to set for the encryption_method property.
            ## @return a void
            ## 
            def encryption_method=(value)
                @encryption_method = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticationTransformConstants" => lambda {|n| @authentication_transform_constants = n.get_enum_value(MicrosoftGraphBeta::Models::AuthenticationTransformConstant) },
                    "cipherTransformConstants" => lambda {|n| @cipher_transform_constants = n.get_enum_value(MicrosoftGraphBeta::Models::VpnEncryptionAlgorithmType) },
                    "dhGroup" => lambda {|n| @dh_group = n.get_enum_value(MicrosoftGraphBeta::Models::DiffieHellmanGroup) },
                    "encryptionMethod" => lambda {|n| @encryption_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnEncryptionAlgorithmType) },
                    "integrityCheckMethod" => lambda {|n| @integrity_check_method = n.get_enum_value(MicrosoftGraphBeta::Models::VpnIntegrityAlgorithmType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pfsGroup" => lambda {|n| @pfs_group = n.get_enum_value(MicrosoftGraphBeta::Models::PerfectForwardSecrecyGroup) },
                }
            end
            ## 
            ## Gets the integrityCheckMethod property value. Integrity Check Method. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
            ## @return a vpn_integrity_algorithm_type
            ## 
            def integrity_check_method
                return @integrity_check_method
            end
            ## 
            ## Sets the integrityCheckMethod property value. Integrity Check Method. Possible values are: sha2_256, sha1_96, sha1_160, sha2_384, sha2_512, md5.
            ## @param value Value to set for the integrity_check_method property.
            ## @return a void
            ## 
            def integrity_check_method=(value)
                @integrity_check_method = value
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
            ## Gets the pfsGroup property value. Perfect Forward Secrecy Group. Possible values are: pfs1, pfs2, pfs2048, ecp256, ecp384, pfsMM, pfs24.
            ## @return a perfect_forward_secrecy_group
            ## 
            def pfs_group
                return @pfs_group
            end
            ## 
            ## Sets the pfsGroup property value. Perfect Forward Secrecy Group. Possible values are: pfs1, pfs2, pfs2048, ecp256, ecp384, pfsMM, pfs24.
            ## @param value Value to set for the pfs_group property.
            ## @return a void
            ## 
            def pfs_group=(value)
                @pfs_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("authenticationTransformConstants", @authentication_transform_constants)
                writer.write_enum_value("cipherTransformConstants", @cipher_transform_constants)
                writer.write_enum_value("dhGroup", @dh_group)
                writer.write_enum_value("encryptionMethod", @encryption_method)
                writer.write_enum_value("integrityCheckMethod", @integrity_check_method)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("pfsGroup", @pfs_group)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
