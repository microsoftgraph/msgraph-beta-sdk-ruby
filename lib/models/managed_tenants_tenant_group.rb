require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsTenantGroup < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A flag indicating whether all managed tenant are included in the tenant group. Required. Read-only.
            @all_tenants_included
            ## 
            # The display name for the tenant group. Optional. Read-only.
            @display_name
            ## 
            # The collection of management action associated with the tenant group. Optional. Read-only.
            @management_actions
            ## 
            # The collection of management intents associated with the tenant group. Optional. Read-only.
            @management_intents
            ## 
            # The collection of managed tenant identifiers include in the tenant group. Optional. Read-only.
            @tenant_ids
            ## 
            ## Gets the allTenantsIncluded property value. A flag indicating whether all managed tenant are included in the tenant group. Required. Read-only.
            ## @return a boolean
            ## 
            def all_tenants_included
                return @all_tenants_included
            end
            ## 
            ## Sets the allTenantsIncluded property value. A flag indicating whether all managed tenant are included in the tenant group. Required. Read-only.
            ## @param value Value to set for the allTenantsIncluded property.
            ## @return a void
            ## 
            def all_tenants_included=(value)
                @all_tenants_included = value
            end
            ## 
            ## Instantiates a new managedTenantsTenantGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_tenant_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsTenantGroup.new
            end
            ## 
            ## Gets the displayName property value. The display name for the tenant group. Optional. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the tenant group. Optional. Read-only.
            ## @param value Value to set for the displayName property.
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
                    "allTenantsIncluded" => lambda {|n| @all_tenants_included = n.get_boolean_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "managementActions" => lambda {|n| @management_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementActionInfo.create_from_discriminator_value(pn) }) },
                    "managementIntents" => lambda {|n| @management_intents = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagementIntentInfo.create_from_discriminator_value(pn) }) },
                    "tenantIds" => lambda {|n| @tenant_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the managementActions property value. The collection of management action associated with the tenant group. Optional. Read-only.
            ## @return a managed_tenants_management_action_info
            ## 
            def management_actions
                return @management_actions
            end
            ## 
            ## Sets the managementActions property value. The collection of management action associated with the tenant group. Optional. Read-only.
            ## @param value Value to set for the managementActions property.
            ## @return a void
            ## 
            def management_actions=(value)
                @management_actions = value
            end
            ## 
            ## Gets the managementIntents property value. The collection of management intents associated with the tenant group. Optional. Read-only.
            ## @return a managed_tenants_management_intent_info
            ## 
            def management_intents
                return @management_intents
            end
            ## 
            ## Sets the managementIntents property value. The collection of management intents associated with the tenant group. Optional. Read-only.
            ## @param value Value to set for the managementIntents property.
            ## @return a void
            ## 
            def management_intents=(value)
                @management_intents = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allTenantsIncluded", @all_tenants_included)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("managementActions", @management_actions)
                writer.write_collection_of_object_values("managementIntents", @management_intents)
                writer.write_collection_of_primitive_values("tenantIds", @tenant_ids)
            end
            ## 
            ## Gets the tenantIds property value. The collection of managed tenant identifiers include in the tenant group. Optional. Read-only.
            ## @return a string
            ## 
            def tenant_ids
                return @tenant_ids
            end
            ## 
            ## Sets the tenantIds property value. The collection of managed tenant identifiers include in the tenant group. Optional. Read-only.
            ## @param value Value to set for the tenantIds property.
            ## @return a void
            ## 
            def tenant_ids=(value)
                @tenant_ids = value
            end
        end
    end
end
