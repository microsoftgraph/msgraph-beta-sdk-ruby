require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DowngradeJustification
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether the downgrade is or isn't justified.
            @is_downgrade_justified
            ## 
            # Message that indicates why a downgrade is justified. The message appears in administrative logs.
            @justification_message
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new downgradeJustification and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a downgrade_justification
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DowngradeJustification.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "isDowngradeJustified" => lambda {|n| @is_downgrade_justified = n.get_boolean_value() },
                    "justificationMessage" => lambda {|n| @justification_message = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isDowngradeJustified property value. Indicates whether the downgrade is or isn't justified.
            ## @return a boolean
            ## 
            def is_downgrade_justified
                return @is_downgrade_justified
            end
            ## 
            ## Sets the isDowngradeJustified property value. Indicates whether the downgrade is or isn't justified.
            ## @param value Value to set for the isDowngradeJustified property.
            ## @return a void
            ## 
            def is_downgrade_justified=(value)
                @is_downgrade_justified = value
            end
            ## 
            ## Gets the justificationMessage property value. Message that indicates why a downgrade is justified. The message appears in administrative logs.
            ## @return a string
            ## 
            def justification_message
                return @justification_message
            end
            ## 
            ## Sets the justificationMessage property value. Message that indicates why a downgrade is justified. The message appears in administrative logs.
            ## @param value Value to set for the justificationMessage property.
            ## @return a void
            ## 
            def justification_message=(value)
                @justification_message = value
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
                writer.write_boolean_value("isDowngradeJustified", @is_downgrade_justified)
                writer.write_string_value("justificationMessage", @justification_message)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
