require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Presentation < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The comments property
            @comments
            ## 
            ## Gets the comments property value. The comments property
            ## @return a document_comment
            ## 
            def comments
                return @comments
            end
            ## 
            ## Sets the comments property value. The comments property
            ## @param value Value to set for the comments property.
            ## @return a void
            ## 
            def comments=(value)
                @comments = value
            end
            ## 
            ## Instantiates a new presentation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a presentation
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Presentation.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "comments" => lambda {|n| @comments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DocumentComment.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("comments", @comments)
            end
        end
    end
end
