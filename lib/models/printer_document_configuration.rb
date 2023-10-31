require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrinterDocumentConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The collate property
            @collate
            ## 
            # The colorMode property
            @color_mode
            ## 
            # The copies property
            @copies
            ## 
            # The dpi property
            @dpi
            ## 
            # The duplexMode property
            @duplex_mode
            ## 
            # The feedDirection property
            @feed_direction
            ## 
            # The feedOrientation property
            @feed_orientation
            ## 
            # The finishings property
            @finishings
            ## 
            # The fitPdfToPage property
            @fit_pdf_to_page
            ## 
            # The inputBin property
            @input_bin
            ## 
            # The margin property
            @margin
            ## 
            # The mediaSize property
            @media_size
            ## 
            # The mediaType property
            @media_type
            ## 
            # The multipageLayout property
            @multipage_layout
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The orientation property
            @orientation
            ## 
            # The outputBin property
            @output_bin
            ## 
            # The pageRanges property
            @page_ranges
            ## 
            # The pagesPerSheet property
            @pages_per_sheet
            ## 
            # The quality property
            @quality
            ## 
            # The scaling property
            @scaling
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the collate property value. The collate property
            ## @return a boolean
            ## 
            def collate
                return @collate
            end
            ## 
            ## Sets the collate property value. The collate property
            ## @param value Value to set for the collate property.
            ## @return a void
            ## 
            def collate=(value)
                @collate = value
            end
            ## 
            ## Gets the colorMode property value. The colorMode property
            ## @return a print_color_mode
            ## 
            def color_mode
                return @color_mode
            end
            ## 
            ## Sets the colorMode property value. The colorMode property
            ## @param value Value to set for the colorMode property.
            ## @return a void
            ## 
            def color_mode=(value)
                @color_mode = value
            end
            ## 
            ## Instantiates a new printerDocumentConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the copies property value. The copies property
            ## @return a integer
            ## 
            def copies
                return @copies
            end
            ## 
            ## Sets the copies property value. The copies property
            ## @param value Value to set for the copies property.
            ## @return a void
            ## 
            def copies=(value)
                @copies = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a printer_document_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterDocumentConfiguration.new
            end
            ## 
            ## Gets the dpi property value. The dpi property
            ## @return a integer
            ## 
            def dpi
                return @dpi
            end
            ## 
            ## Sets the dpi property value. The dpi property
            ## @param value Value to set for the dpi property.
            ## @return a void
            ## 
            def dpi=(value)
                @dpi = value
            end
            ## 
            ## Gets the duplexMode property value. The duplexMode property
            ## @return a print_duplex_mode
            ## 
            def duplex_mode
                return @duplex_mode
            end
            ## 
            ## Sets the duplexMode property value. The duplexMode property
            ## @param value Value to set for the duplexMode property.
            ## @return a void
            ## 
            def duplex_mode=(value)
                @duplex_mode = value
            end
            ## 
            ## Gets the feedDirection property value. The feedDirection property
            ## @return a printer_feed_direction
            ## 
            def feed_direction
                return @feed_direction
            end
            ## 
            ## Sets the feedDirection property value. The feedDirection property
            ## @param value Value to set for the feedDirection property.
            ## @return a void
            ## 
            def feed_direction=(value)
                @feed_direction = value
            end
            ## 
            ## Gets the feedOrientation property value. The feedOrientation property
            ## @return a printer_feed_orientation
            ## 
            def feed_orientation
                return @feed_orientation
            end
            ## 
            ## Sets the feedOrientation property value. The feedOrientation property
            ## @param value Value to set for the feedOrientation property.
            ## @return a void
            ## 
            def feed_orientation=(value)
                @feed_orientation = value
            end
            ## 
            ## Gets the finishings property value. The finishings property
            ## @return a print_finishing
            ## 
            def finishings
                return @finishings
            end
            ## 
            ## Sets the finishings property value. The finishings property
            ## @param value Value to set for the finishings property.
            ## @return a void
            ## 
            def finishings=(value)
                @finishings = value
            end
            ## 
            ## Gets the fitPdfToPage property value. The fitPdfToPage property
            ## @return a boolean
            ## 
            def fit_pdf_to_page
                return @fit_pdf_to_page
            end
            ## 
            ## Sets the fitPdfToPage property value. The fitPdfToPage property
            ## @param value Value to set for the fitPdfToPage property.
            ## @return a void
            ## 
            def fit_pdf_to_page=(value)
                @fit_pdf_to_page = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "collate" => lambda {|n| @collate = n.get_boolean_value() },
                    "colorMode" => lambda {|n| @color_mode = n.get_enum_value(MicrosoftGraphBeta::Models::PrintColorMode) },
                    "copies" => lambda {|n| @copies = n.get_number_value() },
                    "dpi" => lambda {|n| @dpi = n.get_number_value() },
                    "duplexMode" => lambda {|n| @duplex_mode = n.get_enum_value(MicrosoftGraphBeta::Models::PrintDuplexMode) },
                    "feedDirection" => lambda {|n| @feed_direction = n.get_enum_value(MicrosoftGraphBeta::Models::PrinterFeedDirection) },
                    "feedOrientation" => lambda {|n| @feed_orientation = n.get_enum_value(MicrosoftGraphBeta::Models::PrinterFeedOrientation) },
                    "finishings" => lambda {|n| @finishings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintFinishing.create_from_discriminator_value(pn) }) },
                    "fitPdfToPage" => lambda {|n| @fit_pdf_to_page = n.get_boolean_value() },
                    "inputBin" => lambda {|n| @input_bin = n.get_string_value() },
                    "margin" => lambda {|n| @margin = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PrintMargin.create_from_discriminator_value(pn) }) },
                    "mediaSize" => lambda {|n| @media_size = n.get_string_value() },
                    "mediaType" => lambda {|n| @media_type = n.get_string_value() },
                    "multipageLayout" => lambda {|n| @multipage_layout = n.get_enum_value(MicrosoftGraphBeta::Models::PrintMultipageLayout) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "orientation" => lambda {|n| @orientation = n.get_enum_value(MicrosoftGraphBeta::Models::PrintOrientation) },
                    "outputBin" => lambda {|n| @output_bin = n.get_string_value() },
                    "pageRanges" => lambda {|n| @page_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IntegerRange.create_from_discriminator_value(pn) }) },
                    "pagesPerSheet" => lambda {|n| @pages_per_sheet = n.get_number_value() },
                    "quality" => lambda {|n| @quality = n.get_enum_value(MicrosoftGraphBeta::Models::PrintQuality) },
                    "scaling" => lambda {|n| @scaling = n.get_enum_value(MicrosoftGraphBeta::Models::PrintScaling) },
                }
            end
            ## 
            ## Gets the inputBin property value. The inputBin property
            ## @return a string
            ## 
            def input_bin
                return @input_bin
            end
            ## 
            ## Sets the inputBin property value. The inputBin property
            ## @param value Value to set for the inputBin property.
            ## @return a void
            ## 
            def input_bin=(value)
                @input_bin = value
            end
            ## 
            ## Gets the margin property value. The margin property
            ## @return a print_margin
            ## 
            def margin
                return @margin
            end
            ## 
            ## Sets the margin property value. The margin property
            ## @param value Value to set for the margin property.
            ## @return a void
            ## 
            def margin=(value)
                @margin = value
            end
            ## 
            ## Gets the mediaSize property value. The mediaSize property
            ## @return a string
            ## 
            def media_size
                return @media_size
            end
            ## 
            ## Sets the mediaSize property value. The mediaSize property
            ## @param value Value to set for the mediaSize property.
            ## @return a void
            ## 
            def media_size=(value)
                @media_size = value
            end
            ## 
            ## Gets the mediaType property value. The mediaType property
            ## @return a string
            ## 
            def media_type
                return @media_type
            end
            ## 
            ## Sets the mediaType property value. The mediaType property
            ## @param value Value to set for the mediaType property.
            ## @return a void
            ## 
            def media_type=(value)
                @media_type = value
            end
            ## 
            ## Gets the multipageLayout property value. The multipageLayout property
            ## @return a print_multipage_layout
            ## 
            def multipage_layout
                return @multipage_layout
            end
            ## 
            ## Sets the multipageLayout property value. The multipageLayout property
            ## @param value Value to set for the multipageLayout property.
            ## @return a void
            ## 
            def multipage_layout=(value)
                @multipage_layout = value
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
            ## Gets the orientation property value. The orientation property
            ## @return a print_orientation
            ## 
            def orientation
                return @orientation
            end
            ## 
            ## Sets the orientation property value. The orientation property
            ## @param value Value to set for the orientation property.
            ## @return a void
            ## 
            def orientation=(value)
                @orientation = value
            end
            ## 
            ## Gets the outputBin property value. The outputBin property
            ## @return a string
            ## 
            def output_bin
                return @output_bin
            end
            ## 
            ## Sets the outputBin property value. The outputBin property
            ## @param value Value to set for the outputBin property.
            ## @return a void
            ## 
            def output_bin=(value)
                @output_bin = value
            end
            ## 
            ## Gets the pageRanges property value. The pageRanges property
            ## @return a integer_range
            ## 
            def page_ranges
                return @page_ranges
            end
            ## 
            ## Sets the pageRanges property value. The pageRanges property
            ## @param value Value to set for the pageRanges property.
            ## @return a void
            ## 
            def page_ranges=(value)
                @page_ranges = value
            end
            ## 
            ## Gets the pagesPerSheet property value. The pagesPerSheet property
            ## @return a integer
            ## 
            def pages_per_sheet
                return @pages_per_sheet
            end
            ## 
            ## Sets the pagesPerSheet property value. The pagesPerSheet property
            ## @param value Value to set for the pagesPerSheet property.
            ## @return a void
            ## 
            def pages_per_sheet=(value)
                @pages_per_sheet = value
            end
            ## 
            ## Gets the quality property value. The quality property
            ## @return a print_quality
            ## 
            def quality
                return @quality
            end
            ## 
            ## Sets the quality property value. The quality property
            ## @param value Value to set for the quality property.
            ## @return a void
            ## 
            def quality=(value)
                @quality = value
            end
            ## 
            ## Gets the scaling property value. The scaling property
            ## @return a print_scaling
            ## 
            def scaling
                return @scaling
            end
            ## 
            ## Sets the scaling property value. The scaling property
            ## @param value Value to set for the scaling property.
            ## @return a void
            ## 
            def scaling=(value)
                @scaling = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("collate", @collate)
                writer.write_enum_value("colorMode", @color_mode)
                writer.write_number_value("copies", @copies)
                writer.write_number_value("dpi", @dpi)
                writer.write_enum_value("duplexMode", @duplex_mode)
                writer.write_enum_value("feedDirection", @feed_direction)
                writer.write_enum_value("feedOrientation", @feed_orientation)
                writer.write_collection_of_object_values("finishings", @finishings)
                writer.write_boolean_value("fitPdfToPage", @fit_pdf_to_page)
                writer.write_string_value("inputBin", @input_bin)
                writer.write_object_value("margin", @margin)
                writer.write_string_value("mediaSize", @media_size)
                writer.write_string_value("mediaType", @media_type)
                writer.write_enum_value("multipageLayout", @multipage_layout)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("orientation", @orientation)
                writer.write_string_value("outputBin", @output_bin)
                writer.write_collection_of_object_values("pageRanges", @page_ranges)
                writer.write_number_value("pagesPerSheet", @pages_per_sheet)
                writer.write_enum_value("quality", @quality)
                writer.write_enum_value("scaling", @scaling)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
