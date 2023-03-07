require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './search'

module MicrosoftGraphBeta
    module Models
        module Search
            class Acronym < MicrosoftGraphBeta::Models::Search::SearchAnswer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # What the acronym stands for.
                @stands_for
                ## 
                # The state property
                @state
                ## 
                ## Instantiates a new Acronym and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parseNode The parse node to use to read the discriminator value and create the object
                ## @return a acronym
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Acronym.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "standsFor" => lambda {|n| @stands_for = n.get_string_value() },
                        "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::Search::AnswerState) },
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
                    writer.write_string_value("standsFor", @stands_for)
                    writer.write_enum_value("state", @state)
                end
                ## 
                ## Gets the standsFor property value. What the acronym stands for.
                ## @return a string
                ## 
                def stands_for
                    return @stands_for
                end
                ## 
                ## Sets the standsFor property value. What the acronym stands for.
                ## @param value Value to set for the stands_for property.
                ## @return a void
                ## 
                def stands_for=(value)
                    @stands_for = value
                end
                ## 
                ## Gets the state property value. The state property
                ## @return a answer_state
                ## 
                def state
                    return @state
                end
                ## 
                ## Sets the state property value. The state property
                ## @param value Value to set for the state property.
                ## @return a void
                ## 
                def state=(value)
                    @state = value
                end
            end
        end
    end
end
