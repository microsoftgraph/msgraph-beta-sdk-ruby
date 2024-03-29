require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IdentityGovernanceUserProcessingResult < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date time that the workflow execution for a user completed. Value is null if the workflow hasn't completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @completed_date_time
            ## 
            # The number of tasks that failed in the workflow execution.
            @failed_tasks_count
            ## 
            # The processingStatus property
            @processing_status
            ## 
            # The date time that the workflow is scheduled to be executed for a user.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @scheduled_date_time
            ## 
            # The date time that the workflow execution started. Value is null if the workflow execution has not started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            @started_date_time
            ## 
            # The subject property
            @subject
            ## 
            # The associated individual task execution.
            @task_processing_results
            ## 
            # The total number of tasks that in the workflow execution.
            @total_tasks_count
            ## 
            # The total number of unprocessed tasks for the workflow.
            @total_unprocessed_tasks_count
            ## 
            # The workflowExecutionType property
            @workflow_execution_type
            ## 
            # The version of the workflow that was executed.
            @workflow_version
            ## 
            ## Gets the completedDateTime property value. The date time that the workflow execution for a user completed. Value is null if the workflow hasn't completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def completed_date_time
                return @completed_date_time
            end
            ## 
            ## Sets the completedDateTime property value. The date time that the workflow execution for a user completed. Value is null if the workflow hasn't completed.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the completedDateTime property.
            ## @return a void
            ## 
            def completed_date_time=(value)
                @completed_date_time = value
            end
            ## 
            ## Instantiates a new identityGovernanceUserProcessingResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_user_processing_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceUserProcessingResult.new
            end
            ## 
            ## Gets the failedTasksCount property value. The number of tasks that failed in the workflow execution.
            ## @return a integer
            ## 
            def failed_tasks_count
                return @failed_tasks_count
            end
            ## 
            ## Sets the failedTasksCount property value. The number of tasks that failed in the workflow execution.
            ## @param value Value to set for the failedTasksCount property.
            ## @return a void
            ## 
            def failed_tasks_count=(value)
                @failed_tasks_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "completedDateTime" => lambda {|n| @completed_date_time = n.get_date_time_value() },
                    "failedTasksCount" => lambda {|n| @failed_tasks_count = n.get_number_value() },
                    "processingStatus" => lambda {|n| @processing_status = n.get_enum_value(MicrosoftGraphBeta::Models::IdentityGovernanceLifecycleWorkflowProcessingStatus) },
                    "scheduledDateTime" => lambda {|n| @scheduled_date_time = n.get_date_time_value() },
                    "startedDateTime" => lambda {|n| @started_date_time = n.get_date_time_value() },
                    "subject" => lambda {|n| @subject = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::User.create_from_discriminator_value(pn) }) },
                    "taskProcessingResults" => lambda {|n| @task_processing_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IdentityGovernanceTaskProcessingResult.create_from_discriminator_value(pn) }) },
                    "totalTasksCount" => lambda {|n| @total_tasks_count = n.get_number_value() },
                    "totalUnprocessedTasksCount" => lambda {|n| @total_unprocessed_tasks_count = n.get_number_value() },
                    "workflowExecutionType" => lambda {|n| @workflow_execution_type = n.get_enum_value(MicrosoftGraphBeta::Models::IdentityGovernanceWorkflowExecutionType) },
                    "workflowVersion" => lambda {|n| @workflow_version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the processingStatus property value. The processingStatus property
            ## @return a identity_governance_lifecycle_workflow_processing_status
            ## 
            def processing_status
                return @processing_status
            end
            ## 
            ## Sets the processingStatus property value. The processingStatus property
            ## @param value Value to set for the processingStatus property.
            ## @return a void
            ## 
            def processing_status=(value)
                @processing_status = value
            end
            ## 
            ## Gets the scheduledDateTime property value. The date time that the workflow is scheduled to be executed for a user.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def scheduled_date_time
                return @scheduled_date_time
            end
            ## 
            ## Sets the scheduledDateTime property value. The date time that the workflow is scheduled to be executed for a user.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the scheduledDateTime property.
            ## @return a void
            ## 
            def scheduled_date_time=(value)
                @scheduled_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("completedDateTime", @completed_date_time)
                writer.write_number_value("failedTasksCount", @failed_tasks_count)
                writer.write_enum_value("processingStatus", @processing_status)
                writer.write_date_time_value("scheduledDateTime", @scheduled_date_time)
                writer.write_date_time_value("startedDateTime", @started_date_time)
                writer.write_object_value("subject", @subject)
                writer.write_collection_of_object_values("taskProcessingResults", @task_processing_results)
                writer.write_number_value("totalTasksCount", @total_tasks_count)
                writer.write_number_value("totalUnprocessedTasksCount", @total_unprocessed_tasks_count)
                writer.write_enum_value("workflowExecutionType", @workflow_execution_type)
                writer.write_number_value("workflowVersion", @workflow_version)
            end
            ## 
            ## Gets the startedDateTime property value. The date time that the workflow execution started. Value is null if the workflow execution has not started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @return a date_time
            ## 
            def started_date_time
                return @started_date_time
            end
            ## 
            ## Sets the startedDateTime property value. The date time that the workflow execution started. Value is null if the workflow execution has not started.Supports $filter(lt, le, gt, ge, eq, ne) and $orderby.
            ## @param value Value to set for the startedDateTime property.
            ## @return a void
            ## 
            def started_date_time=(value)
                @started_date_time = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a user
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the taskProcessingResults property value. The associated individual task execution.
            ## @return a identity_governance_task_processing_result
            ## 
            def task_processing_results
                return @task_processing_results
            end
            ## 
            ## Sets the taskProcessingResults property value. The associated individual task execution.
            ## @param value Value to set for the taskProcessingResults property.
            ## @return a void
            ## 
            def task_processing_results=(value)
                @task_processing_results = value
            end
            ## 
            ## Gets the totalTasksCount property value. The total number of tasks that in the workflow execution.
            ## @return a integer
            ## 
            def total_tasks_count
                return @total_tasks_count
            end
            ## 
            ## Sets the totalTasksCount property value. The total number of tasks that in the workflow execution.
            ## @param value Value to set for the totalTasksCount property.
            ## @return a void
            ## 
            def total_tasks_count=(value)
                @total_tasks_count = value
            end
            ## 
            ## Gets the totalUnprocessedTasksCount property value. The total number of unprocessed tasks for the workflow.
            ## @return a integer
            ## 
            def total_unprocessed_tasks_count
                return @total_unprocessed_tasks_count
            end
            ## 
            ## Sets the totalUnprocessedTasksCount property value. The total number of unprocessed tasks for the workflow.
            ## @param value Value to set for the totalUnprocessedTasksCount property.
            ## @return a void
            ## 
            def total_unprocessed_tasks_count=(value)
                @total_unprocessed_tasks_count = value
            end
            ## 
            ## Gets the workflowExecutionType property value. The workflowExecutionType property
            ## @return a identity_governance_workflow_execution_type
            ## 
            def workflow_execution_type
                return @workflow_execution_type
            end
            ## 
            ## Sets the workflowExecutionType property value. The workflowExecutionType property
            ## @param value Value to set for the workflowExecutionType property.
            ## @return a void
            ## 
            def workflow_execution_type=(value)
                @workflow_execution_type = value
            end
            ## 
            ## Gets the workflowVersion property value. The version of the workflow that was executed.
            ## @return a integer
            ## 
            def workflow_version
                return @workflow_version
            end
            ## 
            ## Sets the workflowVersion property value. The version of the workflow that was executed.
            ## @param value Value to set for the workflowVersion property.
            ## @return a void
            ## 
            def workflow_version=(value)
                @workflow_version = value
            end
        end
    end
end
