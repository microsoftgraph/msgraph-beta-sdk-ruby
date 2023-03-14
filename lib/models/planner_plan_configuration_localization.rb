require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerPlanConfigurationLocalization < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Localized names for configured buckets in the plan configuration.
            @buckets
            ## 
            # The language code associated with the localized names in this object.
            @language_tag
            ## 
            # Localized title of the plan.
            @plan_title
            ## 
            ## Gets the buckets property value. Localized names for configured buckets in the plan configuration.
            ## @return a planner_plan_configuration_bucket_localization
            ## 
            def buckets
                return @buckets
            end
            ## 
            ## Sets the buckets property value. Localized names for configured buckets in the plan configuration.
            ## @param value Value to set for the buckets property.
            ## @return a void
            ## 
            def buckets=(value)
                @buckets = value
            end
            ## 
            ## Instantiates a new plannerPlanConfigurationLocalization and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_plan_configuration_localization
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerPlanConfigurationLocalization.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buckets" => lambda {|n| @buckets = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerPlanConfigurationBucketLocalization.create_from_discriminator_value(pn) }) },
                    "languageTag" => lambda {|n| @language_tag = n.get_string_value() },
                    "planTitle" => lambda {|n| @plan_title = n.get_string_value() },
                })
            end
            ## 
            ## Gets the languageTag property value. The language code associated with the localized names in this object.
            ## @return a string
            ## 
            def language_tag
                return @language_tag
            end
            ## 
            ## Sets the languageTag property value. The language code associated with the localized names in this object.
            ## @param value Value to set for the language_tag property.
            ## @return a void
            ## 
            def language_tag=(value)
                @language_tag = value
            end
            ## 
            ## Gets the planTitle property value. Localized title of the plan.
            ## @return a string
            ## 
            def plan_title
                return @plan_title
            end
            ## 
            ## Sets the planTitle property value. Localized title of the plan.
            ## @param value Value to set for the plan_title property.
            ## @return a void
            ## 
            def plan_title=(value)
                @plan_title = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("buckets", @buckets)
                writer.write_string_value("languageTag", @language_tag)
                writer.write_string_value("planTitle", @plan_title)
            end
        end
    end
end
