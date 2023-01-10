require 'microsoft_kiota_abstractions'
require_relative './managed_tenants/managed_tenant'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TenantRelationship < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The customer who has a delegated admin relationship with a Microsoft partner.
        @delegated_admin_customers
        ## 
        # The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
        @delegated_admin_relationships
        ## 
        # The operations available to interact with the multi-tenant management platform.
        @managed_tenants
        ## 
        ## Instantiates a new TenantRelationship and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a tenant_relationship
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TenantRelationship.new
        end
        ## 
        ## Gets the delegatedAdminCustomers property value. The customer who has a delegated admin relationship with a Microsoft partner.
        ## @return a delegated_admin_customer
        ## 
        def delegated_admin_customers
            return @delegated_admin_customers
        end
        ## 
        ## Sets the delegatedAdminCustomers property value. The customer who has a delegated admin relationship with a Microsoft partner.
        ## @param value Value to set for the delegatedAdminCustomers property.
        ## @return a void
        ## 
        def delegated_admin_customers=(value)
            @delegated_admin_customers = value
        end
        ## 
        ## Gets the delegatedAdminRelationships property value. The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
        ## @return a delegated_admin_relationship
        ## 
        def delegated_admin_relationships
            return @delegated_admin_relationships
        end
        ## 
        ## Sets the delegatedAdminRelationships property value. The details of the delegated administrative privileges that a Microsoft partner has in a customer tenant.
        ## @param value Value to set for the delegatedAdminRelationships property.
        ## @return a void
        ## 
        def delegated_admin_relationships=(value)
            @delegated_admin_relationships = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "delegatedAdminCustomers" => lambda {|n| @delegated_admin_customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DelegatedAdminCustomer.create_from_discriminator_value(pn) }) },
                "delegatedAdminRelationships" => lambda {|n| @delegated_admin_relationships = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DelegatedAdminRelationship.create_from_discriminator_value(pn) }) },
                "managedTenants" => lambda {|n| @managed_tenants = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::ManagedTenant.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the managedTenants property value. The operations available to interact with the multi-tenant management platform.
        ## @return a managed_tenant
        ## 
        def managed_tenants
            return @managed_tenants
        end
        ## 
        ## Sets the managedTenants property value. The operations available to interact with the multi-tenant management platform.
        ## @param value Value to set for the managedTenants property.
        ## @return a void
        ## 
        def managed_tenants=(value)
            @managed_tenants = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("delegatedAdminCustomers", @delegated_admin_customers)
            writer.write_collection_of_object_values("delegatedAdminRelationships", @delegated_admin_relationships)
            writer.write_object_value("managedTenants", @managed_tenants)
        end
    end
end
