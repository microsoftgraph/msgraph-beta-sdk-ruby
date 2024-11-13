require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/content_classification'
require_relative '../data_classification'
require_relative './classify_exact_matches'

module MicrosoftGraphBeta
    module DataClassification
        module ClassifyExactMatches
            class ClassifyExactMatchesPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The contentClassifications property
                @content_classifications
                ## 
                # The sensitiveTypeIds property
                @sensitive_type_ids
                ## 
                # The text property
                @text
                ## 
                # The timeoutInMs property
                @timeout_in_ms
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
                ## Instantiates a new ClassifyExactMatchesPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the contentClassifications property value. The contentClassifications property
                ## @return a content_classification
                ## 
                def content_classifications
                    return @content_classifications
                end
                ## 
                ## Sets the contentClassifications property value. The contentClassifications property
                ## @param value Value to set for the contentClassifications property.
                ## @return a void
                ## 
                def content_classifications=(value)
                    @content_classifications = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a classify_exact_matches_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ClassifyExactMatchesPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "contentClassifications" => lambda {|n| @content_classifications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ContentClassification.create_from_discriminator_value(pn) }) },
                        "sensitiveTypeIds" => lambda {|n| @sensitive_type_ids = n.get_collection_of_primitive_values(String) },
                        "text" => lambda {|n| @text = n.get_string_value() },
                        "timeoutInMs" => lambda {|n| @timeout_in_ms = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the sensitiveTypeIds property value. The sensitiveTypeIds property
                ## @return a string
                ## 
                def sensitive_type_ids
                    return @sensitive_type_ids
                end
                ## 
                ## Sets the sensitiveTypeIds property value. The sensitiveTypeIds property
                ## @param value Value to set for the sensitiveTypeIds property.
                ## @return a void
                ## 
                def sensitive_type_ids=(value)
                    @sensitive_type_ids = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("contentClassifications", @content_classifications)
                    writer.write_collection_of_primitive_values("sensitiveTypeIds", @sensitive_type_ids)
                    writer.write_string_value("text", @text)
                    writer.write_string_value("timeoutInMs", @timeout_in_ms)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the text property value. The text property
                ## @return a string
                ## 
                def text
                    return @text
                end
                ## 
                ## Sets the text property value. The text property
                ## @param value Value to set for the text property.
                ## @return a void
                ## 
                def text=(value)
                    @text = value
                end
                ## 
                ## Gets the timeoutInMs property value. The timeoutInMs property
                ## @return a string
                ## 
                def timeout_in_ms
                    return @timeout_in_ms
                end
                ## 
                ## Sets the timeoutInMs property value. The timeoutInMs property
                ## @param value Value to set for the timeoutInMs property.
                ## @return a void
                ## 
                def timeout_in_ms=(value)
                    @timeout_in_ms = value
                end
            end
        end
    end
end
