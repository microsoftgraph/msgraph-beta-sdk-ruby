require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AttributeMappingSource
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The expression property
            @expression
            ## 
            # The name property
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The parameters property
            @parameters
            ## 
            # The type property
            @type
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
            ## Instantiates a new attributeMappingSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a attribute_mapping_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttributeMappingSource.new
            end
            ## 
            ## Gets the expression property value. The expression property
            ## @return a string
            ## 
            def expression
                return @expression
            end
            ## 
            ## Sets the expression property value. The expression property
            ## @param value Value to set for the expression property.
            ## @return a void
            ## 
            def expression=(value)
                @expression = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "expression" => lambda {|n| @expression = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parameters" => lambda {|n| @parameters = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::StringKeyAttributeMappingSourceValuePair.create_from_discriminator_value(pn) }) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::AttributeMappingSourceType) },
                }
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the parameters property value. The parameters property
            ## @return a string_key_attribute_mapping_source_value_pair
            ## 
            def parameters
                return @parameters
            end
            ## 
            ## Sets the parameters property value. The parameters property
            ## @param value Value to set for the parameters property.
            ## @return a void
            ## 
            def parameters=(value)
                @parameters = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("expression", @expression)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_object_values("parameters", @parameters)
                writer.write_enum_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The type property
            ## @return a attribute_mapping_source_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type property
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
