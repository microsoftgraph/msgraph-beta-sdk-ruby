require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Summary data for co managed devices
    class ComanagedDevicesSummary
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Number of devices with CompliancePolicy swung-over. This property is read-only.
        @compliance_policy_count
        ## 
        # Number of devices with ConfigurationSettings swung-over. This property is read-only.
        @configuration_settings_count
        ## 
        # Number of devices with EndpointProtection swung-over. This property is read-only.
        @endpoint_protection_count
        ## 
        # Number of devices with Inventory swung-over. This property is read-only.
        @inventory_count
        ## 
        # Number of devices with ModernApps swung-over. This property is read-only.
        @modern_apps_count
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Number of devices with OfficeApps swung-over. This property is read-only.
        @office_apps_count
        ## 
        # Number of devices with ResourceAccess swung-over. This property is read-only.
        @resource_access_count
        ## 
        # Number of Co-Managed Devices. This property is read-only.
        @total_comanaged_count
        ## 
        # Number of devices with WindowsUpdateForBusiness swung-over. This property is read-only.
        @windows_update_for_business_count
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
        ## Gets the compliancePolicyCount property value. Number of devices with CompliancePolicy swung-over. This property is read-only.
        ## @return a integer
        ## 
        def compliance_policy_count
            return @compliance_policy_count
        end
        ## 
        ## Sets the compliancePolicyCount property value. Number of devices with CompliancePolicy swung-over. This property is read-only.
        ## @param value Value to set for the compliancePolicyCount property.
        ## @return a void
        ## 
        def compliance_policy_count=(value)
            @compliance_policy_count = value
        end
        ## 
        ## Gets the configurationSettingsCount property value. Number of devices with ConfigurationSettings swung-over. This property is read-only.
        ## @return a integer
        ## 
        def configuration_settings_count
            return @configuration_settings_count
        end
        ## 
        ## Sets the configurationSettingsCount property value. Number of devices with ConfigurationSettings swung-over. This property is read-only.
        ## @param value Value to set for the configurationSettingsCount property.
        ## @return a void
        ## 
        def configuration_settings_count=(value)
            @configuration_settings_count = value
        end
        ## 
        ## Instantiates a new comanagedDevicesSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a comanaged_devices_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ComanagedDevicesSummary.new
        end
        ## 
        ## Gets the endpointProtectionCount property value. Number of devices with EndpointProtection swung-over. This property is read-only.
        ## @return a integer
        ## 
        def endpoint_protection_count
            return @endpoint_protection_count
        end
        ## 
        ## Sets the endpointProtectionCount property value. Number of devices with EndpointProtection swung-over. This property is read-only.
        ## @param value Value to set for the endpointProtectionCount property.
        ## @return a void
        ## 
        def endpoint_protection_count=(value)
            @endpoint_protection_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "compliancePolicyCount" => lambda {|n| @compliance_policy_count = n.get_number_value() },
                "configurationSettingsCount" => lambda {|n| @configuration_settings_count = n.get_number_value() },
                "endpointProtectionCount" => lambda {|n| @endpoint_protection_count = n.get_number_value() },
                "inventoryCount" => lambda {|n| @inventory_count = n.get_number_value() },
                "modernAppsCount" => lambda {|n| @modern_apps_count = n.get_number_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "officeAppsCount" => lambda {|n| @office_apps_count = n.get_number_value() },
                "resourceAccessCount" => lambda {|n| @resource_access_count = n.get_number_value() },
                "totalComanagedCount" => lambda {|n| @total_comanaged_count = n.get_number_value() },
                "windowsUpdateForBusinessCount" => lambda {|n| @windows_update_for_business_count = n.get_number_value() },
            }
        end
        ## 
        ## Gets the inventoryCount property value. Number of devices with Inventory swung-over. This property is read-only.
        ## @return a integer
        ## 
        def inventory_count
            return @inventory_count
        end
        ## 
        ## Sets the inventoryCount property value. Number of devices with Inventory swung-over. This property is read-only.
        ## @param value Value to set for the inventoryCount property.
        ## @return a void
        ## 
        def inventory_count=(value)
            @inventory_count = value
        end
        ## 
        ## Gets the modernAppsCount property value. Number of devices with ModernApps swung-over. This property is read-only.
        ## @return a integer
        ## 
        def modern_apps_count
            return @modern_apps_count
        end
        ## 
        ## Sets the modernAppsCount property value. Number of devices with ModernApps swung-over. This property is read-only.
        ## @param value Value to set for the modernAppsCount property.
        ## @return a void
        ## 
        def modern_apps_count=(value)
            @modern_apps_count = value
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
        ## Gets the officeAppsCount property value. Number of devices with OfficeApps swung-over. This property is read-only.
        ## @return a integer
        ## 
        def office_apps_count
            return @office_apps_count
        end
        ## 
        ## Sets the officeAppsCount property value. Number of devices with OfficeApps swung-over. This property is read-only.
        ## @param value Value to set for the officeAppsCount property.
        ## @return a void
        ## 
        def office_apps_count=(value)
            @office_apps_count = value
        end
        ## 
        ## Gets the resourceAccessCount property value. Number of devices with ResourceAccess swung-over. This property is read-only.
        ## @return a integer
        ## 
        def resource_access_count
            return @resource_access_count
        end
        ## 
        ## Sets the resourceAccessCount property value. Number of devices with ResourceAccess swung-over. This property is read-only.
        ## @param value Value to set for the resourceAccessCount property.
        ## @return a void
        ## 
        def resource_access_count=(value)
            @resource_access_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the totalComanagedCount property value. Number of Co-Managed Devices. This property is read-only.
        ## @return a integer
        ## 
        def total_comanaged_count
            return @total_comanaged_count
        end
        ## 
        ## Sets the totalComanagedCount property value. Number of Co-Managed Devices. This property is read-only.
        ## @param value Value to set for the totalComanagedCount property.
        ## @return a void
        ## 
        def total_comanaged_count=(value)
            @total_comanaged_count = value
        end
        ## 
        ## Gets the windowsUpdateForBusinessCount property value. Number of devices with WindowsUpdateForBusiness swung-over. This property is read-only.
        ## @return a integer
        ## 
        def windows_update_for_business_count
            return @windows_update_for_business_count
        end
        ## 
        ## Sets the windowsUpdateForBusinessCount property value. Number of devices with WindowsUpdateForBusiness swung-over. This property is read-only.
        ## @param value Value to set for the windowsUpdateForBusinessCount property.
        ## @return a void
        ## 
        def windows_update_for_business_count=(value)
            @windows_update_for_business_count = value
        end
    end
end
