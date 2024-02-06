require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerUser < MicrosoftGraphBeta::Models::PlannerDelta
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The all property
            @all
            ## 
            # A collection that contains the references to the plans that the user has marked as favorites.
            @favorite_plan_references
            ## 
            # Read-only. Nullable. Returns the plannerPlans that the user marked as favorites.
            @favorite_plans
            ## 
            # The myDayTasks property
            @my_day_tasks
            ## 
            # The plans property
            @plans
            ## 
            # A collection that contains references to the plans that were viewed recently by the user in apps that support recent plans.
            @recent_plan_references
            ## 
            # Read-only. Nullable. Returns the plannerPlans that have been recently viewed by the user in apps that support recent plans.
            @recent_plans
            ## 
            # Read-only. Nullable. Returns the plannerPlans contained by the plannerRosters the user is a member.
            @roster_plans
            ## 
            # Read-only. Nullable. Returns the plannerTasks assigned to the user.
            @tasks
            ## 
            ## Gets the all property value. The all property
            ## @return a planner_delta
            ## 
            def all
                return @all
            end
            ## 
            ## Sets the all property value. The all property
            ## @param value Value to set for the all property.
            ## @return a void
            ## 
            def all=(value)
                @all = value
            end
            ## 
            ## Instantiates a new plannerUser and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_user
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerUser.new
            end
            ## 
            ## Gets the favoritePlanReferences property value. A collection that contains the references to the plans that the user has marked as favorites.
            ## @return a planner_favorite_plan_reference_collection
            ## 
            def favorite_plan_references
                return @favorite_plan_references
            end
            ## 
            ## Sets the favoritePlanReferences property value. A collection that contains the references to the plans that the user has marked as favorites.
            ## @param value Value to set for the favoritePlanReferences property.
            ## @return a void
            ## 
            def favorite_plan_references=(value)
                @favorite_plan_references = value
            end
            ## 
            ## Gets the favoritePlans property value. Read-only. Nullable. Returns the plannerPlans that the user marked as favorites.
            ## @return a planner_plan
            ## 
            def favorite_plans
                return @favorite_plans
            end
            ## 
            ## Sets the favoritePlans property value. Read-only. Nullable. Returns the plannerPlans that the user marked as favorites.
            ## @param value Value to set for the favoritePlans property.
            ## @return a void
            ## 
            def favorite_plans=(value)
                @favorite_plans = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "all" => lambda {|n| @all = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerDelta.create_from_discriminator_value(pn) }) },
                    "favoritePlanReferences" => lambda {|n| @favorite_plan_references = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFavoritePlanReferenceCollection.create_from_discriminator_value(pn) }) },
                    "favoritePlans" => lambda {|n| @favorite_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                    "myDayTasks" => lambda {|n| @my_day_tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTask.create_from_discriminator_value(pn) }) },
                    "plans" => lambda {|n| @plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                    "recentPlanReferences" => lambda {|n| @recent_plan_references = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerRecentPlanReferenceCollection.create_from_discriminator_value(pn) }) },
                    "recentPlans" => lambda {|n| @recent_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                    "rosterPlans" => lambda {|n| @roster_plans = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlan.create_from_discriminator_value(pn) }) },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTask.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the myDayTasks property value. The myDayTasks property
            ## @return a planner_task
            ## 
            def my_day_tasks
                return @my_day_tasks
            end
            ## 
            ## Sets the myDayTasks property value. The myDayTasks property
            ## @param value Value to set for the myDayTasks property.
            ## @return a void
            ## 
            def my_day_tasks=(value)
                @my_day_tasks = value
            end
            ## 
            ## Gets the plans property value. The plans property
            ## @return a planner_plan
            ## 
            def plans
                return @plans
            end
            ## 
            ## Sets the plans property value. The plans property
            ## @param value Value to set for the plans property.
            ## @return a void
            ## 
            def plans=(value)
                @plans = value
            end
            ## 
            ## Gets the recentPlanReferences property value. A collection that contains references to the plans that were viewed recently by the user in apps that support recent plans.
            ## @return a planner_recent_plan_reference_collection
            ## 
            def recent_plan_references
                return @recent_plan_references
            end
            ## 
            ## Sets the recentPlanReferences property value. A collection that contains references to the plans that were viewed recently by the user in apps that support recent plans.
            ## @param value Value to set for the recentPlanReferences property.
            ## @return a void
            ## 
            def recent_plan_references=(value)
                @recent_plan_references = value
            end
            ## 
            ## Gets the recentPlans property value. Read-only. Nullable. Returns the plannerPlans that have been recently viewed by the user in apps that support recent plans.
            ## @return a planner_plan
            ## 
            def recent_plans
                return @recent_plans
            end
            ## 
            ## Sets the recentPlans property value. Read-only. Nullable. Returns the plannerPlans that have been recently viewed by the user in apps that support recent plans.
            ## @param value Value to set for the recentPlans property.
            ## @return a void
            ## 
            def recent_plans=(value)
                @recent_plans = value
            end
            ## 
            ## Gets the rosterPlans property value. Read-only. Nullable. Returns the plannerPlans contained by the plannerRosters the user is a member.
            ## @return a planner_plan
            ## 
            def roster_plans
                return @roster_plans
            end
            ## 
            ## Sets the rosterPlans property value. Read-only. Nullable. Returns the plannerPlans contained by the plannerRosters the user is a member.
            ## @param value Value to set for the rosterPlans property.
            ## @return a void
            ## 
            def roster_plans=(value)
                @roster_plans = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("all", @all)
                writer.write_object_value("favoritePlanReferences", @favorite_plan_references)
                writer.write_collection_of_object_values("favoritePlans", @favorite_plans)
                writer.write_collection_of_object_values("myDayTasks", @my_day_tasks)
                writer.write_collection_of_object_values("plans", @plans)
                writer.write_object_value("recentPlanReferences", @recent_plan_references)
                writer.write_collection_of_object_values("recentPlans", @recent_plans)
                writer.write_collection_of_object_values("rosterPlans", @roster_plans)
                writer.write_collection_of_object_values("tasks", @tasks)
            end
            ## 
            ## Gets the tasks property value. Read-only. Nullable. Returns the plannerTasks assigned to the user.
            ## @return a planner_task
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. Read-only. Nullable. Returns the plannerTasks assigned to the user.
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
        end
    end
end
