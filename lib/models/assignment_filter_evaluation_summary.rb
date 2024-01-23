require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represent result summary for assignment filter evaluation
        class AssignmentFilterEvaluationSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The admin defined name for assignment filter.
            @assignment_filter_display_name
            ## 
            # Unique identifier for the assignment filter object
            @assignment_filter_id
            ## 
            # The time the assignment filter was last modified.
            @assignment_filter_last_modified_date_time
            ## 
            # Supported platform types.
            @assignment_filter_platform
            ## 
            # Represents type of the assignment filter.
            @assignment_filter_type
            ## 
            # A collection of filter types and their corresponding evaluation results.
            @assignment_filter_type_and_evaluation_results
            ## 
            # The time assignment filter was evaluated.
            @evaluation_date_time
            ## 
            # Supported evaluation results for filter.
            @evaluation_result
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the assignmentFilterDisplayName property value. The admin defined name for assignment filter.
            ## @return a string
            ## 
            def assignment_filter_display_name
                return @assignment_filter_display_name
            end
            ## 
            ## Sets the assignmentFilterDisplayName property value. The admin defined name for assignment filter.
            ## @param value Value to set for the assignmentFilterDisplayName property.
            ## @return a void
            ## 
            def assignment_filter_display_name=(value)
                @assignment_filter_display_name = value
            end
            ## 
            ## Gets the assignmentFilterId property value. Unique identifier for the assignment filter object
            ## @return a string
            ## 
            def assignment_filter_id
                return @assignment_filter_id
            end
            ## 
            ## Sets the assignmentFilterId property value. Unique identifier for the assignment filter object
            ## @param value Value to set for the assignmentFilterId property.
            ## @return a void
            ## 
            def assignment_filter_id=(value)
                @assignment_filter_id = value
            end
            ## 
            ## Gets the assignmentFilterLastModifiedDateTime property value. The time the assignment filter was last modified.
            ## @return a date_time
            ## 
            def assignment_filter_last_modified_date_time
                return @assignment_filter_last_modified_date_time
            end
            ## 
            ## Sets the assignmentFilterLastModifiedDateTime property value. The time the assignment filter was last modified.
            ## @param value Value to set for the assignmentFilterLastModifiedDateTime property.
            ## @return a void
            ## 
            def assignment_filter_last_modified_date_time=(value)
                @assignment_filter_last_modified_date_time = value
            end
            ## 
            ## Gets the assignmentFilterPlatform property value. Supported platform types.
            ## @return a device_platform_type
            ## 
            def assignment_filter_platform
                return @assignment_filter_platform
            end
            ## 
            ## Sets the assignmentFilterPlatform property value. Supported platform types.
            ## @param value Value to set for the assignmentFilterPlatform property.
            ## @return a void
            ## 
            def assignment_filter_platform=(value)
                @assignment_filter_platform = value
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
            ## @param value Value to set for the assignmentFilterType property.
            ## @return a void
            ## 
            def assignment_filter_type=(value)
                @assignment_filter_type = value
            end
            ## 
            ## Gets the assignmentFilterTypeAndEvaluationResults property value. A collection of filter types and their corresponding evaluation results.
            ## @return a assignment_filter_type_and_evaluation_result
            ## 
            def assignment_filter_type_and_evaluation_results
                return @assignment_filter_type_and_evaluation_results
            end
            ## 
            ## Sets the assignmentFilterTypeAndEvaluationResults property value. A collection of filter types and their corresponding evaluation results.
            ## @param value Value to set for the assignmentFilterTypeAndEvaluationResults property.
            ## @return a void
            ## 
            def assignment_filter_type_and_evaluation_results=(value)
                @assignment_filter_type_and_evaluation_results = value
            end
            ## 
            ## Instantiates a new assignmentFilterEvaluationSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a assignment_filter_evaluation_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AssignmentFilterEvaluationSummary.new
            end
            ## 
            ## Gets the evaluationDateTime property value. The time assignment filter was evaluated.
            ## @return a date_time
            ## 
            def evaluation_date_time
                return @evaluation_date_time
            end
            ## 
            ## Sets the evaluationDateTime property value. The time assignment filter was evaluated.
            ## @param value Value to set for the evaluationDateTime property.
            ## @return a void
            ## 
            def evaluation_date_time=(value)
                @evaluation_date_time = value
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
            ## @param value Value to set for the evaluationResult property.
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
                    "assignmentFilterDisplayName" => lambda {|n| @assignment_filter_display_name = n.get_string_value() },
                    "assignmentFilterId" => lambda {|n| @assignment_filter_id = n.get_string_value() },
                    "assignmentFilterLastModifiedDateTime" => lambda {|n| @assignment_filter_last_modified_date_time = n.get_date_time_value() },
                    "assignmentFilterPlatform" => lambda {|n| @assignment_filter_platform = n.get_enum_value(MicrosoftGraphBeta::Models::DevicePlatformType) },
                    "assignmentFilterType" => lambda {|n| @assignment_filter_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentFilterType) },
                    "assignmentFilterTypeAndEvaluationResults" => lambda {|n| @assignment_filter_type_and_evaluation_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentFilterTypeAndEvaluationResult.create_from_discriminator_value(pn) }) },
                    "evaluationDateTime" => lambda {|n| @evaluation_date_time = n.get_date_time_value() },
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
                writer.write_string_value("assignmentFilterDisplayName", @assignment_filter_display_name)
                writer.write_string_value("assignmentFilterId", @assignment_filter_id)
                writer.write_date_time_value("assignmentFilterLastModifiedDateTime", @assignment_filter_last_modified_date_time)
                writer.write_enum_value("assignmentFilterPlatform", @assignment_filter_platform)
                writer.write_enum_value("assignmentFilterType", @assignment_filter_type)
                writer.write_collection_of_object_values("assignmentFilterTypeAndEvaluationResults", @assignment_filter_type_and_evaluation_results)
                writer.write_date_time_value("evaluationDateTime", @evaluation_date_time)
                writer.write_enum_value("evaluationResult", @evaluation_result)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
