require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PlannerPlanDetails < MicrosoftGraphBeta::Models::PlannerDelta
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # An object that specifies the descriptions of the 25 categories that can be associated with tasks in the plan.
        @category_descriptions
        ## 
        # A collection of additional information associated with plannerPlanContext entries that are defined for the plannerPlan container. Read-only.
        @context_details
        ## 
        # The set of user IDs that this plan is shared with. If you are using Microsoft 365 groups, use the groups API to manage group membership to share the group's plan. You can also add existing members of the group to this collection, although it is not required in order for them to access the plan owned by the group.
        @shared_with
        ## 
        ## Gets the categoryDescriptions property value. An object that specifies the descriptions of the 25 categories that can be associated with tasks in the plan.
        ## @return a planner_category_descriptions
        ## 
        def category_descriptions
            return @category_descriptions
        end
        ## 
        ## Sets the categoryDescriptions property value. An object that specifies the descriptions of the 25 categories that can be associated with tasks in the plan.
        ## @param value Value to set for the categoryDescriptions property.
        ## @return a void
        ## 
        def category_descriptions=(value)
            @category_descriptions = value
        end
        ## 
        ## Instantiates a new plannerPlanDetails and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the contextDetails property value. A collection of additional information associated with plannerPlanContext entries that are defined for the plannerPlan container. Read-only.
        ## @return a planner_plan_context_details_collection
        ## 
        def context_details
            return @context_details
        end
        ## 
        ## Sets the contextDetails property value. A collection of additional information associated with plannerPlanContext entries that are defined for the plannerPlan container. Read-only.
        ## @param value Value to set for the contextDetails property.
        ## @return a void
        ## 
        def context_details=(value)
            @context_details = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_plan_details
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerPlanDetails.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "categoryDescriptions" => lambda {|n| @category_descriptions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerCategoryDescriptions.create_from_discriminator_value(pn) }) },
                "contextDetails" => lambda {|n| @context_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlanContextDetailsCollection.create_from_discriminator_value(pn) }) },
                "sharedWith" => lambda {|n| @shared_with = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerUserIds.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("categoryDescriptions", @category_descriptions)
            writer.write_object_value("contextDetails", @context_details)
            writer.write_object_value("sharedWith", @shared_with)
        end
        ## 
        ## Gets the sharedWith property value. The set of user IDs that this plan is shared with. If you are using Microsoft 365 groups, use the groups API to manage group membership to share the group's plan. You can also add existing members of the group to this collection, although it is not required in order for them to access the plan owned by the group.
        ## @return a planner_user_ids
        ## 
        def shared_with
            return @shared_with
        end
        ## 
        ## Sets the sharedWith property value. The set of user IDs that this plan is shared with. If you are using Microsoft 365 groups, use the groups API to manage group membership to share the group's plan. You can also add existing members of the group to this collection, although it is not required in order for them to access the plan owned by the group.
        ## @param value Value to set for the sharedWith property.
        ## @return a void
        ## 
        def shared_with=(value)
            @shared_with = value
        end
    end
end
