require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DocumentProcessingJob < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Date and time of item creation. Read-only.
            @created_date_time
            ## 
            # The document processing job type. The possible values are: file, folder
            @job_type
            ## 
            # The listItemUniqueId of the file, or folder to process. Use GET driveItem resource operation and read  sharepointIds property to get listItemUniqueId.
            @list_item_unique_id
            ## 
            # The document processing Job status. The possible values are: inProgress, completed, failed, unknownFutureValue.
            @status
            ## 
            ## Instantiates a new DocumentProcessingJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Date and time of item creation. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a document_processing_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DocumentProcessingJob.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "jobType" => lambda {|n| @job_type = n.get_enum_value(MicrosoftGraphBeta::Models::DocumentProcessingJobType) },
                    "listItemUniqueId" => lambda {|n| @list_item_unique_id = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DocumentProcessingJobStatus) },
                })
            end
            ## 
            ## Gets the jobType property value. The document processing job type. The possible values are: file, folder
            ## @return a document_processing_job_type
            ## 
            def job_type
                return @job_type
            end
            ## 
            ## Sets the jobType property value. The document processing job type. The possible values are: file, folder
            ## @param value Value to set for the jobType property.
            ## @return a void
            ## 
            def job_type=(value)
                @job_type = value
            end
            ## 
            ## Gets the listItemUniqueId property value. The listItemUniqueId of the file, or folder to process. Use GET driveItem resource operation and read  sharepointIds property to get listItemUniqueId.
            ## @return a string
            ## 
            def list_item_unique_id
                return @list_item_unique_id
            end
            ## 
            ## Sets the listItemUniqueId property value. The listItemUniqueId of the file, or folder to process. Use GET driveItem resource operation and read  sharepointIds property to get listItemUniqueId.
            ## @param value Value to set for the listItemUniqueId property.
            ## @return a void
            ## 
            def list_item_unique_id=(value)
                @list_item_unique_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_enum_value("jobType", @job_type)
                writer.write_string_value("listItemUniqueId", @list_item_unique_id)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The document processing Job status. The possible values are: inProgress, completed, failed, unknownFutureValue.
            ## @return a document_processing_job_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The document processing Job status. The possible values are: inProgress, completed, failed, unknownFutureValue.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
