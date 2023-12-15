require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsCloudPcOverview < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
            @last_refreshed_date_time
            ## 
            # The number of cloud PC connections that have a status of failed. Optional. Read-only.
            @number_of_cloud_pc_connection_status_failed
            ## 
            # The number of cloud PC connections that have a status of passed. Optional. Read-only.
            @number_of_cloud_pc_connection_status_passed
            ## 
            # The number of cloud PC connections that have a status of pending. Optional. Read-only.
            @number_of_cloud_pc_connection_status_pending
            ## 
            # The number of cloud PC connections that have a status of running. Optional. Read-only.
            @number_of_cloud_pc_connection_status_running
            ## 
            # The number of cloud PC connections that have a status of unknownFutureValue. Optional. Read-only.
            @number_of_cloud_pc_connection_status_unkown_future_value
            ## 
            # The number of cloud PCs that have a status of deprovisioning. Optional. Read-only.
            @number_of_cloud_pc_status_deprovisioning
            ## 
            # The number of cloud PCs that have a status of failed. Optional. Read-only.
            @number_of_cloud_pc_status_failed
            ## 
            # The number of cloud PCs that have a status of inGracePeriod. Optional. Read-only.
            @number_of_cloud_pc_status_in_grace_period
            ## 
            # The number of cloud PCs that have a status of notProvisioned. Optional. Read-only.
            @number_of_cloud_pc_status_not_provisioned
            ## 
            # The number of cloud PCs that have a status of provisioned. Optional. Read-only.
            @number_of_cloud_pc_status_provisioned
            ## 
            # The number of cloud PCs that have a status of provisioning. Optional. Read-only.
            @number_of_cloud_pc_status_provisioning
            ## 
            # The number of cloud PCs that have a status of unknown. Optional. Read-only.
            @number_of_cloud_pc_status_unknown
            ## 
            # The number of cloud PCs that have a status of upgrading. Optional. Read-only.
            @number_of_cloud_pc_status_upgrading
            ## 
            # The display name for the managed tenant. Optional. Read-only.
            @tenant_display_name
            ## 
            # The tenantId property
            @tenant_id
            ## 
            # The total number of cloud PC devices that have the Business SKU. Optional. Read-only.
            @total_business_licenses
            ## 
            # The total number of cloud PC connection statuses for the given managed tenant. Optional. Read-only.
            @total_cloud_pc_connection_status
            ## 
            # The total number of cloud PC statues for the given managed tenant. Optional. Read-only.
            @total_cloud_pc_status
            ## 
            # The total number of cloud PC devices that have the Enterprise SKU. Optional. Read-only.
            @total_enterprise_licenses
            ## 
            ## Instantiates a new managedTenantsCloudPcOverview and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_cloud_pc_overview
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsCloudPcOverview.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                    "numberOfCloudPcConnectionStatusFailed" => lambda {|n| @number_of_cloud_pc_connection_status_failed = n.get_number_value() },
                    "numberOfCloudPcConnectionStatusPassed" => lambda {|n| @number_of_cloud_pc_connection_status_passed = n.get_number_value() },
                    "numberOfCloudPcConnectionStatusPending" => lambda {|n| @number_of_cloud_pc_connection_status_pending = n.get_number_value() },
                    "numberOfCloudPcConnectionStatusRunning" => lambda {|n| @number_of_cloud_pc_connection_status_running = n.get_number_value() },
                    "numberOfCloudPcConnectionStatusUnkownFutureValue" => lambda {|n| @number_of_cloud_pc_connection_status_unkown_future_value = n.get_number_value() },
                    "numberOfCloudPcStatusDeprovisioning" => lambda {|n| @number_of_cloud_pc_status_deprovisioning = n.get_number_value() },
                    "numberOfCloudPcStatusFailed" => lambda {|n| @number_of_cloud_pc_status_failed = n.get_number_value() },
                    "numberOfCloudPcStatusInGracePeriod" => lambda {|n| @number_of_cloud_pc_status_in_grace_period = n.get_number_value() },
                    "numberOfCloudPcStatusNotProvisioned" => lambda {|n| @number_of_cloud_pc_status_not_provisioned = n.get_number_value() },
                    "numberOfCloudPcStatusProvisioned" => lambda {|n| @number_of_cloud_pc_status_provisioned = n.get_number_value() },
                    "numberOfCloudPcStatusProvisioning" => lambda {|n| @number_of_cloud_pc_status_provisioning = n.get_number_value() },
                    "numberOfCloudPcStatusUnknown" => lambda {|n| @number_of_cloud_pc_status_unknown = n.get_number_value() },
                    "numberOfCloudPcStatusUpgrading" => lambda {|n| @number_of_cloud_pc_status_upgrading = n.get_number_value() },
                    "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "totalBusinessLicenses" => lambda {|n| @total_business_licenses = n.get_number_value() },
                    "totalCloudPcConnectionStatus" => lambda {|n| @total_cloud_pc_connection_status = n.get_number_value() },
                    "totalCloudPcStatus" => lambda {|n| @total_cloud_pc_status = n.get_number_value() },
                    "totalEnterpriseLicenses" => lambda {|n| @total_enterprise_licenses = n.get_number_value() },
                })
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
            ## Gets the numberOfCloudPcConnectionStatusFailed property value. The number of cloud PC connections that have a status of failed. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_connection_status_failed
                return @number_of_cloud_pc_connection_status_failed
            end
            ## 
            ## Sets the numberOfCloudPcConnectionStatusFailed property value. The number of cloud PC connections that have a status of failed. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcConnectionStatusFailed property.
            ## @return a void
            ## 
            def number_of_cloud_pc_connection_status_failed=(value)
                @number_of_cloud_pc_connection_status_failed = value
            end
            ## 
            ## Gets the numberOfCloudPcConnectionStatusPassed property value. The number of cloud PC connections that have a status of passed. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_connection_status_passed
                return @number_of_cloud_pc_connection_status_passed
            end
            ## 
            ## Sets the numberOfCloudPcConnectionStatusPassed property value. The number of cloud PC connections that have a status of passed. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcConnectionStatusPassed property.
            ## @return a void
            ## 
            def number_of_cloud_pc_connection_status_passed=(value)
                @number_of_cloud_pc_connection_status_passed = value
            end
            ## 
            ## Gets the numberOfCloudPcConnectionStatusPending property value. The number of cloud PC connections that have a status of pending. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_connection_status_pending
                return @number_of_cloud_pc_connection_status_pending
            end
            ## 
            ## Sets the numberOfCloudPcConnectionStatusPending property value. The number of cloud PC connections that have a status of pending. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcConnectionStatusPending property.
            ## @return a void
            ## 
            def number_of_cloud_pc_connection_status_pending=(value)
                @number_of_cloud_pc_connection_status_pending = value
            end
            ## 
            ## Gets the numberOfCloudPcConnectionStatusRunning property value. The number of cloud PC connections that have a status of running. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_connection_status_running
                return @number_of_cloud_pc_connection_status_running
            end
            ## 
            ## Sets the numberOfCloudPcConnectionStatusRunning property value. The number of cloud PC connections that have a status of running. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcConnectionStatusRunning property.
            ## @return a void
            ## 
            def number_of_cloud_pc_connection_status_running=(value)
                @number_of_cloud_pc_connection_status_running = value
            end
            ## 
            ## Gets the numberOfCloudPcConnectionStatusUnkownFutureValue property value. The number of cloud PC connections that have a status of unknownFutureValue. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_connection_status_unkown_future_value
                return @number_of_cloud_pc_connection_status_unkown_future_value
            end
            ## 
            ## Sets the numberOfCloudPcConnectionStatusUnkownFutureValue property value. The number of cloud PC connections that have a status of unknownFutureValue. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcConnectionStatusUnkownFutureValue property.
            ## @return a void
            ## 
            def number_of_cloud_pc_connection_status_unkown_future_value=(value)
                @number_of_cloud_pc_connection_status_unkown_future_value = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusDeprovisioning property value. The number of cloud PCs that have a status of deprovisioning. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_deprovisioning
                return @number_of_cloud_pc_status_deprovisioning
            end
            ## 
            ## Sets the numberOfCloudPcStatusDeprovisioning property value. The number of cloud PCs that have a status of deprovisioning. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusDeprovisioning property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_deprovisioning=(value)
                @number_of_cloud_pc_status_deprovisioning = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusFailed property value. The number of cloud PCs that have a status of failed. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_failed
                return @number_of_cloud_pc_status_failed
            end
            ## 
            ## Sets the numberOfCloudPcStatusFailed property value. The number of cloud PCs that have a status of failed. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusFailed property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_failed=(value)
                @number_of_cloud_pc_status_failed = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusInGracePeriod property value. The number of cloud PCs that have a status of inGracePeriod. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_in_grace_period
                return @number_of_cloud_pc_status_in_grace_period
            end
            ## 
            ## Sets the numberOfCloudPcStatusInGracePeriod property value. The number of cloud PCs that have a status of inGracePeriod. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusInGracePeriod property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_in_grace_period=(value)
                @number_of_cloud_pc_status_in_grace_period = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusNotProvisioned property value. The number of cloud PCs that have a status of notProvisioned. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_not_provisioned
                return @number_of_cloud_pc_status_not_provisioned
            end
            ## 
            ## Sets the numberOfCloudPcStatusNotProvisioned property value. The number of cloud PCs that have a status of notProvisioned. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusNotProvisioned property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_not_provisioned=(value)
                @number_of_cloud_pc_status_not_provisioned = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusProvisioned property value. The number of cloud PCs that have a status of provisioned. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_provisioned
                return @number_of_cloud_pc_status_provisioned
            end
            ## 
            ## Sets the numberOfCloudPcStatusProvisioned property value. The number of cloud PCs that have a status of provisioned. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusProvisioned property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_provisioned=(value)
                @number_of_cloud_pc_status_provisioned = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusProvisioning property value. The number of cloud PCs that have a status of provisioning. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_provisioning
                return @number_of_cloud_pc_status_provisioning
            end
            ## 
            ## Sets the numberOfCloudPcStatusProvisioning property value. The number of cloud PCs that have a status of provisioning. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusProvisioning property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_provisioning=(value)
                @number_of_cloud_pc_status_provisioning = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusUnknown property value. The number of cloud PCs that have a status of unknown. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_unknown
                return @number_of_cloud_pc_status_unknown
            end
            ## 
            ## Sets the numberOfCloudPcStatusUnknown property value. The number of cloud PCs that have a status of unknown. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusUnknown property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_unknown=(value)
                @number_of_cloud_pc_status_unknown = value
            end
            ## 
            ## Gets the numberOfCloudPcStatusUpgrading property value. The number of cloud PCs that have a status of upgrading. Optional. Read-only.
            ## @return a integer
            ## 
            def number_of_cloud_pc_status_upgrading
                return @number_of_cloud_pc_status_upgrading
            end
            ## 
            ## Sets the numberOfCloudPcStatusUpgrading property value. The number of cloud PCs that have a status of upgrading. Optional. Read-only.
            ## @param value Value to set for the numberOfCloudPcStatusUpgrading property.
            ## @return a void
            ## 
            def number_of_cloud_pc_status_upgrading=(value)
                @number_of_cloud_pc_status_upgrading = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                writer.write_number_value("numberOfCloudPcConnectionStatusFailed", @number_of_cloud_pc_connection_status_failed)
                writer.write_number_value("numberOfCloudPcConnectionStatusPassed", @number_of_cloud_pc_connection_status_passed)
                writer.write_number_value("numberOfCloudPcConnectionStatusPending", @number_of_cloud_pc_connection_status_pending)
                writer.write_number_value("numberOfCloudPcConnectionStatusRunning", @number_of_cloud_pc_connection_status_running)
                writer.write_number_value("numberOfCloudPcConnectionStatusUnkownFutureValue", @number_of_cloud_pc_connection_status_unkown_future_value)
                writer.write_number_value("numberOfCloudPcStatusDeprovisioning", @number_of_cloud_pc_status_deprovisioning)
                writer.write_number_value("numberOfCloudPcStatusFailed", @number_of_cloud_pc_status_failed)
                writer.write_number_value("numberOfCloudPcStatusInGracePeriod", @number_of_cloud_pc_status_in_grace_period)
                writer.write_number_value("numberOfCloudPcStatusNotProvisioned", @number_of_cloud_pc_status_not_provisioned)
                writer.write_number_value("numberOfCloudPcStatusProvisioned", @number_of_cloud_pc_status_provisioned)
                writer.write_number_value("numberOfCloudPcStatusProvisioning", @number_of_cloud_pc_status_provisioning)
                writer.write_number_value("numberOfCloudPcStatusUnknown", @number_of_cloud_pc_status_unknown)
                writer.write_number_value("numberOfCloudPcStatusUpgrading", @number_of_cloud_pc_status_upgrading)
                writer.write_string_value("tenantDisplayName", @tenant_display_name)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_number_value("totalBusinessLicenses", @total_business_licenses)
                writer.write_number_value("totalCloudPcConnectionStatus", @total_cloud_pc_connection_status)
                writer.write_number_value("totalCloudPcStatus", @total_cloud_pc_status)
                writer.write_number_value("totalEnterpriseLicenses", @total_enterprise_licenses)
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
            ## Gets the tenantId property value. The tenantId property
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The tenantId property
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the totalBusinessLicenses property value. The total number of cloud PC devices that have the Business SKU. Optional. Read-only.
            ## @return a integer
            ## 
            def total_business_licenses
                return @total_business_licenses
            end
            ## 
            ## Sets the totalBusinessLicenses property value. The total number of cloud PC devices that have the Business SKU. Optional. Read-only.
            ## @param value Value to set for the totalBusinessLicenses property.
            ## @return a void
            ## 
            def total_business_licenses=(value)
                @total_business_licenses = value
            end
            ## 
            ## Gets the totalCloudPcConnectionStatus property value. The total number of cloud PC connection statuses for the given managed tenant. Optional. Read-only.
            ## @return a integer
            ## 
            def total_cloud_pc_connection_status
                return @total_cloud_pc_connection_status
            end
            ## 
            ## Sets the totalCloudPcConnectionStatus property value. The total number of cloud PC connection statuses for the given managed tenant. Optional. Read-only.
            ## @param value Value to set for the totalCloudPcConnectionStatus property.
            ## @return a void
            ## 
            def total_cloud_pc_connection_status=(value)
                @total_cloud_pc_connection_status = value
            end
            ## 
            ## Gets the totalCloudPcStatus property value. The total number of cloud PC statues for the given managed tenant. Optional. Read-only.
            ## @return a integer
            ## 
            def total_cloud_pc_status
                return @total_cloud_pc_status
            end
            ## 
            ## Sets the totalCloudPcStatus property value. The total number of cloud PC statues for the given managed tenant. Optional. Read-only.
            ## @param value Value to set for the totalCloudPcStatus property.
            ## @return a void
            ## 
            def total_cloud_pc_status=(value)
                @total_cloud_pc_status = value
            end
            ## 
            ## Gets the totalEnterpriseLicenses property value. The total number of cloud PC devices that have the Enterprise SKU. Optional. Read-only.
            ## @return a integer
            ## 
            def total_enterprise_licenses
                return @total_enterprise_licenses
            end
            ## 
            ## Sets the totalEnterpriseLicenses property value. The total number of cloud PC devices that have the Enterprise SKU. Optional. Read-only.
            ## @param value Value to set for the totalEnterpriseLicenses property.
            ## @return a void
            ## 
            def total_enterprise_licenses=(value)
                @total_enterprise_licenses = value
            end
        end
    end
end
