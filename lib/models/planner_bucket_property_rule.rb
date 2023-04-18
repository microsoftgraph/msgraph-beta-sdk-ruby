require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerBucketPropertyRule < MicrosoftGraphBeta::Models::PlannerPropertyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The order property
            @order
            ## 
            # The title property
            @title
            ## 
            ## Instantiates a new PlannerBucketPropertyRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerBucketPropertyRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_bucket_property_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerBucketPropertyRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "order" => lambda {|n| @order = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the order property value. The order property
            ## @return a string
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. The order property
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("order", @order)
                writer.write_collection_of_primitive_values("title", @title)
            end
            ## 
            ## Gets the title property value. The title property
            ## @return a string
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
