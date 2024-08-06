require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsTenantCustomizedInformation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Describes the relationship between the Managed Services Provider and the managed tenant; for example, Managed, Co-managed, Licensing. The maximum length is 250 characters. Optional.
            @business_relationship
            ## 
            # Contains the compliance requirements for the customer tenant; for example, HIPPA, NIST, CMMC. The maximum length is 250 characters per compliance requirement. Optional.
            @compliance_requirements
            ## 
            # The collection of contacts for the managed tenant. Optional.
            @contacts
            ## 
            # The display name for the managed tenant. Required. Read-only.
            @display_name
            ## 
            # This is the Managed Services Plans for the customer tenant that the Managed Services Provider manages. The maximum length is 250 characters per managed service plan. Optional.
            @managed_services_plans
            ## 
            # A field for the Managed Services Provider technician to input custom text to share notes between technicians within the Managed Service Providers. The maximum length is 5000 characters. Optional.
            @note
            ## 
            # The date on which the note field of this entity was last modified. Optional.
            @note_last_modified_date_time
            ## 
            # The list of Entra user IDs for users in the Managed Services Provider that manage the relationship with the managed tenant. Optional.
            @partner_relationship_manager_user_ids
            ## 
            # The Microsoft Entra tenant identifier for the managed tenant. Optional. Read-only.
            @tenant_id
            ## 
            # The website for the managed tenant. Required.
            @website
            ## 
            ## Gets the businessRelationship property value. Describes the relationship between the Managed Services Provider and the managed tenant; for example, Managed, Co-managed, Licensing. The maximum length is 250 characters. Optional.
            ## @return a string
            ## 
            def business_relationship
                return @business_relationship
            end
            ## 
            ## Sets the businessRelationship property value. Describes the relationship between the Managed Services Provider and the managed tenant; for example, Managed, Co-managed, Licensing. The maximum length is 250 characters. Optional.
            ## @param value Value to set for the businessRelationship property.
            ## @return a void
            ## 
            def business_relationship=(value)
                @business_relationship = value
            end
            ## 
            ## Gets the complianceRequirements property value. Contains the compliance requirements for the customer tenant; for example, HIPPA, NIST, CMMC. The maximum length is 250 characters per compliance requirement. Optional.
            ## @return a string
            ## 
            def compliance_requirements
                return @compliance_requirements
            end
            ## 
            ## Sets the complianceRequirements property value. Contains the compliance requirements for the customer tenant; for example, HIPPA, NIST, CMMC. The maximum length is 250 characters per compliance requirement. Optional.
            ## @param value Value to set for the complianceRequirements property.
            ## @return a void
            ## 
            def compliance_requirements=(value)
                @compliance_requirements = value
            end
            ## 
            ## Instantiates a new ManagedTenantsTenantCustomizedInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contacts property value. The collection of contacts for the managed tenant. Optional.
            ## @return a managed_tenants_tenant_contact_information
            ## 
            def contacts
                return @contacts
            end
            ## 
            ## Sets the contacts property value. The collection of contacts for the managed tenant. Optional.
            ## @param value Value to set for the contacts property.
            ## @return a void
            ## 
            def contacts=(value)
                @contacts = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_tenant_customized_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsTenantCustomizedInformation.new
            end
            ## 
            ## Gets the displayName property value. The display name for the managed tenant. Required. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the managed tenant. Required. Read-only.
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
                    "businessRelationship" => lambda {|n| @business_relationship = n.get_string_value() },
                    "complianceRequirements" => lambda {|n| @compliance_requirements = n.get_collection_of_primitive_values(String) },
                    "contacts" => lambda {|n| @contacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsTenantContactInformation.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "managedServicesPlans" => lambda {|n| @managed_services_plans = n.get_collection_of_primitive_values(String) },
                    "note" => lambda {|n| @note = n.get_string_value() },
                    "noteLastModifiedDateTime" => lambda {|n| @note_last_modified_date_time = n.get_date_time_value() },
                    "partnerRelationshipManagerUserIds" => lambda {|n| @partner_relationship_manager_user_ids = n.get_collection_of_primitive_values(String) },
                    "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                    "website" => lambda {|n| @website = n.get_string_value() },
                })
            end
            ## 
            ## Gets the managedServicesPlans property value. This is the Managed Services Plans for the customer tenant that the Managed Services Provider manages. The maximum length is 250 characters per managed service plan. Optional.
            ## @return a string
            ## 
            def managed_services_plans
                return @managed_services_plans
            end
            ## 
            ## Sets the managedServicesPlans property value. This is the Managed Services Plans for the customer tenant that the Managed Services Provider manages. The maximum length is 250 characters per managed service plan. Optional.
            ## @param value Value to set for the managedServicesPlans property.
            ## @return a void
            ## 
            def managed_services_plans=(value)
                @managed_services_plans = value
            end
            ## 
            ## Gets the note property value. A field for the Managed Services Provider technician to input custom text to share notes between technicians within the Managed Service Providers. The maximum length is 5000 characters. Optional.
            ## @return a string
            ## 
            def note
                return @note
            end
            ## 
            ## Sets the note property value. A field for the Managed Services Provider technician to input custom text to share notes between technicians within the Managed Service Providers. The maximum length is 5000 characters. Optional.
            ## @param value Value to set for the note property.
            ## @return a void
            ## 
            def note=(value)
                @note = value
            end
            ## 
            ## Gets the noteLastModifiedDateTime property value. The date on which the note field of this entity was last modified. Optional.
            ## @return a date_time
            ## 
            def note_last_modified_date_time
                return @note_last_modified_date_time
            end
            ## 
            ## Sets the noteLastModifiedDateTime property value. The date on which the note field of this entity was last modified. Optional.
            ## @param value Value to set for the noteLastModifiedDateTime property.
            ## @return a void
            ## 
            def note_last_modified_date_time=(value)
                @note_last_modified_date_time = value
            end
            ## 
            ## Gets the partnerRelationshipManagerUserIds property value. The list of Entra user IDs for users in the Managed Services Provider that manage the relationship with the managed tenant. Optional.
            ## @return a string
            ## 
            def partner_relationship_manager_user_ids
                return @partner_relationship_manager_user_ids
            end
            ## 
            ## Sets the partnerRelationshipManagerUserIds property value. The list of Entra user IDs for users in the Managed Services Provider that manage the relationship with the managed tenant. Optional.
            ## @param value Value to set for the partnerRelationshipManagerUserIds property.
            ## @return a void
            ## 
            def partner_relationship_manager_user_ids=(value)
                @partner_relationship_manager_user_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("businessRelationship", @business_relationship)
                writer.write_collection_of_primitive_values("complianceRequirements", @compliance_requirements)
                writer.write_collection_of_object_values("contacts", @contacts)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("managedServicesPlans", @managed_services_plans)
                writer.write_string_value("note", @note)
                writer.write_date_time_value("noteLastModifiedDateTime", @note_last_modified_date_time)
                writer.write_collection_of_primitive_values("partnerRelationshipManagerUserIds", @partner_relationship_manager_user_ids)
                writer.write_string_value("tenantId", @tenant_id)
                writer.write_string_value("website", @website)
            end
            ## 
            ## Gets the tenantId property value. The Microsoft Entra tenant identifier for the managed tenant. Optional. Read-only.
            ## @return a string
            ## 
            def tenant_id
                return @tenant_id
            end
            ## 
            ## Sets the tenantId property value. The Microsoft Entra tenant identifier for the managed tenant. Optional. Read-only.
            ## @param value Value to set for the tenantId property.
            ## @return a void
            ## 
            def tenant_id=(value)
                @tenant_id = value
            end
            ## 
            ## Gets the website property value. The website for the managed tenant. Required.
            ## @return a string
            ## 
            def website
                return @website
            end
            ## 
            ## Sets the website property value. The website for the managed tenant. Required.
            ## @param value Value to set for the website property.
            ## @return a void
            ## 
            def website=(value)
                @website = value
            end
        end
    end
end
