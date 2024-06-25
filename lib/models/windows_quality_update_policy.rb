require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Quality Update Policy
        class WindowsQualityUpdatePolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of the groups this profile is assgined to.
            @assignments
            ## 
            # Timestamp of when the profile was created. The value cannot be modified and is automatically populated when the profile is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            @created_date_time
            ## 
            # The description of the policy which is specified by the user. Max allowed length is 1500 chars.
            @description
            ## 
            # The display name for the policy. Max allowed length is 200 chars.
            @display_name
            ## 
            # Indicates if hotpatch is enabled for the tenants. When 'true', tenant can apply quality updates without rebooting their devices. When 'false', tenant devices will receive cold patch associated with Windows quality updates.
            @hotpatch_enabled
            ## 
            # Timestamp of when the profile was modified. The value cannot be modified and is automatically populated when the profile is modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            @last_modified_date_time
            ## 
            # List of the scope tag ids for this profile.
            @role_scope_tag_ids
            ## 
            ## Gets the assignments property value. List of the groups this profile is assgined to.
            ## @return a windows_quality_update_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. List of the groups this profile is assgined to.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new WindowsQualityUpdatePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Timestamp of when the profile was created. The value cannot be modified and is automatically populated when the profile is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Timestamp of when the profile was created. The value cannot be modified and is automatically populated when the profile is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_quality_update_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsQualityUpdatePolicy.new
            end
            ## 
            ## Gets the description property value. The description of the policy which is specified by the user. Max allowed length is 1500 chars.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the policy which is specified by the user. Max allowed length is 1500 chars.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display name for the policy. Max allowed length is 200 chars.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name for the policy. Max allowed length is 200 chars.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsQualityUpdatePolicyAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "hotpatchEnabled" => lambda {|n| @hotpatch_enabled = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the hotpatchEnabled property value. Indicates if hotpatch is enabled for the tenants. When 'true', tenant can apply quality updates without rebooting their devices. When 'false', tenant devices will receive cold patch associated with Windows quality updates.
            ## @return a boolean
            ## 
            def hotpatch_enabled
                return @hotpatch_enabled
            end
            ## 
            ## Sets the hotpatchEnabled property value. Indicates if hotpatch is enabled for the tenants. When 'true', tenant can apply quality updates without rebooting their devices. When 'false', tenant devices will receive cold patch associated with Windows quality updates.
            ## @param value Value to set for the hotpatchEnabled property.
            ## @return a void
            ## 
            def hotpatch_enabled=(value)
                @hotpatch_enabled = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Timestamp of when the profile was modified. The value cannot be modified and is automatically populated when the profile is modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Timestamp of when the profile was modified. The value cannot be modified and is automatically populated when the profile is modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. Read-only
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of the scope tag ids for this profile.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of the scope tag ids for this profile.
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
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("hotpatchEnabled", @hotpatch_enabled)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            end
        end
    end
end
