require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationAssignmentSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The gradingCategories property
            @grading_categories
            ## 
            # Indicates whether turn-in celebration animation will be shown. If true, the animation will not be shown. The default value is false.
            @submission_animation_disabled
            ## 
            ## Instantiates a new educationAssignmentSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_assignment_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationAssignmentSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "gradingCategories" => lambda {|n| @grading_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationGradingCategory.create_from_discriminator_value(pn) }) },
                    "submissionAnimationDisabled" => lambda {|n| @submission_animation_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the gradingCategories property value. The gradingCategories property
            ## @return a education_grading_category
            ## 
            def grading_categories
                return @grading_categories
            end
            ## 
            ## Sets the gradingCategories property value. The gradingCategories property
            ## @param value Value to set for the gradingCategories property.
            ## @return a void
            ## 
            def grading_categories=(value)
                @grading_categories = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("gradingCategories", @grading_categories)
                writer.write_boolean_value("submissionAnimationDisabled", @submission_animation_disabled)
            end
            ## 
            ## Gets the submissionAnimationDisabled property value. Indicates whether turn-in celebration animation will be shown. If true, the animation will not be shown. The default value is false.
            ## @return a boolean
            ## 
            def submission_animation_disabled
                return @submission_animation_disabled
            end
            ## 
            ## Sets the submissionAnimationDisabled property value. Indicates whether turn-in celebration animation will be shown. If true, the animation will not be shown. The default value is false.
            ## @param value Value to set for the submissionAnimationDisabled property.
            ## @return a void
            ## 
            def submission_animation_disabled=(value)
                @submission_animation_disabled = value
            end
        end
    end
end
