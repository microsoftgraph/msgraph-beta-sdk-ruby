require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Recommendation < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The actionSteps property
        @action_steps
        ## 
        # The benefits property
        @benefits
        ## 
        # The category property
        @category
        ## 
        # The createdDateTime property
        @created_date_time
        ## 
        # The displayName property
        @display_name
        ## 
        # The impactedResources property
        @impacted_resources
        ## 
        # The impactStartDateTime property
        @impact_start_date_time
        ## 
        # The impactType property
        @impact_type
        ## 
        # The insights property
        @insights
        ## 
        # The lastCheckedDateTime property
        @last_checked_date_time
        ## 
        # The lastModifiedBy property
        @last_modified_by
        ## 
        # The lastModifiedDateTime property
        @last_modified_date_time
        ## 
        # The postponeUntilDateTime property
        @postpone_until_date_time
        ## 
        # The priority property
        @priority
        ## 
        # The status property
        @status
        ## 
        ## Gets the actionSteps property value. The actionSteps property
        ## @return a action_step
        ## 
        def action_steps
            return @action_steps
        end
        ## 
        ## Sets the actionSteps property value. The actionSteps property
        ## @param value Value to set for the actionSteps property.
        ## @return a void
        ## 
        def action_steps=(value)
            @action_steps = value
        end
        ## 
        ## Gets the benefits property value. The benefits property
        ## @return a string
        ## 
        def benefits
            return @benefits
        end
        ## 
        ## Sets the benefits property value. The benefits property
        ## @param value Value to set for the benefits property.
        ## @return a void
        ## 
        def benefits=(value)
            @benefits = value
        end
        ## 
        ## Gets the category property value. The category property
        ## @return a recommendation_category
        ## 
        def category
            return @category
        end
        ## 
        ## Sets the category property value. The category property
        ## @param value Value to set for the category property.
        ## @return a void
        ## 
        def category=(value)
            @category = value
        end
        ## 
        ## Instantiates a new recommendation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
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
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a recommendation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Recommendation.new
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
                "actionSteps" => lambda {|n| @action_steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActionStep.create_from_discriminator_value(pn) }) },
                "benefits" => lambda {|n| @benefits = n.get_string_value() },
                "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationCategory) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "impactedResources" => lambda {|n| @impacted_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RecommendationResource.create_from_discriminator_value(pn) }) },
                "impactStartDateTime" => lambda {|n| @impact_start_date_time = n.get_date_time_value() },
                "impactType" => lambda {|n| @impact_type = n.get_string_value() },
                "insights" => lambda {|n| @insights = n.get_string_value() },
                "lastCheckedDateTime" => lambda {|n| @last_checked_date_time = n.get_date_time_value() },
                "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "postponeUntilDateTime" => lambda {|n| @postpone_until_date_time = n.get_date_time_value() },
                "priority" => lambda {|n| @priority = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationPriority) },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationStatus) },
            })
        end
        ## 
        ## Gets the impactedResources property value. The impactedResources property
        ## @return a recommendation_resource
        ## 
        def impacted_resources
            return @impacted_resources
        end
        ## 
        ## Sets the impactedResources property value. The impactedResources property
        ## @param value Value to set for the impactedResources property.
        ## @return a void
        ## 
        def impacted_resources=(value)
            @impacted_resources = value
        end
        ## 
        ## Gets the impactStartDateTime property value. The impactStartDateTime property
        ## @return a date_time
        ## 
        def impact_start_date_time
            return @impact_start_date_time
        end
        ## 
        ## Sets the impactStartDateTime property value. The impactStartDateTime property
        ## @param value Value to set for the impactStartDateTime property.
        ## @return a void
        ## 
        def impact_start_date_time=(value)
            @impact_start_date_time = value
        end
        ## 
        ## Gets the impactType property value. The impactType property
        ## @return a string
        ## 
        def impact_type
            return @impact_type
        end
        ## 
        ## Sets the impactType property value. The impactType property
        ## @param value Value to set for the impactType property.
        ## @return a void
        ## 
        def impact_type=(value)
            @impact_type = value
        end
        ## 
        ## Gets the insights property value. The insights property
        ## @return a string
        ## 
        def insights
            return @insights
        end
        ## 
        ## Sets the insights property value. The insights property
        ## @param value Value to set for the insights property.
        ## @return a void
        ## 
        def insights=(value)
            @insights = value
        end
        ## 
        ## Gets the lastCheckedDateTime property value. The lastCheckedDateTime property
        ## @return a date_time
        ## 
        def last_checked_date_time
            return @last_checked_date_time
        end
        ## 
        ## Sets the lastCheckedDateTime property value. The lastCheckedDateTime property
        ## @param value Value to set for the lastCheckedDateTime property.
        ## @return a void
        ## 
        def last_checked_date_time=(value)
            @last_checked_date_time = value
        end
        ## 
        ## Gets the lastModifiedBy property value. The lastModifiedBy property
        ## @return a string
        ## 
        def last_modified_by
            return @last_modified_by
        end
        ## 
        ## Sets the lastModifiedBy property value. The lastModifiedBy property
        ## @param value Value to set for the lastModifiedBy property.
        ## @return a void
        ## 
        def last_modified_by=(value)
            @last_modified_by = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The lastModifiedDateTime property
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the postponeUntilDateTime property value. The postponeUntilDateTime property
        ## @return a date_time
        ## 
        def postpone_until_date_time
            return @postpone_until_date_time
        end
        ## 
        ## Sets the postponeUntilDateTime property value. The postponeUntilDateTime property
        ## @param value Value to set for the postponeUntilDateTime property.
        ## @return a void
        ## 
        def postpone_until_date_time=(value)
            @postpone_until_date_time = value
        end
        ## 
        ## Gets the priority property value. The priority property
        ## @return a recommendation_priority
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. The priority property
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("actionSteps", @action_steps)
            writer.write_string_value("benefits", @benefits)
            writer.write_enum_value("category", @category)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_object_values("impactedResources", @impacted_resources)
            writer.write_date_time_value("impactStartDateTime", @impact_start_date_time)
            writer.write_string_value("impactType", @impact_type)
            writer.write_string_value("insights", @insights)
            writer.write_date_time_value("lastCheckedDateTime", @last_checked_date_time)
            writer.write_string_value("lastModifiedBy", @last_modified_by)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_date_time_value("postponeUntilDateTime", @postpone_until_date_time)
            writer.write_enum_value("priority", @priority)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a recommendation_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status property
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
