require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class CloudPcDevice < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The status of the cloud PC. Possible values are: notProvisioned, provisioning, provisioned, upgrading, inGracePeriod, deprovisioning, failed. Required. Read-only.
                @cloud_pc_status
                ## 
                # The specification of the cloud PC device. Required. Read-only.
                @device_specification
                ## 
                # The display name  of the cloud PC device. Required. Read-only.
                @display_name
                ## 
                # Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.
                @last_refreshed_date_time
                ## 
                # The managed device identifier of the cloud PC device. Optional. Read-only.
                @managed_device_id
                ## 
                # The managed device display name of the cloud PC device. Optional. Read-only.
                @managed_device_name
                ## 
                # The provisioning policy identifier for the cloud PC device. Required. Read-only.
                @provisioning_policy_id
                ## 
                # The service plan name of the cloud PC device. Required. Read-only.
                @service_plan_name
                ## 
                # The service plan type of the cloud PC device. Required. Read-only.
                @service_plan_type
                ## 
                # The display name for the managed tenant. Required. Read-only.
                @tenant_display_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                @tenant_id
                ## 
                # The user principal name (UPN) of the user assigned to the cloud PC device. Required. Read-only.
                @user_principal_name
                ## 
                ## Gets the cloudPcStatus property value. The status of the cloud PC. Possible values are: notProvisioned, provisioning, provisioned, upgrading, inGracePeriod, deprovisioning, failed. Required. Read-only.
                ## @return a string
                ## 
                def cloud_pc_status
                    return @cloud_pc_status
                end
                ## 
                ## Sets the cloudPcStatus property value. The status of the cloud PC. Possible values are: notProvisioned, provisioning, provisioned, upgrading, inGracePeriod, deprovisioning, failed. Required. Read-only.
                ## @param value Value to set for the cloud_pc_status property.
                ## @return a void
                ## 
                def cloud_pc_status=(value)
                    @cloud_pc_status = value
                end
                ## 
                ## Instantiates a new cloudPcDevice and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a cloud_pc_device
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CloudPcDevice.new
                end
                ## 
                ## Gets the deviceSpecification property value. The specification of the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def device_specification
                    return @device_specification
                end
                ## 
                ## Sets the deviceSpecification property value. The specification of the cloud PC device. Required. Read-only.
                ## @param value Value to set for the device_specification property.
                ## @return a void
                ## 
                def device_specification=(value)
                    @device_specification = value
                end
                ## 
                ## Gets the displayName property value. The display name  of the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name  of the cloud PC device. Required. Read-only.
                ## @param value Value to set for the display_name property.
                ## @return a void
                ## 
                def display_name=(value)
                    @display_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "cloudPcStatus" => lambda {|n| @cloud_pc_status = n.get_string_value() },
                        "deviceSpecification" => lambda {|n| @device_specification = n.get_string_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                        "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                        "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                        "provisioningPolicyId" => lambda {|n| @provisioning_policy_id = n.get_string_value() },
                        "servicePlanName" => lambda {|n| @service_plan_name = n.get_string_value() },
                        "servicePlanType" => lambda {|n| @service_plan_type = n.get_string_value() },
                        "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.
                ## @return a date_time
                ## 
                def last_refreshed_date_time
                    return @last_refreshed_date_time
                end
                ## 
                ## Sets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.
                ## @param value Value to set for the last_refreshed_date_time property.
                ## @return a void
                ## 
                def last_refreshed_date_time=(value)
                    @last_refreshed_date_time = value
                end
                ## 
                ## Gets the managedDeviceId property value. The managed device identifier of the cloud PC device. Optional. Read-only.
                ## @return a string
                ## 
                def managed_device_id
                    return @managed_device_id
                end
                ## 
                ## Sets the managedDeviceId property value. The managed device identifier of the cloud PC device. Optional. Read-only.
                ## @param value Value to set for the managed_device_id property.
                ## @return a void
                ## 
                def managed_device_id=(value)
                    @managed_device_id = value
                end
                ## 
                ## Gets the managedDeviceName property value. The managed device display name of the cloud PC device. Optional. Read-only.
                ## @return a string
                ## 
                def managed_device_name
                    return @managed_device_name
                end
                ## 
                ## Sets the managedDeviceName property value. The managed device display name of the cloud PC device. Optional. Read-only.
                ## @param value Value to set for the managed_device_name property.
                ## @return a void
                ## 
                def managed_device_name=(value)
                    @managed_device_name = value
                end
                ## 
                ## Gets the provisioningPolicyId property value. The provisioning policy identifier for the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def provisioning_policy_id
                    return @provisioning_policy_id
                end
                ## 
                ## Sets the provisioningPolicyId property value. The provisioning policy identifier for the cloud PC device. Required. Read-only.
                ## @param value Value to set for the provisioning_policy_id property.
                ## @return a void
                ## 
                def provisioning_policy_id=(value)
                    @provisioning_policy_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("cloudPcStatus", @cloud_pc_status)
                    writer.write_string_value("deviceSpecification", @device_specification)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                    writer.write_string_value("managedDeviceId", @managed_device_id)
                    writer.write_string_value("managedDeviceName", @managed_device_name)
                    writer.write_string_value("provisioningPolicyId", @provisioning_policy_id)
                    writer.write_string_value("servicePlanName", @service_plan_name)
                    writer.write_string_value("servicePlanType", @service_plan_type)
                    writer.write_string_value("tenantDisplayName", @tenant_display_name)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_string_value("userPrincipalName", @user_principal_name)
                end
                ## 
                ## Gets the servicePlanName property value. The service plan name of the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def service_plan_name
                    return @service_plan_name
                end
                ## 
                ## Sets the servicePlanName property value. The service plan name of the cloud PC device. Required. Read-only.
                ## @param value Value to set for the service_plan_name property.
                ## @return a void
                ## 
                def service_plan_name=(value)
                    @service_plan_name = value
                end
                ## 
                ## Gets the servicePlanType property value. The service plan type of the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def service_plan_type
                    return @service_plan_type
                end
                ## 
                ## Sets the servicePlanType property value. The service plan type of the cloud PC device. Required. Read-only.
                ## @param value Value to set for the service_plan_type property.
                ## @return a void
                ## 
                def service_plan_type=(value)
                    @service_plan_type = value
                end
                ## 
                ## Gets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
                ## @return a string
                ## 
                def tenant_display_name
                    return @tenant_display_name
                end
                ## 
                ## Sets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
                ## @param value Value to set for the tenant_display_name property.
                ## @return a void
                ## 
                def tenant_display_name=(value)
                    @tenant_display_name = value
                end
                ## 
                ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                ## @return a string
                ## 
                def tenant_id
                    return @tenant_id
                end
                ## 
                ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the cloud PC device. Required. Read-only.
                ## @return a string
                ## 
                def user_principal_name
                    return @user_principal_name
                end
                ## 
                ## Sets the userPrincipalName property value. The user principal name (UPN) of the user assigned to the cloud PC device. Required. Read-only.
                ## @param value Value to set for the user_principal_name property.
                ## @return a void
                ## 
                def user_principal_name=(value)
                    @user_principal_name = value
                end
            end
        end
    end
end
