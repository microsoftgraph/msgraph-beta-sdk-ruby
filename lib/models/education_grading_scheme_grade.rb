require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EducationGradingSchemeGrade
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The defaultPercentage property
            @default_percentage
            ## 
            # The displayName property
            @display_name
            ## 
            # The minPercentage property
            @min_percentage
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new EducationGradingSchemeGrade and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a education_grading_scheme_grade
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EducationGradingSchemeGrade.new
            end
            ## 
            ## Gets the defaultPercentage property value. The defaultPercentage property
            ## @return a float
            ## 
            def default_percentage
                return @default_percentage
            end
            ## 
            ## Sets the defaultPercentage property value. The defaultPercentage property
            ## @param value Value to set for the defaultPercentage property.
            ## @return a void
            ## 
            def default_percentage=(value)
                @default_percentage = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "defaultPercentage" => lambda {|n| @default_percentage = n.get_float_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "minPercentage" => lambda {|n| @min_percentage = n.get_float_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the minPercentage property value. The minPercentage property
            ## @return a float
            ## 
            def min_percentage
                return @min_percentage
            end
            ## 
            ## Sets the minPercentage property value. The minPercentage property
            ## @param value Value to set for the minPercentage property.
            ## @return a void
            ## 
            def min_percentage=(value)
                @min_percentage = value
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
                writer.write_float_value("defaultPercentage", @default_percentage)
                writer.write_string_value("displayName", @display_name)
                writer.write_float_value("minPercentage", @min_percentage)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
