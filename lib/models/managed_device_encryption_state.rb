require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Encryption report per device
        class ManagedDeviceEncryptionState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Advanced BitLocker State. Possible values are: success, noUserConsent, osVolumeUnprotected, osVolumeTpmRequired, osVolumeTpmOnlyRequired, osVolumeTpmPinRequired, osVolumeTpmStartupKeyRequired, osVolumeTpmPinStartupKeyRequired, osVolumeEncryptionMethodMismatch, recoveryKeyBackupFailed, fixedDriveNotEncrypted, fixedDriveEncryptionMethodMismatch, loggedOnUserNonAdmin, windowsRecoveryEnvironmentNotConfigured, tpmNotAvailable, tpmNotReady, networkError.
            @advanced_bit_locker_states
            ## 
            # Device name
            @device_name
            ## 
            # Device type.
            @device_type
            ## 
            # The encryptionPolicySettingState property
            @encryption_policy_setting_state
            ## 
            # Encryption readiness state
            @encryption_readiness_state
            ## 
            # Encryption state
            @encryption_state
            ## 
            # FileVault State. Possible values are: success, driveEncryptedByUser, userDeferredEncryption, escrowNotEnabled.
            @file_vault_states
            ## 
            # Operating system version of the device
            @os_version
            ## 
            # Policy Details
            @policy_details
            ## 
            # Device TPM Version
            @tpm_specification_version
            ## 
            # User name
            @user_principal_name
            ## 
            ## Gets the advancedBitLockerStates property value. Advanced BitLocker State. Possible values are: success, noUserConsent, osVolumeUnprotected, osVolumeTpmRequired, osVolumeTpmOnlyRequired, osVolumeTpmPinRequired, osVolumeTpmStartupKeyRequired, osVolumeTpmPinStartupKeyRequired, osVolumeEncryptionMethodMismatch, recoveryKeyBackupFailed, fixedDriveNotEncrypted, fixedDriveEncryptionMethodMismatch, loggedOnUserNonAdmin, windowsRecoveryEnvironmentNotConfigured, tpmNotAvailable, tpmNotReady, networkError.
            ## @return a advanced_bit_locker_state
            ## 
            def advanced_bit_locker_states
                return @advanced_bit_locker_states
            end
            ## 
            ## Sets the advancedBitLockerStates property value. Advanced BitLocker State. Possible values are: success, noUserConsent, osVolumeUnprotected, osVolumeTpmRequired, osVolumeTpmOnlyRequired, osVolumeTpmPinRequired, osVolumeTpmStartupKeyRequired, osVolumeTpmPinStartupKeyRequired, osVolumeEncryptionMethodMismatch, recoveryKeyBackupFailed, fixedDriveNotEncrypted, fixedDriveEncryptionMethodMismatch, loggedOnUserNonAdmin, windowsRecoveryEnvironmentNotConfigured, tpmNotAvailable, tpmNotReady, networkError.
            ## @param value Value to set for the advancedBitLockerStates property.
            ## @return a void
            ## 
            def advanced_bit_locker_states=(value)
                @advanced_bit_locker_states = value
            end
            ## 
            ## Instantiates a new managedDeviceEncryptionState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_device_encryption_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedDeviceEncryptionState.new
            end
            ## 
            ## Gets the deviceName property value. Device name
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Device name
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the deviceType property value. Device type.
            ## @return a device_types
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. Device type.
            ## @param value Value to set for the deviceType property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## Gets the encryptionPolicySettingState property value. The encryptionPolicySettingState property
            ## @return a compliance_status
            ## 
            def encryption_policy_setting_state
                return @encryption_policy_setting_state
            end
            ## 
            ## Sets the encryptionPolicySettingState property value. The encryptionPolicySettingState property
            ## @param value Value to set for the encryptionPolicySettingState property.
            ## @return a void
            ## 
            def encryption_policy_setting_state=(value)
                @encryption_policy_setting_state = value
            end
            ## 
            ## Gets the encryptionReadinessState property value. Encryption readiness state
            ## @return a encryption_readiness_state
            ## 
            def encryption_readiness_state
                return @encryption_readiness_state
            end
            ## 
            ## Sets the encryptionReadinessState property value. Encryption readiness state
            ## @param value Value to set for the encryptionReadinessState property.
            ## @return a void
            ## 
            def encryption_readiness_state=(value)
                @encryption_readiness_state = value
            end
            ## 
            ## Gets the encryptionState property value. Encryption state
            ## @return a encryption_state
            ## 
            def encryption_state
                return @encryption_state
            end
            ## 
            ## Sets the encryptionState property value. Encryption state
            ## @param value Value to set for the encryptionState property.
            ## @return a void
            ## 
            def encryption_state=(value)
                @encryption_state = value
            end
            ## 
            ## Gets the fileVaultStates property value. FileVault State. Possible values are: success, driveEncryptedByUser, userDeferredEncryption, escrowNotEnabled.
            ## @return a file_vault_state
            ## 
            def file_vault_states
                return @file_vault_states
            end
            ## 
            ## Sets the fileVaultStates property value. FileVault State. Possible values are: success, driveEncryptedByUser, userDeferredEncryption, escrowNotEnabled.
            ## @param value Value to set for the fileVaultStates property.
            ## @return a void
            ## 
            def file_vault_states=(value)
                @file_vault_states = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "advancedBitLockerStates" => lambda {|n| @advanced_bit_locker_states = n.get_enum_value(MicrosoftGraphBeta::Models::AdvancedBitLockerState) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceTypes) },
                    "encryptionPolicySettingState" => lambda {|n| @encryption_policy_setting_state = n.get_enum_value(MicrosoftGraphBeta::Models::ComplianceStatus) },
                    "encryptionReadinessState" => lambda {|n| @encryption_readiness_state = n.get_enum_value(MicrosoftGraphBeta::Models::EncryptionReadinessState) },
                    "encryptionState" => lambda {|n| @encryption_state = n.get_enum_value(MicrosoftGraphBeta::Models::EncryptionState) },
                    "fileVaultStates" => lambda {|n| @file_vault_states = n.get_enum_value(MicrosoftGraphBeta::Models::FileVaultState) },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "policyDetails" => lambda {|n| @policy_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EncryptionReportPolicyDetails.create_from_discriminator_value(pn) }) },
                    "tpmSpecificationVersion" => lambda {|n| @tpm_specification_version = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the osVersion property value. Operating system version of the device
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Operating system version of the device
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the policyDetails property value. Policy Details
            ## @return a encryption_report_policy_details
            ## 
            def policy_details
                return @policy_details
            end
            ## 
            ## Sets the policyDetails property value. Policy Details
            ## @param value Value to set for the policyDetails property.
            ## @return a void
            ## 
            def policy_details=(value)
                @policy_details = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("advancedBitLockerStates", @advanced_bit_locker_states)
                writer.write_string_value("deviceName", @device_name)
                writer.write_enum_value("deviceType", @device_type)
                writer.write_enum_value("encryptionPolicySettingState", @encryption_policy_setting_state)
                writer.write_enum_value("encryptionReadinessState", @encryption_readiness_state)
                writer.write_enum_value("encryptionState", @encryption_state)
                writer.write_enum_value("fileVaultStates", @file_vault_states)
                writer.write_string_value("osVersion", @os_version)
                writer.write_collection_of_object_values("policyDetails", @policy_details)
                writer.write_string_value("tpmSpecificationVersion", @tpm_specification_version)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the tpmSpecificationVersion property value. Device TPM Version
            ## @return a string
            ## 
            def tpm_specification_version
                return @tpm_specification_version
            end
            ## 
            ## Sets the tpmSpecificationVersion property value. Device TPM Version
            ## @param value Value to set for the tpmSpecificationVersion property.
            ## @return a void
            ## 
            def tpm_specification_version=(value)
                @tpm_specification_version = value
            end
            ## 
            ## Gets the userPrincipalName property value. User name
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User name
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
