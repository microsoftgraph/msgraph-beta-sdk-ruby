require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerRoster < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The sensitivity label applied to the roster. If mandatory labeling is enabled for the user and no label is specified, the user can't create the roster. Also, if labels are mandatory for the user, the user can't change the label of the roster to null. Possible values are: standard, privileged, auto, unknownFutureValue.
            @assigned_sensitivity_label
            ## 
            # Retrieves the members of the plannerRoster.
            @members
            ## 
            # Retrieves the plans contained by the plannerRoster.
            @plans
            ## 
            ## Gets the assignedSensitivityLabel property value. The sensitivity label applied to the roster. If mandatory labeling is enabled for the user and no label is specified, the user can't create the roster. Also, if labels are mandatory for the user, the user can't change the label of the roster to null. Possible values are: standard, privileged, auto, unknownFutureValue.
            ## @return a sensitivity_label_assignment
            ## 
            def assigned_sensitivity_label
                return @assigned_sensitivity_label
            end
            ## 
            ## Sets the assignedSensitivityLabel property value. The sensitivity label applied to the roster. If mandatory labeling is enabled for the user and no label is specified, the user can't create the roster. Also, if labels are mandatory for the user, the user can't change the label of the roster to null. Possible values are: standard, privileged, auto, unknownFutureValue.
            ## @param value Value to set for the assignedSensitivityLabel property.
            ## @return a void
            ## 
            def assigned_sensitivity_label=(value)
                @assigned_sensitivity_label = value
            end
            ## 
            ## Instantiates a new PlannerRoster and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_roster
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerRoster.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedSensitivityLabel" => lambda {|n| @assigned_sensitivity_label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SensitivityLabelAssignment.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerRosterMember.create_from_discriminator_value(pn) }) },
                    "plans" => lambda {|n| @plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the members property value. Retrieves the members of the plannerRoster.
            ## @return a planner_roster_member
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. Retrieves the members of the plannerRoster.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Gets the plans property value. Retrieves the plans contained by the plannerRoster.
            ## @return a planner_plan
            ## 
            def plans
                return @plans
            end
            ## 
            ## Sets the plans property value. Retrieves the plans contained by the plannerRoster.
            ## @param value Value to set for the plans property.
            ## @return a void
            ## 
            def plans=(value)
                @plans = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("assignedSensitivityLabel", @assigned_sensitivity_label)
                writer.write_collection_of_object_values("members", @members)
                writer.write_collection_of_object_values("plans", @plans)
            end
        end
    end
end
