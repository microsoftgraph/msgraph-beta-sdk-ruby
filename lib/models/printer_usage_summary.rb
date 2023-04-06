require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrinterUsageSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The completedJobCount property
            @completed_job_count
            ## 
            # The incompleteJobCount property
            @incomplete_job_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The printer property
            @printer
            ## 
            # The printerDisplayName property
            @printer_display_name
            ## 
            # The printerId property
            @printer_id
            ## 
            # The printerManufacturer property
            @printer_manufacturer
            ## 
            # The printerModel property
            @printer_model
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
            ## Gets the completedJobCount property value. The completedJobCount property
            ## @return a integer
            ## 
            def completed_job_count
                return @completed_job_count
            end
            ## 
            ## Sets the completedJobCount property value. The completedJobCount property
            ## @param value Value to set for the completed_job_count property.
            ## @return a void
            ## 
            def completed_job_count=(value)
                @completed_job_count = value
            end
            ## 
            ## Instantiates a new printerUsageSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a printer_usage_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterUsageSummary.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "completedJobCount" => lambda {|n| @completed_job_count = n.get_number_value() },
                    "incompleteJobCount" => lambda {|n| @incomplete_job_count = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "printer" => lambda {|n| @printer = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DirectoryObject.create_from_discriminator_value(pn) }) },
                    "printerDisplayName" => lambda {|n| @printer_display_name = n.get_string_value() },
                    "printerId" => lambda {|n| @printer_id = n.get_string_value() },
                    "printerManufacturer" => lambda {|n| @printer_manufacturer = n.get_string_value() },
                    "printerModel" => lambda {|n| @printer_model = n.get_string_value() },
                }
            end
            ## 
            ## Gets the incompleteJobCount property value. The incompleteJobCount property
            ## @return a integer
            ## 
            def incomplete_job_count
                return @incomplete_job_count
            end
            ## 
            ## Sets the incompleteJobCount property value. The incompleteJobCount property
            ## @param value Value to set for the incomplete_job_count property.
            ## @return a void
            ## 
            def incomplete_job_count=(value)
                @incomplete_job_count = value
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
            ## Gets the printer property value. The printer property
            ## @return a directory_object
            ## 
            def printer
                return @printer
            end
            ## 
            ## Sets the printer property value. The printer property
            ## @param value Value to set for the printer property.
            ## @return a void
            ## 
            def printer=(value)
                @printer = value
            end
            ## 
            ## Gets the printerDisplayName property value. The printerDisplayName property
            ## @return a string
            ## 
            def printer_display_name
                return @printer_display_name
            end
            ## 
            ## Sets the printerDisplayName property value. The printerDisplayName property
            ## @param value Value to set for the printer_display_name property.
            ## @return a void
            ## 
            def printer_display_name=(value)
                @printer_display_name = value
            end
            ## 
            ## Gets the printerId property value. The printerId property
            ## @return a string
            ## 
            def printer_id
                return @printer_id
            end
            ## 
            ## Sets the printerId property value. The printerId property
            ## @param value Value to set for the printer_id property.
            ## @return a void
            ## 
            def printer_id=(value)
                @printer_id = value
            end
            ## 
            ## Gets the printerManufacturer property value. The printerManufacturer property
            ## @return a string
            ## 
            def printer_manufacturer
                return @printer_manufacturer
            end
            ## 
            ## Sets the printerManufacturer property value. The printerManufacturer property
            ## @param value Value to set for the printer_manufacturer property.
            ## @return a void
            ## 
            def printer_manufacturer=(value)
                @printer_manufacturer = value
            end
            ## 
            ## Gets the printerModel property value. The printerModel property
            ## @return a string
            ## 
            def printer_model
                return @printer_model
            end
            ## 
            ## Sets the printerModel property value. The printerModel property
            ## @param value Value to set for the printer_model property.
            ## @return a void
            ## 
            def printer_model=(value)
                @printer_model = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("completedJobCount", @completed_job_count)
                writer.write_number_value("incompleteJobCount", @incomplete_job_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("printer", @printer)
                writer.write_string_value("printerDisplayName", @printer_display_name)
                writer.write_string_value("printerId", @printer_id)
                writer.write_string_value("printerManufacturer", @printer_manufacturer)
                writer.write_string_value("printerModel", @printer_model)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
