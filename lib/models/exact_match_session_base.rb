require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchSessionBase < MicrosoftGraphBeta::Models::ExactMatchJobBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The dataStoreId property
            @data_store_id
            ## 
            # The processingCompletionDateTime property
            @processing_completion_date_time
            ## 
            # The remainingBlockCount property
            @remaining_block_count
            ## 
            # The remainingJobCount property
            @remaining_job_count
            ## 
            # The state property
            @state
            ## 
            # The totalBlockCount property
            @total_block_count
            ## 
            # The totalJobCount property
            @total_job_count
            ## 
            # The uploadCompletionDateTime property
            @upload_completion_date_time
            ## 
            ## Instantiates a new exactMatchSessionBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.exactMatchSessionBase"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_session_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.exactMatchSession"
                            return ExactMatchSession.new
                    end
                end
                return ExactMatchSessionBase.new
            end
            ## 
            ## Gets the dataStoreId property value. The dataStoreId property
            ## @return a string
            ## 
            def data_store_id
                return @data_store_id
            end
            ## 
            ## Sets the dataStoreId property value. The dataStoreId property
            ## @param value Value to set for the dataStoreId property.
            ## @return a void
            ## 
            def data_store_id=(value)
                @data_store_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "dataStoreId" => lambda {|n| @data_store_id = n.get_string_value() },
                    "processingCompletionDateTime" => lambda {|n| @processing_completion_date_time = n.get_date_time_value() },
                    "remainingBlockCount" => lambda {|n| @remaining_block_count = n.get_number_value() },
                    "remainingJobCount" => lambda {|n| @remaining_job_count = n.get_number_value() },
                    "state" => lambda {|n| @state = n.get_string_value() },
                    "totalBlockCount" => lambda {|n| @total_block_count = n.get_number_value() },
                    "totalJobCount" => lambda {|n| @total_job_count = n.get_number_value() },
                    "uploadCompletionDateTime" => lambda {|n| @upload_completion_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the processingCompletionDateTime property value. The processingCompletionDateTime property
            ## @return a date_time
            ## 
            def processing_completion_date_time
                return @processing_completion_date_time
            end
            ## 
            ## Sets the processingCompletionDateTime property value. The processingCompletionDateTime property
            ## @param value Value to set for the processingCompletionDateTime property.
            ## @return a void
            ## 
            def processing_completion_date_time=(value)
                @processing_completion_date_time = value
            end
            ## 
            ## Gets the remainingBlockCount property value. The remainingBlockCount property
            ## @return a integer
            ## 
            def remaining_block_count
                return @remaining_block_count
            end
            ## 
            ## Sets the remainingBlockCount property value. The remainingBlockCount property
            ## @param value Value to set for the remainingBlockCount property.
            ## @return a void
            ## 
            def remaining_block_count=(value)
                @remaining_block_count = value
            end
            ## 
            ## Gets the remainingJobCount property value. The remainingJobCount property
            ## @return a integer
            ## 
            def remaining_job_count
                return @remaining_job_count
            end
            ## 
            ## Sets the remainingJobCount property value. The remainingJobCount property
            ## @param value Value to set for the remainingJobCount property.
            ## @return a void
            ## 
            def remaining_job_count=(value)
                @remaining_job_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("dataStoreId", @data_store_id)
                writer.write_date_time_value("processingCompletionDateTime", @processing_completion_date_time)
                writer.write_number_value("remainingBlockCount", @remaining_block_count)
                writer.write_number_value("remainingJobCount", @remaining_job_count)
                writer.write_string_value("state", @state)
                writer.write_number_value("totalBlockCount", @total_block_count)
                writer.write_number_value("totalJobCount", @total_job_count)
                writer.write_date_time_value("uploadCompletionDateTime", @upload_completion_date_time)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The state property
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the totalBlockCount property value. The totalBlockCount property
            ## @return a integer
            ## 
            def total_block_count
                return @total_block_count
            end
            ## 
            ## Sets the totalBlockCount property value. The totalBlockCount property
            ## @param value Value to set for the totalBlockCount property.
            ## @return a void
            ## 
            def total_block_count=(value)
                @total_block_count = value
            end
            ## 
            ## Gets the totalJobCount property value. The totalJobCount property
            ## @return a integer
            ## 
            def total_job_count
                return @total_job_count
            end
            ## 
            ## Sets the totalJobCount property value. The totalJobCount property
            ## @param value Value to set for the totalJobCount property.
            ## @return a void
            ## 
            def total_job_count=(value)
                @total_job_count = value
            end
            ## 
            ## Gets the uploadCompletionDateTime property value. The uploadCompletionDateTime property
            ## @return a date_time
            ## 
            def upload_completion_date_time
                return @upload_completion_date_time
            end
            ## 
            ## Sets the uploadCompletionDateTime property value. The uploadCompletionDateTime property
            ## @param value Value to set for the uploadCompletionDateTime property.
            ## @return a void
            ## 
            def upload_completion_date_time=(value)
                @upload_completion_date_time = value
            end
        end
    end
end
