require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationSynchronizationCustomizations < MicrosoftGraphBeta::Models::EducationSynchronizationCustomizationsBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Customizations for School entities.
            @school
            ## 
            # Customizations for Section entities.
            @section
            ## 
            # Customizations for Student entities.
            @student
            ## 
            # Customizations for Student Enrollments.
            @student_enrollment
            ## 
            # Customizations for Teacher entities.
            @teacher
            ## 
            # Customizations for Teacher Rosters.
            @teacher_roster
            ## 
            ## Instantiates a new educationSynchronizationCustomizations and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.educationSynchronizationCustomizations"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_synchronization_customizations
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationSynchronizationCustomizations.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "school" => lambda {|n| @school = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                    "section" => lambda {|n| @section = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                    "student" => lambda {|n| @student = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                    "studentEnrollment" => lambda {|n| @student_enrollment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                    "teacher" => lambda {|n| @teacher = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                    "teacherRoster" => lambda {|n| @teacher_roster = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EducationSynchronizationCustomization.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the school property value. Customizations for School entities.
            ## @return a education_synchronization_customization
            ## 
            def school
                return @school
            end
            ## 
            ## Sets the school property value. Customizations for School entities.
            ## @param value Value to set for the school property.
            ## @return a void
            ## 
            def school=(value)
                @school = value
            end
            ## 
            ## Gets the section property value. Customizations for Section entities.
            ## @return a education_synchronization_customization
            ## 
            def section
                return @section
            end
            ## 
            ## Sets the section property value. Customizations for Section entities.
            ## @param value Value to set for the section property.
            ## @return a void
            ## 
            def section=(value)
                @section = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("school", @school)
                writer.write_object_value("section", @section)
                writer.write_object_value("student", @student)
                writer.write_object_value("studentEnrollment", @student_enrollment)
                writer.write_object_value("teacher", @teacher)
                writer.write_object_value("teacherRoster", @teacher_roster)
            end
            ## 
            ## Gets the student property value. Customizations for Student entities.
            ## @return a education_synchronization_customization
            ## 
            def student
                return @student
            end
            ## 
            ## Sets the student property value. Customizations for Student entities.
            ## @param value Value to set for the student property.
            ## @return a void
            ## 
            def student=(value)
                @student = value
            end
            ## 
            ## Gets the studentEnrollment property value. Customizations for Student Enrollments.
            ## @return a education_synchronization_customization
            ## 
            def student_enrollment
                return @student_enrollment
            end
            ## 
            ## Sets the studentEnrollment property value. Customizations for Student Enrollments.
            ## @param value Value to set for the student_enrollment property.
            ## @return a void
            ## 
            def student_enrollment=(value)
                @student_enrollment = value
            end
            ## 
            ## Gets the teacher property value. Customizations for Teacher entities.
            ## @return a education_synchronization_customization
            ## 
            def teacher
                return @teacher
            end
            ## 
            ## Sets the teacher property value. Customizations for Teacher entities.
            ## @param value Value to set for the teacher property.
            ## @return a void
            ## 
            def teacher=(value)
                @teacher = value
            end
            ## 
            ## Gets the teacherRoster property value. Customizations for Teacher Rosters.
            ## @return a education_synchronization_customization
            ## 
            def teacher_roster
                return @teacher_roster
            end
            ## 
            ## Sets the teacherRoster property value. Customizations for Teacher Rosters.
            ## @param value Value to set for the teacher_roster property.
            ## @return a void
            ## 
            def teacher_roster=(value)
                @teacher_roster = value
            end
        end
    end
end
