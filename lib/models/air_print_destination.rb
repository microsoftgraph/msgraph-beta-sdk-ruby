require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents an AirPrint destination.
        class AirPrintDestination
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # If true AirPrint connections are secured by Transport Layer Security (TLS). Default is false. Available in iOS 11.0 and later.
            @force_tls
            ## 
            # The IP Address of the AirPrint destination.
            @ip_address
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The listening port of the AirPrint destination. If this key is not specified AirPrint will use the default port. Available in iOS 11.0 and later.
            @port
            ## 
            # The Resource Path associated with the printer. This corresponds to the rp parameter of the ipps.tcp Bonjour record. For example: printers/CanonMG5300series, printers/XeroxPhaser7600, ipp/print, EpsonIPPPrinter.
            @resource_path
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
            ## Instantiates a new AirPrintDestination and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a air_print_destination
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AirPrintDestination.new
            end
            ## 
            ## Gets the forceTls property value. If true AirPrint connections are secured by Transport Layer Security (TLS). Default is false. Available in iOS 11.0 and later.
            ## @return a boolean
            ## 
            def force_tls
                return @force_tls
            end
            ## 
            ## Sets the forceTls property value. If true AirPrint connections are secured by Transport Layer Security (TLS). Default is false. Available in iOS 11.0 and later.
            ## @param value Value to set for the forceTls property.
            ## @return a void
            ## 
            def force_tls=(value)
                @force_tls = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "forceTls" => lambda {|n| @force_tls = n.get_boolean_value() },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "resourcePath" => lambda {|n| @resource_path = n.get_string_value() },
                }
            end
            ## 
            ## Gets the ipAddress property value. The IP Address of the AirPrint destination.
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. The IP Address of the AirPrint destination.
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
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
            ## Gets the port property value. The listening port of the AirPrint destination. If this key is not specified AirPrint will use the default port. Available in iOS 11.0 and later.
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. The listening port of the AirPrint destination. If this key is not specified AirPrint will use the default port. Available in iOS 11.0 and later.
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Gets the resourcePath property value. The Resource Path associated with the printer. This corresponds to the rp parameter of the ipps.tcp Bonjour record. For example: printers/CanonMG5300series, printers/XeroxPhaser7600, ipp/print, EpsonIPPPrinter.
            ## @return a string
            ## 
            def resource_path
                return @resource_path
            end
            ## 
            ## Sets the resourcePath property value. The Resource Path associated with the printer. This corresponds to the rp parameter of the ipps.tcp Bonjour record. For example: printers/CanonMG5300series, printers/XeroxPhaser7600, ipp/print, EpsonIPPPrinter.
            ## @param value Value to set for the resourcePath property.
            ## @return a void
            ## 
            def resource_path=(value)
                @resource_path = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("forceTls", @force_tls)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("port", @port)
                writer.write_string_value("resourcePath", @resource_path)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
