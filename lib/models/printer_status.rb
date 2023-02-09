require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrinterStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A human-readable description of the printer's current processing state. Read-only.
            @description
            ## 
            # The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.
            @details
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The processingState property
            @processing_state
            ## 
            # The processingStateDescription property
            @processing_state_description
            ## 
            # The processingStateReasons property
            @processing_state_reasons
            ## 
            # The state property
            @state
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
            ## Instantiates a new printerStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a printer_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterStatus.new
            end
            ## 
            ## Gets the description property value. A human-readable description of the printer's current processing state. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. A human-readable description of the printer's current processing state. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the details property value. The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.
            ## @return a printer_processing_state_detail
            ## 
            def details
                return @details
            end
            ## 
            ## Sets the details property value. The list of details describing why the printer is in the current state. Valid values are described in the following table. Read-only.
            ## @param value Value to set for the details property.
            ## @return a void
            ## 
            def details=(value)
                @details = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterProcessingStateDetail.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "processingState" => lambda {|n| @processing_state = n.get_enum_value(MicrosoftGraphBeta::Models::PrinterProcessingState) },
                    "processingStateDescription" => lambda {|n| @processing_state_description = n.get_string_value() },
                    "processingStateReasons" => lambda {|n| @processing_state_reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterProcessingStateReason.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::PrinterProcessingState) },
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
            ## Gets the processingState property value. The processingState property
            ## @return a printer_processing_state
            ## 
            def processing_state
                return @processing_state
            end
            ## 
            ## Sets the processingState property value. The processingState property
            ## @param value Value to set for the processing_state property.
            ## @return a void
            ## 
            def processing_state=(value)
                @processing_state = value
            end
            ## 
            ## Gets the processingStateDescription property value. The processingStateDescription property
            ## @return a string
            ## 
            def processing_state_description
                return @processing_state_description
            end
            ## 
            ## Sets the processingStateDescription property value. The processingStateDescription property
            ## @param value Value to set for the processing_state_description property.
            ## @return a void
            ## 
            def processing_state_description=(value)
                @processing_state_description = value
            end
            ## 
            ## Gets the processingStateReasons property value. The processingStateReasons property
            ## @return a printer_processing_state_reason
            ## 
            def processing_state_reasons
                return @processing_state_reasons
            end
            ## 
            ## Sets the processingStateReasons property value. The processingStateReasons property
            ## @param value Value to set for the processing_state_reasons property.
            ## @return a void
            ## 
            def processing_state_reasons=(value)
                @processing_state_reasons = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("details", @details)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("processingState", @processing_state)
                writer.write_string_value("processingStateDescription", @processing_state_description)
                writer.write_collection_of_object_values("processingStateReasons", @processing_state_reasons)
                writer.write_enum_value("state", @state)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a printer_processing_state
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
        end
    end
end
