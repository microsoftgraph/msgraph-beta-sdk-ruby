require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchDetectedSensitiveContent < MicrosoftGraphBeta::Models::DetectedSensitiveContentBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The matches property
            @matches
            ## 
            ## Instantiates a new exactMatchDetectedSensitiveContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_detected_sensitive_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactMatchDetectedSensitiveContent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "matches" => lambda {|n| @matches = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitiveContentLocation.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the matches property value. The matches property
            ## @return a sensitive_content_location
            ## 
            def matches
                return @matches
            end
            ## 
            ## Sets the matches property value. The matches property
            ## @param value Value to set for the matches property.
            ## @return a void
            ## 
            def matches=(value)
                @matches = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("matches", @matches)
            end
        end
    end
end
