require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessDestinationSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of the destinationSummary objects, aggregated by Global Secure Access service.
            @count
            ## 
            # The IP address or FQDN of the destination.
            @destination
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The traffic classification. The allowed values are internet, private, microsoft365, all, and unknownFutureValue.
            @traffic_type
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
            ## Instantiates a new networkaccessDestinationSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the count property value. The number of the destinationSummary objects, aggregated by Global Secure Access service.
            ## @return a integer
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The number of the destinationSummary objects, aggregated by Global Secure Access service.
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_destination_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessDestinationSummary.new
            end
            ## 
            ## Gets the destination property value. The IP address or FQDN of the destination.
            ## @return a string
            ## 
            def destination
                return @destination
            end
            ## 
            ## Sets the destination property value. The IP address or FQDN of the destination.
            ## @param value Value to set for the destination property.
            ## @return a void
            ## 
            def destination=(value)
                @destination = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "count" => lambda {|n| @count = n.get_number_value() },
                    "destination" => lambda {|n| @destination = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessDestinationSummaryTrafficType) },
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("count", @count)
                writer.write_string_value("destination", @destination)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trafficType property value. The traffic classification. The allowed values are internet, private, microsoft365, all, and unknownFutureValue.
            ## @return a networkaccess_destination_summary_traffic_type
            ## 
            def traffic_type
                return @traffic_type
            end
            ## 
            ## Sets the trafficType property value. The traffic classification. The allowed values are internet, private, microsoft365, all, and unknownFutureValue.
            ## @param value Value to set for the trafficType property.
            ## @return a void
            ## 
            def traffic_type=(value)
                @traffic_type = value
            end
        end
    end
end
