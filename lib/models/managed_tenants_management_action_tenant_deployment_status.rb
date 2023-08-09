require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementActionTenantDeploymentStatus < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of deployment status for each instance of a management action. Optional.
            @statuses
            ## 
            # The identifier for the tenant group that is associated with the management action. Required. Read-only.
            @tenant_group_id
            ## 
            # The Azure Active Directory tenant identifier for the managed tenant. Required. Read-only.
            @tenant_id
            ## 
            ## Instantiates a new managementActionTenantDeploymentStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_management_action_tenant_deployment_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementActionTenantDeploymentStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "statuses" => lambda {|n| @statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementActionDeploymentStatus.create_from_discriminator_value(pn) }) },
                    "tenantGroupId" => lambda {|n| @tenant_group_id = n.get_string_value() },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("statuses", @statuses)
                writer.write_string_value("tenantGroupId", @tenant_group_id)
                writer.write_string_value("tenantId", @tenant_id)
            end
            ## 
            ## Gets the statuses property value. The collection of deployment status for each instance of a management action. Optional.
            ## @return a managed_tenants_management_action_deployment_status
            ## 
            def statuses
                return @statuses
            end
            ## 
            ## Sets the statuses property value. The collection of deployment status for each instance of a management action. Optional.
            ## @param value Value to set for the statuses property.
            ## @return a void
            ## 
            def statuses=(value)
                @statuses = value
            end
            ## 
            ## Gets the tenantGroupId property value. The identifier for the tenant group that is associated with the management action. Required. Read-only.
            ## @return a string
            ## 
            def tenant_group_id
                return @tenant_group_id
            end
            ## 
            ## Sets the tenantGroupId property value. The identifier for the tenant group that is associated with the management action. Required. Read-only.
            ## @param value Value to set for the tenantGroupId property.
            ## @return a void
            ## 
            def tenant_group_id=(value)
                @tenant_group_id = value
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
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
        end
    end
end
