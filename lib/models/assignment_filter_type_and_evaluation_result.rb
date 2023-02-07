require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents the filter type and evalaution result of the filter.
    class AssignmentFilterTypeAndEvaluationResult
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Represents type of the assignment filter.
        @assignment_filter_type
        ## 
        # Supported evaluation results for filter.
        @evaluation_result
        ## 
        # The OdataType property
        @odata_type
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
        ## Gets the assignmentFilterType property value. Represents type of the assignment filter.
        ## @return a device_and_app_management_assignment_filter_type
        ## 
        def assignment_filter_type
            return @assignment_filter_type
        end
        ## 
        ## Sets the assignmentFilterType property value. Represents type of the assignment filter.
        ## @param value Value to set for the assignment_filter_type property.
        ## @return a void
        ## 
        def assignment_filter_type=(value)
            @assignment_filter_type = value
        end
        ## 
        ## Instantiates a new assignmentFilterTypeAndEvaluationResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a assignment_filter_type_and_evaluation_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AssignmentFilterTypeAndEvaluationResult.new
        end
        ## 
        ## Gets the evaluationResult property value. Supported evaluation results for filter.
        ## @return a assignment_filter_evaluation_result
        ## 
        def evaluation_result
            return @evaluation_result
        end
        ## 
        ## Sets the evaluationResult property value. Supported evaluation results for filter.
        ## @param value Value to set for the evaluation_result property.
        ## @return a void
        ## 
        def evaluation_result=(value)
            @evaluation_result = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "assignmentFilterType" => lambda {|n| @assignment_filter_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilterType) },
                "evaluationResult" => lambda {|n| @evaluation_result = n.get_enum_value(MicrosoftGraphBeta::Models::AssignmentFilterEvaluationResult) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_enum_value("assignmentFilterType", @assignment_filter_type)
            writer.write_enum_value("evaluationResult", @evaluation_result)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
