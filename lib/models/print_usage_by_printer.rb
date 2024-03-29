require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrintUsageByPrinter < MicrosoftGraphBeta::Models::PrintUsage
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The printerId property
            @printer_id
            ## 
            # The name of the printer represented by these statistics.
            @printer_name
            ## 
            ## Instantiates a new printUsageByPrinter and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a print_usage_by_printer
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrintUsageByPrinter.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "printerId" => lambda {|n| @printer_id = n.get_string_value() },
                    "printerName" => lambda {|n| @printer_name = n.get_string_value() },
                })
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
            ## @param value Value to set for the printerId property.
            ## @return a void
            ## 
            def printer_id=(value)
                @printer_id = value
            end
            ## 
            ## Gets the printerName property value. The name of the printer represented by these statistics.
            ## @return a string
            ## 
            def printer_name
                return @printer_name
            end
            ## 
            ## Sets the printerName property value. The name of the printer represented by these statistics.
            ## @param value Value to set for the printerName property.
            ## @return a void
            ## 
            def printer_name=(value)
                @printer_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("printerId", @printer_id)
                writer.write_string_value("printerName", @printer_name)
            end
        end
    end
end
