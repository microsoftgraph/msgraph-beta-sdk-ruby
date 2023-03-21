require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerPlanPropertyRule < MicrosoftGraphBeta::Models::PlannerPropertyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The buckets property
            @buckets
            ## 
            # The categoryDescriptions property
            @category_descriptions
            ## 
            # The tasks property
            @tasks
            ## 
            # The title property
            @title
            ## 
            ## Gets the buckets property value. The buckets property
            ## @return a string
            ## 
            def buckets
                return @buckets
            end
            ## 
            ## Sets the buckets property value. The buckets property
            ## @param value Value to set for the buckets property.
            ## @return a void
            ## 
            def buckets=(value)
                @buckets = value
            end
            ## 
            ## Gets the categoryDescriptions property value. The categoryDescriptions property
            ## @return a planner_field_rules
            ## 
            def category_descriptions
                return @category_descriptions
            end
            ## 
            ## Sets the categoryDescriptions property value. The categoryDescriptions property
            ## @param value Value to set for the category_descriptions property.
            ## @return a void
            ## 
            def category_descriptions=(value)
                @category_descriptions = value
            end
            ## 
            ## Instantiates a new PlannerPlanPropertyRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerPlanPropertyRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_plan_property_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerPlanPropertyRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "buckets" => lambda {|n| @buckets = n.get_collection_of_primitive_values(String) },
                    "categoryDescriptions" => lambda {|n| @category_descriptions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
                    "tasks" => lambda {|n| @tasks = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_primitive_values("buckets", @buckets)
                writer.write_object_value("categoryDescriptions", @category_descriptions)
                writer.write_collection_of_primitive_values("tasks", @tasks)
                writer.write_object_value("title", @title)
            end
            ## 
            ## Gets the tasks property value. The tasks property
            ## @return a string
            ## 
            def tasks
                return @tasks
            end
            ## 
            ## Sets the tasks property value. The tasks property
            ## @param value Value to set for the tasks property.
            ## @return a void
            ## 
            def tasks=(value)
                @tasks = value
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a planner_field_rules
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. The title property
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
