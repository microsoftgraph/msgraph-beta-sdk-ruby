require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkConfiguredPeripheral
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # True if the current peripheral is optional. If set to false, this property is also used as part of the calculation of the health state for the device.
            @is_optional
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The peripheral property
            @peripheral
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
            ## Instantiates a new TeamworkConfiguredPeripheral and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_configured_peripheral
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkConfiguredPeripheral.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isOptional" => lambda {|n| @is_optional = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "peripheral" => lambda {|n| @peripheral = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkPeripheral.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the isOptional property value. True if the current peripheral is optional. If set to false, this property is also used as part of the calculation of the health state for the device.
            ## @return a boolean
            ## 
            def is_optional
                return @is_optional
            end
            ## 
            ## Sets the isOptional property value. True if the current peripheral is optional. If set to false, this property is also used as part of the calculation of the health state for the device.
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
                writer.write_boolean_value("isOptional", @is_optional)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("peripheral", @peripheral)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
