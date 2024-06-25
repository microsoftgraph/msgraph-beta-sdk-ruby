require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IndustryDataAdditionalUserOptions
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether student contact association should be allowed.
            @allow_student_contact_association
            ## 
            # Indicates whether all students should be marked as minors.
            @mark_all_students_as_minors
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowStudentContactAssociation property value. Indicates whether student contact association should be allowed.
            ## @return a boolean
            ## 
            def allow_student_contact_association
                return @allow_student_contact_association
            end
            ## 
            ## Sets the allowStudentContactAssociation property value. Indicates whether student contact association should be allowed.
            ## @param value Value to set for the allowStudentContactAssociation property.
            ## @return a void
            ## 
            def allow_student_contact_association=(value)
                @allow_student_contact_association = value
            end
            ## 
            ## Instantiates a new IndustryDataAdditionalUserOptions and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a industry_data_additional_user_options
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IndustryDataAdditionalUserOptions.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowStudentContactAssociation" => lambda {|n| @allow_student_contact_association = n.get_boolean_value() },
                    "markAllStudentsAsMinors" => lambda {|n| @mark_all_students_as_minors = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the markAllStudentsAsMinors property value. Indicates whether all students should be marked as minors.
            ## @return a boolean
            ## 
            def mark_all_students_as_minors
                return @mark_all_students_as_minors
            end
            ## 
            ## Sets the markAllStudentsAsMinors property value. Indicates whether all students should be marked as minors.
            ## @param value Value to set for the markAllStudentsAsMinors property.
            ## @return a void
            ## 
            def mark_all_students_as_minors=(value)
                @mark_all_students_as_minors = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowStudentContactAssociation", @allow_student_contact_association)
                writer.write_boolean_value("markAllStudentsAsMinors", @mark_all_students_as_minors)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
