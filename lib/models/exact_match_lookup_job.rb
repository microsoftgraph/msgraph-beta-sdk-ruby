require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchLookupJob < MicrosoftGraphBeta::Models::ExactMatchJobBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The matchingRows property
            @matching_rows
            ## 
            # The state property
            @state
            ## 
            ## Instantiates a new exactMatchLookupJob and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.exactMatchLookupJob"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_lookup_job
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactMatchLookupJob.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "matchingRows" => lambda {|n| @matching_rows = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LookupResultRow.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_string_value() },
                })
            end
            ## 
            ## Gets the matchingRows property value. The matchingRows property
            ## @return a lookup_result_row
            ## 
            def matching_rows
                return @matching_rows
            end
            ## 
            ## Sets the matchingRows property value. The matchingRows property
            ## @param value Value to set for the matchingRows property.
            ## @return a void
            ## 
            def matching_rows=(value)
                @matching_rows = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("matchingRows", @matching_rows)
                writer.write_string_value("state", @state)
            end
            ## 
            ## Gets the state property value. The state property
            ## @return a string
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
