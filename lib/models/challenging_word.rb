require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ChallengingWord
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Number of times the word was found challenging by the student during the reading session.
            @count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The specific word that the student found challenging during the reading session.
            @word
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
            ## Instantiates a new ChallengingWord and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the count property value. Number of times the word was found challenging by the student during the reading session.
            ## @return a int64
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. Number of times the word was found challenging by the student during the reading session.
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a challenging_word
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChallengingWord.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "count" => lambda {|n| @count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "word" => lambda {|n| @word = n.get_string_value() },
                }
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
                writer.write_object_value("count", @count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("word", @word)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the word property value. The specific word that the student found challenging during the reading session.
            ## @return a string
            ## 
            def word
                return @word
            end
            ## 
            ## Sets the word property value. The specific word that the student found challenging during the reading session.
            ## @param value Value to set for the word property.
            ## @return a void
            ## 
            def word=(value)
                @word = value
            end
        end
    end
end
