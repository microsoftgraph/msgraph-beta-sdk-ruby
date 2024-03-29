require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MultiTenantOrganizationPartnerConfigurationTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The automaticUserConsentSettings property
            @automatic_user_consent_settings
            ## 
            # The b2bCollaborationInbound property
            @b2b_collaboration_inbound
            ## 
            # The b2bCollaborationOutbound property
            @b2b_collaboration_outbound
            ## 
            # The b2bDirectConnectInbound property
            @b2b_direct_connect_inbound
            ## 
            # The b2bDirectConnectOutbound property
            @b2b_direct_connect_outbound
            ## 
            # The inboundTrust property
            @inbound_trust
            ## 
            # The templateApplicationLevel property
            @template_application_level
            ## 
            ## Gets the automaticUserConsentSettings property value. The automaticUserConsentSettings property
            ## @return a inbound_outbound_policy_configuration
            ## 
            def automatic_user_consent_settings
                return @automatic_user_consent_settings
            end
            ## 
            ## Sets the automaticUserConsentSettings property value. The automaticUserConsentSettings property
            ## @param value Value to set for the automaticUserConsentSettings property.
            ## @return a void
            ## 
            def automatic_user_consent_settings=(value)
                @automatic_user_consent_settings = value
            end
            ## 
            ## Gets the b2bCollaborationInbound property value. The b2bCollaborationInbound property
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_inbound
                return @b2b_collaboration_inbound
            end
            ## 
            ## Sets the b2bCollaborationInbound property value. The b2bCollaborationInbound property
            ## @param value Value to set for the b2bCollaborationInbound property.
            ## @return a void
            ## 
            def b2b_collaboration_inbound=(value)
                @b2b_collaboration_inbound = value
            end
            ## 
            ## Gets the b2bCollaborationOutbound property value. The b2bCollaborationOutbound property
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_collaboration_outbound
                return @b2b_collaboration_outbound
            end
            ## 
            ## Sets the b2bCollaborationOutbound property value. The b2bCollaborationOutbound property
            ## @param value Value to set for the b2bCollaborationOutbound property.
            ## @return a void
            ## 
            def b2b_collaboration_outbound=(value)
                @b2b_collaboration_outbound = value
            end
            ## 
            ## Gets the b2bDirectConnectInbound property value. The b2bDirectConnectInbound property
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_inbound
                return @b2b_direct_connect_inbound
            end
            ## 
            ## Sets the b2bDirectConnectInbound property value. The b2bDirectConnectInbound property
            ## @param value Value to set for the b2bDirectConnectInbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_inbound=(value)
                @b2b_direct_connect_inbound = value
            end
            ## 
            ## Gets the b2bDirectConnectOutbound property value. The b2bDirectConnectOutbound property
            ## @return a cross_tenant_access_policy_b2_b_setting
            ## 
            def b2b_direct_connect_outbound
                return @b2b_direct_connect_outbound
            end
            ## 
            ## Sets the b2bDirectConnectOutbound property value. The b2bDirectConnectOutbound property
            ## @param value Value to set for the b2bDirectConnectOutbound property.
            ## @return a void
            ## 
            def b2b_direct_connect_outbound=(value)
                @b2b_direct_connect_outbound = value
            end
            ## 
            ## Instantiates a new multiTenantOrganizationPartnerConfigurationTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a multi_tenant_organization_partner_configuration_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MultiTenantOrganizationPartnerConfigurationTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "automaticUserConsentSettings" => lambda {|n| @automatic_user_consent_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InboundOutboundPolicyConfiguration.create_from_discriminator_value(pn) }) },
                    "b2bCollaborationInbound" => lambda {|n| @b2b_collaboration_inbound = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bCollaborationOutbound" => lambda {|n| @b2b_collaboration_outbound = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectInbound" => lambda {|n| @b2b_direct_connect_inbound = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "b2bDirectConnectOutbound" => lambda {|n| @b2b_direct_connect_outbound = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyB2BSetting.create_from_discriminator_value(pn) }) },
                    "inboundTrust" => lambda {|n| @inbound_trust = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyInboundTrust.create_from_discriminator_value(pn) }) },
                    "templateApplicationLevel" => lambda {|n| @template_application_level = n.get_enum_value(MicrosoftGraphBeta::Models::TemplateApplicationLevel) },
                })
            end
            ## 
            ## Gets the inboundTrust property value. The inboundTrust property
            ## @return a cross_tenant_access_policy_inbound_trust
            ## 
            def inbound_trust
                return @inbound_trust
            end
            ## 
            ## Sets the inboundTrust property value. The inboundTrust property
            ## @param value Value to set for the inboundTrust property.
            ## @return a void
            ## 
            def inbound_trust=(value)
                @inbound_trust = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("automaticUserConsentSettings", @automatic_user_consent_settings)
                writer.write_object_value("b2bCollaborationInbound", @b2b_collaboration_inbound)
                writer.write_object_value("b2bCollaborationOutbound", @b2b_collaboration_outbound)
                writer.write_object_value("b2bDirectConnectInbound", @b2b_direct_connect_inbound)
                writer.write_object_value("b2bDirectConnectOutbound", @b2b_direct_connect_outbound)
                writer.write_object_value("inboundTrust", @inbound_trust)
                writer.write_enum_value("templateApplicationLevel", @template_application_level)
            end
            ## 
            ## Gets the templateApplicationLevel property value. The templateApplicationLevel property
            ## @return a template_application_level
            ## 
            def template_application_level
                return @template_application_level
            end
            ## 
            ## Sets the templateApplicationLevel property value. The templateApplicationLevel property
            ## @param value Value to set for the templateApplicationLevel property.
            ## @return a void
            ## 
            def template_application_level=(value)
                @template_application_level = value
            end
        end
    end
end
