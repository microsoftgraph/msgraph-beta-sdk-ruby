require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ClassificationError < MicrosoftGraphBeta::Models::ClassifcationErrorBase
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The details property
        @details
        ## 
        ## Instantiates a new ClassificationError and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a classification_error
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ClassificationError.new
        end
        ## 
        ## Gets the details property value. The details property
        ## @return a classifcation_error_base
        ## 
        def details
            return @details
        end
        ## 
        ## Sets the details property value. The details property
        ## @param value Value to set for the details property.
        ## @return a void
        ## 
        def details=(value)
            @details = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "details" => lambda {|n| @details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ClassifcationErrorBase.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("details", @details)
        end
    end
end
