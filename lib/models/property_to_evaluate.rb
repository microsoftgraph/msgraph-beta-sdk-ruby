require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PropertyToEvaluate
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Provides the property name.
        @property_name
        ## 
        # Provides the property value.
        @property_value
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
        ## Instantiates a new propertyToEvaluate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a property_to_evaluate
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PropertyToEvaluate.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "propertyName" => lambda {|n| @property_name = n.get_string_value() },
                "propertyValue" => lambda {|n| @property_value = n.get_string_value() },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the propertyName property value. Provides the property name.
        ## @return a string
        ## 
        def property_name
            return @property_name
        end
        ## 
        ## Sets the propertyName property value. Provides the property name.
        ## @param value Value to set for the propertyName property.
        ## @return a void
        ## 
        def property_name=(value)
            @property_name = value
        end
        ## 
        ## Gets the propertyValue property value. Provides the property value.
        ## @return a string
        ## 
        def property_value
            return @property_value
        end
        ## 
        ## Sets the propertyValue property value. Provides the property value.
        ## @param value Value to set for the propertyValue property.
        ## @return a void
        ## 
        def property_value=(value)
            @property_value = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("propertyName", @property_name)
            writer.write_string_value("propertyValue", @property_value)
            writer.write_additional_data(@additional_data)
        end
    end
end
