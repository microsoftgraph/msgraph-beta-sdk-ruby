require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EducationalActivityDetail
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Shortened name of the degree or program (example: PhD, MBA)
        @abbreviation
        ## 
        # Extracurricular activities undertaken alongside the program.
        @activities
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Any awards or honors associated with the program.
        @awards
        ## 
        # Short description of the program provided by the user.
        @description
        ## 
        # Long-form name of the program that the user has provided.
        @display_name
        ## 
        # Majors and minors associated with the program. (if applicable)
        @fields_of_study
        ## 
        # The final grade, class, GPA or score.
        @grade
        ## 
        # Additional notes the user has provided.
        @notes
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Link to the degree or program page.
        @web_url
        ## 
        ## Gets the abbreviation property value. Shortened name of the degree or program (example: PhD, MBA)
        ## @return a string
        ## 
        def abbreviation
            return @abbreviation
        end
        ## 
        ## Sets the abbreviation property value. Shortened name of the degree or program (example: PhD, MBA)
        ## @param value Value to set for the abbreviation property.
        ## @return a void
        ## 
        def abbreviation=(value)
            @abbreviation = value
        end
        ## 
        ## Gets the activities property value. Extracurricular activities undertaken alongside the program.
        ## @return a string
        ## 
        def activities
            return @activities
        end
        ## 
        ## Sets the activities property value. Extracurricular activities undertaken alongside the program.
        ## @param value Value to set for the activities property.
        ## @return a void
        ## 
        def activities=(value)
            @activities = value
        end
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the awards property value. Any awards or honors associated with the program.
        ## @return a string
        ## 
        def awards
            return @awards
        end
        ## 
        ## Sets the awards property value. Any awards or honors associated with the program.
        ## @param value Value to set for the awards property.
        ## @return a void
        ## 
        def awards=(value)
            @awards = value
        end
        ## 
        ## Instantiates a new educationalActivityDetail and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a educational_activity_detail
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EducationalActivityDetail.new
        end
        ## 
        ## Gets the description property value. Short description of the program provided by the user.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Short description of the program provided by the user.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. Long-form name of the program that the user has provided.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. Long-form name of the program that the user has provided.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the fieldsOfStudy property value. Majors and minors associated with the program. (if applicable)
        ## @return a string
        ## 
        def fields_of_study
            return @fields_of_study
        end
        ## 
        ## Sets the fieldsOfStudy property value. Majors and minors associated with the program. (if applicable)
        ## @param value Value to set for the fields_of_study property.
        ## @return a void
        ## 
        def fields_of_study=(value)
            @fields_of_study = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "abbreviation" => lambda {|n| @abbreviation = n.get_string_value() },
                "activities" => lambda {|n| @activities = n.get_collection_of_primitive_values(String) },
                "awards" => lambda {|n| @awards = n.get_collection_of_primitive_values(String) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "fieldsOfStudy" => lambda {|n| @fields_of_study = n.get_collection_of_primitive_values(String) },
                "grade" => lambda {|n| @grade = n.get_string_value() },
                "notes" => lambda {|n| @notes = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "webUrl" => lambda {|n| @web_url = n.get_string_value() },
            }
        end
        ## 
        ## Gets the grade property value. The final grade, class, GPA or score.
        ## @return a string
        ## 
        def grade
            return @grade
        end
        ## 
        ## Sets the grade property value. The final grade, class, GPA or score.
        ## @param value Value to set for the grade property.
        ## @return a void
        ## 
        def grade=(value)
            @grade = value
        end
        ## 
        ## Gets the notes property value. Additional notes the user has provided.
        ## @return a string
        ## 
        def notes
            return @notes
        end
        ## 
        ## Sets the notes property value. Additional notes the user has provided.
        ## @param value Value to set for the notes property.
        ## @return a void
        ## 
        def notes=(value)
            @notes = value
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_string_value("abbreviation", @abbreviation)
            writer.write_collection_of_primitive_values("activities", @activities)
            writer.write_collection_of_primitive_values("awards", @awards)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_primitive_values("fieldsOfStudy", @fields_of_study)
            writer.write_string_value("grade", @grade)
            writer.write_string_value("notes", @notes)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("webUrl", @web_url)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the webUrl property value. Link to the degree or program page.
        ## @return a string
        ## 
        def web_url
            return @web_url
        end
        ## 
        ## Sets the webUrl property value. Link to the degree or program page.
        ## @param value Value to set for the web_url property.
        ## @return a void
        ## 
        def web_url=(value)
            @web_url = value
        end
    end
end
