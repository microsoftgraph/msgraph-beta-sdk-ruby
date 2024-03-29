require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PolicyTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The multiTenantOrganizationIdentitySynchronization property
            @multi_tenant_organization_identity_synchronization
            ## 
            # The multiTenantOrganizationPartnerConfiguration property
            @multi_tenant_organization_partner_configuration
            ## 
            ## Instantiates a new policyTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a policy_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PolicyTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "multiTenantOrganizationIdentitySynchronization" => lambda {|n| @multi_tenant_organization_identity_synchronization = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationIdentitySyncPolicyTemplate.create_from_discriminator_value(pn) }) },
                    "multiTenantOrganizationPartnerConfiguration" => lambda {|n| @multi_tenant_organization_partner_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MultiTenantOrganizationPartnerConfigurationTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the multiTenantOrganizationIdentitySynchronization property value. The multiTenantOrganizationIdentitySynchronization property
            ## @return a multi_tenant_organization_identity_sync_policy_template
            ## 
            def multi_tenant_organization_identity_synchronization
                return @multi_tenant_organization_identity_synchronization
            end
            ## 
            ## Sets the multiTenantOrganizationIdentitySynchronization property value. The multiTenantOrganizationIdentitySynchronization property
            ## @param value Value to set for the multiTenantOrganizationIdentitySynchronization property.
            ## @return a void
            ## 
            def multi_tenant_organization_identity_synchronization=(value)
                @multi_tenant_organization_identity_synchronization = value
            end
            ## 
            ## Gets the multiTenantOrganizationPartnerConfiguration property value. The multiTenantOrganizationPartnerConfiguration property
            ## @return a multi_tenant_organization_partner_configuration_template
            ## 
            def multi_tenant_organization_partner_configuration
                return @multi_tenant_organization_partner_configuration
            end
            ## 
            ## Sets the multiTenantOrganizationPartnerConfiguration property value. The multiTenantOrganizationPartnerConfiguration property
            ## @param value Value to set for the multiTenantOrganizationPartnerConfiguration property.
            ## @return a void
            ## 
            def multi_tenant_organization_partner_configuration=(value)
                @multi_tenant_organization_partner_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("multiTenantOrganizationIdentitySynchronization", @multi_tenant_organization_identity_synchronization)
                writer.write_object_value("multiTenantOrganizationPartnerConfiguration", @multi_tenant_organization_partner_configuration)
            end
        end
    end
end
