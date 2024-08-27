require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # BitLocker Fixed Drive Policies.
        class BitLockerFixedDrivePolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Select the encryption method for fixed drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
            @encryption_method
            ## 
            # The OdataType property
            @odata_type
            ## 
            # This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.
            @recovery_options
            ## 
            # This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.
            @require_encryption_for_write_access
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
            ## Instantiates a new BitLockerFixedDrivePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bit_locker_fixed_drive_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BitLockerFixedDrivePolicy.new
            end
            ## 
            ## Gets the encryptionMethod property value. Select the encryption method for fixed drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
            ## @return a bit_locker_encryption_method
            ## 
            def encryption_method
                return @encryption_method
            end
            ## 
            ## Sets the encryptionMethod property value. Select the encryption method for fixed drives. Possible values are: aesCbc128, aesCbc256, xtsAes128, xtsAes256.
            ## @param value Value to set for the encryptionMethod property.
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
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recoveryOptions" => lambda {|n| @recovery_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BitLockerRecoveryOptions.create_from_discriminator_value(pn) }) },
                    "requireEncryptionForWriteAccess" => lambda {|n| @require_encryption_for_write_access = n.get_boolean_value() },
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
            ## Gets the recoveryOptions property value. This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.
            ## @return a bit_locker_recovery_options
            ## 
            def recovery_options
                return @recovery_options
            end
            ## 
            ## Sets the recoveryOptions property value. This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.
            ## @param value Value to set for the recoveryOptions property.
            ## @return a void
            ## 
            def recovery_options=(value)
                @recovery_options = value
            end
            ## 
            ## Gets the requireEncryptionForWriteAccess property value. This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.
            ## @return a boolean
            ## 
            def require_encryption_for_write_access
                return @require_encryption_for_write_access
            end
            ## 
            ## Sets the requireEncryptionForWriteAccess property value. This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.
            ## @param value Value to set for the requireEncryptionForWriteAccess property.
            ## @return a void
            ## 
            def require_encryption_for_write_access=(value)
                @require_encryption_for_write_access = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("encryptionMethod", @encryption_method)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("recoveryOptions", @recovery_options)
                writer.write_boolean_value("requireEncryptionForWriteAccess", @require_encryption_for_write_access)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
