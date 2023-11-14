require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EmployeeExperience
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The learningCourseActivities property
            @learning_course_activities
            ## 
            # A collection of learning providers.
            @learning_providers
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
            ## Instantiates a new employeeExperience and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a employee_experience
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EmployeeExperience.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "learningCourseActivities" => lambda {|n| @learning_course_activities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LearningCourseActivity.create_from_discriminator_value(pn) }) },
                    "learningProviders" => lambda {|n| @learning_providers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LearningProvider.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the learningCourseActivities property value. The learningCourseActivities property
            ## @return a learning_course_activity
            ## 
            def learning_course_activities
                return @learning_course_activities
            end
            ## 
            ## Sets the learningCourseActivities property value. The learningCourseActivities property
            ## @param value Value to set for the learningCourseActivities property.
            ## @return a void
            ## 
            def learning_course_activities=(value)
                @learning_course_activities = value
            end
            ## 
            ## Gets the learningProviders property value. A collection of learning providers.
            ## @return a learning_provider
            ## 
            def learning_providers
                return @learning_providers
            end
            ## 
            ## Sets the learningProviders property value. A collection of learning providers.
            ## @param value Value to set for the learningProviders property.
            ## @return a void
            ## 
            def learning_providers=(value)
                @learning_providers = value
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
                writer.write_collection_of_object_values("learningCourseActivities", @learning_course_activities)
                writer.write_collection_of_object_values("learningProviders", @learning_providers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
