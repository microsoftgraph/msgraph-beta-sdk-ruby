require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AddHeader < MicrosoftGraphBeta::Models::MarkContent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The alignment property
            @alignment
            ## 
            # The margin property
            @margin
            ## 
            ## Gets the alignment property value. The alignment property
            ## @return a alignment
            ## 
            def alignment
                return @alignment
            end
            ## 
            ## Sets the alignment property value. The alignment property
            ## @param value Value to set for the alignment property.
            ## @return a void
            ## 
            def alignment=(value)
                @alignment = value
            end
            ## 
            ## Instantiates a new AddHeader and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.addHeader"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a add_header
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AddHeader.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "alignment" => lambda {|n| @alignment = n.get_enum_value(MicrosoftGraphBeta::Models::Alignment) },
                    "margin" => lambda {|n| @margin = n.get_number_value() },
                })
            end
            ## 
            ## Gets the margin property value. The margin property
            ## @return a integer
            ## 
            def margin
                return @margin
            end
            ## 
            ## Sets the margin property value. The margin property
            ## @param value Value to set for the margin property.
            ## @return a void
            ## 
            def margin=(value)
                @margin = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("alignment", @alignment)
                writer.write_number_value("margin", @margin)
            end
        end
    end
end
