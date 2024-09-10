require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TooManyGlobalAdminsAssignedToTenantAlertIncident < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident
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
            ## Instantiates a new TooManyGlobalAdminsAssignedToTenantAlertIncident and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a too_many_global_admins_assigned_to_tenant_alert_incident
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TooManyGlobalAdminsAssignedToTenantAlertIncident.new
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
                })
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
            end
        end
    end
end
