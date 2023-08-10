require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuditUserIdentity < MicrosoftGraphBeta::Models::UserIdentity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # For user sign ins, the identifier of the tenant that the user is a member of.
            @home_tenant_id
            ## 
            # For user sign ins, the name of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Azure AD to show the tenant content.
            @home_tenant_name
            ## 
            ## Instantiates a new auditUserIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.auditUserIdentity"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a audit_user_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuditUserIdentity.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "homeTenantId" => lambda {|n| @home_tenant_id = n.get_string_value() },
                    "homeTenantName" => lambda {|n| @home_tenant_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the homeTenantId property value. For user sign ins, the identifier of the tenant that the user is a member of.
            ## @return a string
            ## 
            def home_tenant_id
                return @home_tenant_id
            end
            ## 
            ## Sets the homeTenantId property value. For user sign ins, the identifier of the tenant that the user is a member of.
            ## @param value Value to set for the homeTenantId property.
            ## @return a void
            ## 
            def home_tenant_id=(value)
                @home_tenant_id = value
            end
            ## 
            ## Gets the homeTenantName property value. For user sign ins, the name of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Azure AD to show the tenant content.
            ## @return a string
            ## 
            def home_tenant_name
                return @home_tenant_name
            end
            ## 
            ## Sets the homeTenantName property value. For user sign ins, the name of the tenant that the user is a member of. Only populated in cases where the home tenant has provided affirmative consent to Azure AD to show the tenant content.
            ## @param value Value to set for the homeTenantName property.
            ## @return a void
            ## 
            def home_tenant_name=(value)
                @home_tenant_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("homeTenantId", @home_tenant_id)
                writer.write_string_value("homeTenantName", @home_tenant_name)
            end
        end
    end
end
