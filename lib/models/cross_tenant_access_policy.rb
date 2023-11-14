require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CrossTenantAccessPolicy < MicrosoftGraphBeta::Models::TenantRelationshipAccessPolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Used to specify which Microsoft clouds an organization would like to collaborate with. By default, this value is empty. Supported values for this field are: microsoftonline.com, microsoftonline.us, and partner.microsoftonline.cn.
            @allowed_cloud_endpoints
            ## 
            # Defines the default configuration for how your organization interacts with external Microsoft Entra organizations.
            @default
            ## 
            # Defines partner-specific configurations for external Microsoft Entra organizations.
            @partners
            ## 
            # Represents the base policy in the directory for multi-tenant organization settings.
            @templates
            ## 
            ## Gets the allowedCloudEndpoints property value. Used to specify which Microsoft clouds an organization would like to collaborate with. By default, this value is empty. Supported values for this field are: microsoftonline.com, microsoftonline.us, and partner.microsoftonline.cn.
            ## @return a string
            ## 
            def allowed_cloud_endpoints
                return @allowed_cloud_endpoints
            end
            ## 
            ## Sets the allowedCloudEndpoints property value. Used to specify which Microsoft clouds an organization would like to collaborate with. By default, this value is empty. Supported values for this field are: microsoftonline.com, microsoftonline.us, and partner.microsoftonline.cn.
            ## @param value Value to set for the allowedCloudEndpoints property.
            ## @return a void
            ## 
            def allowed_cloud_endpoints=(value)
                @allowed_cloud_endpoints = value
            end
            ## 
            ## Instantiates a new crossTenantAccessPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.crossTenantAccessPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cross_tenant_access_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CrossTenantAccessPolicy.new
            end
            ## 
            ## Gets the default property value. Defines the default configuration for how your organization interacts with external Microsoft Entra organizations.
            ## @return a cross_tenant_access_policy_configuration_default
            ## 
            def default
                return @default
            end
            ## 
            ## Sets the default property value. Defines the default configuration for how your organization interacts with external Microsoft Entra organizations.
            ## @param value Value to set for the default property.
            ## @return a void
            ## 
            def default=(value)
                @default = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedCloudEndpoints" => lambda {|n| @allowed_cloud_endpoints = n.get_collection_of_primitive_values(String) },
                    "default" => lambda {|n| @default = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyConfigurationDefault.create_from_discriminator_value(pn) }) },
                    "partners" => lambda {|n| @partners = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CrossTenantAccessPolicyConfigurationPartner.create_from_discriminator_value(pn) }) },
                    "templates" => lambda {|n| @templates = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PolicyTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the partners property value. Defines partner-specific configurations for external Microsoft Entra organizations.
            ## @return a cross_tenant_access_policy_configuration_partner
            ## 
            def partners
                return @partners
            end
            ## 
            ## Sets the partners property value. Defines partner-specific configurations for external Microsoft Entra organizations.
            ## @param value Value to set for the partners property.
            ## @return a void
            ## 
            def partners=(value)
                @partners = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("allowedCloudEndpoints", @allowed_cloud_endpoints)
                writer.write_object_value("default", @default)
                writer.write_collection_of_object_values("partners", @partners)
                writer.write_object_value("templates", @templates)
            end
            ## 
            ## Gets the templates property value. Represents the base policy in the directory for multi-tenant organization settings.
            ## @return a policy_template
            ## 
            def templates
                return @templates
            end
            ## 
            ## Sets the templates property value. Represents the base policy in the directory for multi-tenant organization settings.
            ## @param value Value to set for the templates property.
            ## @return a void
            ## 
            def templates=(value)
                @templates = value
            end
        end
    end
end
