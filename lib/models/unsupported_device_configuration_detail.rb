require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A description of why an entity is unsupported.
        class UnsupportedDeviceConfigurationDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A message explaining why an entity is unsupported.
            @message
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If message is related to a specific property in the original entity, then the name of that property.
            @property_name
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
            ## Instantiates a new unsupportedDeviceConfigurationDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unsupported_device_configuration_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnsupportedDeviceConfigurationDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "message" => lambda {|n| @message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "propertyName" => lambda {|n| @property_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the message property value. A message explaining why an entity is unsupported.
            ## @return a string
            ## 
            def message
                return @message
            end
            ## 
            ## Sets the message property value. A message explaining why an entity is unsupported.
            ## @param value Value to set for the message property.
            ## @return a void
            ## 
            def message=(value)
                @message = value
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
            ## Gets the propertyName property value. If message is related to a specific property in the original entity, then the name of that property.
            ## @return a string
            ## 
            def property_name
                return @property_name
            end
            ## 
            ## Sets the propertyName property value. If message is related to a specific property in the original entity, then the name of that property.
            ## @param value Value to set for the property_name property.
            ## @return a void
            ## 
            def property_name=(value)
                @property_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("message", @message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("propertyName", @property_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
