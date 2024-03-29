require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamDiscoverySettings
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If set to true, the team is visible via search and suggestions from the Teams client.
            @show_in_teams_search_and_suggestions
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new teamDiscoverySettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a team_discovery_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamDiscoverySettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "showInTeamsSearchAndSuggestions" => lambda {|n| @show_in_teams_search_and_suggestions = n.get_boolean_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("showInTeamsSearchAndSuggestions", @show_in_teams_search_and_suggestions)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the showInTeamsSearchAndSuggestions property value. If set to true, the team is visible via search and suggestions from the Teams client.
            ## @return a boolean
            ## 
            def show_in_teams_search_and_suggestions
                return @show_in_teams_search_and_suggestions
            end
            ## 
            ## Sets the showInTeamsSearchAndSuggestions property value. If set to true, the team is visible via search and suggestions from the Teams client.
            ## @param value Value to set for the showInTeamsSearchAndSuggestions property.
            ## @return a void
            ## 
            def show_in_teams_search_and_suggestions=(value)
                @show_in_teams_search_and_suggestions = value
            end
        end
    end
end
