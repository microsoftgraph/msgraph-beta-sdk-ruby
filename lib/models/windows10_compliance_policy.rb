require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows10CompliancePolicy < MicrosoftGraphBeta::Models::DeviceCompliancePolicy
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Require active firewall on Windows devices.
        @active_firewall_required
        ## 
        # Require any AntiSpyware solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        @anti_spyware_required
        ## 
        # Require any Antivirus solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        @antivirus_required
        ## 
        # Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
        @bit_locker_enabled
        ## 
        # Require devices to be reported as healthy by Windows Device Health Attestation.
        @code_integrity_enabled
        ## 
        # Require to consider SCCM Compliance state into consideration for Intune Compliance State.
        @configuration_manager_compliance_required
        ## 
        # Require Windows Defender Antimalware on Windows devices.
        @defender_enabled
        ## 
        # Require Windows Defender Antimalware minimum version on Windows devices.
        @defender_version
        ## 
        # Not yet documented
        @device_compliance_policy_script
        ## 
        # Require that devices have enabled device threat protection.
        @device_threat_protection_enabled
        ## 
        # Device threat protection levels for the Device Threat Protection API.
        @device_threat_protection_required_security_level
        ## 
        # Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
        @early_launch_anti_malware_driver_enabled
        ## 
        # Maximum Windows Phone version.
        @mobile_os_maximum_version
        ## 
        # Minimum Windows Phone version.
        @mobile_os_minimum_version
        ## 
        # Maximum Windows 10 version.
        @os_maximum_version
        ## 
        # Minimum Windows 10 version.
        @os_minimum_version
        ## 
        # Indicates whether or not to block simple password.
        @password_block_simple
        ## 
        # The password expiration in days.
        @password_expiration_days
        ## 
        # The number of character sets required in the password.
        @password_minimum_character_set_count
        ## 
        # The minimum password length.
        @password_minimum_length
        ## 
        # Minutes of inactivity before a password is required.
        @password_minutes_of_inactivity_before_lock
        ## 
        # The number of previous passwords to prevent re-use of.
        @password_previous_password_block_count
        ## 
        # Require a password to unlock Windows device.
        @password_required
        ## 
        # Require a password to unlock an idle device.
        @password_required_to_unlock_from_idle
        ## 
        # Possible values of required passwords.
        @password_required_type
        ## 
        # Require devices to be reported as healthy by Windows Device Health Attestation.
        @require_healthy_device_report
        ## 
        # Require Windows Defender Antimalware Real-Time Protection on Windows devices.
        @rtp_enabled
        ## 
        # Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
        @secure_boot_enabled
        ## 
        # Require Windows Defender Antimalware Signature to be up to date on Windows devices.
        @signature_out_of_date
        ## 
        # Require encryption on windows devices.
        @storage_require_encryption
        ## 
        # Require Trusted Platform Module(TPM) to be present.
        @tpm_required
        ## 
        # The valid operating system build ranges on Windows devices. This collection can contain a maximum of 10000 elements.
        @valid_operating_system_build_ranges
        ## 
        ## Gets the activeFirewallRequired property value. Require active firewall on Windows devices.
        ## @return a boolean
        ## 
        def active_firewall_required
            return @active_firewall_required
        end
        ## 
        ## Sets the activeFirewallRequired property value. Require active firewall on Windows devices.
        ## @param value Value to set for the active_firewall_required property.
        ## @return a void
        ## 
        def active_firewall_required=(value)
            @active_firewall_required = value
        end
        ## 
        ## Gets the antiSpywareRequired property value. Require any AntiSpyware solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        ## @return a boolean
        ## 
        def anti_spyware_required
            return @anti_spyware_required
        end
        ## 
        ## Sets the antiSpywareRequired property value. Require any AntiSpyware solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        ## @param value Value to set for the anti_spyware_required property.
        ## @return a void
        ## 
        def anti_spyware_required=(value)
            @anti_spyware_required = value
        end
        ## 
        ## Gets the antivirusRequired property value. Require any Antivirus solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        ## @return a boolean
        ## 
        def antivirus_required
            return @antivirus_required
        end
        ## 
        ## Sets the antivirusRequired property value. Require any Antivirus solution registered with Windows Decurity Center to be on and monitoring (e.g. Symantec, Windows Defender).
        ## @param value Value to set for the antivirus_required property.
        ## @return a void
        ## 
        def antivirus_required=(value)
            @antivirus_required = value
        end
        ## 
        ## Gets the bitLockerEnabled property value. Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
        ## @return a boolean
        ## 
        def bit_locker_enabled
            return @bit_locker_enabled
        end
        ## 
        ## Sets the bitLockerEnabled property value. Require devices to be reported healthy by Windows Device Health Attestation - bit locker is enabled
        ## @param value Value to set for the bit_locker_enabled property.
        ## @return a void
        ## 
        def bit_locker_enabled=(value)
            @bit_locker_enabled = value
        end
        ## 
        ## Gets the codeIntegrityEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation.
        ## @return a boolean
        ## 
        def code_integrity_enabled
            return @code_integrity_enabled
        end
        ## 
        ## Sets the codeIntegrityEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation.
        ## @param value Value to set for the code_integrity_enabled property.
        ## @return a void
        ## 
        def code_integrity_enabled=(value)
            @code_integrity_enabled = value
        end
        ## 
        ## Gets the configurationManagerComplianceRequired property value. Require to consider SCCM Compliance state into consideration for Intune Compliance State.
        ## @return a boolean
        ## 
        def configuration_manager_compliance_required
            return @configuration_manager_compliance_required
        end
        ## 
        ## Sets the configurationManagerComplianceRequired property value. Require to consider SCCM Compliance state into consideration for Intune Compliance State.
        ## @param value Value to set for the configuration_manager_compliance_required property.
        ## @return a void
        ## 
        def configuration_manager_compliance_required=(value)
            @configuration_manager_compliance_required = value
        end
        ## 
        ## Instantiates a new Windows10CompliancePolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows10CompliancePolicy"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows10_compliance_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows10CompliancePolicy.new
        end
        ## 
        ## Gets the defenderEnabled property value. Require Windows Defender Antimalware on Windows devices.
        ## @return a boolean
        ## 
        def defender_enabled
            return @defender_enabled
        end
        ## 
        ## Sets the defenderEnabled property value. Require Windows Defender Antimalware on Windows devices.
        ## @param value Value to set for the defender_enabled property.
        ## @return a void
        ## 
        def defender_enabled=(value)
            @defender_enabled = value
        end
        ## 
        ## Gets the defenderVersion property value. Require Windows Defender Antimalware minimum version on Windows devices.
        ## @return a string
        ## 
        def defender_version
            return @defender_version
        end
        ## 
        ## Sets the defenderVersion property value. Require Windows Defender Antimalware minimum version on Windows devices.
        ## @param value Value to set for the defender_version property.
        ## @return a void
        ## 
        def defender_version=(value)
            @defender_version = value
        end
        ## 
        ## Gets the deviceCompliancePolicyScript property value. Not yet documented
        ## @return a device_compliance_policy_script
        ## 
        def device_compliance_policy_script
            return @device_compliance_policy_script
        end
        ## 
        ## Sets the deviceCompliancePolicyScript property value. Not yet documented
        ## @param value Value to set for the device_compliance_policy_script property.
        ## @return a void
        ## 
        def device_compliance_policy_script=(value)
            @device_compliance_policy_script = value
        end
        ## 
        ## Gets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
        ## @return a boolean
        ## 
        def device_threat_protection_enabled
            return @device_threat_protection_enabled
        end
        ## 
        ## Sets the deviceThreatProtectionEnabled property value. Require that devices have enabled device threat protection.
        ## @param value Value to set for the device_threat_protection_enabled property.
        ## @return a void
        ## 
        def device_threat_protection_enabled=(value)
            @device_threat_protection_enabled = value
        end
        ## 
        ## Gets the deviceThreatProtectionRequiredSecurityLevel property value. Device threat protection levels for the Device Threat Protection API.
        ## @return a device_threat_protection_level
        ## 
        def device_threat_protection_required_security_level
            return @device_threat_protection_required_security_level
        end
        ## 
        ## Sets the deviceThreatProtectionRequiredSecurityLevel property value. Device threat protection levels for the Device Threat Protection API.
        ## @param value Value to set for the device_threat_protection_required_security_level property.
        ## @return a void
        ## 
        def device_threat_protection_required_security_level=(value)
            @device_threat_protection_required_security_level = value
        end
        ## 
        ## Gets the earlyLaunchAntiMalwareDriverEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
        ## @return a boolean
        ## 
        def early_launch_anti_malware_driver_enabled
            return @early_launch_anti_malware_driver_enabled
        end
        ## 
        ## Sets the earlyLaunchAntiMalwareDriverEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - early launch antimalware driver is enabled.
        ## @param value Value to set for the early_launch_anti_malware_driver_enabled property.
        ## @return a void
        ## 
        def early_launch_anti_malware_driver_enabled=(value)
            @early_launch_anti_malware_driver_enabled = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activeFirewallRequired" => lambda {|n| @active_firewall_required = n.get_boolean_value() },
                "antiSpywareRequired" => lambda {|n| @anti_spyware_required = n.get_boolean_value() },
                "antivirusRequired" => lambda {|n| @antivirus_required = n.get_boolean_value() },
                "bitLockerEnabled" => lambda {|n| @bit_locker_enabled = n.get_boolean_value() },
                "codeIntegrityEnabled" => lambda {|n| @code_integrity_enabled = n.get_boolean_value() },
                "configurationManagerComplianceRequired" => lambda {|n| @configuration_manager_compliance_required = n.get_boolean_value() },
                "defenderEnabled" => lambda {|n| @defender_enabled = n.get_boolean_value() },
                "defenderVersion" => lambda {|n| @defender_version = n.get_string_value() },
                "deviceCompliancePolicyScript" => lambda {|n| @device_compliance_policy_script = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicyScript.create_from_discriminator_value(pn) }) },
                "deviceThreatProtectionEnabled" => lambda {|n| @device_threat_protection_enabled = n.get_boolean_value() },
                "deviceThreatProtectionRequiredSecurityLevel" => lambda {|n| @device_threat_protection_required_security_level = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceThreatProtectionLevel) },
                "earlyLaunchAntiMalwareDriverEnabled" => lambda {|n| @early_launch_anti_malware_driver_enabled = n.get_boolean_value() },
                "mobileOsMaximumVersion" => lambda {|n| @mobile_os_maximum_version = n.get_string_value() },
                "mobileOsMinimumVersion" => lambda {|n| @mobile_os_minimum_version = n.get_string_value() },
                "osMaximumVersion" => lambda {|n| @os_maximum_version = n.get_string_value() },
                "osMinimumVersion" => lambda {|n| @os_minimum_version = n.get_string_value() },
                "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                "passwordRequiredToUnlockFromIdle" => lambda {|n| @password_required_to_unlock_from_idle = n.get_boolean_value() },
                "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::RequiredPasswordType) },
                "requireHealthyDeviceReport" => lambda {|n| @require_healthy_device_report = n.get_boolean_value() },
                "rtpEnabled" => lambda {|n| @rtp_enabled = n.get_boolean_value() },
                "secureBootEnabled" => lambda {|n| @secure_boot_enabled = n.get_boolean_value() },
                "signatureOutOfDate" => lambda {|n| @signature_out_of_date = n.get_boolean_value() },
                "storageRequireEncryption" => lambda {|n| @storage_require_encryption = n.get_boolean_value() },
                "tpmRequired" => lambda {|n| @tpm_required = n.get_boolean_value() },
                "validOperatingSystemBuildRanges" => lambda {|n| @valid_operating_system_build_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OperatingSystemVersionRange.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the mobileOsMaximumVersion property value. Maximum Windows Phone version.
        ## @return a string
        ## 
        def mobile_os_maximum_version
            return @mobile_os_maximum_version
        end
        ## 
        ## Sets the mobileOsMaximumVersion property value. Maximum Windows Phone version.
        ## @param value Value to set for the mobile_os_maximum_version property.
        ## @return a void
        ## 
        def mobile_os_maximum_version=(value)
            @mobile_os_maximum_version = value
        end
        ## 
        ## Gets the mobileOsMinimumVersion property value. Minimum Windows Phone version.
        ## @return a string
        ## 
        def mobile_os_minimum_version
            return @mobile_os_minimum_version
        end
        ## 
        ## Sets the mobileOsMinimumVersion property value. Minimum Windows Phone version.
        ## @param value Value to set for the mobile_os_minimum_version property.
        ## @return a void
        ## 
        def mobile_os_minimum_version=(value)
            @mobile_os_minimum_version = value
        end
        ## 
        ## Gets the osMaximumVersion property value. Maximum Windows 10 version.
        ## @return a string
        ## 
        def os_maximum_version
            return @os_maximum_version
        end
        ## 
        ## Sets the osMaximumVersion property value. Maximum Windows 10 version.
        ## @param value Value to set for the os_maximum_version property.
        ## @return a void
        ## 
        def os_maximum_version=(value)
            @os_maximum_version = value
        end
        ## 
        ## Gets the osMinimumVersion property value. Minimum Windows 10 version.
        ## @return a string
        ## 
        def os_minimum_version
            return @os_minimum_version
        end
        ## 
        ## Sets the osMinimumVersion property value. Minimum Windows 10 version.
        ## @param value Value to set for the os_minimum_version property.
        ## @return a void
        ## 
        def os_minimum_version=(value)
            @os_minimum_version = value
        end
        ## 
        ## Gets the passwordBlockSimple property value. Indicates whether or not to block simple password.
        ## @return a boolean
        ## 
        def password_block_simple
            return @password_block_simple
        end
        ## 
        ## Sets the passwordBlockSimple property value. Indicates whether or not to block simple password.
        ## @param value Value to set for the password_block_simple property.
        ## @return a void
        ## 
        def password_block_simple=(value)
            @password_block_simple = value
        end
        ## 
        ## Gets the passwordExpirationDays property value. The password expiration in days.
        ## @return a integer
        ## 
        def password_expiration_days
            return @password_expiration_days
        end
        ## 
        ## Sets the passwordExpirationDays property value. The password expiration in days.
        ## @param value Value to set for the password_expiration_days property.
        ## @return a void
        ## 
        def password_expiration_days=(value)
            @password_expiration_days = value
        end
        ## 
        ## Gets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
        ## @return a integer
        ## 
        def password_minimum_character_set_count
            return @password_minimum_character_set_count
        end
        ## 
        ## Sets the passwordMinimumCharacterSetCount property value. The number of character sets required in the password.
        ## @param value Value to set for the password_minimum_character_set_count property.
        ## @return a void
        ## 
        def password_minimum_character_set_count=(value)
            @password_minimum_character_set_count = value
        end
        ## 
        ## Gets the passwordMinimumLength property value. The minimum password length.
        ## @return a integer
        ## 
        def password_minimum_length
            return @password_minimum_length
        end
        ## 
        ## Sets the passwordMinimumLength property value. The minimum password length.
        ## @param value Value to set for the password_minimum_length property.
        ## @return a void
        ## 
        def password_minimum_length=(value)
            @password_minimum_length = value
        end
        ## 
        ## Gets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
        ## @return a integer
        ## 
        def password_minutes_of_inactivity_before_lock
            return @password_minutes_of_inactivity_before_lock
        end
        ## 
        ## Sets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity before a password is required.
        ## @param value Value to set for the password_minutes_of_inactivity_before_lock property.
        ## @return a void
        ## 
        def password_minutes_of_inactivity_before_lock=(value)
            @password_minutes_of_inactivity_before_lock = value
        end
        ## 
        ## Gets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of.
        ## @return a integer
        ## 
        def password_previous_password_block_count
            return @password_previous_password_block_count
        end
        ## 
        ## Sets the passwordPreviousPasswordBlockCount property value. The number of previous passwords to prevent re-use of.
        ## @param value Value to set for the password_previous_password_block_count property.
        ## @return a void
        ## 
        def password_previous_password_block_count=(value)
            @password_previous_password_block_count = value
        end
        ## 
        ## Gets the passwordRequired property value. Require a password to unlock Windows device.
        ## @return a boolean
        ## 
        def password_required
            return @password_required
        end
        ## 
        ## Sets the passwordRequired property value. Require a password to unlock Windows device.
        ## @param value Value to set for the password_required property.
        ## @return a void
        ## 
        def password_required=(value)
            @password_required = value
        end
        ## 
        ## Gets the passwordRequiredToUnlockFromIdle property value. Require a password to unlock an idle device.
        ## @return a boolean
        ## 
        def password_required_to_unlock_from_idle
            return @password_required_to_unlock_from_idle
        end
        ## 
        ## Sets the passwordRequiredToUnlockFromIdle property value. Require a password to unlock an idle device.
        ## @param value Value to set for the password_required_to_unlock_from_idle property.
        ## @return a void
        ## 
        def password_required_to_unlock_from_idle=(value)
            @password_required_to_unlock_from_idle = value
        end
        ## 
        ## Gets the passwordRequiredType property value. Possible values of required passwords.
        ## @return a required_password_type
        ## 
        def password_required_type
            return @password_required_type
        end
        ## 
        ## Sets the passwordRequiredType property value. Possible values of required passwords.
        ## @param value Value to set for the password_required_type property.
        ## @return a void
        ## 
        def password_required_type=(value)
            @password_required_type = value
        end
        ## 
        ## Gets the requireHealthyDeviceReport property value. Require devices to be reported as healthy by Windows Device Health Attestation.
        ## @return a boolean
        ## 
        def require_healthy_device_report
            return @require_healthy_device_report
        end
        ## 
        ## Sets the requireHealthyDeviceReport property value. Require devices to be reported as healthy by Windows Device Health Attestation.
        ## @param value Value to set for the require_healthy_device_report property.
        ## @return a void
        ## 
        def require_healthy_device_report=(value)
            @require_healthy_device_report = value
        end
        ## 
        ## Gets the rtpEnabled property value. Require Windows Defender Antimalware Real-Time Protection on Windows devices.
        ## @return a boolean
        ## 
        def rtp_enabled
            return @rtp_enabled
        end
        ## 
        ## Sets the rtpEnabled property value. Require Windows Defender Antimalware Real-Time Protection on Windows devices.
        ## @param value Value to set for the rtp_enabled property.
        ## @return a void
        ## 
        def rtp_enabled=(value)
            @rtp_enabled = value
        end
        ## 
        ## Gets the secureBootEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
        ## @return a boolean
        ## 
        def secure_boot_enabled
            return @secure_boot_enabled
        end
        ## 
        ## Sets the secureBootEnabled property value. Require devices to be reported as healthy by Windows Device Health Attestation - secure boot is enabled.
        ## @param value Value to set for the secure_boot_enabled property.
        ## @return a void
        ## 
        def secure_boot_enabled=(value)
            @secure_boot_enabled = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("activeFirewallRequired", @active_firewall_required)
            writer.write_boolean_value("antiSpywareRequired", @anti_spyware_required)
            writer.write_boolean_value("antivirusRequired", @antivirus_required)
            writer.write_boolean_value("bitLockerEnabled", @bit_locker_enabled)
            writer.write_boolean_value("codeIntegrityEnabled", @code_integrity_enabled)
            writer.write_boolean_value("configurationManagerComplianceRequired", @configuration_manager_compliance_required)
            writer.write_boolean_value("defenderEnabled", @defender_enabled)
            writer.write_string_value("defenderVersion", @defender_version)
            writer.write_object_value("deviceCompliancePolicyScript", @device_compliance_policy_script)
            writer.write_boolean_value("deviceThreatProtectionEnabled", @device_threat_protection_enabled)
            writer.write_enum_value("deviceThreatProtectionRequiredSecurityLevel", @device_threat_protection_required_security_level)
            writer.write_boolean_value("earlyLaunchAntiMalwareDriverEnabled", @early_launch_anti_malware_driver_enabled)
            writer.write_string_value("mobileOsMaximumVersion", @mobile_os_maximum_version)
            writer.write_string_value("mobileOsMinimumVersion", @mobile_os_minimum_version)
            writer.write_string_value("osMaximumVersion", @os_maximum_version)
            writer.write_string_value("osMinimumVersion", @os_minimum_version)
            writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
            writer.write_number_value("passwordExpirationDays", @password_expiration_days)
            writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
            writer.write_number_value("passwordMinimumLength", @password_minimum_length)
            writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
            writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
            writer.write_boolean_value("passwordRequired", @password_required)
            writer.write_boolean_value("passwordRequiredToUnlockFromIdle", @password_required_to_unlock_from_idle)
            writer.write_enum_value("passwordRequiredType", @password_required_type)
            writer.write_boolean_value("requireHealthyDeviceReport", @require_healthy_device_report)
            writer.write_boolean_value("rtpEnabled", @rtp_enabled)
            writer.write_boolean_value("secureBootEnabled", @secure_boot_enabled)
            writer.write_boolean_value("signatureOutOfDate", @signature_out_of_date)
            writer.write_boolean_value("storageRequireEncryption", @storage_require_encryption)
            writer.write_boolean_value("tpmRequired", @tpm_required)
            writer.write_collection_of_object_values("validOperatingSystemBuildRanges", @valid_operating_system_build_ranges)
        end
        ## 
        ## Gets the signatureOutOfDate property value. Require Windows Defender Antimalware Signature to be up to date on Windows devices.
        ## @return a boolean
        ## 
        def signature_out_of_date
            return @signature_out_of_date
        end
        ## 
        ## Sets the signatureOutOfDate property value. Require Windows Defender Antimalware Signature to be up to date on Windows devices.
        ## @param value Value to set for the signature_out_of_date property.
        ## @return a void
        ## 
        def signature_out_of_date=(value)
            @signature_out_of_date = value
        end
        ## 
        ## Gets the storageRequireEncryption property value. Require encryption on windows devices.
        ## @return a boolean
        ## 
        def storage_require_encryption
            return @storage_require_encryption
        end
        ## 
        ## Sets the storageRequireEncryption property value. Require encryption on windows devices.
        ## @param value Value to set for the storage_require_encryption property.
        ## @return a void
        ## 
        def storage_require_encryption=(value)
            @storage_require_encryption = value
        end
        ## 
        ## Gets the tpmRequired property value. Require Trusted Platform Module(TPM) to be present.
        ## @return a boolean
        ## 
        def tpm_required
            return @tpm_required
        end
        ## 
        ## Sets the tpmRequired property value. Require Trusted Platform Module(TPM) to be present.
        ## @param value Value to set for the tpm_required property.
        ## @return a void
        ## 
        def tpm_required=(value)
            @tpm_required = value
        end
        ## 
        ## Gets the validOperatingSystemBuildRanges property value. The valid operating system build ranges on Windows devices. This collection can contain a maximum of 10000 elements.
        ## @return a operating_system_version_range
        ## 
        def valid_operating_system_build_ranges
            return @valid_operating_system_build_ranges
        end
        ## 
        ## Sets the validOperatingSystemBuildRanges property value. The valid operating system build ranges on Windows devices. This collection can contain a maximum of 10000 elements.
        ## @param value Value to set for the valid_operating_system_build_ranges property.
        ## @return a void
        ## 
        def valid_operating_system_build_ranges=(value)
            @valid_operating_system_build_ranges = value
        end
    end
end
