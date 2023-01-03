require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class PlannerRoster < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Retrieves the members of the plannerRoster.
        @members
        ## 
        # Retrieves the plans contained by the plannerRoster.
        @plans
        ## 
        ## Instantiates a new plannerRoster and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
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
            writer.write_collection_of_object_values("members", @members)
            writer.write_collection_of_object_values("plans", @plans)
        end
    end
end
