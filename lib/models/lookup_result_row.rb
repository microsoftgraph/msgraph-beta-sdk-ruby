require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class LookupResultRow < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The row property
        @row
        ## 
        ## Instantiates a new lookupResultRow and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a lookup_result_row
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return LookupResultRow.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "row" => lambda {|n| @row = n.get_string_value() },
            })
        end
        ## 
        ## Gets the row property value. The row property
        ## @return a string
        ## 
        def row
            return @row
        end
        ## 
        ## Sets the row property value. The row property
        ## @param value Value to set for the row property.
        ## @return a void
        ## 
        def row=(value)
            @row = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("row", @row)
        end
    end
end
