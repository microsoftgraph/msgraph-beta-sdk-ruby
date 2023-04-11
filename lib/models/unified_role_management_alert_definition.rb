require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UnifiedRoleManagementAlertDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The description property
            @description
            ## 
            # The displayName property
            @display_name
            ## 
            # The howToPrevent property
            @how_to_prevent
            ## 
            # The isConfigurable property
            @is_configurable
            ## 
            # The isRemediatable property
            @is_remediatable
            ## 
            # The mitigationSteps property
            @mitigation_steps
            ## 
            # The scopeId property
            @scope_id
            ## 
            # The scopeType property
            @scope_type
            ## 
            # The securityImpact property
            @security_impact
            ## 
            # The severityLevel property
            @severity_level
            ## 
            ## Instantiates a new unifiedRoleManagementAlertDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a unified_role_management_alert_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRoleManagementAlertDefinition.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
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
                    "howToPrevent" => lambda {|n| @how_to_prevent = n.get_string_value() },
                    "isConfigurable" => lambda {|n| @is_configurable = n.get_boolean_value() },
                    "isRemediatable" => lambda {|n| @is_remediatable = n.get_boolean_value() },
                    "mitigationSteps" => lambda {|n| @mitigation_steps = n.get_string_value() },
                    "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                    "scopeType" => lambda {|n| @scope_type = n.get_string_value() },
                    "securityImpact" => lambda {|n| @security_impact = n.get_string_value() },
                    "severityLevel" => lambda {|n| @severity_level = n.get_enum_value(MicrosoftGraphBeta::Models::AlertSeverity) },
                })
            end
            ## 
            ## Gets the howToPrevent property value. The howToPrevent property
            ## @return a string
            ## 
            def how_to_prevent
                return @how_to_prevent
            end
            ## 
            ## Sets the howToPrevent property value. The howToPrevent property
            ## @param value Value to set for the how_to_prevent property.
            ## @return a void
            ## 
            def how_to_prevent=(value)
                @how_to_prevent = value
            end
            ## 
            ## Gets the isConfigurable property value. The isConfigurable property
            ## @return a boolean
            ## 
            def is_configurable
                return @is_configurable
            end
            ## 
            ## Sets the isConfigurable property value. The isConfigurable property
            ## @param value Value to set for the is_configurable property.
            ## @return a void
            ## 
            def is_configurable=(value)
                @is_configurable = value
            end
            ## 
            ## Gets the isRemediatable property value. The isRemediatable property
            ## @return a boolean
            ## 
            def is_remediatable
                return @is_remediatable
            end
            ## 
            ## Sets the isRemediatable property value. The isRemediatable property
            ## @param value Value to set for the is_remediatable property.
            ## @return a void
            ## 
            def is_remediatable=(value)
                @is_remediatable = value
            end
            ## 
            ## Gets the mitigationSteps property value. The mitigationSteps property
            ## @return a string
            ## 
            def mitigation_steps
                return @mitigation_steps
            end
            ## 
            ## Sets the mitigationSteps property value. The mitigationSteps property
            ## @param value Value to set for the mitigation_steps property.
            ## @return a void
            ## 
            def mitigation_steps=(value)
                @mitigation_steps = value
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
            ## Gets the securityImpact property value. The securityImpact property
            ## @return a string
            ## 
            def security_impact
                return @security_impact
            end
            ## 
            ## Sets the securityImpact property value. The securityImpact property
            ## @param value Value to set for the security_impact property.
            ## @return a void
            ## 
            def security_impact=(value)
                @security_impact = value
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
                writer.write_string_value("howToPrevent", @how_to_prevent)
                writer.write_boolean_value("isConfigurable", @is_configurable)
                writer.write_boolean_value("isRemediatable", @is_remediatable)
                writer.write_string_value("mitigationSteps", @mitigation_steps)
                writer.write_string_value("scopeId", @scope_id)
                writer.write_string_value("scopeType", @scope_type)
                writer.write_string_value("securityImpact", @security_impact)
                writer.write_enum_value("severityLevel", @severity_level)
            end
            ## 
            ## Gets the severityLevel property value. The severityLevel property
            ## @return a alert_severity
            ## 
            def severity_level
                return @severity_level
            end
            ## 
            ## Sets the severityLevel property value. The severityLevel property
            ## @param value Value to set for the severity_level property.
            ## @return a void
            ## 
            def severity_level=(value)
                @severity_level = value
            end
        end
    end
end
