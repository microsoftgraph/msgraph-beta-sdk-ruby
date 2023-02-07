require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamTemplate < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The definitions property
        @definitions
        ## 
        ## Instantiates a new TeamTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a team_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamTemplate.new
        end
        ## 
        ## Gets the definitions property value. The definitions property
        ## @return a team_template_definition
        ## 
        def definitions
            return @definitions
        end
        ## 
        ## Sets the definitions property value. The definitions property
        ## @param value Value to set for the definitions property.
        ## @return a void
        ## 
        def definitions=(value)
            @definitions = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "definitions" => lambda {|n| @definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamTemplateDefinition.create_from_discriminator_value(pn) }) },
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
            writer.write_collection_of_object_values("definitions", @definitions)
        end
    end
end
