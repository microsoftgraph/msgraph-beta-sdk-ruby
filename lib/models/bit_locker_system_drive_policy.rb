require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # BitLocker Encryption Base Policies.
        class BitLockerSystemDrivePolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Select the encryption method for operating system drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
            @encryption_method
            ## 
            # Indicates the minimum length of startup pin. Valid values 4 to 20
            @minimum_pin_length
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Enable pre-boot recovery message and Url. If requireStartupAuthentication is false, this value does not affect.
            @preboot_recovery_enable_message_and_url
            ## 
            # Defines a custom recovery message.
            @preboot_recovery_message
            ## 
            # Defines a custom recovery URL.
            @preboot_recovery_url
            ## 
            # Allows to recover BitLocker encrypted operating system drives in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.
            @recovery_options
            ## 
            # Indicates whether to allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).
            @startup_authentication_block_without_tpm_chip
            ## 
            # Require additional authentication at startup.
            @startup_authentication_required
            ## 
            # Possible values of the ConfigurationUsage list.
            @startup_authentication_tpm_key_usage
            ## 
            # Possible values of the ConfigurationUsage list.
            @startup_authentication_tpm_pin_and_key_usage
            ## 
            # Possible values of the ConfigurationUsage list.
            @startup_authentication_tpm_pin_usage
            ## 
            # Possible values of the ConfigurationUsage list.
            @startup_authentication_tpm_usage
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
            ## Instantiates a new bitLockerSystemDrivePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bit_locker_system_drive_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BitLockerSystemDrivePolicy.new
            end
            ## 
            ## Gets the encryptionMethod property value. Select the encryption method for operating system drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
            ## @return a bit_locker_encryption_method
            ## 
            def encryption_method
                return @encryption_method
            end
            ## 
            ## Sets the encryptionMethod property value. Select the encryption method for operating system drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
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
                    "encryptionMethod" => lambda {|n| @encryption_method = n.get_enum_value(MicrosoftGraphBeta::Models::BitLockerEncryptionMethod) },
                    "minimumPinLength" => lambda {|n| @minimum_pin_length = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "prebootRecoveryEnableMessageAndUrl" => lambda {|n| @preboot_recovery_enable_message_and_url = n.get_boolean_value() },
                    "prebootRecoveryMessage" => lambda {|n| @preboot_recovery_message = n.get_string_value() },
                    "prebootRecoveryUrl" => lambda {|n| @preboot_recovery_url = n.get_string_value() },
                    "recoveryOptions" => lambda {|n| @recovery_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BitLockerRecoveryOptions.create_from_discriminator_value(pn) }) },
                    "startupAuthenticationBlockWithoutTpmChip" => lambda {|n| @startup_authentication_block_without_tpm_chip = n.get_boolean_value() },
                    "startupAuthenticationRequired" => lambda {|n| @startup_authentication_required = n.get_boolean_value() },
                    "startupAuthenticationTpmKeyUsage" => lambda {|n| @startup_authentication_tpm_key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                    "startupAuthenticationTpmPinAndKeyUsage" => lambda {|n| @startup_authentication_tpm_pin_and_key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                    "startupAuthenticationTpmPinUsage" => lambda {|n| @startup_authentication_tpm_pin_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                    "startupAuthenticationTpmUsage" => lambda {|n| @startup_authentication_tpm_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                }
            end
            ## 
            ## Gets the minimumPinLength property value. Indicates the minimum length of startup pin. Valid values 4 to 20
            ## @return a integer
            ## 
            def minimum_pin_length
                return @minimum_pin_length
            end
            ## 
            ## Sets the minimumPinLength property value. Indicates the minimum length of startup pin. Valid values 4 to 20
            ## @param value Value to set for the minimum_pin_length property.
            ## @return a void
            ## 
            def minimum_pin_length=(value)
                @minimum_pin_length = value
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
            ## Gets the prebootRecoveryEnableMessageAndUrl property value. Enable pre-boot recovery message and Url. If requireStartupAuthentication is false, this value does not affect.
            ## @return a boolean
            ## 
            def preboot_recovery_enable_message_and_url
                return @preboot_recovery_enable_message_and_url
            end
            ## 
            ## Sets the prebootRecoveryEnableMessageAndUrl property value. Enable pre-boot recovery message and Url. If requireStartupAuthentication is false, this value does not affect.
            ## @param value Value to set for the preboot_recovery_enable_message_and_url property.
            ## @return a void
            ## 
            def preboot_recovery_enable_message_and_url=(value)
                @preboot_recovery_enable_message_and_url = value
            end
            ## 
            ## Gets the prebootRecoveryMessage property value. Defines a custom recovery message.
            ## @return a string
            ## 
            def preboot_recovery_message
                return @preboot_recovery_message
            end
            ## 
            ## Sets the prebootRecoveryMessage property value. Defines a custom recovery message.
            ## @param value Value to set for the preboot_recovery_message property.
            ## @return a void
            ## 
            def preboot_recovery_message=(value)
                @preboot_recovery_message = value
            end
            ## 
            ## Gets the prebootRecoveryUrl property value. Defines a custom recovery URL.
            ## @return a string
            ## 
            def preboot_recovery_url
                return @preboot_recovery_url
            end
            ## 
            ## Sets the prebootRecoveryUrl property value. Defines a custom recovery URL.
            ## @param value Value to set for the preboot_recovery_url property.
            ## @return a void
            ## 
            def preboot_recovery_url=(value)
                @preboot_recovery_url = value
            end
            ## 
            ## Gets the recoveryOptions property value. Allows to recover BitLocker encrypted operating system drives in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.
            ## @return a bit_locker_recovery_options
            ## 
            def recovery_options
                return @recovery_options
            end
            ## 
            ## Sets the recoveryOptions property value. Allows to recover BitLocker encrypted operating system drives in the absence of the required startup key information. This policy setting is applied when you turn on BitLocker.
            ## @param value Value to set for the recovery_options property.
            ## @return a void
            ## 
            def recovery_options=(value)
                @recovery_options = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("encryptionMethod", @encryption_method)
                writer.write_number_value("minimumPinLength", @minimum_pin_length)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("prebootRecoveryEnableMessageAndUrl", @preboot_recovery_enable_message_and_url)
                writer.write_string_value("prebootRecoveryMessage", @preboot_recovery_message)
                writer.write_string_value("prebootRecoveryUrl", @preboot_recovery_url)
                writer.write_object_value("recoveryOptions", @recovery_options)
                writer.write_boolean_value("startupAuthenticationBlockWithoutTpmChip", @startup_authentication_block_without_tpm_chip)
                writer.write_boolean_value("startupAuthenticationRequired", @startup_authentication_required)
                writer.write_enum_value("startupAuthenticationTpmKeyUsage", @startup_authentication_tpm_key_usage)
                writer.write_enum_value("startupAuthenticationTpmPinAndKeyUsage", @startup_authentication_tpm_pin_and_key_usage)
                writer.write_enum_value("startupAuthenticationTpmPinUsage", @startup_authentication_tpm_pin_usage)
                writer.write_enum_value("startupAuthenticationTpmUsage", @startup_authentication_tpm_usage)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the startupAuthenticationBlockWithoutTpmChip property value. Indicates whether to allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).
            ## @return a boolean
            ## 
            def startup_authentication_block_without_tpm_chip
                return @startup_authentication_block_without_tpm_chip
            end
            ## 
            ## Sets the startupAuthenticationBlockWithoutTpmChip property value. Indicates whether to allow BitLocker without a compatible TPM (requires a password or a startup key on a USB flash drive).
            ## @param value Value to set for the startup_authentication_block_without_tpm_chip property.
            ## @return a void
            ## 
            def startup_authentication_block_without_tpm_chip=(value)
                @startup_authentication_block_without_tpm_chip = value
            end
            ## 
            ## Gets the startupAuthenticationRequired property value. Require additional authentication at startup.
            ## @return a boolean
            ## 
            def startup_authentication_required
                return @startup_authentication_required
            end
            ## 
            ## Sets the startupAuthenticationRequired property value. Require additional authentication at startup.
            ## @param value Value to set for the startup_authentication_required property.
            ## @return a void
            ## 
            def startup_authentication_required=(value)
                @startup_authentication_required = value
            end
            ## 
            ## Gets the startupAuthenticationTpmKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def startup_authentication_tpm_key_usage
                return @startup_authentication_tpm_key_usage
            end
            ## 
            ## Sets the startupAuthenticationTpmKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the startup_authentication_tpm_key_usage property.
            ## @return a void
            ## 
            def startup_authentication_tpm_key_usage=(value)
                @startup_authentication_tpm_key_usage = value
            end
            ## 
            ## Gets the startupAuthenticationTpmPinAndKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def startup_authentication_tpm_pin_and_key_usage
                return @startup_authentication_tpm_pin_and_key_usage
            end
            ## 
            ## Sets the startupAuthenticationTpmPinAndKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the startup_authentication_tpm_pin_and_key_usage property.
            ## @return a void
            ## 
            def startup_authentication_tpm_pin_and_key_usage=(value)
                @startup_authentication_tpm_pin_and_key_usage = value
            end
            ## 
            ## Gets the startupAuthenticationTpmPinUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def startup_authentication_tpm_pin_usage
                return @startup_authentication_tpm_pin_usage
            end
            ## 
            ## Sets the startupAuthenticationTpmPinUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the startup_authentication_tpm_pin_usage property.
            ## @return a void
            ## 
            def startup_authentication_tpm_pin_usage=(value)
                @startup_authentication_tpm_pin_usage = value
            end
            ## 
            ## Gets the startupAuthenticationTpmUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def startup_authentication_tpm_usage
                return @startup_authentication_tpm_usage
            end
            ## 
            ## Sets the startupAuthenticationTpmUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the startup_authentication_tpm_usage property.
            ## @return a void
            ## 
            def startup_authentication_tpm_usage=(value)
                @startup_authentication_tpm_usage = value
            end
        end
    end
end
