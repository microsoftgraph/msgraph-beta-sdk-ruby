require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchDataStore < MicrosoftGraphBeta::Models::ExactMatchDataStoreBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The sessions property
            @sessions
            ## 
            ## Instantiates a new exactMatchDataStore and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_data_store
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactMatchDataStore.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "sessions" => lambda {|n| @sessions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ExactMatchSession.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("sessions", @sessions)
            end
            ## 
            ## Gets the sessions property value. The sessions property
            ## @return a exact_match_session
            ## 
            def sessions
                return @sessions
            end
            ## 
            ## Sets the sessions property value. The sessions property
            ## @param value Value to set for the sessions property.
            ## @return a void
            ## 
            def sessions=(value)
                @sessions = value
            end
        end
    end
end
