require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Scheduled Action for Rule
        class DeviceManagementComplianceScheduledActionForRule < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the rule which this scheduled action applies to.
            @rule_name
            ## 
            # The list of scheduled action configurations for this compliance policy. This collection can contain a maximum of 100 elements.
            @scheduled_action_configurations
            ## 
            ## Instantiates a new deviceManagementComplianceScheduledActionForRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_compliance_scheduled_action_for_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementComplianceScheduledActionForRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ruleName" => lambda {|n| @rule_name = n.get_string_value() },
                    "scheduledActionConfigurations" => lambda {|n| @scheduled_action_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementComplianceActionItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ruleName property value. Name of the rule which this scheduled action applies to.
            ## @return a string
            ## 
            def rule_name
                return @rule_name
            end
            ## 
            ## Sets the ruleName property value. Name of the rule which this scheduled action applies to.
            ## @param value Value to set for the ruleName property.
            ## @return a void
            ## 
            def rule_name=(value)
                @rule_name = value
            end
            ## 
            ## Gets the scheduledActionConfigurations property value. The list of scheduled action configurations for this compliance policy. This collection can contain a maximum of 100 elements.
            ## @return a device_management_compliance_action_item
            ## 
            def scheduled_action_configurations
                return @scheduled_action_configurations
            end
            ## 
            ## Sets the scheduledActionConfigurations property value. The list of scheduled action configurations for this compliance policy. This collection can contain a maximum of 100 elements.
            ## @param value Value to set for the scheduledActionConfigurations property.
            ## @return a void
            ## 
            def scheduled_action_configurations=(value)
                @scheduled_action_configurations = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("ruleName", @rule_name)
                writer.write_collection_of_object_values("scheduledActionConfigurations", @scheduled_action_configurations)
            end
        end
    end
end
