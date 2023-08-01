require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkActionSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The failedCount property
            @failed_count
            ## 
            # The inProgressCount property
            @in_progress_count
            ## 
            # The notSupportedCount property
            @not_supported_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The pendingCount property
            @pending_count
            ## 
            # The successfulCount property
            @successful_count
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
            ## Instantiates a new cloudPcBulkActionSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_action_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcBulkActionSummary.new
            end
            ## 
            ## Gets the failedCount property value. The failedCount property
            ## @return a integer
            ## 
            def failed_count
                return @failed_count
            end
            ## 
            ## Sets the failedCount property value. The failedCount property
            ## @param value Value to set for the failedCount property.
            ## @return a void
            ## 
            def failed_count=(value)
                @failed_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedCount" => lambda {|n| @failed_count = n.get_number_value() },
                    "inProgressCount" => lambda {|n| @in_progress_count = n.get_number_value() },
                    "notSupportedCount" => lambda {|n| @not_supported_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pendingCount" => lambda {|n| @pending_count = n.get_number_value() },
                    "successfulCount" => lambda {|n| @successful_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the inProgressCount property value. The inProgressCount property
            ## @return a integer
            ## 
            def in_progress_count
                return @in_progress_count
            end
            ## 
            ## Sets the inProgressCount property value. The inProgressCount property
            ## @param value Value to set for the inProgressCount property.
            ## @return a void
            ## 
            def in_progress_count=(value)
                @in_progress_count = value
            end
            ## 
            ## Gets the notSupportedCount property value. The notSupportedCount property
            ## @return a integer
            ## 
            def not_supported_count
                return @not_supported_count
            end
            ## 
            ## Sets the notSupportedCount property value. The notSupportedCount property
            ## @param value Value to set for the notSupportedCount property.
            ## @return a void
            ## 
            def not_supported_count=(value)
                @not_supported_count = value
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
            ## Gets the pendingCount property value. The pendingCount property
            ## @return a integer
            ## 
            def pending_count
                return @pending_count
            end
            ## 
            ## Sets the pendingCount property value. The pendingCount property
            ## @param value Value to set for the pendingCount property.
            ## @return a void
            ## 
            def pending_count=(value)
                @pending_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("failedCount", @failed_count)
                writer.write_number_value("inProgressCount", @in_progress_count)
                writer.write_number_value("notSupportedCount", @not_supported_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("pendingCount", @pending_count)
                writer.write_number_value("successfulCount", @successful_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulCount property value. The successfulCount property
            ## @return a integer
            ## 
            def successful_count
                return @successful_count
            end
            ## 
            ## Sets the successfulCount property value. The successfulCount property
            ## @param value Value to set for the successfulCount property.
            ## @return a void
            ## 
            def successful_count=(value)
                @successful_count = value
            end
        end
    end
end
