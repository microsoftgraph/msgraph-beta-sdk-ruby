require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Hardware information of a given device.
    class HardwareInformation
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The number of charge cycles the device’s current battery has gone through. Valid values 0 to 2147483647
        @battery_charge_cycles
        ## 
        # The device’s current battery’s health percentage. Valid values 0 to 100
        @battery_health_percentage
        ## 
        # The battery level, between 0.0 and 100, or null if the battery level cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 5.0 and later, and is available only when Device Information access right is obtained. Valid values 0 to 100
        @battery_level_percentage
        ## 
        # The serial number of the device’s current battery
        @battery_serial_number
        ## 
        # Cellular technology of the device
        @cellular_technology
        ## 
        # Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string.
        @device_full_qualified_domain_name
        ## 
        # The deviceGuardLocalSystemAuthorityCredentialGuardState property
        @device_guard_local_system_authority_credential_guard_state
        ## 
        # The deviceGuardVirtualizationBasedSecurityHardwareRequirementState property
        @device_guard_virtualization_based_security_hardware_requirement_state
        ## 
        # The deviceGuardVirtualizationBasedSecurityState property
        @device_guard_virtualization_based_security_state
        ## 
        # A standard error code indicating the last error, or 0 indicating no error (default). The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing. Valid values 0 to 2147483647
        @device_licensing_last_error_code
        ## 
        # Error text message as a descripition for deviceLicensingLastErrorCode. The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing.
        @device_licensing_last_error_description
        ## 
        # Indicates the device licensing status after Windows device based subscription has been enabled.
        @device_licensing_status
        ## 
        # eSIM identifier
        @esim_identifier
        ## 
        # Free storage space of the device.
        @free_storage_space
        ## 
        # IMEI
        @imei
        ## 
        # IPAddressV4
        @ip_address_v4
        ## 
        # Encryption status of the device
        @is_encrypted
        ## 
        # Shared iPad
        @is_shared_device
        ## 
        # Supervised mode of the device
        @is_supervised
        ## 
        # Manufacturer of the device
        @manufacturer
        ## 
        # MEID
        @meid
        ## 
        # Model of the device
        @model
        ## 
        # The OdataType property
        @odata_type
        ## 
        # String that specifies the OS edition.
        @operating_system_edition
        ## 
        # Operating system language of the device
        @operating_system_language
        ## 
        # Int that specifies the Windows Operating System ProductType. More details here https://go.microsoft.com/fwlink/?linkid=2126950. Valid values 0 to 2147483647
        @operating_system_product_type
        ## 
        # Operating System Build Number on Android device
        @os_build_number
        ## 
        # Phone number of the device
        @phone_number
        ## 
        # The product name, e.g. iPad8,12 etc. The update frequency of this property is weekly. Note this property is currently supported only on iOS/MacOS devices, and is available only when Device Information access right is obtained.
        @product_name
        ## 
        # The number of users currently on this device, or null (default) if the value of this property cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 13.4 and later, and is available only when Device Information access right is obtained. Valid values 0 to 2147483647
        @resident_users_count
        ## 
        # Serial number.
        @serial_number
        ## 
        # All users on the shared Apple device
        @shared_device_cached_users
        ## 
        # SubnetAddress
        @subnet_address
        ## 
        # Subscriber carrier of the device
        @subscriber_carrier
        ## 
        # BIOS version as reported by SMBIOS
        @system_management_b_i_o_s_version
        ## 
        # Total storage space of the device.
        @total_storage_space
        ## 
        # The identifying information that uniquely names the TPM manufacturer
        @tpm_manufacturer
        ## 
        # String that specifies the specification version.
        @tpm_specification_version
        ## 
        # The version of the TPM, as specified by the manufacturer
        @tpm_version
        ## 
        # WiFi MAC address of the device
        @wifi_mac
        ## 
        # A list of wired IPv4 addresses. The update frequency (the maximum delay for the change of property value to be synchronized from the device to the cloud storage) of this property is daily. Note this property is currently supported only on devices running on Windows.
        @wired_i_pv4_addresses
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
        ## Gets the batteryChargeCycles property value. The number of charge cycles the device’s current battery has gone through. Valid values 0 to 2147483647
        ## @return a integer
        ## 
        def battery_charge_cycles
            return @battery_charge_cycles
        end
        ## 
        ## Sets the batteryChargeCycles property value. The number of charge cycles the device’s current battery has gone through. Valid values 0 to 2147483647
        ## @param value Value to set for the batteryChargeCycles property.
        ## @return a void
        ## 
        def battery_charge_cycles=(value)
            @battery_charge_cycles = value
        end
        ## 
        ## Gets the batteryHealthPercentage property value. The device’s current battery’s health percentage. Valid values 0 to 100
        ## @return a integer
        ## 
        def battery_health_percentage
            return @battery_health_percentage
        end
        ## 
        ## Sets the batteryHealthPercentage property value. The device’s current battery’s health percentage. Valid values 0 to 100
        ## @param value Value to set for the batteryHealthPercentage property.
        ## @return a void
        ## 
        def battery_health_percentage=(value)
            @battery_health_percentage = value
        end
        ## 
        ## Gets the batteryLevelPercentage property value. The battery level, between 0.0 and 100, or null if the battery level cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 5.0 and later, and is available only when Device Information access right is obtained. Valid values 0 to 100
        ## @return a double
        ## 
        def battery_level_percentage
            return @battery_level_percentage
        end
        ## 
        ## Sets the batteryLevelPercentage property value. The battery level, between 0.0 and 100, or null if the battery level cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 5.0 and later, and is available only when Device Information access right is obtained. Valid values 0 to 100
        ## @param value Value to set for the batteryLevelPercentage property.
        ## @return a void
        ## 
        def battery_level_percentage=(value)
            @battery_level_percentage = value
        end
        ## 
        ## Gets the batterySerialNumber property value. The serial number of the device’s current battery
        ## @return a string
        ## 
        def battery_serial_number
            return @battery_serial_number
        end
        ## 
        ## Sets the batterySerialNumber property value. The serial number of the device’s current battery
        ## @param value Value to set for the batterySerialNumber property.
        ## @return a void
        ## 
        def battery_serial_number=(value)
            @battery_serial_number = value
        end
        ## 
        ## Gets the cellularTechnology property value. Cellular technology of the device
        ## @return a string
        ## 
        def cellular_technology
            return @cellular_technology
        end
        ## 
        ## Sets the cellularTechnology property value. Cellular technology of the device
        ## @param value Value to set for the cellularTechnology property.
        ## @return a void
        ## 
        def cellular_technology=(value)
            @cellular_technology = value
        end
        ## 
        ## Instantiates a new hardwareInformation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a hardware_information
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return HardwareInformation.new
        end
        ## 
        ## Gets the deviceFullQualifiedDomainName property value. Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string.
        ## @return a string
        ## 
        def device_full_qualified_domain_name
            return @device_full_qualified_domain_name
        end
        ## 
        ## Sets the deviceFullQualifiedDomainName property value. Returns the fully qualified domain name of the device (if any). If the device is not domain-joined, it returns an empty string.
        ## @param value Value to set for the deviceFullQualifiedDomainName property.
        ## @return a void
        ## 
        def device_full_qualified_domain_name=(value)
            @device_full_qualified_domain_name = value
        end
        ## 
        ## Gets the deviceGuardLocalSystemAuthorityCredentialGuardState property value. The deviceGuardLocalSystemAuthorityCredentialGuardState property
        ## @return a device_guard_local_system_authority_credential_guard_state
        ## 
        def device_guard_local_system_authority_credential_guard_state
            return @device_guard_local_system_authority_credential_guard_state
        end
        ## 
        ## Sets the deviceGuardLocalSystemAuthorityCredentialGuardState property value. The deviceGuardLocalSystemAuthorityCredentialGuardState property
        ## @param value Value to set for the deviceGuardLocalSystemAuthorityCredentialGuardState property.
        ## @return a void
        ## 
        def device_guard_local_system_authority_credential_guard_state=(value)
            @device_guard_local_system_authority_credential_guard_state = value
        end
        ## 
        ## Gets the deviceGuardVirtualizationBasedSecurityHardwareRequirementState property value. The deviceGuardVirtualizationBasedSecurityHardwareRequirementState property
        ## @return a device_guard_virtualization_based_security_hardware_requirement_state
        ## 
        def device_guard_virtualization_based_security_hardware_requirement_state
            return @device_guard_virtualization_based_security_hardware_requirement_state
        end
        ## 
        ## Sets the deviceGuardVirtualizationBasedSecurityHardwareRequirementState property value. The deviceGuardVirtualizationBasedSecurityHardwareRequirementState property
        ## @param value Value to set for the deviceGuardVirtualizationBasedSecurityHardwareRequirementState property.
        ## @return a void
        ## 
        def device_guard_virtualization_based_security_hardware_requirement_state=(value)
            @device_guard_virtualization_based_security_hardware_requirement_state = value
        end
        ## 
        ## Gets the deviceGuardVirtualizationBasedSecurityState property value. The deviceGuardVirtualizationBasedSecurityState property
        ## @return a device_guard_virtualization_based_security_state
        ## 
        def device_guard_virtualization_based_security_state
            return @device_guard_virtualization_based_security_state
        end
        ## 
        ## Sets the deviceGuardVirtualizationBasedSecurityState property value. The deviceGuardVirtualizationBasedSecurityState property
        ## @param value Value to set for the deviceGuardVirtualizationBasedSecurityState property.
        ## @return a void
        ## 
        def device_guard_virtualization_based_security_state=(value)
            @device_guard_virtualization_based_security_state = value
        end
        ## 
        ## Gets the deviceLicensingLastErrorCode property value. A standard error code indicating the last error, or 0 indicating no error (default). The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing. Valid values 0 to 2147483647
        ## @return a integer
        ## 
        def device_licensing_last_error_code
            return @device_licensing_last_error_code
        end
        ## 
        ## Sets the deviceLicensingLastErrorCode property value. A standard error code indicating the last error, or 0 indicating no error (default). The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing. Valid values 0 to 2147483647
        ## @param value Value to set for the deviceLicensingLastErrorCode property.
        ## @return a void
        ## 
        def device_licensing_last_error_code=(value)
            @device_licensing_last_error_code = value
        end
        ## 
        ## Gets the deviceLicensingLastErrorDescription property value. Error text message as a descripition for deviceLicensingLastErrorCode. The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing.
        ## @return a string
        ## 
        def device_licensing_last_error_description
            return @device_licensing_last_error_description
        end
        ## 
        ## Sets the deviceLicensingLastErrorDescription property value. Error text message as a descripition for deviceLicensingLastErrorCode. The update frequency of this property is daily. Note this property is currently supported only for Windows based Device based subscription licensing.
        ## @param value Value to set for the deviceLicensingLastErrorDescription property.
        ## @return a void
        ## 
        def device_licensing_last_error_description=(value)
            @device_licensing_last_error_description = value
        end
        ## 
        ## Gets the deviceLicensingStatus property value. Indicates the device licensing status after Windows device based subscription has been enabled.
        ## @return a device_licensing_status
        ## 
        def device_licensing_status
            return @device_licensing_status
        end
        ## 
        ## Sets the deviceLicensingStatus property value. Indicates the device licensing status after Windows device based subscription has been enabled.
        ## @param value Value to set for the deviceLicensingStatus property.
        ## @return a void
        ## 
        def device_licensing_status=(value)
            @device_licensing_status = value
        end
        ## 
        ## Gets the esimIdentifier property value. eSIM identifier
        ## @return a string
        ## 
        def esim_identifier
            return @esim_identifier
        end
        ## 
        ## Sets the esimIdentifier property value. eSIM identifier
        ## @param value Value to set for the esimIdentifier property.
        ## @return a void
        ## 
        def esim_identifier=(value)
            @esim_identifier = value
        end
        ## 
        ## Gets the freeStorageSpace property value. Free storage space of the device.
        ## @return a int64
        ## 
        def free_storage_space
            return @free_storage_space
        end
        ## 
        ## Sets the freeStorageSpace property value. Free storage space of the device.
        ## @param value Value to set for the freeStorageSpace property.
        ## @return a void
        ## 
        def free_storage_space=(value)
            @free_storage_space = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "batteryChargeCycles" => lambda {|n| @battery_charge_cycles = n.get_number_value() },
                "batteryHealthPercentage" => lambda {|n| @battery_health_percentage = n.get_number_value() },
                "batteryLevelPercentage" => lambda {|n| @battery_level_percentage = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "batterySerialNumber" => lambda {|n| @battery_serial_number = n.get_string_value() },
                "cellularTechnology" => lambda {|n| @cellular_technology = n.get_string_value() },
                "deviceFullQualifiedDomainName" => lambda {|n| @device_full_qualified_domain_name = n.get_string_value() },
                "deviceGuardLocalSystemAuthorityCredentialGuardState" => lambda {|n| @device_guard_local_system_authority_credential_guard_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceGuardLocalSystemAuthorityCredentialGuardState) },
                "deviceGuardVirtualizationBasedSecurityHardwareRequirementState" => lambda {|n| @device_guard_virtualization_based_security_hardware_requirement_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceGuardVirtualizationBasedSecurityHardwareRequirementState) },
                "deviceGuardVirtualizationBasedSecurityState" => lambda {|n| @device_guard_virtualization_based_security_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceGuardVirtualizationBasedSecurityState) },
                "deviceLicensingLastErrorCode" => lambda {|n| @device_licensing_last_error_code = n.get_number_value() },
                "deviceLicensingLastErrorDescription" => lambda {|n| @device_licensing_last_error_description = n.get_string_value() },
                "deviceLicensingStatus" => lambda {|n| @device_licensing_status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceLicensingStatus) },
                "esimIdentifier" => lambda {|n| @esim_identifier = n.get_string_value() },
                "freeStorageSpace" => lambda {|n| @free_storage_space = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "imei" => lambda {|n| @imei = n.get_string_value() },
                "ipAddressV4" => lambda {|n| @ip_address_v4 = n.get_string_value() },
                "isEncrypted" => lambda {|n| @is_encrypted = n.get_boolean_value() },
                "isSharedDevice" => lambda {|n| @is_shared_device = n.get_boolean_value() },
                "isSupervised" => lambda {|n| @is_supervised = n.get_boolean_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "meid" => lambda {|n| @meid = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "operatingSystemEdition" => lambda {|n| @operating_system_edition = n.get_string_value() },
                "operatingSystemLanguage" => lambda {|n| @operating_system_language = n.get_string_value() },
                "operatingSystemProductType" => lambda {|n| @operating_system_product_type = n.get_number_value() },
                "osBuildNumber" => lambda {|n| @os_build_number = n.get_string_value() },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                "productName" => lambda {|n| @product_name = n.get_string_value() },
                "residentUsersCount" => lambda {|n| @resident_users_count = n.get_number_value() },
                "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                "sharedDeviceCachedUsers" => lambda {|n| @shared_device_cached_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SharedAppleDeviceUser.create_from_discriminator_value(pn) }) },
                "subnetAddress" => lambda {|n| @subnet_address = n.get_string_value() },
                "subscriberCarrier" => lambda {|n| @subscriber_carrier = n.get_string_value() },
                "systemManagementBIOSVersion" => lambda {|n| @system_management_b_i_o_s_version = n.get_string_value() },
                "totalStorageSpace" => lambda {|n| @total_storage_space = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "tpmManufacturer" => lambda {|n| @tpm_manufacturer = n.get_string_value() },
                "tpmSpecificationVersion" => lambda {|n| @tpm_specification_version = n.get_string_value() },
                "tpmVersion" => lambda {|n| @tpm_version = n.get_string_value() },
                "wifiMac" => lambda {|n| @wifi_mac = n.get_string_value() },
                "wiredIPv4Addresses" => lambda {|n| @wired_i_pv4_addresses = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the imei property value. IMEI
        ## @return a string
        ## 
        def imei
            return @imei
        end
        ## 
        ## Sets the imei property value. IMEI
        ## @param value Value to set for the imei property.
        ## @return a void
        ## 
        def imei=(value)
            @imei = value
        end
        ## 
        ## Gets the ipAddressV4 property value. IPAddressV4
        ## @return a string
        ## 
        def ip_address_v4
            return @ip_address_v4
        end
        ## 
        ## Sets the ipAddressV4 property value. IPAddressV4
        ## @param value Value to set for the ipAddressV4 property.
        ## @return a void
        ## 
        def ip_address_v4=(value)
            @ip_address_v4 = value
        end
        ## 
        ## Gets the isEncrypted property value. Encryption status of the device
        ## @return a boolean
        ## 
        def is_encrypted
            return @is_encrypted
        end
        ## 
        ## Sets the isEncrypted property value. Encryption status of the device
        ## @param value Value to set for the isEncrypted property.
        ## @return a void
        ## 
        def is_encrypted=(value)
            @is_encrypted = value
        end
        ## 
        ## Gets the isSharedDevice property value. Shared iPad
        ## @return a boolean
        ## 
        def is_shared_device
            return @is_shared_device
        end
        ## 
        ## Sets the isSharedDevice property value. Shared iPad
        ## @param value Value to set for the isSharedDevice property.
        ## @return a void
        ## 
        def is_shared_device=(value)
            @is_shared_device = value
        end
        ## 
        ## Gets the isSupervised property value. Supervised mode of the device
        ## @return a boolean
        ## 
        def is_supervised
            return @is_supervised
        end
        ## 
        ## Sets the isSupervised property value. Supervised mode of the device
        ## @param value Value to set for the isSupervised property.
        ## @return a void
        ## 
        def is_supervised=(value)
            @is_supervised = value
        end
        ## 
        ## Gets the manufacturer property value. Manufacturer of the device
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. Manufacturer of the device
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the meid property value. MEID
        ## @return a string
        ## 
        def meid
            return @meid
        end
        ## 
        ## Sets the meid property value. MEID
        ## @param value Value to set for the meid property.
        ## @return a void
        ## 
        def meid=(value)
            @meid = value
        end
        ## 
        ## Gets the model property value. Model of the device
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. Model of the device
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the operatingSystemEdition property value. String that specifies the OS edition.
        ## @return a string
        ## 
        def operating_system_edition
            return @operating_system_edition
        end
        ## 
        ## Sets the operatingSystemEdition property value. String that specifies the OS edition.
        ## @param value Value to set for the operatingSystemEdition property.
        ## @return a void
        ## 
        def operating_system_edition=(value)
            @operating_system_edition = value
        end
        ## 
        ## Gets the operatingSystemLanguage property value. Operating system language of the device
        ## @return a string
        ## 
        def operating_system_language
            return @operating_system_language
        end
        ## 
        ## Sets the operatingSystemLanguage property value. Operating system language of the device
        ## @param value Value to set for the operatingSystemLanguage property.
        ## @return a void
        ## 
        def operating_system_language=(value)
            @operating_system_language = value
        end
        ## 
        ## Gets the operatingSystemProductType property value. Int that specifies the Windows Operating System ProductType. More details here https://go.microsoft.com/fwlink/?linkid=2126950. Valid values 0 to 2147483647
        ## @return a integer
        ## 
        def operating_system_product_type
            return @operating_system_product_type
        end
        ## 
        ## Sets the operatingSystemProductType property value. Int that specifies the Windows Operating System ProductType. More details here https://go.microsoft.com/fwlink/?linkid=2126950. Valid values 0 to 2147483647
        ## @param value Value to set for the operatingSystemProductType property.
        ## @return a void
        ## 
        def operating_system_product_type=(value)
            @operating_system_product_type = value
        end
        ## 
        ## Gets the osBuildNumber property value. Operating System Build Number on Android device
        ## @return a string
        ## 
        def os_build_number
            return @os_build_number
        end
        ## 
        ## Sets the osBuildNumber property value. Operating System Build Number on Android device
        ## @param value Value to set for the osBuildNumber property.
        ## @return a void
        ## 
        def os_build_number=(value)
            @os_build_number = value
        end
        ## 
        ## Gets the phoneNumber property value. Phone number of the device
        ## @return a string
        ## 
        def phone_number
            return @phone_number
        end
        ## 
        ## Sets the phoneNumber property value. Phone number of the device
        ## @param value Value to set for the phoneNumber property.
        ## @return a void
        ## 
        def phone_number=(value)
            @phone_number = value
        end
        ## 
        ## Gets the productName property value. The product name, e.g. iPad8,12 etc. The update frequency of this property is weekly. Note this property is currently supported only on iOS/MacOS devices, and is available only when Device Information access right is obtained.
        ## @return a string
        ## 
        def product_name
            return @product_name
        end
        ## 
        ## Sets the productName property value. The product name, e.g. iPad8,12 etc. The update frequency of this property is weekly. Note this property is currently supported only on iOS/MacOS devices, and is available only when Device Information access right is obtained.
        ## @param value Value to set for the productName property.
        ## @return a void
        ## 
        def product_name=(value)
            @product_name = value
        end
        ## 
        ## Gets the residentUsersCount property value. The number of users currently on this device, or null (default) if the value of this property cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 13.4 and later, and is available only when Device Information access right is obtained. Valid values 0 to 2147483647
        ## @return a integer
        ## 
        def resident_users_count
            return @resident_users_count
        end
        ## 
        ## Sets the residentUsersCount property value. The number of users currently on this device, or null (default) if the value of this property cannot be determined. The update frequency of this property is per-checkin. Note this property is currently supported only on devices running iOS 13.4 and later, and is available only when Device Information access right is obtained. Valid values 0 to 2147483647
        ## @param value Value to set for the residentUsersCount property.
        ## @return a void
        ## 
        def resident_users_count=(value)
            @resident_users_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_number_value("batteryChargeCycles", @battery_charge_cycles)
            writer.write_number_value("batteryHealthPercentage", @battery_health_percentage)
            writer.write_object_value("batteryLevelPercentage", @battery_level_percentage)
            writer.write_string_value("batterySerialNumber", @battery_serial_number)
            writer.write_string_value("cellularTechnology", @cellular_technology)
            writer.write_string_value("deviceFullQualifiedDomainName", @device_full_qualified_domain_name)
            writer.write_enum_value("deviceGuardLocalSystemAuthorityCredentialGuardState", @device_guard_local_system_authority_credential_guard_state)
            writer.write_enum_value("deviceGuardVirtualizationBasedSecurityHardwareRequirementState", @device_guard_virtualization_based_security_hardware_requirement_state)
            writer.write_enum_value("deviceGuardVirtualizationBasedSecurityState", @device_guard_virtualization_based_security_state)
            writer.write_number_value("deviceLicensingLastErrorCode", @device_licensing_last_error_code)
            writer.write_string_value("deviceLicensingLastErrorDescription", @device_licensing_last_error_description)
            writer.write_enum_value("deviceLicensingStatus", @device_licensing_status)
            writer.write_string_value("esimIdentifier", @esim_identifier)
            writer.write_object_value("freeStorageSpace", @free_storage_space)
            writer.write_string_value("imei", @imei)
            writer.write_string_value("ipAddressV4", @ip_address_v4)
            writer.write_boolean_value("isEncrypted", @is_encrypted)
            writer.write_boolean_value("isSharedDevice", @is_shared_device)
            writer.write_boolean_value("isSupervised", @is_supervised)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("meid", @meid)
            writer.write_string_value("model", @model)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("operatingSystemEdition", @operating_system_edition)
            writer.write_string_value("operatingSystemLanguage", @operating_system_language)
            writer.write_number_value("operatingSystemProductType", @operating_system_product_type)
            writer.write_string_value("osBuildNumber", @os_build_number)
            writer.write_string_value("phoneNumber", @phone_number)
            writer.write_string_value("productName", @product_name)
            writer.write_number_value("residentUsersCount", @resident_users_count)
            writer.write_string_value("serialNumber", @serial_number)
            writer.write_collection_of_object_values("sharedDeviceCachedUsers", @shared_device_cached_users)
            writer.write_string_value("subnetAddress", @subnet_address)
            writer.write_string_value("subscriberCarrier", @subscriber_carrier)
            writer.write_string_value("systemManagementBIOSVersion", @system_management_b_i_o_s_version)
            writer.write_object_value("totalStorageSpace", @total_storage_space)
            writer.write_string_value("tpmManufacturer", @tpm_manufacturer)
            writer.write_string_value("tpmSpecificationVersion", @tpm_specification_version)
            writer.write_string_value("tpmVersion", @tpm_version)
            writer.write_string_value("wifiMac", @wifi_mac)
            writer.write_collection_of_primitive_values("wiredIPv4Addresses", @wired_i_pv4_addresses)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the serialNumber property value. Serial number.
        ## @return a string
        ## 
        def serial_number
            return @serial_number
        end
        ## 
        ## Sets the serialNumber property value. Serial number.
        ## @param value Value to set for the serialNumber property.
        ## @return a void
        ## 
        def serial_number=(value)
            @serial_number = value
        end
        ## 
        ## Gets the sharedDeviceCachedUsers property value. All users on the shared Apple device
        ## @return a shared_apple_device_user
        ## 
        def shared_device_cached_users
            return @shared_device_cached_users
        end
        ## 
        ## Sets the sharedDeviceCachedUsers property value. All users on the shared Apple device
        ## @param value Value to set for the sharedDeviceCachedUsers property.
        ## @return a void
        ## 
        def shared_device_cached_users=(value)
            @shared_device_cached_users = value
        end
        ## 
        ## Gets the subnetAddress property value. SubnetAddress
        ## @return a string
        ## 
        def subnet_address
            return @subnet_address
        end
        ## 
        ## Sets the subnetAddress property value. SubnetAddress
        ## @param value Value to set for the subnetAddress property.
        ## @return a void
        ## 
        def subnet_address=(value)
            @subnet_address = value
        end
        ## 
        ## Gets the subscriberCarrier property value. Subscriber carrier of the device
        ## @return a string
        ## 
        def subscriber_carrier
            return @subscriber_carrier
        end
        ## 
        ## Sets the subscriberCarrier property value. Subscriber carrier of the device
        ## @param value Value to set for the subscriberCarrier property.
        ## @return a void
        ## 
        def subscriber_carrier=(value)
            @subscriber_carrier = value
        end
        ## 
        ## Gets the systemManagementBIOSVersion property value. BIOS version as reported by SMBIOS
        ## @return a string
        ## 
        def system_management_b_i_o_s_version
            return @system_management_b_i_o_s_version
        end
        ## 
        ## Sets the systemManagementBIOSVersion property value. BIOS version as reported by SMBIOS
        ## @param value Value to set for the systemManagementBIOSVersion property.
        ## @return a void
        ## 
        def system_management_b_i_o_s_version=(value)
            @system_management_b_i_o_s_version = value
        end
        ## 
        ## Gets the totalStorageSpace property value. Total storage space of the device.
        ## @return a int64
        ## 
        def total_storage_space
            return @total_storage_space
        end
        ## 
        ## Sets the totalStorageSpace property value. Total storage space of the device.
        ## @param value Value to set for the totalStorageSpace property.
        ## @return a void
        ## 
        def total_storage_space=(value)
            @total_storage_space = value
        end
        ## 
        ## Gets the tpmManufacturer property value. The identifying information that uniquely names the TPM manufacturer
        ## @return a string
        ## 
        def tpm_manufacturer
            return @tpm_manufacturer
        end
        ## 
        ## Sets the tpmManufacturer property value. The identifying information that uniquely names the TPM manufacturer
        ## @param value Value to set for the tpmManufacturer property.
        ## @return a void
        ## 
        def tpm_manufacturer=(value)
            @tpm_manufacturer = value
        end
        ## 
        ## Gets the tpmSpecificationVersion property value. String that specifies the specification version.
        ## @return a string
        ## 
        def tpm_specification_version
            return @tpm_specification_version
        end
        ## 
        ## Sets the tpmSpecificationVersion property value. String that specifies the specification version.
        ## @param value Value to set for the tpmSpecificationVersion property.
        ## @return a void
        ## 
        def tpm_specification_version=(value)
            @tpm_specification_version = value
        end
        ## 
        ## Gets the tpmVersion property value. The version of the TPM, as specified by the manufacturer
        ## @return a string
        ## 
        def tpm_version
            return @tpm_version
        end
        ## 
        ## Sets the tpmVersion property value. The version of the TPM, as specified by the manufacturer
        ## @param value Value to set for the tpmVersion property.
        ## @return a void
        ## 
        def tpm_version=(value)
            @tpm_version = value
        end
        ## 
        ## Gets the wifiMac property value. WiFi MAC address of the device
        ## @return a string
        ## 
        def wifi_mac
            return @wifi_mac
        end
        ## 
        ## Sets the wifiMac property value. WiFi MAC address of the device
        ## @param value Value to set for the wifiMac property.
        ## @return a void
        ## 
        def wifi_mac=(value)
            @wifi_mac = value
        end
        ## 
        ## Gets the wiredIPv4Addresses property value. A list of wired IPv4 addresses. The update frequency (the maximum delay for the change of property value to be synchronized from the device to the cloud storage) of this property is daily. Note this property is currently supported only on devices running on Windows.
        ## @return a string
        ## 
        def wired_i_pv4_addresses
            return @wired_i_pv4_addresses
        end
        ## 
        ## Sets the wiredIPv4Addresses property value. A list of wired IPv4 addresses. The update frequency (the maximum delay for the change of property value to be synchronized from the device to the cloud storage) of this property is daily. Note this property is currently supported only on devices running on Windows.
        ## @param value Value to set for the wiredIPv4Addresses property.
        ## @return a void
        ## 
        def wired_i_pv4_addresses=(value)
            @wired_i_pv4_addresses = value
        end
    end
end
