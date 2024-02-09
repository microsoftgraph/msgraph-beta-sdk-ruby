require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The conditionalAccess property
            @conditional_access
            ## 
            # The crossTenantAccess property
            @cross_tenant_access
            ## 
            # The enrichedAuditLogs property
            @enriched_audit_logs
            ## 
            # The forwardingOptions property
            @forwarding_options
            ## 
            ## Gets the conditionalAccess property value. The conditionalAccess property
            ## @return a networkaccess_conditional_access_settings
            ## 
            def conditional_access
                return @conditional_access
            end
            ## 
            ## Sets the conditionalAccess property value. The conditionalAccess property
            ## @param value Value to set for the conditionalAccess property.
            ## @return a void
            ## 
            def conditional_access=(value)
                @conditional_access = value
            end
            ## 
            ## Instantiates a new NetworkaccessSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessSettings.new
            end
            ## 
            ## Gets the crossTenantAccess property value. The crossTenantAccess property
            ## @return a networkaccess_cross_tenant_access_settings
            ## 
            def cross_tenant_access
                return @cross_tenant_access
            end
            ## 
            ## Sets the crossTenantAccess property value. The crossTenantAccess property
            ## @param value Value to set for the crossTenantAccess property.
            ## @return a void
            ## 
            def cross_tenant_access=(value)
                @cross_tenant_access = value
            end
            ## 
            ## Gets the enrichedAuditLogs property value. The enrichedAuditLogs property
            ## @return a networkaccess_enriched_audit_logs
            ## 
            def enriched_audit_logs
                return @enriched_audit_logs
            end
            ## 
            ## Sets the enrichedAuditLogs property value. The enrichedAuditLogs property
            ## @param value Value to set for the enrichedAuditLogs property.
            ## @return a void
            ## 
            def enriched_audit_logs=(value)
                @enriched_audit_logs = value
            end
            ## 
            ## Gets the forwardingOptions property value. The forwardingOptions property
            ## @return a networkaccess_forwarding_options
            ## 
            def forwarding_options
                return @forwarding_options
            end
            ## 
            ## Sets the forwardingOptions property value. The forwardingOptions property
            ## @param value Value to set for the forwardingOptions property.
            ## @return a void
            ## 
            def forwarding_options=(value)
                @forwarding_options = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conditionalAccess" => lambda {|n| @conditional_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessConditionalAccessSettings.create_from_discriminator_value(pn) }) },
                    "crossTenantAccess" => lambda {|n| @cross_tenant_access = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessCrossTenantAccessSettings.create_from_discriminator_value(pn) }) },
                    "enrichedAuditLogs" => lambda {|n| @enriched_audit_logs = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessEnrichedAuditLogs.create_from_discriminator_value(pn) }) },
                    "forwardingOptions" => lambda {|n| @forwarding_options = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessForwardingOptions.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("conditionalAccess", @conditional_access)
                writer.write_object_value("crossTenantAccess", @cross_tenant_access)
                writer.write_object_value("enrichedAuditLogs", @enriched_audit_logs)
                writer.write_object_value("forwardingOptions", @forwarding_options)
            end
        end
    end
end
