require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SubstringTransformation < MicrosoftGraphBeta::Models::CustomClaimTransformation
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The start index of the substring operation, where 0 is the first character in the string.
            @index
            ## 
            # The maximum length of the string, starting from the provided index.
            @length
            ## 
            ## Instantiates a new SubstringTransformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.substringTransformation"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a substring_transformation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SubstringTransformation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "index" => lambda {|n| @index = n.get_number_value() },
                    "length" => lambda {|n| @length = n.get_number_value() },
                })
            end
            ## 
            ## Gets the index property value. The start index of the substring operation, where 0 is the first character in the string.
            ## @return a integer
            ## 
            def index
                return @index
            end
            ## 
            ## Sets the index property value. The start index of the substring operation, where 0 is the first character in the string.
            ## @param value Value to set for the index property.
            ## @return a void
            ## 
            def index=(value)
                @index = value
            end
            ## 
            ## Gets the length property value. The maximum length of the string, starting from the provided index.
            ## @return a integer
            ## 
            def length
                return @length
            end
            ## 
            ## Sets the length property value. The maximum length of the string, starting from the provided index.
            ## @param value Value to set for the length property.
            ## @return a void
            ## 
            def length=(value)
                @length = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("index", @index)
                writer.write_number_value("length", @length)
            end
        end
    end
end
