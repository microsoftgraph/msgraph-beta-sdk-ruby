require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationGradingCategory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the grading category.
            @display_name
            ## 
            # The weight of the category; an integer between 0 and 100.
            @percentage_weight
            ## 
            ## Instantiates a new educationGradingCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_grading_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationGradingCategory.new
            end
            ## 
            ## Gets the displayName property value. The name of the grading category.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the grading category.
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
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "percentageWeight" => lambda {|n| @percentage_weight = n.get_number_value() },
                })
            end
            ## 
            ## Gets the percentageWeight property value. The weight of the category; an integer between 0 and 100.
            ## @return a integer
            ## 
            def percentage_weight
                return @percentage_weight
            end
            ## 
            ## Sets the percentageWeight property value. The weight of the category; an integer between 0 and 100.
            ## @param value Value to set for the percentageWeight property.
            ## @return a void
            ## 
            def percentage_weight=(value)
                @percentage_weight = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_number_value("percentageWeight", @percentage_weight)
            end
        end
    end
end
