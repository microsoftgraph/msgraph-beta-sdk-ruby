require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BookingQuestionAssignment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether it is mandatory to answer the custom question.
            @is_required
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If it is mandatory to answer the custom question.
            @question_id
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
            ## Instantiates a new bookingQuestionAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a booking_question_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingQuestionAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "questionId" => lambda {|n| @question_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isRequired property value. Indicates whether it is mandatory to answer the custom question.
            ## @return a boolean
            ## 
            def is_required
                return @is_required
            end
            ## 
            ## Sets the isRequired property value. Indicates whether it is mandatory to answer the custom question.
            ## @param value Value to set for the is_required property.
            ## @return a void
            ## 
            def is_required=(value)
                @is_required = value
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
            ## Gets the questionId property value. If it is mandatory to answer the custom question.
            ## @return a string
            ## 
            def question_id
                return @question_id
            end
            ## 
            ## Sets the questionId property value. If it is mandatory to answer the custom question.
            ## @param value Value to set for the question_id property.
            ## @return a void
            ## 
            def question_id=(value)
                @question_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("isRequired", @is_required)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("questionId", @question_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
