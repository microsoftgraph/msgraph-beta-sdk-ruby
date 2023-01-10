require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AccessPackageQuestion
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # ID of the question.
        @id
        ## 
        # Specifies whether the requestor is allowed to edit answers to questions.
        @is_answer_editable
        ## 
        # Whether the requestor is required to supply an answer or not.
        @is_required
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Relative position of this question when displaying a list of questions to the requestor.
        @sequence
        ## 
        # The text of the question to show to the requestor.
        @text
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
        ## Instantiates a new accessPackageQuestion and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a access_package_question
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.accessPackageMultipleChoiceQuestion"
                        return AccessPackageMultipleChoiceQuestion.new
                    when "#microsoft.graph.accessPackageTextInputQuestion"
                        return AccessPackageTextInputQuestion.new
                end
            end
            return AccessPackageQuestion.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "id" => lambda {|n| @id = n.get_string_value() },
                "isAnswerEditable" => lambda {|n| @is_answer_editable = n.get_boolean_value() },
                "isRequired" => lambda {|n| @is_required = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "sequence" => lambda {|n| @sequence = n.get_number_value() },
                "text" => lambda {|n| @text = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AccessPackageLocalizedContent.create_from_discriminator_value(pn) }) },
            }
        end
        ## 
        ## Gets the id property value. ID of the question.
        ## @return a string
        ## 
        def id
            return @id
        end
        ## 
        ## Sets the id property value. ID of the question.
        ## @param value Value to set for the id property.
        ## @return a void
        ## 
        def id=(value)
            @id = value
        end
        ## 
        ## Gets the isAnswerEditable property value. Specifies whether the requestor is allowed to edit answers to questions.
        ## @return a boolean
        ## 
        def is_answer_editable
            return @is_answer_editable
        end
        ## 
        ## Sets the isAnswerEditable property value. Specifies whether the requestor is allowed to edit answers to questions.
        ## @param value Value to set for the isAnswerEditable property.
        ## @return a void
        ## 
        def is_answer_editable=(value)
            @is_answer_editable = value
        end
        ## 
        ## Gets the isRequired property value. Whether the requestor is required to supply an answer or not.
        ## @return a boolean
        ## 
        def is_required
            return @is_required
        end
        ## 
        ## Sets the isRequired property value. Whether the requestor is required to supply an answer or not.
        ## @param value Value to set for the isRequired property.
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the sequence property value. Relative position of this question when displaying a list of questions to the requestor.
        ## @return a integer
        ## 
        def sequence
            return @sequence
        end
        ## 
        ## Sets the sequence property value. Relative position of this question when displaying a list of questions to the requestor.
        ## @param value Value to set for the sequence property.
        ## @return a void
        ## 
        def sequence=(value)
            @sequence = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("id", @id)
            writer.write_boolean_value("isAnswerEditable", @is_answer_editable)
            writer.write_boolean_value("isRequired", @is_required)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_number_value("sequence", @sequence)
            writer.write_object_value("text", @text)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the text property value. The text of the question to show to the requestor.
        ## @return a access_package_localized_content
        ## 
        def text
            return @text
        end
        ## 
        ## Sets the text property value. The text of the question to show to the requestor.
        ## @param value Value to set for the text property.
        ## @return a void
        ## 
        def text=(value)
            @text = value
        end
    end
end
