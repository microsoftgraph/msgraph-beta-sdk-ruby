require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class IdentityGovernanceRunSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of failed workflow runs.
            @failed_runs
            ## 
            # The number of failed tasks of a workflow.
            @failed_tasks
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of successful workflow runs.
            @successful_runs
            ## 
            # The total number of runs for a workflow.
            @total_runs
            ## 
            # The total number of tasks processed by a workflow.
            @total_tasks
            ## 
            # The total number of users processed by a workflow.
            @total_users
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new identityGovernanceRunSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a identity_governance_run_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return IdentityGovernanceRunSummary.new
            end
            ## 
            ## Gets the failedRuns property value. The number of failed workflow runs.
            ## @return a integer
            ## 
            def failed_runs
                return @failed_runs
            end
            ## 
            ## Sets the failedRuns property value. The number of failed workflow runs.
            ## @param value Value to set for the failedRuns property.
            ## @return a void
            ## 
            def failed_runs=(value)
                @failed_runs = value
            end
            ## 
            ## Gets the failedTasks property value. The number of failed tasks of a workflow.
            ## @return a integer
            ## 
            def failed_tasks
                return @failed_tasks
            end
            ## 
            ## Sets the failedTasks property value. The number of failed tasks of a workflow.
            ## @param value Value to set for the failedTasks property.
            ## @return a void
            ## 
            def failed_tasks=(value)
                @failed_tasks = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedRuns" => lambda {|n| @failed_runs = n.get_number_value() },
                    "failedTasks" => lambda {|n| @failed_tasks = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulRuns" => lambda {|n| @successful_runs = n.get_number_value() },
                    "totalRuns" => lambda {|n| @total_runs = n.get_number_value() },
                    "totalTasks" => lambda {|n| @total_tasks = n.get_number_value() },
                    "totalUsers" => lambda {|n| @total_users = n.get_number_value() },
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
                writer.write_number_value("failedRuns", @failed_runs)
                writer.write_number_value("failedTasks", @failed_tasks)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("successfulRuns", @successful_runs)
                writer.write_number_value("totalRuns", @total_runs)
                writer.write_number_value("totalTasks", @total_tasks)
                writer.write_number_value("totalUsers", @total_users)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulRuns property value. The number of successful workflow runs.
            ## @return a integer
            ## 
            def successful_runs
                return @successful_runs
            end
            ## 
            ## Sets the successfulRuns property value. The number of successful workflow runs.
            ## @param value Value to set for the successfulRuns property.
            ## @return a void
            ## 
            def successful_runs=(value)
                @successful_runs = value
            end
            ## 
            ## Gets the totalRuns property value. The total number of runs for a workflow.
            ## @return a integer
            ## 
            def total_runs
                return @total_runs
            end
            ## 
            ## Sets the totalRuns property value. The total number of runs for a workflow.
            ## @param value Value to set for the totalRuns property.
            ## @return a void
            ## 
            def total_runs=(value)
                @total_runs = value
            end
            ## 
            ## Gets the totalTasks property value. The total number of tasks processed by a workflow.
            ## @return a integer
            ## 
            def total_tasks
                return @total_tasks
            end
            ## 
            ## Sets the totalTasks property value. The total number of tasks processed by a workflow.
            ## @param value Value to set for the totalTasks property.
            ## @return a void
            ## 
            def total_tasks=(value)
                @total_tasks = value
            end
            ## 
            ## Gets the totalUsers property value. The total number of users processed by a workflow.
            ## @return a integer
            ## 
            def total_users
                return @total_users
            end
            ## 
            ## Sets the totalUsers property value. The total number of users processed by a workflow.
            ## @param value Value to set for the totalUsers property.
            ## @return a void
            ## 
            def total_users=(value)
                @total_users = value
            end
        end
    end
end
