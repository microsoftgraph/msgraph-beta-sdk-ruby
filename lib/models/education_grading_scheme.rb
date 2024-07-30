require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationGradingScheme < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the grading scheme.
            @display_name
            ## 
            # The grades that make up the scheme.
            @grades
            ## 
            # The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.
            @hide_points_during_grading
            ## 
            ## Instantiates a new EducationGradingScheme and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_grading_scheme
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationGradingScheme.new
            end
            ## 
            ## Gets the displayName property value. The name of the grading scheme.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the grading scheme.
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
                    "grades" => lambda {|n| @grades = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationGradingSchemeGrade.create_from_discriminator_value(pn) }) },
                    "hidePointsDuringGrading" => lambda {|n| @hide_points_during_grading = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the grades property value. The grades that make up the scheme.
            ## @return a education_grading_scheme_grade
            ## 
            def grades
                return @grades
            end
            ## 
            ## Sets the grades property value. The grades that make up the scheme.
            ## @param value Value to set for the grades property.
            ## @return a void
            ## 
            def grades=(value)
                @grades = value
            end
            ## 
            ## Gets the hidePointsDuringGrading property value. The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.
            ## @return a boolean
            ## 
            def hide_points_during_grading
                return @hide_points_during_grading
            end
            ## 
            ## Sets the hidePointsDuringGrading property value. The display setting for the UI. Indicates whether teachers can grade with points in addition to letter grades.
            ## @param value Value to set for the hidePointsDuringGrading property.
            ## @return a void
            ## 
            def hide_points_during_grading=(value)
                @hide_points_during_grading = value
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
                writer.write_collection_of_object_values("grades", @grades)
                writer.write_boolean_value("hidePointsDuringGrading", @hide_points_during_grading)
            end
        end
    end
end
