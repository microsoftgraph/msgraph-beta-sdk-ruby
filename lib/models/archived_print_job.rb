require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ArchivedPrintJob
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # True if the job was acquired by a printer; false otherwise. Read-only.
            @acquired_by_printer
            ## 
            # The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            @acquired_date_time
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of black and white pages that were printed. Read-only.
            @black_and_white_page_count
            ## 
            # The number of color pages that were printed. Read-only.
            @color_page_count
            ## 
            # The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            @completion_date_time
            ## 
            # The number of copies that were printed. Read-only.
            @copies_printed
            ## 
            # The user who created the print job. Read-only.
            @created_by
            ## 
            # The dateTimeOffset when the job was created. Read-only.
            @created_date_time
            ## 
            # The number of duplex (double-sided) pages that were printed. Read-only.
            @duplex_page_count
            ## 
            # The archived print job's GUID. Read-only.
            @id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The total number of pages that were printed. Read-only.
            @page_count
            ## 
            # The printer ID that the job was queued for. Read-only.
            @printer_id
            ## 
            # The printer name that the job was queued for. Read-only.
            @printer_name
            ## 
            # The processingState property
            @processing_state
            ## 
            # The number of simplex (single-sided) pages that were printed. Read-only.
            @simplex_page_count
            ## 
            ## Gets the acquiredByPrinter property value. True if the job was acquired by a printer; false otherwise. Read-only.
            ## @return a boolean
            ## 
            def acquired_by_printer
                return @acquired_by_printer
            end
            ## 
            ## Sets the acquiredByPrinter property value. True if the job was acquired by a printer; false otherwise. Read-only.
            ## @param value Value to set for the acquiredByPrinter property.
            ## @return a void
            ## 
            def acquired_by_printer=(value)
                @acquired_by_printer = value
            end
            ## 
            ## Gets the acquiredDateTime property value. The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            ## @return a date_time
            ## 
            def acquired_date_time
                return @acquired_date_time
            end
            ## 
            ## Sets the acquiredDateTime property value. The dateTimeOffset when the job was acquired by the printer, if any. Read-only.
            ## @param value Value to set for the acquiredDateTime property.
            ## @return a void
            ## 
            def acquired_date_time=(value)
                @acquired_date_time = value
            end
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
            ## Gets the blackAndWhitePageCount property value. The number of black and white pages that were printed. Read-only.
            ## @return a integer
            ## 
            def black_and_white_page_count
                return @black_and_white_page_count
            end
            ## 
            ## Sets the blackAndWhitePageCount property value. The number of black and white pages that were printed. Read-only.
            ## @param value Value to set for the blackAndWhitePageCount property.
            ## @return a void
            ## 
            def black_and_white_page_count=(value)
                @black_and_white_page_count = value
            end
            ## 
            ## Gets the colorPageCount property value. The number of color pages that were printed. Read-only.
            ## @return a integer
            ## 
            def color_page_count
                return @color_page_count
            end
            ## 
            ## Sets the colorPageCount property value. The number of color pages that were printed. Read-only.
            ## @param value Value to set for the colorPageCount property.
            ## @return a void
            ## 
            def color_page_count=(value)
                @color_page_count = value
            end
            ## 
            ## Gets the completionDateTime property value. The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            ## @return a date_time
            ## 
            def completion_date_time
                return @completion_date_time
            end
            ## 
            ## Sets the completionDateTime property value. The dateTimeOffset when the job was completed, canceled or aborted. Read-only.
            ## @param value Value to set for the completionDateTime property.
            ## @return a void
            ## 
            def completion_date_time=(value)
                @completion_date_time = value
            end
            ## 
            ## Instantiates a new archivedPrintJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the copiesPrinted property value. The number of copies that were printed. Read-only.
            ## @return a integer
            ## 
            def copies_printed
                return @copies_printed
            end
            ## 
            ## Sets the copiesPrinted property value. The number of copies that were printed. Read-only.
            ## @param value Value to set for the copiesPrinted property.
            ## @return a void
            ## 
            def copies_printed=(value)
                @copies_printed = value
            end
            ## 
            ## Gets the createdBy property value. The user who created the print job. Read-only.
            ## @return a user_identity
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created the print job. Read-only.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Gets the createdDateTime property value. The dateTimeOffset when the job was created. Read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The dateTimeOffset when the job was created. Read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a archived_print_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ArchivedPrintJob.new
            end
            ## 
            ## Gets the duplexPageCount property value. The number of duplex (double-sided) pages that were printed. Read-only.
            ## @return a integer
            ## 
            def duplex_page_count
                return @duplex_page_count
            end
            ## 
            ## Sets the duplexPageCount property value. The number of duplex (double-sided) pages that were printed. Read-only.
            ## @param value Value to set for the duplexPageCount property.
            ## @return a void
            ## 
            def duplex_page_count=(value)
                @duplex_page_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "acquiredByPrinter" => lambda {|n| @acquired_by_printer = n.get_boolean_value() },
                    "acquiredDateTime" => lambda {|n| @acquired_date_time = n.get_date_time_value() },
                    "blackAndWhitePageCount" => lambda {|n| @black_and_white_page_count = n.get_number_value() },
                    "colorPageCount" => lambda {|n| @color_page_count = n.get_number_value() },
                    "completionDateTime" => lambda {|n| @completion_date_time = n.get_date_time_value() },
                    "copiesPrinted" => lambda {|n| @copies_printed = n.get_number_value() },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::UserIdentity.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "duplexPageCount" => lambda {|n| @duplex_page_count = n.get_number_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "pageCount" => lambda {|n| @page_count = n.get_number_value() },
                    "printerId" => lambda {|n| @printer_id = n.get_string_value() },
                    "printerName" => lambda {|n| @printer_name = n.get_string_value() },
                    "processingState" => lambda {|n| @processing_state = n.get_enum_value(MicrosoftGraphBeta::Models::PrintJobProcessingState) },
                    "simplexPageCount" => lambda {|n| @simplex_page_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the id property value. The archived print job's GUID. Read-only.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The archived print job's GUID. Read-only.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
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
            ## Gets the pageCount property value. The total number of pages that were printed. Read-only.
            ## @return a integer
            ## 
            def page_count
                return @page_count
            end
            ## 
            ## Sets the pageCount property value. The total number of pages that were printed. Read-only.
            ## @param value Value to set for the pageCount property.
            ## @return a void
            ## 
            def page_count=(value)
                @page_count = value
            end
            ## 
            ## Gets the printerId property value. The printer ID that the job was queued for. Read-only.
            ## @return a string
            ## 
            def printer_id
                return @printer_id
            end
            ## 
            ## Sets the printerId property value. The printer ID that the job was queued for. Read-only.
            ## @param value Value to set for the printerId property.
            ## @return a void
            ## 
            def printer_id=(value)
                @printer_id = value
            end
            ## 
            ## Gets the printerName property value. The printer name that the job was queued for. Read-only.
            ## @return a string
            ## 
            def printer_name
                return @printer_name
            end
            ## 
            ## Sets the printerName property value. The printer name that the job was queued for. Read-only.
            ## @param value Value to set for the printerName property.
            ## @return a void
            ## 
            def printer_name=(value)
                @printer_name = value
            end
            ## 
            ## Gets the processingState property value. The processingState property
            ## @return a print_job_processing_state
            ## 
            def processing_state
                return @processing_state
            end
            ## 
            ## Sets the processingState property value. The processingState property
            ## @param value Value to set for the processingState property.
            ## @return a void
            ## 
            def processing_state=(value)
                @processing_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("acquiredByPrinter", @acquired_by_printer)
                writer.write_date_time_value("acquiredDateTime", @acquired_date_time)
                writer.write_number_value("blackAndWhitePageCount", @black_and_white_page_count)
                writer.write_number_value("colorPageCount", @color_page_count)
                writer.write_date_time_value("completionDateTime", @completion_date_time)
                writer.write_number_value("copiesPrinted", @copies_printed)
                writer.write_object_value("createdBy", @created_by)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_number_value("duplexPageCount", @duplex_page_count)
                writer.write_string_value("id", @id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("pageCount", @page_count)
                writer.write_string_value("printerId", @printer_id)
                writer.write_string_value("printerName", @printer_name)
                writer.write_enum_value("processingState", @processing_state)
                writer.write_number_value("simplexPageCount", @simplex_page_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the simplexPageCount property value. The number of simplex (single-sided) pages that were printed. Read-only.
            ## @return a integer
            ## 
            def simplex_page_count
                return @simplex_page_count
            end
            ## 
            ## Sets the simplexPageCount property value. The number of simplex (single-sided) pages that were printed. Read-only.
            ## @param value Value to set for the simplexPageCount property.
            ## @return a void
            ## 
            def simplex_page_count=(value)
                @simplex_page_count = value
            end
        end
    end
end
