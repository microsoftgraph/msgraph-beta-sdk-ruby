require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta
    module Models
        module ManagedTenants
            class TenantCustomizedInformation < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The collection of contacts for the managed tenant. Optional.
                @contacts
                ## 
                # The display name for the managed tenant. Required. Read-only.
                @display_name
                ## 
                # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
                @tenant_id
                ## 
                # The website for the managed tenant. Required.
                @website
                ## 
                ## Instantiates a new tenantCustomizedInformation and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Gets the contacts property value. The collection of contacts for the managed tenant. Optional.
                ## @return a tenant_contact_information
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
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a tenant_customized_information
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TenantCustomizedInformation.new
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
                        "contacts" => lambda {|n| @contacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenants::TenantContactInformation.create_from_discriminator_value(pn) }) },
                        "displayName" => lambda {|n| @display_name = n.get_string_value() },
                        "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                        "website" => lambda {|n| @website = n.get_string_value() },
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
                    writer.write_collection_of_object_values("contacts", @contacts)
                    writer.write_string_value("displayName", @display_name)
                    writer.write_string_value("tenantId", @tenant_id)
                    writer.write_string_value("website", @website)
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
end
