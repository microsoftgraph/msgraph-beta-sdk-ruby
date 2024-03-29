require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The Role Definition resource. The role definition is the foundation of role based access in Intune. The role combines an Intune resource such as a Mobile App and associated role permissions such as Create or Read for the resource. There are two types of roles, built-in and custom. Built-in roles cannot be modified. Both built-in roles and custom roles must have assignments to be enforced. Create custom roles if you want to define a role that allows any of the available resources and role permissions to be combined into a single role.
        class RoleDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the Role definition.
            @description
            ## 
            # Display Name of the Role definition.
            @display_name
            ## 
            # Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            @is_built_in
            ## 
            # Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            @is_built_in_role_definition
            ## 
            # List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            @permissions
            ## 
            # List of Role assignments for this role definition.
            @role_assignments
            ## 
            # List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            @role_permissions
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            ## Instantiates a new roleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a role_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceAndAppManagementRoleDefinition"
                            return DeviceAndAppManagementRoleDefinition.new
                    end
                end
                return RoleDefinition.new
            end
            ## 
            ## Gets the description property value. Description of the Role definition.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the Role definition.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display Name of the Role definition.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display Name of the Role definition.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                    "isBuiltInRoleDefinition" => lambda {|n| @is_built_in_role_definition = n.get_boolean_value() },
                    "permissions" => lambda {|n| @permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RolePermission.create_from_discriminator_value(pn) }) },
                    "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleAssignment.create_from_discriminator_value(pn) }) },
                    "rolePermissions" => lambda {|n| @role_permissions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RolePermission.create_from_discriminator_value(pn) }) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the isBuiltIn property value. Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            ## @param value Value to set for the isBuiltIn property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Gets the isBuiltInRoleDefinition property value. Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            ## @return a boolean
            ## 
            def is_built_in_role_definition
                return @is_built_in_role_definition
            end
            ## 
            ## Sets the isBuiltInRoleDefinition property value. Type of Role. Set to True if it is built-in, or set to False if it is a custom role definition.
            ## @param value Value to set for the isBuiltInRoleDefinition property.
            ## @return a void
            ## 
            def is_built_in_role_definition=(value)
                @is_built_in_role_definition = value
            end
            ## 
            ## Gets the permissions property value. List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            ## @return a role_permission
            ## 
            def permissions
                return @permissions
            end
            ## 
            ## Sets the permissions property value. List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            ## @param value Value to set for the permissions property.
            ## @return a void
            ## 
            def permissions=(value)
                @permissions = value
            end
            ## 
            ## Gets the roleAssignments property value. List of Role assignments for this role definition.
            ## @return a role_assignment
            ## 
            def role_assignments
                return @role_assignments
            end
            ## 
            ## Sets the roleAssignments property value. List of Role assignments for this role definition.
            ## @param value Value to set for the roleAssignments property.
            ## @return a void
            ## 
            def role_assignments=(value)
                @role_assignments = value
            end
            ## 
            ## Gets the rolePermissions property value. List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            ## @return a role_permission
            ## 
            def role_permissions
                return @role_permissions
            end
            ## 
            ## Sets the rolePermissions property value. List of Role Permissions this role is allowed to perform. These must match the actionName that is defined as part of the rolePermission.
            ## @param value Value to set for the rolePermissions property.
            ## @return a void
            ## 
            def role_permissions=(value)
                @role_permissions = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isBuiltIn", @is_built_in)
                writer.write_boolean_value("isBuiltInRoleDefinition", @is_built_in_role_definition)
                writer.write_collection_of_object_values("permissions", @permissions)
                writer.write_collection_of_object_values("roleAssignments", @role_assignments)
                writer.write_collection_of_object_values("rolePermissions", @role_permissions)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            end
        end
    end
end
