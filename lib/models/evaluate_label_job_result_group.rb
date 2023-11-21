require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EvaluateLabelJobResultGroup
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The automatic property
            @automatic
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The recommended property
            @recommended
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
            ## Gets the automatic property value. The automatic property
            ## @return a evaluate_label_job_result
            ## 
            def automatic
                return @automatic
            end
            ## 
            ## Sets the automatic property value. The automatic property
            ## @param value Value to set for the automatic property.
            ## @return a void
            ## 
            def automatic=(value)
                @automatic = value
            end
            ## 
            ## Instantiates a new evaluateLabelJobResultGroup and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a evaluate_label_job_result_group
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EvaluateLabelJobResultGroup.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "automatic" => lambda {|n| @automatic = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EvaluateLabelJobResult.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "recommended" => lambda {|n| @recommended = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EvaluateLabelJobResult.create_from_discriminator_value(pn) }) },
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
            ## Gets the recommended property value. The recommended property
            ## @return a evaluate_label_job_result
            ## 
            def recommended
                return @recommended
            end
            ## 
            ## Sets the recommended property value. The recommended property
            ## @param value Value to set for the recommended property.
            ## @return a void
            ## 
            def recommended=(value)
                @recommended = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("automatic", @automatic)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("recommended", @recommended)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
