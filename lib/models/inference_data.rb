require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class InferenceData
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Confidence score reflecting the accuracy of the data inferred about the user.
        @confidence_score
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Records if the user has confirmed this inference as being True or False.
        @user_has_verified_accuracy
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
        ## Gets the confidenceScore property value. Confidence score reflecting the accuracy of the data inferred about the user.
        ## @return a double
        ## 
        def confidence_score
            return @confidence_score
        end
        ## 
        ## Sets the confidenceScore property value. Confidence score reflecting the accuracy of the data inferred about the user.
        ## @param value Value to set for the confidenceScore property.
        ## @return a void
        ## 
        def confidence_score=(value)
            @confidence_score = value
        end
        ## 
        ## Instantiates a new inferenceData and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a inference_data
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return InferenceData.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "confidenceScore" => lambda {|n| @confidence_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "userHasVerifiedAccuracy" => lambda {|n| @user_has_verified_accuracy = n.get_boolean_value() },
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_object_value("confidenceScore", @confidence_score)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_boolean_value("userHasVerifiedAccuracy", @user_has_verified_accuracy)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the userHasVerifiedAccuracy property value. Records if the user has confirmed this inference as being True or False.
        ## @return a boolean
        ## 
        def user_has_verified_accuracy
            return @user_has_verified_accuracy
        end
        ## 
        ## Sets the userHasVerifiedAccuracy property value. Records if the user has confirmed this inference as being True or False.
        ## @param value Value to set for the userHasVerifiedAccuracy property.
        ## @return a void
        ## 
        def user_has_verified_accuracy=(value)
            @user_has_verified_accuracy = value
        end
    end
end
