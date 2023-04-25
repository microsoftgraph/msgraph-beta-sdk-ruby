require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class Tenant < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The relationship details for the tenant with the managing entity.
                @contract
                ## 
                # The date and time the tenant was created in the multi-tenant management platform. Optional. Read-only.
                @created_date_time
                ## 
                # The display name for the tenant. Required. Read-only.
                @display_name
                ## 
                # The date and time the tenant was last updated within the multi-tenant management platform. Optional. Read-only.
                @last_updated_date_time
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
                @tenant_id
                ## 
                # The onboarding status information for the tenant. Optional. Read-only.
                @tenant_status_information
                ## 
                ## Instantiates a new tenant and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the contract property value. The relationship details for the tenant with the managing entity.
                ## @return a tenant_contract
                ## 
                def contract
                    return @contract
                end
                ## 
                ## Sets the contract property value. The relationship details for the tenant with the managing entity.
                ## @param value Value to set for the contract property.
                ## @return a void
                ## 
                def contract=(value)
                    @contract = value
                end
                ## 
                ## Gets the createdDateTime property value. The date and time the tenant was created in the multi-tenant management platform. Optional. Read-only.
                ## @return a date_time
                ## 
                def created_date_time
                    return @created_date_time
                end
                ## 
                ## Sets the createdDateTime property value. The date and time the tenant was created in the multi-tenant management platform. Optional. Read-only.
                ## @param value Value to set for the created_date_time property.
                ## @return a void
                ## 
                def created_date_time=(value)
                    @created_date_time = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tenant
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Tenant.new
                end
                ## 
                ## Gets the displayName property value. The display name for the tenant. Required. Read-only.
                ## @return a string
                ## 
                def display_name
                    return @display_name
                end
                ## 
                ## Sets the displayName property value. The display name for the tenant. Required. Read-only.
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
                        "contract" => lambda {|n| @contract = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::TenantContract.create_from_discriminator_value(pn) }) },
                        "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "tenantStatusInformation" => lambda {|n| @tenant_status_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::TenantStatusInformation.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the lastUpdatedDateTime property value. The date and time the tenant was last updated within the multi-tenant management platform. Optional. Read-only.
                ## @return a date_time
                ## 
                def last_updated_date_time
                    return @last_updated_date_time
                end
                ## 
                ## Sets the lastUpdatedDateTime property value. The date and time the tenant was last updated within the multi-tenant management platform. Optional. Read-only.
                ## @param value Value to set for the last_updated_date_time property.
                ## @return a void
                ## 
                def last_updated_date_time=(value)
                    @last_updated_date_time = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("contract", @contract)
                    writer.write_date_time_value("createdDateTime", @created_date_time)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_object_value("tenantStatusInformation", @tenant_status_information)
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
                ## @param value Value to set for the tenant_id property.
                ## @return a void
                ## 
                def tenant_id=(value)
                    @tenant_id = value
                end
                ## 
                ## Gets the tenantStatusInformation property value. The onboarding status information for the tenant. Optional. Read-only.
                ## @return a tenant_status_information
                ## 
                def tenant_status_information
                    return @tenant_status_information
                end
                ## 
                ## Sets the tenantStatusInformation property value. The onboarding status information for the tenant. Optional. Read-only.
                ## @param value Value to set for the tenant_status_information property.
                ## @return a void
                ## 
                def tenant_status_information=(value)
                    @tenant_status_information = value
                end
            end
        end
    end
end
