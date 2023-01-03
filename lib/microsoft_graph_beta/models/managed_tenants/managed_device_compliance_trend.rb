require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class ManagedDeviceComplianceTrend < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The number of devices with a compliant status. Required. Read-only.
        @compliant_device_count
        ## 
        # The number of devices manged by Configuration Manager. Required. Read-only.
        @config_manager_device_count
        ## 
        # The date and time compliance snapshot was performed. Required. Read-only.
        @count_date_time
        ## 
        # The number of devices with an error status. Required. Read-only.
        @error_device_count
        ## 
        # The number of devices that are in a grace period status. Required. Read-only.
        @in_grace_period_device_count
        ## 
        # The number of devices that are in a non-compliant status. Required. Read-only.
        @noncompliant_device_count
        ## 
        # The display name for the managed tenant. Optional. Read-only.
        @tenant_display_name
        ## 
        # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        @tenant_id
        ## 
        # The number of devices in an unknown status. Required. Read-only.
        @unknown_device_count
        ## 
        ## Gets the compliantDeviceCount property value. The number of devices with a compliant status. Required. Read-only.
        ## @return a integer
        ## 
        def compliant_device_count
            return @compliant_device_count
        end
        ## 
        ## Sets the compliantDeviceCount property value. The number of devices with a compliant status. Required. Read-only.
        ## @param value Value to set for the compliantDeviceCount property.
        ## @return a void
        ## 
        def compliant_device_count=(value)
            @compliant_device_count = value
        end
        ## 
        ## Gets the configManagerDeviceCount property value. The number of devices manged by Configuration Manager. Required. Read-only.
        ## @return a integer
        ## 
        def config_manager_device_count
            return @config_manager_device_count
        end
        ## 
        ## Sets the configManagerDeviceCount property value. The number of devices manged by Configuration Manager. Required. Read-only.
        ## @param value Value to set for the configManagerDeviceCount property.
        ## @return a void
        ## 
        def config_manager_device_count=(value)
            @config_manager_device_count = value
        end
        ## 
        ## Instantiates a new managedDeviceComplianceTrend and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the countDateTime property value. The date and time compliance snapshot was performed. Required. Read-only.
        ## @return a string
        ## 
        def count_date_time
            return @count_date_time
        end
        ## 
        ## Sets the countDateTime property value. The date and time compliance snapshot was performed. Required. Read-only.
        ## @param value Value to set for the countDateTime property.
        ## @return a void
        ## 
        def count_date_time=(value)
            @count_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_device_compliance_trend
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ManagedDeviceComplianceTrend.new
        end
        ## 
        ## Gets the errorDeviceCount property value. The number of devices with an error status. Required. Read-only.
        ## @return a integer
        ## 
        def error_device_count
            return @error_device_count
        end
        ## 
        ## Sets the errorDeviceCount property value. The number of devices with an error status. Required. Read-only.
        ## @param value Value to set for the errorDeviceCount property.
        ## @return a void
        ## 
        def error_device_count=(value)
            @error_device_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "compliantDeviceCount" => lambda {|n| @compliant_device_count = n.get_number_value() },
                "configManagerDeviceCount" => lambda {|n| @config_manager_device_count = n.get_number_value() },
                "countDateTime" => lambda {|n| @count_date_time = n.get_string_value() },
                "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                "inGracePeriodDeviceCount" => lambda {|n| @in_grace_period_device_count = n.get_number_value() },
                "noncompliantDeviceCount" => lambda {|n| @noncompliant_device_count = n.get_number_value() },
                "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
            })
        end
        ## 
        ## Gets the inGracePeriodDeviceCount property value. The number of devices that are in a grace period status. Required. Read-only.
        ## @return a integer
        ## 
        def in_grace_period_device_count
            return @in_grace_period_device_count
        end
        ## 
        ## Sets the inGracePeriodDeviceCount property value. The number of devices that are in a grace period status. Required. Read-only.
        ## @param value Value to set for the inGracePeriodDeviceCount property.
        ## @return a void
        ## 
        def in_grace_period_device_count=(value)
            @in_grace_period_device_count = value
        end
        ## 
        ## Gets the noncompliantDeviceCount property value. The number of devices that are in a non-compliant status. Required. Read-only.
        ## @return a integer
        ## 
        def noncompliant_device_count
            return @noncompliant_device_count
        end
        ## 
        ## Sets the noncompliantDeviceCount property value. The number of devices that are in a non-compliant status. Required. Read-only.
        ## @param value Value to set for the noncompliantDeviceCount property.
        ## @return a void
        ## 
        def noncompliant_device_count=(value)
            @noncompliant_device_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("compliantDeviceCount", @compliant_device_count)
            writer.write_number_value("configManagerDeviceCount", @config_manager_device_count)
            writer.write_string_value("countDateTime", @count_date_time)
            writer.write_number_value("errorDeviceCount", @error_device_count)
            writer.write_number_value("inGracePeriodDeviceCount", @in_grace_period_device_count)
            writer.write_number_value("noncompliantDeviceCount", @noncompliant_device_count)
            writer.write_string_value("tenantDisplayName", @tenant_display_name)
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_number_value("unknownDeviceCount", @unknown_device_count)
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
        ## 
        ## Gets the unknownDeviceCount property value. The number of devices in an unknown status. Required. Read-only.
        ## @return a integer
        ## 
        def unknown_device_count
            return @unknown_device_count
        end
        ## 
        ## Sets the unknownDeviceCount property value. The number of devices in an unknown status. Required. Read-only.
        ## @param value Value to set for the unknownDeviceCount property.
        ## @return a void
        ## 
        def unknown_device_count=(value)
            @unknown_device_count = value
        end
    end
end
