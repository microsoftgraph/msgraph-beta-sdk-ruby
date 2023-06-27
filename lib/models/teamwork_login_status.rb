require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkLoginStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Information about the Exchange connection.
            @exchange_connection
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Information about the Skype for Business connection.
            @skype_connection
            ## 
            # Information about the Teams connection.
            @teams_connection
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new teamworkLoginStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_login_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkLoginStatus.new
            end
            ## 
            ## Gets the exchangeConnection property value. Information about the Exchange connection.
            ## @return a teamwork_connection
            ## 
            def exchange_connection
                return @exchange_connection
            end
            ## 
            ## Sets the exchangeConnection property value. Information about the Exchange connection.
            ## @param value Value to set for the exchange_connection property.
            ## @return a void
            ## 
            def exchange_connection=(value)
                @exchange_connection = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "exchangeConnection" => lambda {|n| @exchange_connection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConnection.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "skypeConnection" => lambda {|n| @skype_connection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConnection.create_from_discriminator_value(pn) }) },
                    "teamsConnection" => lambda {|n| @teams_connection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkConnection.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_object_value("exchangeConnection", @exchange_connection)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("skypeConnection", @skype_connection)
                writer.write_object_value("teamsConnection", @teams_connection)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the skypeConnection property value. Information about the Skype for Business connection.
            ## @return a teamwork_connection
            ## 
            def skype_connection
                return @skype_connection
            end
            ## 
            ## Sets the skypeConnection property value. Information about the Skype for Business connection.
            ## @param value Value to set for the skype_connection property.
            ## @return a void
            ## 
            def skype_connection=(value)
                @skype_connection = value
            end
            ## 
            ## Gets the teamsConnection property value. Information about the Teams connection.
            ## @return a teamwork_connection
            ## 
            def teams_connection
                return @teams_connection
            end
            ## 
            ## Sets the teamsConnection property value. Information about the Teams connection.
            ## @param value Value to set for the teams_connection property.
            ## @return a void
            ## 
            def teams_connection=(value)
                @teams_connection = value
            end
        end
    end
end
