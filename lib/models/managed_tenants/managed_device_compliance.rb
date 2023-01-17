require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    class ManagedDeviceCompliance < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Compliance state of the device. This property is read-only. Possible values are: unknown, compliant, noncompliant, conflict, error, inGracePeriod, configManager. Optional. Read-only.
        @compliance_status
        ## 
        # Platform of the device. This property is read-only. Possible values are: desktop, windowsRT, winMO6, nokia, windowsPhone, mac, winCE, winEmbedded, iPhone, iPad, iPod, android, iSocConsumer, unix, macMDM, holoLens, surfaceHub, androidForWork, androidEnterprise, windows10x, androidnGMS, chromeOS, linux, blackberry, palm, unknown, cloudPC.  Optional. Read-only.
        @device_type
        ## 
        # The date and time when the grace period will expire. Optional. Read-only.
        @in_grace_period_until_date_time
        ## 
        # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        @last_refreshed_date_time
        ## 
        # The date and time that the device last completed a successful sync with Microsoft Endpoint Manager. Optional. Read-only.
        @last_sync_date_time
        ## 
        # The identifier for the managed device in Microsoft Endpoint Manager. Optional. Read-only.
        @managed_device_id
        ## 
        # The display name for the managed device. Optional. Read-only.
        @managed_device_name
        ## 
        # The manufacture for the device. Optional. Read-only.
        @manufacturer
        ## 
        # The model for the device. Optional. Read-only.
        @model
        ## 
        # The description of the operating system for the managed device. Optional. Read-only.
        @os_description
        ## 
        # The version of the operating system for the managed device. Optional. Read-only.
        @os_version
        ## 
        # The type of owner for the managed device. Optional. Read-only.
        @owner_type
        ## 
        # The display name for the managed tenant. Optional. Read-only.
        @tenant_display_name
        ## 
        # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        @tenant_id
        ## 
        ## Gets the complianceStatus property value. Compliance state of the device. This property is read-only. Possible values are: unknown, compliant, noncompliant, conflict, error, inGracePeriod, configManager. Optional. Read-only.
        ## @return a string
        ## 
        def compliance_status
            return @compliance_status
        end
        ## 
        ## Sets the complianceStatus property value. Compliance state of the device. This property is read-only. Possible values are: unknown, compliant, noncompliant, conflict, error, inGracePeriod, configManager. Optional. Read-only.
        ## @param value Value to set for the complianceStatus property.
        ## @return a void
        ## 
        def compliance_status=(value)
            @compliance_status = value
        end
        ## 
        ## Instantiates a new managedDeviceCompliance and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_device_compliance
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedDeviceCompliance.new
        end
        ## 
        ## Gets the deviceType property value. Platform of the device. This property is read-only. Possible values are: desktop, windowsRT, winMO6, nokia, windowsPhone, mac, winCE, winEmbedded, iPhone, iPad, iPod, android, iSocConsumer, unix, macMDM, holoLens, surfaceHub, androidForWork, androidEnterprise, windows10x, androidnGMS, chromeOS, linux, blackberry, palm, unknown, cloudPC.  Optional. Read-only.
        ## @return a string
        ## 
        def device_type
            return @device_type
        end
        ## 
        ## Sets the deviceType property value. Platform of the device. This property is read-only. Possible values are: desktop, windowsRT, winMO6, nokia, windowsPhone, mac, winCE, winEmbedded, iPhone, iPad, iPod, android, iSocConsumer, unix, macMDM, holoLens, surfaceHub, androidForWork, androidEnterprise, windows10x, androidnGMS, chromeOS, linux, blackberry, palm, unknown, cloudPC.  Optional. Read-only.
        ## @param value Value to set for the deviceType property.
        ## @return a void
        ## 
        def device_type=(value)
            @device_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "complianceStatus" => lambda {|n| @compliance_status = n.get_string_value() },
                "deviceType" => lambda {|n| @device_type = n.get_string_value() },
                "inGracePeriodUntilDateTime" => lambda {|n| @in_grace_period_until_date_time = n.get_date_time_value() },
                "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                "ownerType" => lambda {|n| @owner_type = n.get_string_value() },
                "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the inGracePeriodUntilDateTime property value. The date and time when the grace period will expire. Optional. Read-only.
        ## @return a date_time
        ## 
        def in_grace_period_until_date_time
            return @in_grace_period_until_date_time
        end
        ## 
        ## Sets the inGracePeriodUntilDateTime property value. The date and time when the grace period will expire. Optional. Read-only.
        ## @param value Value to set for the inGracePeriodUntilDateTime property.
        ## @return a void
        ## 
        def in_grace_period_until_date_time=(value)
            @in_grace_period_until_date_time = value
        end
        ## 
        ## Gets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        ## @return a date_time
        ## 
        def last_refreshed_date_time
            return @last_refreshed_date_time
        end
        ## 
        ## Sets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        ## @param value Value to set for the lastRefreshedDateTime property.
        ## @return a void
        ## 
        def last_refreshed_date_time=(value)
            @last_refreshed_date_time = value
        end
        ## 
        ## Gets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Microsoft Endpoint Manager. Optional. Read-only.
        ## @return a date_time
        ## 
        def last_sync_date_time
            return @last_sync_date_time
        end
        ## 
        ## Sets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Microsoft Endpoint Manager. Optional. Read-only.
        ## @param value Value to set for the lastSyncDateTime property.
        ## @return a void
        ## 
        def last_sync_date_time=(value)
            @last_sync_date_time = value
        end
        ## 
        ## Gets the managedDeviceId property value. The identifier for the managed device in Microsoft Endpoint Manager. Optional. Read-only.
        ## @return a string
        ## 
        def managed_device_id
            return @managed_device_id
        end
        ## 
        ## Sets the managedDeviceId property value. The identifier for the managed device in Microsoft Endpoint Manager. Optional. Read-only.
        ## @param value Value to set for the managedDeviceId property.
        ## @return a void
        ## 
        def managed_device_id=(value)
            @managed_device_id = value
        end
        ## 
        ## Gets the managedDeviceName property value. The display name for the managed device. Optional. Read-only.
        ## @return a string
        ## 
        def managed_device_name
            return @managed_device_name
        end
        ## 
        ## Sets the managedDeviceName property value. The display name for the managed device. Optional. Read-only.
        ## @param value Value to set for the managedDeviceName property.
        ## @return a void
        ## 
        def managed_device_name=(value)
            @managed_device_name = value
        end
        ## 
        ## Gets the manufacturer property value. The manufacture for the device. Optional. Read-only.
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. The manufacture for the device. Optional. Read-only.
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the model property value. The model for the device. Optional. Read-only.
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. The model for the device. Optional. Read-only.
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
        end
        ## 
        ## Gets the osDescription property value. The description of the operating system for the managed device. Optional. Read-only.
        ## @return a string
        ## 
        def os_description
            return @os_description
        end
        ## 
        ## Sets the osDescription property value. The description of the operating system for the managed device. Optional. Read-only.
        ## @param value Value to set for the osDescription property.
        ## @return a void
        ## 
        def os_description=(value)
            @os_description = value
        end
        ## 
        ## Gets the osVersion property value. The version of the operating system for the managed device. Optional. Read-only.
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. The version of the operating system for the managed device. Optional. Read-only.
        ## @param value Value to set for the osVersion property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Gets the ownerType property value. The type of owner for the managed device. Optional. Read-only.
        ## @return a string
        ## 
        def owner_type
            return @owner_type
        end
        ## 
        ## Sets the ownerType property value. The type of owner for the managed device. Optional. Read-only.
        ## @param value Value to set for the ownerType property.
        ## @return a void
        ## 
        def owner_type=(value)
            @owner_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("complianceStatus", @compliance_status)
            writer.write_string_value("deviceType", @device_type)
            writer.write_date_time_value("inGracePeriodUntilDateTime", @in_grace_period_until_date_time)
            writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
            writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
            writer.write_string_value("managedDeviceId", @managed_device_id)
            writer.write_string_value("managedDeviceName", @managed_device_name)
            writer.write_string_value("manufacturer", @manufacturer)
            writer.write_string_value("model", @model)
            writer.write_string_value("osDescription", @os_description)
            writer.write_string_value("osVersion", @os_version)
            writer.write_string_value("ownerType", @owner_type)
            writer.write_string_value("tenantDisplayName", @tenant_display_name)
            writer.write_string_value("tenantId", @tenant_id)
        end
        ## 
        ## Gets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
        ## @return a string
        ## 
        def tenant_display_name
            return @tenant_display_name
        end
        ## 
        ## Sets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
        ## @param value Value to set for the tenantDisplayName property.
        ## @return a void
        ## 
        def tenant_display_name=(value)
            @tenant_display_name = value
        end
        ## 
        ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @param value Value to set for the tenantId property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
    end
end
