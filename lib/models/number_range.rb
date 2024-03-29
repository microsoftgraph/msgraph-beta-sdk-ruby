require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Number Range definition.
        class NumberRange
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Lower number.
            @lower_number
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Upper number.
            @upper_number
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
            ## Instantiates a new numberRange and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a number_range
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NumberRange.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lowerNumber" => lambda {|n| @lower_number = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "upperNumber" => lambda {|n| @upper_number = n.get_number_value() },
                }
            end
            ## 
            ## Gets the lowerNumber property value. Lower number.
            ## @return a integer
            ## 
            def lower_number
                return @lower_number
            end
            ## 
            ## Sets the lowerNumber property value. Lower number.
            ## @param value Value to set for the lowerNumber property.
            ## @return a void
            ## 
            def lower_number=(value)
                @lower_number = value
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
                writer.write_number_value("lowerNumber", @lower_number)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("upperNumber", @upper_number)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the upperNumber property value. Upper number.
            ## @return a integer
            ## 
            def upper_number
                return @upper_number
            end
            ## 
            ## Sets the upperNumber property value. Upper number.
            ## @param value Value to set for the upperNumber property.
            ## @return a void
            ## 
            def upper_number=(value)
                @upper_number = value
            end
        end
    end
end
