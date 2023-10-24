require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EvaluateLabelJobResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The responsiblePolicy property
            @responsible_policy
            ## 
            # The responsibleSensitiveTypes property
            @responsible_sensitive_types
            ## 
            # The sensitivityLabel property
            @sensitivity_label
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
            ## Instantiates a new evaluateLabelJobResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a evaluate_label_job_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EvaluateLabelJobResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "responsiblePolicy" => lambda {|n| @responsible_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ResponsiblePolicy.create_from_discriminator_value(pn) }) },
                    "responsibleSensitiveTypes" => lambda {|n| @responsible_sensitive_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ResponsibleSensitiveType.create_from_discriminator_value(pn) }) },
                    "sensitivityLabel" => lambda {|n| @sensitivity_label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MatchingLabel.create_from_discriminator_value(pn) }) },
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
            ## Gets the responsiblePolicy property value. The responsiblePolicy property
            ## @return a responsible_policy
            ## 
            def responsible_policy
                return @responsible_policy
            end
            ## 
            ## Sets the responsiblePolicy property value. The responsiblePolicy property
            ## @param value Value to set for the responsiblePolicy property.
            ## @return a void
            ## 
            def responsible_policy=(value)
                @responsible_policy = value
            end
            ## 
            ## Gets the responsibleSensitiveTypes property value. The responsibleSensitiveTypes property
            ## @return a responsible_sensitive_type
            ## 
            def responsible_sensitive_types
                return @responsible_sensitive_types
            end
            ## 
            ## Sets the responsibleSensitiveTypes property value. The responsibleSensitiveTypes property
            ## @param value Value to set for the responsibleSensitiveTypes property.
            ## @return a void
            ## 
            def responsible_sensitive_types=(value)
                @responsible_sensitive_types = value
            end
            ## 
            ## Gets the sensitivityLabel property value. The sensitivityLabel property
            ## @return a matching_label
            ## 
            def sensitivity_label
                return @sensitivity_label
            end
            ## 
            ## Sets the sensitivityLabel property value. The sensitivityLabel property
            ## @param value Value to set for the sensitivityLabel property.
            ## @return a void
            ## 
            def sensitivity_label=(value)
                @sensitivity_label = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("responsiblePolicy", @responsible_policy)
                writer.write_collection_of_object_values("responsibleSensitiveTypes", @responsible_sensitive_types)
                writer.write_object_value("sensitivityLabel", @sensitivity_label)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
