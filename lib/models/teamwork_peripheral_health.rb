require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkPeripheralHealth
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The connected state and time since the peripheral device was connected.
            @connection
            ## 
            # True if the peripheral is optional. Used for health computation.
            @is_optional
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The peripheral property
            @peripheral
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
            ## Gets the connection property value. The connected state and time since the peripheral device was connected.
            ## @return a teamwork_connection
            ## 
            def connection
                return @connection
            end
            ## 
            ## Sets the connection property value. The connected state and time since the peripheral device was connected.
            ## @param value Value to set for the connection property.
            ## @return a void
            ## 
            def connection=(value)
                @connection = value
            end
            ## 
            ## Instantiates a new teamworkPeripheralHealth and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_peripheral_health
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkPeripheralHealth.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "connection" => lambda {|n| @connection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConnection.create_from_discriminator_value(pn) }) },
                    "isOptional" => lambda {|n| @is_optional = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "peripheral" => lambda {|n| @peripheral = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isOptional property value. True if the peripheral is optional. Used for health computation.
            ## @return a boolean
            ## 
            def is_optional
                return @is_optional
            end
            ## 
            ## Sets the isOptional property value. True if the peripheral is optional. Used for health computation.
            ## @param value Value to set for the isOptional property.
            ## @return a void
            ## 
            def is_optional=(value)
                @is_optional = value
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
            ## Gets the peripheral property value. The peripheral property
            ## @return a teamwork_peripheral
            ## 
            def peripheral
                return @peripheral
            end
            ## 
            ## Sets the peripheral property value. The peripheral property
            ## @param value Value to set for the peripheral property.
            ## @return a void
            ## 
            def peripheral=(value)
                @peripheral = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("connection", @connection)
                writer.write_boolean_value("isOptional", @is_optional)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("peripheral", @peripheral)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
