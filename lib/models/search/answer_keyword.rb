require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './search'

module MicrosoftGraphBeta
    module Models
        module Search
            class AnswerKeyword
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # A collection of keywords used to trigger the search answer.
                @keywords
                ## 
                # If true, indicates that the search term contains similar words to the keywords that should trigger the search answer.
                @match_similar_keywords
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Unique keywords that will guarantee the search answer is triggered.
                @reserved_keywords
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
                ## Instantiates a new answerKeyword and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a answer_keyword
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AnswerKeyword.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "keywords" => lambda {|n| @keywords = n.get_collection_of_primitive_values(String) },
                        "matchSimilarKeywords" => lambda {|n| @match_similar_keywords = n.get_boolean_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "reservedKeywords" => lambda {|n| @reserved_keywords = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the keywords property value. A collection of keywords used to trigger the search answer.
                ## @return a string
                ## 
                def keywords
                    return @keywords
                end
                ## 
                ## Sets the keywords property value. A collection of keywords used to trigger the search answer.
                ## @param value Value to set for the keywords property.
                ## @return a void
                ## 
                def keywords=(value)
                    @keywords = value
                end
                ## 
                ## Gets the matchSimilarKeywords property value. If true, indicates that the search term contains similar words to the keywords that should trigger the search answer.
                ## @return a boolean
                ## 
                def match_similar_keywords
                    return @match_similar_keywords
                end
                ## 
                ## Sets the matchSimilarKeywords property value. If true, indicates that the search term contains similar words to the keywords that should trigger the search answer.
                ## @param value Value to set for the match_similar_keywords property.
                ## @return a void
                ## 
                def match_similar_keywords=(value)
                    @match_similar_keywords = value
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
                ## Gets the reservedKeywords property value. Unique keywords that will guarantee the search answer is triggered.
                ## @return a string
                ## 
                def reserved_keywords
                    return @reserved_keywords
                end
                ## 
                ## Sets the reservedKeywords property value. Unique keywords that will guarantee the search answer is triggered.
                ## @param value Value to set for the reserved_keywords property.
                ## @return a void
                ## 
                def reserved_keywords=(value)
                    @reserved_keywords = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("keywords", @keywords)
                    writer.write_boolean_value("matchSimilarKeywords", @match_similar_keywords)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_collection_of_primitive_values("reservedKeywords", @reserved_keywords)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
