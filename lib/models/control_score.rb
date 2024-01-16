require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ControlScore
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The controlCategory property
            @control_category
            ## 
            # The controlName property
            @control_name
            ## 
            # The description property
            @description
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The score property
            @score
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
            ## Instantiates a new controlScore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the controlCategory property value. The controlCategory property
            ## @return a string
            ## 
            def control_category
                return @control_category
            end
            ## 
            ## Sets the controlCategory property value. The controlCategory property
            ## @param value Value to set for the controlCategory property.
            ## @return a void
            ## 
            def control_category=(value)
                @control_category = value
            end
            ## 
            ## Gets the controlName property value. The controlName property
            ## @return a string
            ## 
            def control_name
                return @control_name
            end
            ## 
            ## Sets the controlName property value. The controlName property
            ## @param value Value to set for the controlName property.
            ## @return a void
            ## 
            def control_name=(value)
                @control_name = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a control_score
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ControlScore.new
            end
            ## 
            ## Gets the description property value. The description property
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description property
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "controlCategory" => lambda {|n| @control_category = n.get_string_value() },
                    "controlName" => lambda {|n| @control_name = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
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
            ## Gets the score property value. The score property
            ## @return a double
            ## 
            def score
                return @score
            end
            ## 
            ## Sets the score property value. The score property
            ## @param value Value to set for the score property.
            ## @return a void
            ## 
            def score=(value)
                @score = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("controlCategory", @control_category)
                writer.write_string_value("controlName", @control_name)
                writer.write_string_value("description", @description)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("score", @score)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
