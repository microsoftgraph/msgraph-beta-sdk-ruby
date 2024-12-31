require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MachineLearningDetectedSensitiveContent < MicrosoftGraphBeta::Models::DetectedSensitiveContent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The matchTolerance property
            @match_tolerance
            ## 
            # The modelVersion property
            @model_version
            ## 
            ## Instantiates a new MachineLearningDetectedSensitiveContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a machine_learning_detected_sensitive_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MachineLearningDetectedSensitiveContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "matchTolerance" => lambda {|n| @match_tolerance = n.get_enum_values(MicrosoftGraphBeta::Models::MlClassificationMatchTolerance) },
                    "modelVersion" => lambda {|n| @model_version = n.get_string_value() },
                })
            end
            ## 
            ## Gets the matchTolerance property value. The matchTolerance property
            ## @return a ml_classification_match_tolerance
            ## 
            def match_tolerance
                return @match_tolerance
            end
            ## 
            ## Sets the matchTolerance property value. The matchTolerance property
            ## @param value Value to set for the matchTolerance property.
            ## @return a void
            ## 
            def match_tolerance=(value)
                @match_tolerance = value
            end
            ## 
            ## Gets the modelVersion property value. The modelVersion property
            ## @return a string
            ## 
            def model_version
                return @model_version
            end
            ## 
            ## Sets the modelVersion property value. The modelVersion property
            ## @param value Value to set for the modelVersion property.
            ## @return a void
            ## 
            def model_version=(value)
                @model_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("matchTolerance", @match_tolerance)
                writer.write_string_value("modelVersion", @model_version)
            end
        end
    end
end
