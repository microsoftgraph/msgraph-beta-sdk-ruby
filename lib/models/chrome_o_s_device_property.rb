require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a property of the ChromeOS device.
        class ChromeOSDeviceProperty
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Name of the property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Whether this property is updatable
            @updatable
            ## 
            # Value of the property
            @value
            ## 
            # Type of the value
            @value_type
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
            ## Instantiates a new chromeOSDeviceProperty and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chrome_o_s_device_property
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChromeOSDeviceProperty.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "updatable" => lambda {|n| @updatable = n.get_boolean_value() },
                    "value" => lambda {|n| @value = n.get_string_value() },
                    "valueType" => lambda {|n| @value_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the name property value. Name of the property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
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
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("updatable", @updatable)
                writer.write_string_value("value", @value)
                writer.write_string_value("valueType", @value_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the updatable property value. Whether this property is updatable
            ## @return a boolean
            ## 
            def updatable
                return @updatable
            end
            ## 
            ## Sets the updatable property value. Whether this property is updatable
            ## @param value Value to set for the updatable property.
            ## @return a void
            ## 
            def updatable=(value)
                @updatable = value
            end
            ## 
            ## Gets the value property value. Value of the property
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Value of the property
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
            ## 
            ## Gets the valueType property value. Type of the value
            ## @return a string
            ## 
            def value_type
                return @value_type
            end
            ## 
            ## Sets the valueType property value. Type of the value
            ## @param value Value to set for the valueType property.
            ## @return a void
            ## 
            def value_type=(value)
                @value_type = value
            end
        end
    end
end
