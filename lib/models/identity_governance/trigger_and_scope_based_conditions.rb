require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './identity_governance'

module MicrosoftGraphBeta
    module Models
        module IdentityGovernance
            class TriggerAndScopeBasedConditions < MicrosoftGraphBeta::Models::IdentityGovernance::WorkflowExecutionConditions
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Defines who the workflow runs for.
                @scope
                ## 
                # What triggers a workflow to run.
                @trigger
                ## 
                ## Instantiates a new TriggerAndScopeBasedConditions and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a trigger_and_scope_based_conditions
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TriggerAndScopeBasedConditions.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "scope" => lambda {|n| @scope = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SubjectSet.create_from_discriminator_value(pn) }) },
                        "trigger" => lambda {|n| @trigger = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernance::WorkflowExecutionTrigger.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the scope property value. Defines who the workflow runs for.
                ## @return a subject_set
                ## 
                def scope
                    return @scope
                end
                ## 
                ## Sets the scope property value. Defines who the workflow runs for.
                ## @param value Value to set for the scope property.
                ## @return a void
                ## 
                def scope=(value)
                    @scope = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("scope", @scope)
                    writer.write_object_value("trigger", @trigger)
                end
                ## 
                ## Gets the trigger property value. What triggers a workflow to run.
                ## @return a workflow_execution_trigger
                ## 
                def trigger
                    return @trigger
                end
                ## 
                ## Sets the trigger property value. What triggers a workflow to run.
                ## @param value Value to set for the trigger property.
                ## @return a void
                ## 
                def trigger=(value)
                    @trigger = value
                end
            end
        end
    end
end
