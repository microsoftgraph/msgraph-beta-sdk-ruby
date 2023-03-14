require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TermsAndConditions < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
            @acceptance_statement
            ## 
            # The list of acceptance statuses for this T&C policy.
            @acceptance_statuses
            ## 
            # The list of assignments for this T&C policy.
            @assignments
            ## 
            # Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
            @body_text
            ## 
            # DateTime the object was created.
            @created_date_time
            ## 
            # Administrator-supplied description of the T&C policy.
            @description
            ## 
            # Administrator-supplied name for the T&C policy.
            @display_name
            ## 
            # The list of group assignments for this T&C policy.
            @group_assignments
            ## 
            # DateTime the object was last modified.
            @last_modified_date_time
            ## 
            # DateTime the object was last modified.
            @modified_date_time
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            # Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
            @title
            ## 
            # Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
            @version
            ## 
            ## Gets the acceptanceStatement property value. Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
            ## @return a string
            ## 
            def acceptance_statement
                return @acceptance_statement
            end
            ## 
            ## Sets the acceptanceStatement property value. Administrator-supplied explanation of the terms and conditions, typically describing what it means to accept the terms and conditions set out in the T&C policy. This is shown to the user on prompts to accept the T&C policy.
            ## @param value Value to set for the acceptance_statement property.
            ## @return a void
            ## 
            def acceptance_statement=(value)
                @acceptance_statement = value
            end
            ## 
            ## Gets the acceptanceStatuses property value. The list of acceptance statuses for this T&C policy.
            ## @return a terms_and_conditions_acceptance_status
            ## 
            def acceptance_statuses
                return @acceptance_statuses
            end
            ## 
            ## Sets the acceptanceStatuses property value. The list of acceptance statuses for this T&C policy.
            ## @param value Value to set for the acceptance_statuses property.
            ## @return a void
            ## 
            def acceptance_statuses=(value)
                @acceptance_statuses = value
            end
            ## 
            ## Gets the assignments property value. The list of assignments for this T&C policy.
            ## @return a terms_and_conditions_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of assignments for this T&C policy.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the bodyText property value. Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
            ## @return a string
            ## 
            def body_text
                return @body_text
            end
            ## 
            ## Sets the bodyText property value. Administrator-supplied body text of the terms and conditions, typically the terms themselves. This is shown to the user on prompts to accept the T&C policy.
            ## @param value Value to set for the body_text property.
            ## @return a void
            ## 
            def body_text=(value)
                @body_text = value
            end
            ## 
            ## Instantiates a new TermsAndConditions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. DateTime the object was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. DateTime the object was created.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a terms_and_conditions
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TermsAndConditions.new
            end
            ## 
            ## Gets the description property value. Administrator-supplied description of the T&C policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Administrator-supplied description of the T&C policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Administrator-supplied name for the T&C policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Administrator-supplied name for the T&C policy.
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
                    "acceptanceStatement" => lambda {|n| @acceptance_statement = n.get_string_value() },
                    "acceptanceStatuses" => lambda {|n| @acceptance_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TermsAndConditionsAcceptanceStatus.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TermsAndConditionsAssignment.create_from_discriminator_value(pn) }) },
                    "bodyText" => lambda {|n| @body_text = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "groupAssignments" => lambda {|n| @group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TermsAndConditionsGroupAssignment.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "modifiedDateTime" => lambda {|n| @modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_string_value() },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the groupAssignments property value. The list of group assignments for this T&C policy.
            ## @return a terms_and_conditions_group_assignment
            ## 
            def group_assignments
                return @group_assignments
            end
            ## 
            ## Sets the groupAssignments property value. The list of group assignments for this T&C policy.
            ## @param value Value to set for the group_assignments property.
            ## @return a void
            ## 
            def group_assignments=(value)
                @group_assignments = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. DateTime the object was last modified.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the modifiedDateTime property value. DateTime the object was last modified.
            ## @return a date_time
            ## 
            def modified_date_time
                return @modified_date_time
            end
            ## 
            ## Sets the modifiedDateTime property value. DateTime the object was last modified.
            ## @param value Value to set for the modified_date_time property.
            ## @return a void
            ## 
            def modified_date_time=(value)
                @modified_date_time = value
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
            ## @param value Value to set for the role_scope_tag_ids property.
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
                writer.write_string_value("acceptanceStatement", @acceptance_statement)
                writer.write_collection_of_object_values("acceptanceStatuses", @acceptance_statuses)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("bodyText", @body_text)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("groupAssignments", @group_assignments)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_date_time_value("modifiedDateTime", @modified_date_time)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_string_value("title", @title)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the title property value. Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Administrator-supplied title of the terms and conditions. This is shown to the user on prompts to accept the T&C policy.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
            ## 
            ## Gets the version property value. Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Integer indicating the current version of the terms. Incremented when an administrator makes a change to the terms and wishes to require users to re-accept the modified T&C policy.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
