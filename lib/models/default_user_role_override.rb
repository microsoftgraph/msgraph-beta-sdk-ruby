require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DefaultUserRoleOverride < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isDefault property
            @is_default
            ## 
            # The rolePermissions property
            @role_permissions
            ## 
            ## Instantiates a new DefaultUserRoleOverride and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a default_user_role_override
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DefaultUserRoleOverride.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                    "rolePermissions" => lambda {|n| @role_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRolePermission.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isDefault property value. The isDefault property
            ## @return a boolean
            ## 
            def is_default
                return @is_default
            end
            ## 
            ## Sets the isDefault property value. The isDefault property
            ## @param value Value to set for the isDefault property.
            ## @return a void
            ## 
            def is_default=(value)
                @is_default = value
            end
            ## 
            ## Gets the rolePermissions property value. The rolePermissions property
            ## @return a unified_role_permission
            ## 
            def role_permissions
                return @role_permissions
            end
            ## 
            ## Sets the rolePermissions property value. The rolePermissions property
            ## @param value Value to set for the rolePermissions property.
            ## @return a void
            ## 
            def role_permissions=(value)
                @role_permissions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDefault", @is_default)
                writer.write_collection_of_object_values("rolePermissions", @role_permissions)
            end
        end
    end
end
