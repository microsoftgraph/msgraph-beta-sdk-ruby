require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Models.partner.securityCustomersMfaEnforcedSecurityRequirement < MicrosoftGraphBeta::Models::Models.partner.securitySecurityRequirement
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of customer tenants that are compliant.
            @compliant_tenant_count
            ## 
            # The total number of customer tenants associated with this partner
            @total_tenant_count
            ## 
            ## Gets the compliantTenantCount property value. The number of customer tenants that are compliant.
            ## @return a int64
            ## 
            def compliant_tenant_count
                return @compliant_tenant_count
            end
            ## 
            ## Sets the compliantTenantCount property value. The number of customer tenants that are compliant.
            ## @param value Value to set for the compliantTenantCount property.
            ## @return a void
            ## 
            def compliant_tenant_count=(value)
                @compliant_tenant_count = value
            end
            ## 
            ## Instantiates a new Models.partner.securityCustomersMfaEnforcedSecurityRequirement and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a models.partner.security_customers_mfa_enforced_security_requirement
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Models.partner.securityCustomersMfaEnforcedSecurityRequirement.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantTenantCount" => lambda {|n| @compliant_tenant_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "totalTenantCount" => lambda {|n| @total_tenant_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("compliantTenantCount", @compliant_tenant_count)
                writer.write_object_value("totalTenantCount", @total_tenant_count)
            end
            ## 
            ## Gets the totalTenantCount property value. The total number of customer tenants associated with this partner
            ## @return a int64
            ## 
            def total_tenant_count
                return @total_tenant_count
            end
            ## 
            ## Sets the totalTenantCount property value. The total number of customer tenants associated with this partner
            ## @param value Value to set for the totalTenantCount property.
            ## @return a void
            ## 
            def total_tenant_count=(value)
                @total_tenant_count = value
            end
        end
    end
end
