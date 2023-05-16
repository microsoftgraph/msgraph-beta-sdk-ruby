require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RoleAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the Role Assignment.
            @description
            ## 
            # The display or friendly name of the role Assignment.
            @display_name
            ## 
            # List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            @resource_scopes
            ## 
            # Role definition this assignment is part of.
            @role_definition
            ## 
            # List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            @scope_members
            ## 
            # Specifies the type of scope for a Role Assignment.
            @scope_type
            ## 
            ## Instantiates a new RoleAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a role_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceAndAppManagementRoleAssignment"
                            return DeviceAndAppManagementRoleAssignment.new
                    end
                end
                return RoleAssignment.new
            end
            ## 
            ## Gets the description property value. Description of the Role Assignment.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the Role Assignment.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display or friendly name of the role Assignment.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display or friendly name of the role Assignment.
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
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "resourceScopes" => lambda {|n| @resource_scopes = n.get_collection_of_primitive_values(String) },
                    "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RoleDefinition.create_from_discriminator_value(pn) }) },
                    "scopeMembers" => lambda {|n| @scope_members = n.get_collection_of_primitive_values(String) },
                    "scopeType" => lambda {|n| @scope_type = n.get_enum_value(MicrosoftGraphBeta::Models::RoleAssignmentScopeType) },
                })
            end
            ## 
            ## Gets the resourceScopes property value. List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            ## @return a string
            ## 
            def resource_scopes
                return @resource_scopes
            end
            ## 
            ## Sets the resourceScopes property value. List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            ## @param value Value to set for the resource_scopes property.
            ## @return a void
            ## 
            def resource_scopes=(value)
                @resource_scopes = value
            end
            ## 
            ## Gets the roleDefinition property value. Role definition this assignment is part of.
            ## @return a role_definition
            ## 
            def role_definition
                return @role_definition
            end
            ## 
            ## Sets the roleDefinition property value. Role definition this assignment is part of.
            ## @param value Value to set for the role_definition property.
            ## @return a void
            ## 
            def role_definition=(value)
                @role_definition = value
            end
            ## 
            ## Gets the scopeMembers property value. List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            ## @return a string
            ## 
            def scope_members
                return @scope_members
            end
            ## 
            ## Sets the scopeMembers property value. List of ids of role scope member security groups.  These are IDs from Azure Active Directory.
            ## @param value Value to set for the scope_members property.
            ## @return a void
            ## 
            def scope_members=(value)
                @scope_members = value
            end
            ## 
            ## Gets the scopeType property value. Specifies the type of scope for a Role Assignment.
            ## @return a role_assignment_scope_type
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. Specifies the type of scope for a Role Assignment.
            ## @param value Value to set for the scope_type property.
            ## @return a void
            ## 
            def scope_type=(value)
                @scope_type = value
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
                writer.write_collection_of_primitive_values("resourceScopes", @resource_scopes)
                writer.write_object_value("roleDefinition", @role_definition)
                writer.write_collection_of_primitive_values("scopeMembers", @scope_members)
                writer.write_enum_value("scopeType", @scope_type)
            end
        end
    end
end
