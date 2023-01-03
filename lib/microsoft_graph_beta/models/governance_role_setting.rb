require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class GovernanceRoleSetting < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The rule settings that are evaluated when an administrator tries to add an eligible role assignment.
        @admin_eligible_settings
        ## 
        # The rule settings that are evaluated when an administrator tries to add a direct member role assignment.
        @admin_member_settings
        ## 
        # Read-only. Indicate if the roleSetting is a default roleSetting
        @is_default
        ## 
        # Read-only. The display name of the administrator who last updated the roleSetting.
        @last_updated_by
        ## 
        # Read-only. The time when the role setting was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        @last_updated_date_time
        ## 
        # Read-only. The associated resource for this role setting.
        @resource
        ## 
        # Required. The id of the resource that the role setting is associated with.
        @resource_id
        ## 
        # Read-only. The role definition that is enforced with this role setting.
        @role_definition
        ## 
        # Required. The id of the role definition that the role setting is associated with.
        @role_definition_id
        ## 
        # The rule settings that are evaluated when a user tries to add an eligible role assignment. The setting is not supported for now.
        @user_eligible_settings
        ## 
        # The rule settings that are evaluated when a user tries to activate his role assignment.
        @user_member_settings
        ## 
        ## Gets the adminEligibleSettings property value. The rule settings that are evaluated when an administrator tries to add an eligible role assignment.
        ## @return a governance_rule_setting
        ## 
        def admin_eligible_settings
            return @admin_eligible_settings
        end
        ## 
        ## Sets the adminEligibleSettings property value. The rule settings that are evaluated when an administrator tries to add an eligible role assignment.
        ## @param value Value to set for the adminEligibleSettings property.
        ## @return a void
        ## 
        def admin_eligible_settings=(value)
            @admin_eligible_settings = value
        end
        ## 
        ## Gets the adminMemberSettings property value. The rule settings that are evaluated when an administrator tries to add a direct member role assignment.
        ## @return a governance_rule_setting
        ## 
        def admin_member_settings
            return @admin_member_settings
        end
        ## 
        ## Sets the adminMemberSettings property value. The rule settings that are evaluated when an administrator tries to add a direct member role assignment.
        ## @param value Value to set for the adminMemberSettings property.
        ## @return a void
        ## 
        def admin_member_settings=(value)
            @admin_member_settings = value
        end
        ## 
        ## Instantiates a new governanceRoleSetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a governance_role_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GovernanceRoleSetting.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "adminEligibleSettings" => lambda {|n| @admin_eligible_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRuleSetting.create_from_discriminator_value(pn) }) },
                "adminMemberSettings" => lambda {|n| @admin_member_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRuleSetting.create_from_discriminator_value(pn) }) },
                "isDefault" => lambda {|n| @is_default = n.get_boolean_value() },
                "lastUpdatedBy" => lambda {|n| @last_updated_by = n.get_string_value() },
                "lastUpdatedDateTime" => lambda {|n| @last_updated_date_time = n.get_date_time_value() },
                "resource" => lambda {|n| @resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                "resourceId" => lambda {|n| @resource_id = n.get_string_value() },
                "roleDefinition" => lambda {|n| @role_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleDefinition.create_from_discriminator_value(pn) }) },
                "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                "userEligibleSettings" => lambda {|n| @user_eligible_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRuleSetting.create_from_discriminator_value(pn) }) },
                "userMemberSettings" => lambda {|n| @user_member_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRuleSetting.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isDefault property value. Read-only. Indicate if the roleSetting is a default roleSetting
        ## @return a boolean
        ## 
        def is_default
            return @is_default
        end
        ## 
        ## Sets the isDefault property value. Read-only. Indicate if the roleSetting is a default roleSetting
        ## @param value Value to set for the isDefault property.
        ## @return a void
        ## 
        def is_default=(value)
            @is_default = value
        end
        ## 
        ## Gets the lastUpdatedBy property value. Read-only. The display name of the administrator who last updated the roleSetting.
        ## @return a string
        ## 
        def last_updated_by
            return @last_updated_by
        end
        ## 
        ## Sets the lastUpdatedBy property value. Read-only. The display name of the administrator who last updated the roleSetting.
        ## @param value Value to set for the lastUpdatedBy property.
        ## @return a void
        ## 
        def last_updated_by=(value)
            @last_updated_by = value
        end
        ## 
        ## Gets the lastUpdatedDateTime property value. Read-only. The time when the role setting was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @return a date_time
        ## 
        def last_updated_date_time
            return @last_updated_date_time
        end
        ## 
        ## Sets the lastUpdatedDateTime property value. Read-only. The time when the role setting was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z
        ## @param value Value to set for the lastUpdatedDateTime property.
        ## @return a void
        ## 
        def last_updated_date_time=(value)
            @last_updated_date_time = value
        end
        ## 
        ## Gets the resource property value. Read-only. The associated resource for this role setting.
        ## @return a governance_resource
        ## 
        def resource
            return @resource
        end
        ## 
        ## Sets the resource property value. Read-only. The associated resource for this role setting.
        ## @param value Value to set for the resource property.
        ## @return a void
        ## 
        def resource=(value)
            @resource = value
        end
        ## 
        ## Gets the resourceId property value. Required. The id of the resource that the role setting is associated with.
        ## @return a string
        ## 
        def resource_id
            return @resource_id
        end
        ## 
        ## Sets the resourceId property value. Required. The id of the resource that the role setting is associated with.
        ## @param value Value to set for the resourceId property.
        ## @return a void
        ## 
        def resource_id=(value)
            @resource_id = value
        end
        ## 
        ## Gets the roleDefinition property value. Read-only. The role definition that is enforced with this role setting.
        ## @return a governance_role_definition
        ## 
        def role_definition
            return @role_definition
        end
        ## 
        ## Sets the roleDefinition property value. Read-only. The role definition that is enforced with this role setting.
        ## @param value Value to set for the roleDefinition property.
        ## @return a void
        ## 
        def role_definition=(value)
            @role_definition = value
        end
        ## 
        ## Gets the roleDefinitionId property value. Required. The id of the role definition that the role setting is associated with.
        ## @return a string
        ## 
        def role_definition_id
            return @role_definition_id
        end
        ## 
        ## Sets the roleDefinitionId property value. Required. The id of the role definition that the role setting is associated with.
        ## @param value Value to set for the roleDefinitionId property.
        ## @return a void
        ## 
        def role_definition_id=(value)
            @role_definition_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("adminEligibleSettings", @admin_eligible_settings)
            writer.write_collection_of_object_values("adminMemberSettings", @admin_member_settings)
            writer.write_boolean_value("isDefault", @is_default)
            writer.write_string_value("lastUpdatedBy", @last_updated_by)
            writer.write_date_time_value("lastUpdatedDateTime", @last_updated_date_time)
            writer.write_object_value("resource", @resource)
            writer.write_string_value("resourceId", @resource_id)
            writer.write_object_value("roleDefinition", @role_definition)
            writer.write_string_value("roleDefinitionId", @role_definition_id)
            writer.write_collection_of_object_values("userEligibleSettings", @user_eligible_settings)
            writer.write_collection_of_object_values("userMemberSettings", @user_member_settings)
        end
        ## 
        ## Gets the userEligibleSettings property value. The rule settings that are evaluated when a user tries to add an eligible role assignment. The setting is not supported for now.
        ## @return a governance_rule_setting
        ## 
        def user_eligible_settings
            return @user_eligible_settings
        end
        ## 
        ## Sets the userEligibleSettings property value. The rule settings that are evaluated when a user tries to add an eligible role assignment. The setting is not supported for now.
        ## @param value Value to set for the userEligibleSettings property.
        ## @return a void
        ## 
        def user_eligible_settings=(value)
            @user_eligible_settings = value
        end
        ## 
        ## Gets the userMemberSettings property value. The rule settings that are evaluated when a user tries to activate his role assignment.
        ## @return a governance_rule_setting
        ## 
        def user_member_settings
            return @user_member_settings
        end
        ## 
        ## Sets the userMemberSettings property value. The rule settings that are evaluated when a user tries to activate his role assignment.
        ## @param value Value to set for the userMemberSettings property.
        ## @return a void
        ## 
        def user_member_settings=(value)
            @user_member_settings = value
        end
    end
end
