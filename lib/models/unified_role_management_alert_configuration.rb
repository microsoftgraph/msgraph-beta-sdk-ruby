require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UnifiedRoleManagementAlertConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertDefinition property
            @alert_definition
            ## 
            # The alertDefinitionId property
            @alert_definition_id
            ## 
            # The isEnabled property
            @is_enabled
            ## 
            # The scopeId property
            @scope_id
            ## 
            # The scopeType property
            @scope_type
            ## 
            ## Gets the alertDefinition property value. The alertDefinition property
            ## @return a unified_role_management_alert_definition
            ## 
            def alert_definition
                return @alert_definition
            end
            ## 
            ## Sets the alertDefinition property value. The alertDefinition property
            ## @param value Value to set for the alert_definition property.
            ## @return a void
            ## 
            def alert_definition=(value)
                @alert_definition = value
            end
            ## 
            ## Gets the alertDefinitionId property value. The alertDefinitionId property
            ## @return a string
            ## 
            def alert_definition_id
                return @alert_definition_id
            end
            ## 
            ## Sets the alertDefinitionId property value. The alertDefinitionId property
            ## @param value Value to set for the alert_definition_id property.
            ## @return a void
            ## 
            def alert_definition_id=(value)
                @alert_definition_id = value
            end
            ## 
            ## Instantiates a new unifiedRoleManagementAlertConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_alert_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.invalidLicenseAlertConfiguration"
                            return InvalidLicenseAlertConfiguration.new
                        when "#microsoft.graph.noMfaOnRoleActivationAlertConfiguration"
                            return NoMfaOnRoleActivationAlertConfiguration.new
                        when "#microsoft.graph.redundantAssignmentAlertConfiguration"
                            return RedundantAssignmentAlertConfiguration.new
                        when "#microsoft.graph.rolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration"
                            return RolesAssignedOutsidePrivilegedIdentityManagementAlertConfiguration.new
                        when "#microsoft.graph.sequentialActivationRenewalsAlertConfiguration"
                            return SequentialActivationRenewalsAlertConfiguration.new
                        when "#microsoft.graph.staleSignInAlertConfiguration"
                            return StaleSignInAlertConfiguration.new
                        when "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration"
                            return TooManyGlobalAdminsAssignedToTenantAlertConfiguration.new
                    end
                end
                return UnifiedRoleManagementAlertConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alertDefinition" => lambda {|n| @alert_definition = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRoleManagementAlertDefinition.create_from_discriminator_value(pn) }) },
                    "alertDefinitionId" => lambda {|n| @alert_definition_id = n.get_string_value() },
                    "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                    "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                    "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isEnabled property value. The isEnabled property
            ## @return a boolean
            ## 
            def is_enabled
                return @is_enabled
            end
            ## 
            ## Sets the isEnabled property value. The isEnabled property
            ## @param value Value to set for the is_enabled property.
            ## @return a void
            ## 
            def is_enabled=(value)
                @is_enabled = value
            end
            ## 
            ## Gets the scopeId property value. The scopeId property
            ## @return a string
            ## 
            def scope_id
                return @scope_id
            end
            ## 
            ## Sets the scopeId property value. The scopeId property
            ## @param value Value to set for the scope_id property.
            ## @return a void
            ## 
            def scope_id=(value)
                @scope_id = value
            end
            ## 
            ## Gets the scopeType property value. The scopeType property
            ## @return a string
            ## 
            def scope_type
                return @scope_type
            end
            ## 
            ## Sets the scopeType property value. The scopeType property
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
                writer.write_object_value("alertDefinition", @alert_definition)
                writer.write_string_value("alertDefinitionId", @alert_definition_id)
                writer.write_boolean_value("isEnabled", @is_enabled)
                writer.write_string_value("scopeId", @scope_id)
                writer.write_string_value("scopeType", @scope_type)
            end
        end
    end
end
