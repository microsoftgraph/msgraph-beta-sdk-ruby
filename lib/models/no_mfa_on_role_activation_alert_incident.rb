require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NoMfaOnRoleActivationAlertIncident < MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertIncident
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The roleDisplayName property
            @role_display_name
            ## 
            # The roleTemplateId property
            @role_template_id
            ## 
            ## Instantiates a new NoMfaOnRoleActivationAlertIncident and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.noMfaOnRoleActivationAlertIncident"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a no_mfa_on_role_activation_alert_incident
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NoMfaOnRoleActivationAlertIncident.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "roleDisplayName" => lambda {|n| @role_display_name = n.get_string_value() },
                    "roleTemplateId" => lambda {|n| @role_template_id = n.get_string_value() },
                })
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("roleDisplayName", @role_display_name)
                writer.write_string_value("roleTemplateId", @role_template_id)
            end
        end
    end
end
