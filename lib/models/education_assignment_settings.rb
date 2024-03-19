require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationAssignmentSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The defaultGradingScheme property
            @default_grading_scheme
            ## 
            # When set, enables users to weight assignments differently when computing a class average grade.
            @grading_categories
            ## 
            # The gradingSchemes property
            @grading_schemes
            ## 
            # Indicates whether turn-in celebration animation will be shown. If true, the animation won't be shown. The default value is false.
            @submission_animation_disabled
            ## 
            ## Instantiates a new EducationAssignmentSettings and sets the default values.
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
            ## Gets the defaultGradingScheme property value. The defaultGradingScheme property
            ## @return a education_grading_scheme
            ## 
            def default_grading_scheme
                return @default_grading_scheme
            end
            ## 
            ## Sets the defaultGradingScheme property value. The defaultGradingScheme property
            ## @param value Value to set for the defaultGradingScheme property.
            ## @return a void
            ## 
            def default_grading_scheme=(value)
                @default_grading_scheme = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "defaultGradingScheme" => lambda {|n| @default_grading_scheme = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationGradingScheme.create_from_discriminator_value(pn) }) },
                    "gradingCategories" => lambda {|n| @grading_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationGradingCategory.create_from_discriminator_value(pn) }) },
                    "gradingSchemes" => lambda {|n| @grading_schemes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EducationGradingScheme.create_from_discriminator_value(pn) }) },
                    "submissionAnimationDisabled" => lambda {|n| @submission_animation_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the gradingCategories property value. When set, enables users to weight assignments differently when computing a class average grade.
            ## @return a education_grading_category
            ## 
            def grading_categories
                return @grading_categories
            end
            ## 
            ## Sets the gradingCategories property value. When set, enables users to weight assignments differently when computing a class average grade.
            ## @param value Value to set for the gradingCategories property.
            ## @return a void
            ## 
            def grading_categories=(value)
                @grading_categories = value
            end
            ## 
            ## Gets the gradingSchemes property value. The gradingSchemes property
            ## @return a education_grading_scheme
            ## 
            def grading_schemes
                return @grading_schemes
            end
            ## 
            ## Sets the gradingSchemes property value. The gradingSchemes property
            ## @param value Value to set for the gradingSchemes property.
            ## @return a void
            ## 
            def grading_schemes=(value)
                @grading_schemes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("defaultGradingScheme", @default_grading_scheme)
                writer.write_collection_of_object_values("gradingCategories", @grading_categories)
                writer.write_collection_of_object_values("gradingSchemes", @grading_schemes)
                writer.write_boolean_value("submissionAnimationDisabled", @submission_animation_disabled)
            end
            ## 
            ## Gets the submissionAnimationDisabled property value. Indicates whether turn-in celebration animation will be shown. If true, the animation won't be shown. The default value is false.
            ## @return a boolean
            ## 
            def submission_animation_disabled
                return @submission_animation_disabled
            end
            ## 
            ## Sets the submissionAnimationDisabled property value. Indicates whether turn-in celebration animation will be shown. If true, the animation won't be shown. The default value is false.
            ## @param value Value to set for the submissionAnimationDisabled property.
            ## @return a void
            ## 
            def submission_animation_disabled=(value)
                @submission_animation_disabled = value
            end
        end
    end
end
