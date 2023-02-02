require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcOnPremisesConnectionHealthCheck
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Additional details about the health check or the recommended action.
        @additional_details
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The display name for this health check item.
        @display_name
        ## 
        # The end time of the health check item. Read-only.
        @end_date_time
        ## 
        # The type of error that occurred during this health check.
        @error_type
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The recommended action to fix the corresponding error.
        @recommended_action
        ## 
        # The start time of the health check item. Read-only.
        @start_date_time
        ## 
        # The status property
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
        ## Gets the additionalDetails property value. Additional details about the health check or the recommended action.
        ## @return a string
        ## 
        def additional_details
            return @additional_details
        end
        ## 
        ## Sets the additionalDetails property value. Additional details about the health check or the recommended action.
        ## @param value Value to set for the additional_details property.
        ## @return a void
        ## 
        def additional_details=(value)
            @additional_details = value
        end
        ## 
        ## Instantiates a new cloudPcOnPremisesConnectionHealthCheck and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_on_premises_connection_health_check
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcOnPremisesConnectionHealthCheck.new
        end
        ## 
        ## Gets the displayName property value. The display name for this health check item.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name for this health check item.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the endDateTime property value. The end time of the health check item. Read-only.
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. The end time of the health check item. Read-only.
        ## @param value Value to set for the end_date_time property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## Gets the errorType property value. The type of error that occurred during this health check.
        ## @return a cloud_pc_on_premises_connection_health_check_error_type
        ## 
        def error_type
            return @error_type
        end
        ## 
        ## Sets the errorType property value. The type of error that occurred during this health check.
        ## @param value Value to set for the error_type property.
        ## @return a void
        ## 
        def error_type=(value)
            @error_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "additionalDetails" => lambda {|n| @additional_details = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                "errorType" => lambda {|n| @error_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionHealthCheckErrorType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "recommendedAction" => lambda {|n| @recommended_action = n.get_string_value() },
                "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcOnPremisesConnectionStatus) },
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
        ## Gets the recommendedAction property value. The recommended action to fix the corresponding error.
        ## @return a string
        ## 
        def recommended_action
            return @recommended_action
        end
        ## 
        ## Sets the recommendedAction property value. The recommended action to fix the corresponding error.
        ## @param value Value to set for the recommended_action property.
        ## @return a void
        ## 
        def recommended_action=(value)
            @recommended_action = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("additionalDetails", @additional_details)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("endDateTime", @end_date_time)
            writer.write_enum_value("errorType", @error_type)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("recommendedAction", @recommended_action)
            writer.write_date_time_value("startDateTime", @start_date_time)
            writer.write_enum_value("status", @status)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the startDateTime property value. The start time of the health check item. Read-only.
        ## @return a date_time
        ## 
        def start_date_time
            return @start_date_time
        end
        ## 
        ## Sets the startDateTime property value. The start time of the health check item. Read-only.
        ## @param value Value to set for the start_date_time property.
        ## @return a void
        ## 
        def start_date_time=(value)
            @start_date_time = value
        end
        ## 
        ## Gets the status property value. The status property
        ## @return a cloud_pc_on_premises_connection_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status property
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
