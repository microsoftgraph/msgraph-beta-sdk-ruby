require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkHardwareDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # MAC address.
            @mac_addresses
            ## 
            # Device manufacturer.
            @manufacturer
            ## 
            # Devie model.
            @model
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Device serial number.
            @serial_number
            ## 
            # The unique identifier for the device.
            @unique_id
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
            ## Instantiates a new TeamworkHardwareDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_hardware_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkHardwareDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "macAddresses" => lambda {|n| @mac_addresses = n.get_collection_of_primitive_values(String) },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "uniqueId" => lambda {|n| @unique_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the macAddresses property value. MAC address.
            ## @return a string
            ## 
            def mac_addresses
                return @mac_addresses
            end
            ## 
            ## Sets the macAddresses property value. MAC address.
            ## @param value Value to set for the mac_addresses property.
            ## @return a void
            ## 
            def mac_addresses=(value)
                @mac_addresses = value
            end
            ## 
            ## Gets the manufacturer property value. Device manufacturer.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Device manufacturer.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. Devie model.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Devie model.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
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
            ## Gets the serialNumber property value. Device serial number.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Device serial number.
            ## @param value Value to set for the serial_number property.
            ## @return a void
            ## 
            def serial_number=(value)
                @serial_number = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("macAddresses", @mac_addresses)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("uniqueId", @unique_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the uniqueId property value. The unique identifier for the device.
            ## @return a string
            ## 
            def unique_id
                return @unique_id
            end
            ## 
            ## Sets the uniqueId property value. The unique identifier for the device.
            ## @param value Value to set for the unique_id property.
            ## @return a void
            ## 
            def unique_id=(value)
                @unique_id = value
            end
        end
    end
end
