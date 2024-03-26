require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RolesAssignedOutsidePrivilegedIdentityManagementAlertIncident < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Display name of the subject that the incident applies to.
            @assignee_display_name
            ## 
            # The identifier of the subject that the incident applies to.
            @assignee_id
            ## 
            # User principal name of the subject that the incident applies to. Applies to user principals.
            @assignee_user_principal_name
            ## 
            # The assignmentCreatedDateTime property
            @assignment_created_date_time
            ## 
            # The identifier for the directory role definition that's in scope of this incident.
            @role_definition_id
            ## 
            # The display name for the directory role.
            @role_display_name
            ## 
            # The globally unique identifier for the directory role.
            @role_template_id
            ## 
            ## Gets the assigneeDisplayName property value. Display name of the subject that the incident applies to.
            ## @return a string
            ## 
            def assignee_display_name
                return @assignee_display_name
            end
            ## 
            ## Sets the assigneeDisplayName property value. Display name of the subject that the incident applies to.
            ## @param value Value to set for the assigneeDisplayName property.
            ## @return a void
            ## 
            def assignee_display_name=(value)
                @assignee_display_name = value
            end
            ## 
            ## Gets the assigneeId property value. The identifier of the subject that the incident applies to.
            ## @return a string
            ## 
            def assignee_id
                return @assignee_id
            end
            ## 
            ## Sets the assigneeId property value. The identifier of the subject that the incident applies to.
            ## @param value Value to set for the assigneeId property.
            ## @return a void
            ## 
            def assignee_id=(value)
                @assignee_id = value
            end
            ## 
            ## Gets the assigneeUserPrincipalName property value. User principal name of the subject that the incident applies to. Applies to user principals.
            ## @return a string
            ## 
            def assignee_user_principal_name
                return @assignee_user_principal_name
            end
            ## 
            ## Sets the assigneeUserPrincipalName property value. User principal name of the subject that the incident applies to. Applies to user principals.
            ## @param value Value to set for the assigneeUserPrincipalName property.
            ## @return a void
            ## 
            def assignee_user_principal_name=(value)
                @assignee_user_principal_name = value
            end
            ## 
            ## Gets the assignmentCreatedDateTime property value. The assignmentCreatedDateTime property
            ## @return a date_time
            ## 
            def assignment_created_date_time
                return @assignment_created_date_time
            end
            ## 
            ## Sets the assignmentCreatedDateTime property value. The assignmentCreatedDateTime property
            ## @param value Value to set for the assignmentCreatedDateTime property.
            ## @return a void
            ## 
            def assignment_created_date_time=(value)
                @assignment_created_date_time = value
            end
            ## 
            ## Instantiates a new RolesAssignedOutsidePrivilegedIdentityManagementAlertIncident and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.rolesAssignedOutsidePrivilegedIdentityManagementAlertIncident"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a roles_assigned_outside_privileged_identity_management_alert_incident
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RolesAssignedOutsidePrivilegedIdentityManagementAlertIncident.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assigneeDisplayName" => lambda {|n| @assignee_display_name = n.get_string_value() },
                    "assigneeId" => lambda {|n| @assignee_id = n.get_string_value() },
                    "assigneeUserPrincipalName" => lambda {|n| @assignee_user_principal_name = n.get_string_value() },
                    "assignmentCreatedDateTime" => lambda {|n| @assignment_created_date_time = n.get_date_time_value() },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "roleDisplayName" => lambda {|n| @role_display_name = n.get_string_value() },
                    "roleTemplateId" => lambda {|n| @role_template_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the roleDefinitionId property value. The identifier for the directory role definition that's in scope of this incident.
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. The identifier for the directory role definition that's in scope of this incident.
            ## @param value Value to set for the roleDefinitionId property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
            end
            ## 
            ## Gets the roleDisplayName property value. The display name for the directory role.
            ## @return a string
            ## 
            def role_display_name
                return @role_display_name
            end
            ## 
            ## Sets the roleDisplayName property value. The display name for the directory role.
            ## @param value Value to set for the roleDisplayName property.
            ## @return a void
            ## 
            def role_display_name=(value)
                @role_display_name = value
            end
            ## 
            ## Gets the roleTemplateId property value. The globally unique identifier for the directory role.
            ## @return a string
            ## 
            def role_template_id
                return @role_template_id
            end
            ## 
            ## Sets the roleTemplateId property value. The globally unique identifier for the directory role.
            ## @param value Value to set for the roleTemplateId property.
            ## @return a void
            ## 
            def role_template_id=(value)
                @role_template_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assigneeDisplayName", @assignee_display_name)
                writer.write_string_value("assigneeId", @assignee_id)
                writer.write_string_value("assigneeUserPrincipalName", @assignee_user_principal_name)
                writer.write_date_time_value("assignmentCreatedDateTime", @assignment_created_date_time)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_string_value("roleDisplayName", @role_display_name)
                writer.write_string_value("roleTemplateId", @role_template_id)
            end
        end
    end
end
