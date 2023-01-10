require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Approval < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The steps property
        @steps
        ## 
        ## Instantiates a new approval and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a approval
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Approval.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "steps" => lambda {|n| @steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ApprovalStep.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("steps", @steps)
        end
        ## 
        ## Gets the steps property value. The steps property
        ## @return a approval_step
        ## 
        def steps
            return @steps
        end
        ## 
        ## Sets the steps property value. The steps property
        ## @param value Value to set for the steps property.
        ## @return a void
        ## 
        def steps=(value)
            @steps = value
        end
    end
end
