require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class CloudPcConnection < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The display name of the cloud PC connection. Required. Read-only.
                @display_name
                ## 
                # The health status of the cloud PC connection. Possible values are: pending, running, passed, failed, unknownFutureValue.  Required. Read-only.
                @health_check_status
                ## 
                # Date and time the entity was last updated in the multi-tenant management platform. Required. Read-only.
                @last_refreshed_date_time
                ## 
                # The display name for the managed tenant. Required. Read-only.
                @tenant_display_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
                @tenant_id
                ## 
                ## Instantiates a new cloudPcConnection and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a cloud_pc_connection
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CloudPcConnection.new
                end
                ## 
                ## Gets the displayName property value. The display name of the cloud PC connection. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name of the cloud PC connection. Required. Read-only.
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
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "healthCheckStatus" => lambda {|n| @health_check_status = n.get_string_value() },
                        "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                        "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the healthCheckStatus property value. The health status of the cloud PC connection. Possible values are: pending, running, passed, failed, unknownFutureValue.  Required. Read-only.
                ## @return a string
                ## 
                def health_check_status
                    return @health_check_status
                end
                ## 
                ## Sets the healthCheckStatus property value. The health status of the cloud PC connection. Possible values are: pending, running, passed, failed, unknownFutureValue.  Required. Read-only.
                ## @param value Value to set for the health_check_status property.
                ## @return a void
                ## 
                def health_check_status=(value)
                    @health_check_status = value
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("healthCheckStatus", @health_check_status)
                    writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
                    writer.write_string_value("tenantDisplayName", @tenant_display_name)
                    writer.write_string_value("tenantId", @tenant_id)
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
            end
        end
    end
end
