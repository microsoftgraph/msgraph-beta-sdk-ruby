require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PrinterCapabilities
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A list of supported bottom margins(in microns) for the printer.
            @bottom_margins
            ## 
            # True if the printer supports collating when printing muliple copies of a multi-page document; false otherwise.
            @collation
            ## 
            # The color modes supported by the printer. Valid values are described in the following table.
            @color_modes
            ## 
            # A list of supported content (MIME) types that the printer supports. It is not guaranteed that the Universal Print service supports printing all of these MIME types.
            @content_types
            ## 
            # The range of copies per job supported by the printer.
            @copies_per_job
            ## 
            # The list of print resolutions in DPI that are supported by the printer.
            @dpis
            ## 
            # The list of duplex modes that are supported by the printer. Valid values are described in the following table.
            @duplex_modes
            ## 
            # The feedDirections property
            @feed_directions
            ## 
            # The list of feed orientations that are supported by the printer.
            @feed_orientations
            ## 
            # Finishing processes the printer supports for a printed document.
            @finishings
            ## 
            # Supported input bins for the printer.
            @input_bins
            ## 
            # True if color printing is supported by the printer; false otherwise. Read-only.
            @is_color_printing_supported
            ## 
            # True if the printer supports printing by page ranges; false otherwise.
            @is_page_range_supported
            ## 
            # A list of supported left margins(in microns) for the printer.
            @left_margins
            ## 
            # The media (i.e., paper) colors supported by the printer.
            @media_colors
            ## 
            # The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. Valid values are in the following table.
            @media_sizes
            ## 
            # The media types supported by the printer.
            @media_types
            ## 
            # The presentation directions supported by the printer. Supported values are described in the following table.
            @multipage_layouts
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The print orientations supported by the printer. Valid values are described in the following table.
            @orientations
            ## 
            # The printer's supported output bins (trays).
            @output_bins
            ## 
            # Supported number of Input Pages to impose upon a single Impression.
            @pages_per_sheet
            ## 
            # The print qualities supported by the printer.
            @qualities
            ## 
            # A list of supported right margins(in microns) for the printer.
            @right_margins
            ## 
            # Supported print scalings.
            @scalings
            ## 
            # The supportedColorConfigurations property
            @supported_color_configurations
            ## 
            # The supportedCopiesPerJob property
            @supported_copies_per_job
            ## 
            # The supportedDocumentMimeTypes property
            @supported_document_mime_types
            ## 
            # The supportedDuplexConfigurations property
            @supported_duplex_configurations
            ## 
            # The supportedFinishings property
            @supported_finishings
            ## 
            # The supportedMediaColors property
            @supported_media_colors
            ## 
            # The supportedMediaSizes property
            @supported_media_sizes
            ## 
            # The supportedMediaTypes property
            @supported_media_types
            ## 
            # The supportedOrientations property
            @supported_orientations
            ## 
            # The supportedOutputBins property
            @supported_output_bins
            ## 
            # The supportedPagesPerSheet property
            @supported_pages_per_sheet
            ## 
            # The supportedPresentationDirections property
            @supported_presentation_directions
            ## 
            # The supportedPrintQualities property
            @supported_print_qualities
            ## 
            # True if the printer supports scaling PDF pages to match the print media size; false otherwise.
            @supports_fit_pdf_to_page
            ## 
            # A list of supported top margins(in microns) for the printer.
            @top_margins
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
            ## Gets the bottomMargins property value. A list of supported bottom margins(in microns) for the printer.
            ## @return a integer
            ## 
            def bottom_margins
                return @bottom_margins
            end
            ## 
            ## Sets the bottomMargins property value. A list of supported bottom margins(in microns) for the printer.
            ## @param value Value to set for the bottom_margins property.
            ## @return a void
            ## 
            def bottom_margins=(value)
                @bottom_margins = value
            end
            ## 
            ## Gets the collation property value. True if the printer supports collating when printing muliple copies of a multi-page document; false otherwise.
            ## @return a boolean
            ## 
            def collation
                return @collation
            end
            ## 
            ## Sets the collation property value. True if the printer supports collating when printing muliple copies of a multi-page document; false otherwise.
            ## @param value Value to set for the collation property.
            ## @return a void
            ## 
            def collation=(value)
                @collation = value
            end
            ## 
            ## Gets the colorModes property value. The color modes supported by the printer. Valid values are described in the following table.
            ## @return a print_color_mode
            ## 
            def color_modes
                return @color_modes
            end
            ## 
            ## Sets the colorModes property value. The color modes supported by the printer. Valid values are described in the following table.
            ## @param value Value to set for the color_modes property.
            ## @return a void
            ## 
            def color_modes=(value)
                @color_modes = value
            end
            ## 
            ## Instantiates a new printerCapabilities and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the contentTypes property value. A list of supported content (MIME) types that the printer supports. It is not guaranteed that the Universal Print service supports printing all of these MIME types.
            ## @return a string
            ## 
            def content_types
                return @content_types
            end
            ## 
            ## Sets the contentTypes property value. A list of supported content (MIME) types that the printer supports. It is not guaranteed that the Universal Print service supports printing all of these MIME types.
            ## @param value Value to set for the content_types property.
            ## @return a void
            ## 
            def content_types=(value)
                @content_types = value
            end
            ## 
            ## Gets the copiesPerJob property value. The range of copies per job supported by the printer.
            ## @return a integer_range
            ## 
            def copies_per_job
                return @copies_per_job
            end
            ## 
            ## Sets the copiesPerJob property value. The range of copies per job supported by the printer.
            ## @param value Value to set for the copies_per_job property.
            ## @return a void
            ## 
            def copies_per_job=(value)
                @copies_per_job = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a printer_capabilities
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PrinterCapabilities.new
            end
            ## 
            ## Gets the dpis property value. The list of print resolutions in DPI that are supported by the printer.
            ## @return a integer
            ## 
            def dpis
                return @dpis
            end
            ## 
            ## Sets the dpis property value. The list of print resolutions in DPI that are supported by the printer.
            ## @param value Value to set for the dpis property.
            ## @return a void
            ## 
            def dpis=(value)
                @dpis = value
            end
            ## 
            ## Gets the duplexModes property value. The list of duplex modes that are supported by the printer. Valid values are described in the following table.
            ## @return a print_duplex_mode
            ## 
            def duplex_modes
                return @duplex_modes
            end
            ## 
            ## Sets the duplexModes property value. The list of duplex modes that are supported by the printer. Valid values are described in the following table.
            ## @param value Value to set for the duplex_modes property.
            ## @return a void
            ## 
            def duplex_modes=(value)
                @duplex_modes = value
            end
            ## 
            ## Gets the feedDirections property value. The feedDirections property
            ## @return a printer_feed_direction
            ## 
            def feed_directions
                return @feed_directions
            end
            ## 
            ## Sets the feedDirections property value. The feedDirections property
            ## @param value Value to set for the feed_directions property.
            ## @return a void
            ## 
            def feed_directions=(value)
                @feed_directions = value
            end
            ## 
            ## Gets the feedOrientations property value. The list of feed orientations that are supported by the printer.
            ## @return a printer_feed_orientation
            ## 
            def feed_orientations
                return @feed_orientations
            end
            ## 
            ## Sets the feedOrientations property value. The list of feed orientations that are supported by the printer.
            ## @param value Value to set for the feed_orientations property.
            ## @return a void
            ## 
            def feed_orientations=(value)
                @feed_orientations = value
            end
            ## 
            ## Gets the finishings property value. Finishing processes the printer supports for a printed document.
            ## @return a print_finishing
            ## 
            def finishings
                return @finishings
            end
            ## 
            ## Sets the finishings property value. Finishing processes the printer supports for a printed document.
            ## @param value Value to set for the finishings property.
            ## @return a void
            ## 
            def finishings=(value)
                @finishings = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "bottomMargins" => lambda {|n| @bottom_margins = n.get_collection_of_primitive_values(Integer) },
                    "collation" => lambda {|n| @collation = n.get_boolean_value() },
                    "colorModes" => lambda {|n| @color_modes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintColorMode.create_from_discriminator_value(pn) }) },
                    "contentTypes" => lambda {|n| @content_types = n.get_collection_of_primitive_values(String) },
                    "copiesPerJob" => lambda {|n| @copies_per_job = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IntegerRange.create_from_discriminator_value(pn) }) },
                    "dpis" => lambda {|n| @dpis = n.get_collection_of_primitive_values(Integer) },
                    "duplexModes" => lambda {|n| @duplex_modes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintDuplexMode.create_from_discriminator_value(pn) }) },
                    "feedDirections" => lambda {|n| @feed_directions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterFeedDirection.create_from_discriminator_value(pn) }) },
                    "feedOrientations" => lambda {|n| @feed_orientations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrinterFeedOrientation.create_from_discriminator_value(pn) }) },
                    "finishings" => lambda {|n| @finishings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintFinishing.create_from_discriminator_value(pn) }) },
                    "inputBins" => lambda {|n| @input_bins = n.get_collection_of_primitive_values(String) },
                    "isColorPrintingSupported" => lambda {|n| @is_color_printing_supported = n.get_boolean_value() },
                    "isPageRangeSupported" => lambda {|n| @is_page_range_supported = n.get_boolean_value() },
                    "leftMargins" => lambda {|n| @left_margins = n.get_collection_of_primitive_values(Integer) },
                    "mediaColors" => lambda {|n| @media_colors = n.get_collection_of_primitive_values(String) },
                    "mediaSizes" => lambda {|n| @media_sizes = n.get_collection_of_primitive_values(String) },
                    "mediaTypes" => lambda {|n| @media_types = n.get_collection_of_primitive_values(String) },
                    "multipageLayouts" => lambda {|n| @multipage_layouts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintMultipageLayout.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "orientations" => lambda {|n| @orientations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintOrientation.create_from_discriminator_value(pn) }) },
                    "outputBins" => lambda {|n| @output_bins = n.get_collection_of_primitive_values(String) },
                    "pagesPerSheet" => lambda {|n| @pages_per_sheet = n.get_collection_of_primitive_values(Integer) },
                    "qualities" => lambda {|n| @qualities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintQuality.create_from_discriminator_value(pn) }) },
                    "rightMargins" => lambda {|n| @right_margins = n.get_collection_of_primitive_values(Integer) },
                    "scalings" => lambda {|n| @scalings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintScaling.create_from_discriminator_value(pn) }) },
                    "supportedColorConfigurations" => lambda {|n| @supported_color_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintColorConfiguration.create_from_discriminator_value(pn) }) },
                    "supportedCopiesPerJob" => lambda {|n| @supported_copies_per_job = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IntegerRange.create_from_discriminator_value(pn) }) },
                    "supportedDocumentMimeTypes" => lambda {|n| @supported_document_mime_types = n.get_collection_of_primitive_values(String) },
                    "supportedDuplexConfigurations" => lambda {|n| @supported_duplex_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintDuplexConfiguration.create_from_discriminator_value(pn) }) },
                    "supportedFinishings" => lambda {|n| @supported_finishings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintFinishing.create_from_discriminator_value(pn) }) },
                    "supportedMediaColors" => lambda {|n| @supported_media_colors = n.get_collection_of_primitive_values(String) },
                    "supportedMediaSizes" => lambda {|n| @supported_media_sizes = n.get_collection_of_primitive_values(String) },
                    "supportedMediaTypes" => lambda {|n| @supported_media_types = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintMediaType.create_from_discriminator_value(pn) }) },
                    "supportedOrientations" => lambda {|n| @supported_orientations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintOrientation.create_from_discriminator_value(pn) }) },
                    "supportedOutputBins" => lambda {|n| @supported_output_bins = n.get_collection_of_primitive_values(String) },
                    "supportedPagesPerSheet" => lambda {|n| @supported_pages_per_sheet = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IntegerRange.create_from_discriminator_value(pn) }) },
                    "supportedPresentationDirections" => lambda {|n| @supported_presentation_directions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintPresentationDirection.create_from_discriminator_value(pn) }) },
                    "supportedPrintQualities" => lambda {|n| @supported_print_qualities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PrintQuality.create_from_discriminator_value(pn) }) },
                    "supportsFitPdfToPage" => lambda {|n| @supports_fit_pdf_to_page = n.get_boolean_value() },
                    "topMargins" => lambda {|n| @top_margins = n.get_collection_of_primitive_values(Integer) },
                }
            end
            ## 
            ## Gets the inputBins property value. Supported input bins for the printer.
            ## @return a string
            ## 
            def input_bins
                return @input_bins
            end
            ## 
            ## Sets the inputBins property value. Supported input bins for the printer.
            ## @param value Value to set for the input_bins property.
            ## @return a void
            ## 
            def input_bins=(value)
                @input_bins = value
            end
            ## 
            ## Gets the isColorPrintingSupported property value. True if color printing is supported by the printer; false otherwise. Read-only.
            ## @return a boolean
            ## 
            def is_color_printing_supported
                return @is_color_printing_supported
            end
            ## 
            ## Sets the isColorPrintingSupported property value. True if color printing is supported by the printer; false otherwise. Read-only.
            ## @param value Value to set for the is_color_printing_supported property.
            ## @return a void
            ## 
            def is_color_printing_supported=(value)
                @is_color_printing_supported = value
            end
            ## 
            ## Gets the isPageRangeSupported property value. True if the printer supports printing by page ranges; false otherwise.
            ## @return a boolean
            ## 
            def is_page_range_supported
                return @is_page_range_supported
            end
            ## 
            ## Sets the isPageRangeSupported property value. True if the printer supports printing by page ranges; false otherwise.
            ## @param value Value to set for the is_page_range_supported property.
            ## @return a void
            ## 
            def is_page_range_supported=(value)
                @is_page_range_supported = value
            end
            ## 
            ## Gets the leftMargins property value. A list of supported left margins(in microns) for the printer.
            ## @return a integer
            ## 
            def left_margins
                return @left_margins
            end
            ## 
            ## Sets the leftMargins property value. A list of supported left margins(in microns) for the printer.
            ## @param value Value to set for the left_margins property.
            ## @return a void
            ## 
            def left_margins=(value)
                @left_margins = value
            end
            ## 
            ## Gets the mediaColors property value. The media (i.e., paper) colors supported by the printer.
            ## @return a string
            ## 
            def media_colors
                return @media_colors
            end
            ## 
            ## Sets the mediaColors property value. The media (i.e., paper) colors supported by the printer.
            ## @param value Value to set for the media_colors property.
            ## @return a void
            ## 
            def media_colors=(value)
                @media_colors = value
            end
            ## 
            ## Gets the mediaSizes property value. The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. Valid values are in the following table.
            ## @return a string
            ## 
            def media_sizes
                return @media_sizes
            end
            ## 
            ## Sets the mediaSizes property value. The media sizes supported by the printer. Supports standard size names for ISO and ANSI media sizes. Valid values are in the following table.
            ## @param value Value to set for the media_sizes property.
            ## @return a void
            ## 
            def media_sizes=(value)
                @media_sizes = value
            end
            ## 
            ## Gets the mediaTypes property value. The media types supported by the printer.
            ## @return a string
            ## 
            def media_types
                return @media_types
            end
            ## 
            ## Sets the mediaTypes property value. The media types supported by the printer.
            ## @param value Value to set for the media_types property.
            ## @return a void
            ## 
            def media_types=(value)
                @media_types = value
            end
            ## 
            ## Gets the multipageLayouts property value. The presentation directions supported by the printer. Supported values are described in the following table.
            ## @return a print_multipage_layout
            ## 
            def multipage_layouts
                return @multipage_layouts
            end
            ## 
            ## Sets the multipageLayouts property value. The presentation directions supported by the printer. Supported values are described in the following table.
            ## @param value Value to set for the multipage_layouts property.
            ## @return a void
            ## 
            def multipage_layouts=(value)
                @multipage_layouts = value
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
            ## Gets the orientations property value. The print orientations supported by the printer. Valid values are described in the following table.
            ## @return a print_orientation
            ## 
            def orientations
                return @orientations
            end
            ## 
            ## Sets the orientations property value. The print orientations supported by the printer. Valid values are described in the following table.
            ## @param value Value to set for the orientations property.
            ## @return a void
            ## 
            def orientations=(value)
                @orientations = value
            end
            ## 
            ## Gets the outputBins property value. The printer's supported output bins (trays).
            ## @return a string
            ## 
            def output_bins
                return @output_bins
            end
            ## 
            ## Sets the outputBins property value. The printer's supported output bins (trays).
            ## @param value Value to set for the output_bins property.
            ## @return a void
            ## 
            def output_bins=(value)
                @output_bins = value
            end
            ## 
            ## Gets the pagesPerSheet property value. Supported number of Input Pages to impose upon a single Impression.
            ## @return a integer
            ## 
            def pages_per_sheet
                return @pages_per_sheet
            end
            ## 
            ## Sets the pagesPerSheet property value. Supported number of Input Pages to impose upon a single Impression.
            ## @param value Value to set for the pages_per_sheet property.
            ## @return a void
            ## 
            def pages_per_sheet=(value)
                @pages_per_sheet = value
            end
            ## 
            ## Gets the qualities property value. The print qualities supported by the printer.
            ## @return a print_quality
            ## 
            def qualities
                return @qualities
            end
            ## 
            ## Sets the qualities property value. The print qualities supported by the printer.
            ## @param value Value to set for the qualities property.
            ## @return a void
            ## 
            def qualities=(value)
                @qualities = value
            end
            ## 
            ## Gets the rightMargins property value. A list of supported right margins(in microns) for the printer.
            ## @return a integer
            ## 
            def right_margins
                return @right_margins
            end
            ## 
            ## Sets the rightMargins property value. A list of supported right margins(in microns) for the printer.
            ## @param value Value to set for the right_margins property.
            ## @return a void
            ## 
            def right_margins=(value)
                @right_margins = value
            end
            ## 
            ## Gets the scalings property value. Supported print scalings.
            ## @return a print_scaling
            ## 
            def scalings
                return @scalings
            end
            ## 
            ## Sets the scalings property value. Supported print scalings.
            ## @param value Value to set for the scalings property.
            ## @return a void
            ## 
            def scalings=(value)
                @scalings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("bottomMargins", @bottom_margins)
                writer.write_boolean_value("collation", @collation)
                writer.write_collection_of_object_values("colorModes", @color_modes)
                writer.write_collection_of_primitive_values("contentTypes", @content_types)
                writer.write_object_value("copiesPerJob", @copies_per_job)
                writer.write_collection_of_primitive_values("dpis", @dpis)
                writer.write_collection_of_object_values("duplexModes", @duplex_modes)
                writer.write_collection_of_object_values("feedDirections", @feed_directions)
                writer.write_collection_of_object_values("feedOrientations", @feed_orientations)
                writer.write_collection_of_object_values("finishings", @finishings)
                writer.write_collection_of_primitive_values("inputBins", @input_bins)
                writer.write_boolean_value("isColorPrintingSupported", @is_color_printing_supported)
                writer.write_boolean_value("isPageRangeSupported", @is_page_range_supported)
                writer.write_collection_of_primitive_values("leftMargins", @left_margins)
                writer.write_collection_of_primitive_values("mediaColors", @media_colors)
                writer.write_collection_of_primitive_values("mediaSizes", @media_sizes)
                writer.write_collection_of_primitive_values("mediaTypes", @media_types)
                writer.write_collection_of_object_values("multipageLayouts", @multipage_layouts)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("orientations", @orientations)
                writer.write_collection_of_primitive_values("outputBins", @output_bins)
                writer.write_collection_of_primitive_values("pagesPerSheet", @pages_per_sheet)
                writer.write_collection_of_object_values("qualities", @qualities)
                writer.write_collection_of_primitive_values("rightMargins", @right_margins)
                writer.write_collection_of_object_values("scalings", @scalings)
                writer.write_collection_of_object_values("supportedColorConfigurations", @supported_color_configurations)
                writer.write_object_value("supportedCopiesPerJob", @supported_copies_per_job)
                writer.write_collection_of_primitive_values("supportedDocumentMimeTypes", @supported_document_mime_types)
                writer.write_collection_of_object_values("supportedDuplexConfigurations", @supported_duplex_configurations)
                writer.write_collection_of_object_values("supportedFinishings", @supported_finishings)
                writer.write_collection_of_primitive_values("supportedMediaColors", @supported_media_colors)
                writer.write_collection_of_primitive_values("supportedMediaSizes", @supported_media_sizes)
                writer.write_collection_of_object_values("supportedMediaTypes", @supported_media_types)
                writer.write_collection_of_object_values("supportedOrientations", @supported_orientations)
                writer.write_collection_of_primitive_values("supportedOutputBins", @supported_output_bins)
                writer.write_object_value("supportedPagesPerSheet", @supported_pages_per_sheet)
                writer.write_collection_of_object_values("supportedPresentationDirections", @supported_presentation_directions)
                writer.write_collection_of_object_values("supportedPrintQualities", @supported_print_qualities)
                writer.write_boolean_value("supportsFitPdfToPage", @supports_fit_pdf_to_page)
                writer.write_collection_of_primitive_values("topMargins", @top_margins)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportedColorConfigurations property value. The supportedColorConfigurations property
            ## @return a print_color_configuration
            ## 
            def supported_color_configurations
                return @supported_color_configurations
            end
            ## 
            ## Sets the supportedColorConfigurations property value. The supportedColorConfigurations property
            ## @param value Value to set for the supported_color_configurations property.
            ## @return a void
            ## 
            def supported_color_configurations=(value)
                @supported_color_configurations = value
            end
            ## 
            ## Gets the supportedCopiesPerJob property value. The supportedCopiesPerJob property
            ## @return a integer_range
            ## 
            def supported_copies_per_job
                return @supported_copies_per_job
            end
            ## 
            ## Sets the supportedCopiesPerJob property value. The supportedCopiesPerJob property
            ## @param value Value to set for the supported_copies_per_job property.
            ## @return a void
            ## 
            def supported_copies_per_job=(value)
                @supported_copies_per_job = value
            end
            ## 
            ## Gets the supportedDocumentMimeTypes property value. The supportedDocumentMimeTypes property
            ## @return a string
            ## 
            def supported_document_mime_types
                return @supported_document_mime_types
            end
            ## 
            ## Sets the supportedDocumentMimeTypes property value. The supportedDocumentMimeTypes property
            ## @param value Value to set for the supported_document_mime_types property.
            ## @return a void
            ## 
            def supported_document_mime_types=(value)
                @supported_document_mime_types = value
            end
            ## 
            ## Gets the supportedDuplexConfigurations property value. The supportedDuplexConfigurations property
            ## @return a print_duplex_configuration
            ## 
            def supported_duplex_configurations
                return @supported_duplex_configurations
            end
            ## 
            ## Sets the supportedDuplexConfigurations property value. The supportedDuplexConfigurations property
            ## @param value Value to set for the supported_duplex_configurations property.
            ## @return a void
            ## 
            def supported_duplex_configurations=(value)
                @supported_duplex_configurations = value
            end
            ## 
            ## Gets the supportedFinishings property value. The supportedFinishings property
            ## @return a print_finishing
            ## 
            def supported_finishings
                return @supported_finishings
            end
            ## 
            ## Sets the supportedFinishings property value. The supportedFinishings property
            ## @param value Value to set for the supported_finishings property.
            ## @return a void
            ## 
            def supported_finishings=(value)
                @supported_finishings = value
            end
            ## 
            ## Gets the supportedMediaColors property value. The supportedMediaColors property
            ## @return a string
            ## 
            def supported_media_colors
                return @supported_media_colors
            end
            ## 
            ## Sets the supportedMediaColors property value. The supportedMediaColors property
            ## @param value Value to set for the supported_media_colors property.
            ## @return a void
            ## 
            def supported_media_colors=(value)
                @supported_media_colors = value
            end
            ## 
            ## Gets the supportedMediaSizes property value. The supportedMediaSizes property
            ## @return a string
            ## 
            def supported_media_sizes
                return @supported_media_sizes
            end
            ## 
            ## Sets the supportedMediaSizes property value. The supportedMediaSizes property
            ## @param value Value to set for the supported_media_sizes property.
            ## @return a void
            ## 
            def supported_media_sizes=(value)
                @supported_media_sizes = value
            end
            ## 
            ## Gets the supportedMediaTypes property value. The supportedMediaTypes property
            ## @return a print_media_type
            ## 
            def supported_media_types
                return @supported_media_types
            end
            ## 
            ## Sets the supportedMediaTypes property value. The supportedMediaTypes property
            ## @param value Value to set for the supported_media_types property.
            ## @return a void
            ## 
            def supported_media_types=(value)
                @supported_media_types = value
            end
            ## 
            ## Gets the supportedOrientations property value. The supportedOrientations property
            ## @return a print_orientation
            ## 
            def supported_orientations
                return @supported_orientations
            end
            ## 
            ## Sets the supportedOrientations property value. The supportedOrientations property
            ## @param value Value to set for the supported_orientations property.
            ## @return a void
            ## 
            def supported_orientations=(value)
                @supported_orientations = value
            end
            ## 
            ## Gets the supportedOutputBins property value. The supportedOutputBins property
            ## @return a string
            ## 
            def supported_output_bins
                return @supported_output_bins
            end
            ## 
            ## Sets the supportedOutputBins property value. The supportedOutputBins property
            ## @param value Value to set for the supported_output_bins property.
            ## @return a void
            ## 
            def supported_output_bins=(value)
                @supported_output_bins = value
            end
            ## 
            ## Gets the supportedPagesPerSheet property value. The supportedPagesPerSheet property
            ## @return a integer_range
            ## 
            def supported_pages_per_sheet
                return @supported_pages_per_sheet
            end
            ## 
            ## Sets the supportedPagesPerSheet property value. The supportedPagesPerSheet property
            ## @param value Value to set for the supported_pages_per_sheet property.
            ## @return a void
            ## 
            def supported_pages_per_sheet=(value)
                @supported_pages_per_sheet = value
            end
            ## 
            ## Gets the supportedPresentationDirections property value. The supportedPresentationDirections property
            ## @return a print_presentation_direction
            ## 
            def supported_presentation_directions
                return @supported_presentation_directions
            end
            ## 
            ## Sets the supportedPresentationDirections property value. The supportedPresentationDirections property
            ## @param value Value to set for the supported_presentation_directions property.
            ## @return a void
            ## 
            def supported_presentation_directions=(value)
                @supported_presentation_directions = value
            end
            ## 
            ## Gets the supportedPrintQualities property value. The supportedPrintQualities property
            ## @return a print_quality
            ## 
            def supported_print_qualities
                return @supported_print_qualities
            end
            ## 
            ## Sets the supportedPrintQualities property value. The supportedPrintQualities property
            ## @param value Value to set for the supported_print_qualities property.
            ## @return a void
            ## 
            def supported_print_qualities=(value)
                @supported_print_qualities = value
            end
            ## 
            ## Gets the supportsFitPdfToPage property value. True if the printer supports scaling PDF pages to match the print media size; false otherwise.
            ## @return a boolean
            ## 
            def supports_fit_pdf_to_page
                return @supports_fit_pdf_to_page
            end
            ## 
            ## Sets the supportsFitPdfToPage property value. True if the printer supports scaling PDF pages to match the print media size; false otherwise.
            ## @param value Value to set for the supports_fit_pdf_to_page property.
            ## @return a void
            ## 
            def supports_fit_pdf_to_page=(value)
                @supports_fit_pdf_to_page = value
            end
            ## 
            ## Gets the topMargins property value. A list of supported top margins(in microns) for the printer.
            ## @return a integer
            ## 
            def top_margins
                return @top_margins
            end
            ## 
            ## Sets the topMargins property value. A list of supported top margins(in microns) for the printer.
            ## @param value Value to set for the top_margins property.
            ## @return a void
            ## 
            def top_margins=(value)
                @top_margins = value
            end
        end
    end
end
