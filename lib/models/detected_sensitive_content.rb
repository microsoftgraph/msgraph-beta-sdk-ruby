require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DetectedSensitiveContent < MicrosoftGraphBeta::Models::DetectedSensitiveContentBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The classificationAttributes property
            @classification_attributes
            ## 
            # The classificationMethod property
            @classification_method
            ## 
            # The matches property
            @matches
            ## 
            # The scope property
            @scope
            ## 
            # The sensitiveTypeSource property
            @sensitive_type_source
            ## 
            ## Gets the classificationAttributes property value. The classificationAttributes property
            ## @return a classification_attribute
            ## 
            def classification_attributes
                return @classification_attributes
            end
            ## 
            ## Sets the classificationAttributes property value. The classificationAttributes property
            ## @param value Value to set for the classificationAttributes property.
            ## @return a void
            ## 
            def classification_attributes=(value)
                @classification_attributes = value
            end
            ## 
            ## Gets the classificationMethod property value. The classificationMethod property
            ## @return a detected_sensitive_content_classification_method
            ## 
            def classification_method
                return @classification_method
            end
            ## 
            ## Sets the classificationMethod property value. The classificationMethod property
            ## @param value Value to set for the classificationMethod property.
            ## @return a void
            ## 
            def classification_method=(value)
                @classification_method = value
            end
            ## 
            ## Instantiates a new detectedSensitiveContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a detected_sensitive_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.machineLearningDetectedSensitiveContent"
                            return MachineLearningDetectedSensitiveContent.new
                    end
                end
                return DetectedSensitiveContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "classificationAttributes" => lambda {|n| @classification_attributes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ClassificationAttribute.create_from_discriminator_value(pn) }) },
                    "classificationMethod" => lambda {|n| @classification_method = n.get_enum_value(MicrosoftGraphBeta::Models::DetectedSensitiveContentClassificationMethod) },
                    "matches" => lambda {|n| @matches = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitiveContentLocation.create_from_discriminator_value(pn) }) },
                    "scope" => lambda {|n| @scope = n.get_enum_value(MicrosoftGraphBeta::Models::DetectedSensitiveContentScope) },
                    "sensitiveTypeSource" => lambda {|n| @sensitive_type_source = n.get_enum_value(MicrosoftGraphBeta::Models::DetectedSensitiveContentSensitiveTypeSource) },
                })
            end
            ## 
            ## Gets the matches property value. The matches property
            ## @return a sensitive_content_location
            ## 
            def matches
                return @matches
            end
            ## 
            ## Sets the matches property value. The matches property
            ## @param value Value to set for the matches property.
            ## @return a void
            ## 
            def matches=(value)
                @matches = value
            end
            ## 
            ## Gets the scope property value. The scope property
            ## @return a detected_sensitive_content_scope
            ## 
            def scope
                return @scope
            end
            ## 
            ## Sets the scope property value. The scope property
            ## @param value Value to set for the scope property.
            ## @return a void
            ## 
            def scope=(value)
                @scope = value
            end
            ## 
            ## Gets the sensitiveTypeSource property value. The sensitiveTypeSource property
            ## @return a detected_sensitive_content_sensitive_type_source
            ## 
            def sensitive_type_source
                return @sensitive_type_source
            end
            ## 
            ## Sets the sensitiveTypeSource property value. The sensitiveTypeSource property
            ## @param value Value to set for the sensitiveTypeSource property.
            ## @return a void
            ## 
            def sensitive_type_source=(value)
                @sensitive_type_source = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("classificationAttributes", @classification_attributes)
                writer.write_enum_value("classificationMethod", @classification_method)
                writer.write_collection_of_object_values("matches", @matches)
                writer.write_enum_value("scope", @scope)
                writer.write_enum_value("sensitiveTypeSource", @sensitive_type_source)
            end
        end
    end
end
