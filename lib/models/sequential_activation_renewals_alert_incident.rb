require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SequentialActivationRenewalsAlertIncident < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activationCount property
            @activation_count
            ## 
            # The assigneeDisplayName property
            @assignee_display_name
            ## 
            # The assigneeId property
            @assignee_id
            ## 
            # The assigneeUserPrincipalName property
            @assignee_user_principal_name
            ## 
            # The roleDefinitionId property
            @role_definition_id
            ## 
            # The roleDisplayName property
            @role_display_name
            ## 
            # The roleTemplateId property
            @role_template_id
            ## 
            # The sequenceEndDateTime property
            @sequence_end_date_time
            ## 
            # The sequenceStartDateTime property
            @sequence_start_date_time
            ## 
            ## Gets the activationCount property value. The activationCount property
            ## @return a integer
            ## 
            def activation_count
                return @activation_count
            end
            ## 
            ## Sets the activationCount property value. The activationCount property
            ## @param value Value to set for the activation_count property.
            ## @return a void
            ## 
            def activation_count=(value)
                @activation_count = value
            end
            ## 
            ## Gets the assigneeDisplayName property value. The assigneeDisplayName property
            ## @return a string
            ## 
            def assignee_display_name
                return @assignee_display_name
            end
            ## 
            ## Sets the assigneeDisplayName property value. The assigneeDisplayName property
            ## @param value Value to set for the assignee_display_name property.
            ## @return a void
            ## 
            def assignee_display_name=(value)
                @assignee_display_name = value
            end
            ## 
            ## Gets the assigneeId property value. The assigneeId property
            ## @return a string
            ## 
            def assignee_id
                return @assignee_id
            end
            ## 
            ## Sets the assigneeId property value. The assigneeId property
            ## @param value Value to set for the assignee_id property.
            ## @return a void
            ## 
            def assignee_id=(value)
                @assignee_id = value
            end
            ## 
            ## Gets the assigneeUserPrincipalName property value. The assigneeUserPrincipalName property
            ## @return a string
            ## 
            def assignee_user_principal_name
                return @assignee_user_principal_name
            end
            ## 
            ## Sets the assigneeUserPrincipalName property value. The assigneeUserPrincipalName property
            ## @param value Value to set for the assignee_user_principal_name property.
            ## @return a void
            ## 
            def assignee_user_principal_name=(value)
                @assignee_user_principal_name = value
            end
            ## 
            ## Instantiates a new SequentialActivationRenewalsAlertIncident and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sequentialActivationRenewalsAlertIncident"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a sequential_activation_renewals_alert_incident
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SequentialActivationRenewalsAlertIncident.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activationCount" => lambda {|n| @activation_count = n.get_number_value() },
                    "assigneeDisplayName" => lambda {|n| @assignee_display_name = n.get_string_value() },
                    "assigneeId" => lambda {|n| @assignee_id = n.get_string_value() },
                    "assigneeUserPrincipalName" => lambda {|n| @assignee_user_principal_name = n.get_string_value() },
                    "roleDefinitionId" => lambda {|n| @role_definition_id = n.get_string_value() },
                    "roleDisplayName" => lambda {|n| @role_display_name = n.get_string_value() },
                    "roleTemplateId" => lambda {|n| @role_template_id = n.get_string_value() },
                    "sequenceEndDateTime" => lambda {|n| @sequence_end_date_time = n.get_date_time_value() },
                    "sequenceStartDateTime" => lambda {|n| @sequence_start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the roleDefinitionId property value. The roleDefinitionId property
            ## @return a string
            ## 
            def role_definition_id
                return @role_definition_id
            end
            ## 
            ## Sets the roleDefinitionId property value. The roleDefinitionId property
            ## @param value Value to set for the role_definition_id property.
            ## @return a void
            ## 
            def role_definition_id=(value)
                @role_definition_id = value
            end
            ## 
            ## Gets the roleDisplayName property value. The roleDisplayName property
            ## @return a string
            ## 
            def role_display_name
                return @role_display_name
            end
            ## 
            ## Sets the roleDisplayName property value. The roleDisplayName property
            ## @param value Value to set for the role_display_name property.
            ## @return a void
            ## 
            def role_display_name=(value)
                @role_display_name = value
            end
            ## 
            ## Gets the roleTemplateId property value. The roleTemplateId property
            ## @return a string
            ## 
            def role_template_id
                return @role_template_id
            end
            ## 
            ## Sets the roleTemplateId property value. The roleTemplateId property
            ## @param value Value to set for the role_template_id property.
            ## @return a void
            ## 
            def role_template_id=(value)
                @role_template_id = value
            end
            ## 
            ## Gets the sequenceEndDateTime property value. The sequenceEndDateTime property
            ## @return a date_time
            ## 
            def sequence_end_date_time
                return @sequence_end_date_time
            end
            ## 
            ## Sets the sequenceEndDateTime property value. The sequenceEndDateTime property
            ## @param value Value to set for the sequence_end_date_time property.
            ## @return a void
            ## 
            def sequence_end_date_time=(value)
                @sequence_end_date_time = value
            end
            ## 
            ## Gets the sequenceStartDateTime property value. The sequenceStartDateTime property
            ## @return a date_time
            ## 
            def sequence_start_date_time
                return @sequence_start_date_time
            end
            ## 
            ## Sets the sequenceStartDateTime property value. The sequenceStartDateTime property
            ## @param value Value to set for the sequence_start_date_time property.
            ## @return a void
            ## 
            def sequence_start_date_time=(value)
                @sequence_start_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("activationCount", @activation_count)
                writer.write_string_value("assigneeDisplayName", @assignee_display_name)
                writer.write_string_value("assigneeId", @assignee_id)
                writer.write_string_value("assigneeUserPrincipalName", @assignee_user_principal_name)
                writer.write_string_value("roleDefinitionId", @role_definition_id)
                writer.write_string_value("roleDisplayName", @role_display_name)
                writer.write_string_value("roleTemplateId", @role_template_id)
                writer.write_date_time_value("sequenceEndDateTime", @sequence_end_date_time)
                writer.write_date_time_value("sequenceStartDateTime", @sequence_start_date_time)
            end
        end
    end
end
