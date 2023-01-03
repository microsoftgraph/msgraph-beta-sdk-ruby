require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceAndAppManagementRoleAssignment < MicrosoftGraphBeta::Models::RoleAssignment
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The list of ids of role member security groups. These are IDs from Azure Active Directory.
        @members
        ## 
        # The set of Role Scope Tags defined on the Role Assignment.
        @role_scope_tags
        ## 
        ## Instantiates a new DeviceAndAppManagementRoleAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_and_app_management_role_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceAndAppManagementRoleAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "members" => lambda {|n| @members = n.get_collection_of_primitive_values(String) },
                "roleScopeTags" => lambda {|n| @role_scope_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleScopeTag.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the members property value. The list of ids of role member security groups. These are IDs from Azure Active Directory.
        ## @return a string
        ## 
        def members
            return @members
        end
        ## 
        ## Sets the members property value. The list of ids of role member security groups. These are IDs from Azure Active Directory.
        ## @param value Value to set for the members property.
        ## @return a void
        ## 
        def members=(value)
            @members = value
        end
        ## 
        ## Gets the roleScopeTags property value. The set of Role Scope Tags defined on the Role Assignment.
        ## @return a role_scope_tag
        ## 
        def role_scope_tags
            return @role_scope_tags
        end
        ## 
        ## Sets the roleScopeTags property value. The set of Role Scope Tags defined on the Role Assignment.
        ## @param value Value to set for the roleScopeTags property.
        ## @return a void
        ## 
        def role_scope_tags=(value)
            @role_scope_tags = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_primitive_values("members", @members)
            writer.write_collection_of_object_values("roleScopeTags", @role_scope_tags)
        end
    end
end
