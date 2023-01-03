require 'microsoft_kiota_abstractions'
require_relative '../../../../models/device_app_management_task_status'
require_relative '../../../device_app_management'
require_relative '../../device_app_management_tasks'
require_relative '../item'
require_relative './update_status'

module MicrosoftGraphBeta::DeviceAppManagement::DeviceAppManagementTasks::Item::UpdateStatus
    ## 
    # Provides operations to call the updateStatus method.
    class UpdateStatusPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The note property
        @note
        ## 
        # Device app management task status.
        @status
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
        ## Instantiates a new updateStatusPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a update_status_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UpdateStatusPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "note" => lambda {|n| @note = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAppManagementTaskStatus) },
            }
        end
        ## 
        ## Gets the note property value. The note property
        ## @return a string
        ## 
        def note
            return @note
        end
        ## 
        ## Sets the note property value. The note property
        ## @param value Value to set for the note property.
        ## @return a void
        ## 
        def note=(value)
            @note = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("note", @note)
            writer.write_enum_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the status property value. Device app management task status.
        ## @return a device_app_management_task_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Device app management task status.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
