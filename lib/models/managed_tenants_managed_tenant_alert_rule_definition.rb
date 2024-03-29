require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagedTenantAlertRuleDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alertRules property
            @alert_rules
            ## 
            # The createdByUserId property
            @created_by_user_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The definitionTemplate property
            @definition_template
            ## 
            # The displayName property
            @display_name
            ## 
            # The lastActionByUserId property
            @last_action_by_user_id
            ## 
            # The lastActionDateTime property
            @last_action_date_time
            ## 
            ## Gets the alertRules property value. The alertRules property
            ## @return a managed_tenants_managed_tenant_alert_rule
            ## 
            def alert_rules
                return @alert_rules
            end
            ## 
            ## Sets the alertRules property value. The alertRules property
            ## @param value Value to set for the alertRules property.
            ## @return a void
            ## 
            def alert_rules=(value)
                @alert_rules = value
            end
            ## 
            ## Instantiates a new managedTenantsManagedTenantAlertRuleDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdByUserId property value. The createdByUserId property
            ## @return a string
            ## 
            def created_by_user_id
                return @created_by_user_id
            end
            ## 
            ## Sets the createdByUserId property value. The createdByUserId property
            ## @param value Value to set for the createdByUserId property.
            ## @return a void
            ## 
            def created_by_user_id=(value)
                @created_by_user_id = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_managed_tenant_alert_rule_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagedTenantAlertRuleDefinition.new
            end
            ## 
            ## Gets the definitionTemplate property value. The definitionTemplate property
            ## @return a managed_tenants_alert_rule_definition_template
            ## 
            def definition_template
                return @definition_template
            end
            ## 
            ## Sets the definitionTemplate property value. The definitionTemplate property
            ## @param value Value to set for the definitionTemplate property.
            ## @return a void
            ## 
            def definition_template=(value)
                @definition_template = value
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
                    "alertRules" => lambda {|n| @alert_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsManagedTenantAlertRule.create_from_discriminator_value(pn) }) },
                    "createdByUserId" => lambda {|n| @created_by_user_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "definitionTemplate" => lambda {|n| @definition_template = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsAlertRuleDefinitionTemplate.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastActionByUserId" => lambda {|n| @last_action_by_user_id = n.get_string_value() },
                    "lastActionDateTime" => lambda {|n| @last_action_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the lastActionByUserId property value. The lastActionByUserId property
            ## @return a string
            ## 
            def last_action_by_user_id
                return @last_action_by_user_id
            end
            ## 
            ## Sets the lastActionByUserId property value. The lastActionByUserId property
            ## @param value Value to set for the lastActionByUserId property.
            ## @return a void
            ## 
            def last_action_by_user_id=(value)
                @last_action_by_user_id = value
            end
            ## 
            ## Gets the lastActionDateTime property value. The lastActionDateTime property
            ## @return a date_time
            ## 
            def last_action_date_time
                return @last_action_date_time
            end
            ## 
            ## Sets the lastActionDateTime property value. The lastActionDateTime property
            ## @param value Value to set for the lastActionDateTime property.
            ## @return a void
            ## 
            def last_action_date_time=(value)
                @last_action_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("alertRules", @alert_rules)
                writer.write_string_value("createdByUserId", @created_by_user_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("definitionTemplate", @definition_template)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("lastActionByUserId", @last_action_by_user_id)
                writer.write_date_time_value("lastActionDateTime", @last_action_date_time)
            end
        end
    end
end
