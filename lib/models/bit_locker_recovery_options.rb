require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # BitLocker Recovery Options.
        class BitLockerRecoveryOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether to block certificate-based data recovery agent.
            @block_data_recovery_agent
            ## 
            # Indicates whether or not to enable BitLocker until recovery information is stored in AD DS.
            @enable_bit_locker_after_recovery_information_to_store
            ## 
            # Indicates whether or not to allow BitLocker recovery information to store in AD DS.
            @enable_recovery_information_save_to_store
            ## 
            # Indicates whether or not to allow showing recovery options in BitLocker Setup Wizard for fixed or system disk.
            @hide_recovery_options
            ## 
            # The OdataType property
            @odata_type
            ## 
            # BitLockerRecoveryInformationType types
            @recovery_information_to_store
            ## 
            # Possible values of the ConfigurationUsage list.
            @recovery_key_usage
            ## 
            # Possible values of the ConfigurationUsage list.
            @recovery_password_usage
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the blockDataRecoveryAgent property value. Indicates whether to block certificate-based data recovery agent.
            ## @return a boolean
            ## 
            def block_data_recovery_agent
                return @block_data_recovery_agent
            end
            ## 
            ## Sets the blockDataRecoveryAgent property value. Indicates whether to block certificate-based data recovery agent.
            ## @param value Value to set for the blockDataRecoveryAgent property.
            ## @return a void
            ## 
            def block_data_recovery_agent=(value)
                @block_data_recovery_agent = value
            end
            ## 
            ## Instantiates a new bitLockerRecoveryOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bit_locker_recovery_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BitLockerRecoveryOptions.new
            end
            ## 
            ## Gets the enableBitLockerAfterRecoveryInformationToStore property value. Indicates whether or not to enable BitLocker until recovery information is stored in AD DS.
            ## @return a boolean
            ## 
            def enable_bit_locker_after_recovery_information_to_store
                return @enable_bit_locker_after_recovery_information_to_store
            end
            ## 
            ## Sets the enableBitLockerAfterRecoveryInformationToStore property value. Indicates whether or not to enable BitLocker until recovery information is stored in AD DS.
            ## @param value Value to set for the enableBitLockerAfterRecoveryInformationToStore property.
            ## @return a void
            ## 
            def enable_bit_locker_after_recovery_information_to_store=(value)
                @enable_bit_locker_after_recovery_information_to_store = value
            end
            ## 
            ## Gets the enableRecoveryInformationSaveToStore property value. Indicates whether or not to allow BitLocker recovery information to store in AD DS.
            ## @return a boolean
            ## 
            def enable_recovery_information_save_to_store
                return @enable_recovery_information_save_to_store
            end
            ## 
            ## Sets the enableRecoveryInformationSaveToStore property value. Indicates whether or not to allow BitLocker recovery information to store in AD DS.
            ## @param value Value to set for the enableRecoveryInformationSaveToStore property.
            ## @return a void
            ## 
            def enable_recovery_information_save_to_store=(value)
                @enable_recovery_information_save_to_store = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "blockDataRecoveryAgent" => lambda {|n| @block_data_recovery_agent = n.get_boolean_value() },
                    "enableBitLockerAfterRecoveryInformationToStore" => lambda {|n| @enable_bit_locker_after_recovery_information_to_store = n.get_boolean_value() },
                    "enableRecoveryInformationSaveToStore" => lambda {|n| @enable_recovery_information_save_to_store = n.get_boolean_value() },
                    "hideRecoveryOptions" => lambda {|n| @hide_recovery_options = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recoveryInformationToStore" => lambda {|n| @recovery_information_to_store = n.get_enum_value(MicrosoftGraphBeta::Models::BitLockerRecoveryInformationType) },
                    "recoveryKeyUsage" => lambda {|n| @recovery_key_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                    "recoveryPasswordUsage" => lambda {|n| @recovery_password_usage = n.get_enum_value(MicrosoftGraphBeta::Models::ConfigurationUsage) },
                }
            end
            ## 
            ## Gets the hideRecoveryOptions property value. Indicates whether or not to allow showing recovery options in BitLocker Setup Wizard for fixed or system disk.
            ## @return a boolean
            ## 
            def hide_recovery_options
                return @hide_recovery_options
            end
            ## 
            ## Sets the hideRecoveryOptions property value. Indicates whether or not to allow showing recovery options in BitLocker Setup Wizard for fixed or system disk.
            ## @param value Value to set for the hideRecoveryOptions property.
            ## @return a void
            ## 
            def hide_recovery_options=(value)
                @hide_recovery_options = value
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
            ## Gets the recoveryInformationToStore property value. BitLockerRecoveryInformationType types
            ## @return a bit_locker_recovery_information_type
            ## 
            def recovery_information_to_store
                return @recovery_information_to_store
            end
            ## 
            ## Sets the recoveryInformationToStore property value. BitLockerRecoveryInformationType types
            ## @param value Value to set for the recoveryInformationToStore property.
            ## @return a void
            ## 
            def recovery_information_to_store=(value)
                @recovery_information_to_store = value
            end
            ## 
            ## Gets the recoveryKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def recovery_key_usage
                return @recovery_key_usage
            end
            ## 
            ## Sets the recoveryKeyUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the recoveryKeyUsage property.
            ## @return a void
            ## 
            def recovery_key_usage=(value)
                @recovery_key_usage = value
            end
            ## 
            ## Gets the recoveryPasswordUsage property value. Possible values of the ConfigurationUsage list.
            ## @return a configuration_usage
            ## 
            def recovery_password_usage
                return @recovery_password_usage
            end
            ## 
            ## Sets the recoveryPasswordUsage property value. Possible values of the ConfigurationUsage list.
            ## @param value Value to set for the recoveryPasswordUsage property.
            ## @return a void
            ## 
            def recovery_password_usage=(value)
                @recovery_password_usage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("blockDataRecoveryAgent", @block_data_recovery_agent)
                writer.write_boolean_value("enableBitLockerAfterRecoveryInformationToStore", @enable_bit_locker_after_recovery_information_to_store)
                writer.write_boolean_value("enableRecoveryInformationSaveToStore", @enable_recovery_information_save_to_store)
                writer.write_boolean_value("hideRecoveryOptions", @hide_recovery_options)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("recoveryInformationToStore", @recovery_information_to_store)
                writer.write_enum_value("recoveryKeyUsage", @recovery_key_usage)
                writer.write_enum_value("recoveryPasswordUsage", @recovery_password_usage)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
