require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkAccountConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The account used to sync the calendar.
            @on_premises_calendar_sync_configuration
            ## 
            # The supported client for Teams Rooms devices. The possible values are: unknown, skypeDefaultAndTeams, teamsDefaultAndSkype, skypeOnly, teamsOnly, unknownFutureValue.
            @supported_client
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
            ## Instantiates a new teamworkAccountConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_account_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkAccountConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onPremisesCalendarSyncConfiguration" => lambda {|n| @on_premises_calendar_sync_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkOnPremisesCalendarSyncConfiguration.create_from_discriminator_value(pn) }) },
                    "supportedClient" => lambda {|n| @supported_client = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkSupportedClient) },
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
            ## Gets the onPremisesCalendarSyncConfiguration property value. The account used to sync the calendar.
            ## @return a teamwork_on_premises_calendar_sync_configuration
            ## 
            def on_premises_calendar_sync_configuration
                return @on_premises_calendar_sync_configuration
            end
            ## 
            ## Sets the onPremisesCalendarSyncConfiguration property value. The account used to sync the calendar.
            ## @param value Value to set for the on_premises_calendar_sync_configuration property.
            ## @return a void
            ## 
            def on_premises_calendar_sync_configuration=(value)
                @on_premises_calendar_sync_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("onPremisesCalendarSyncConfiguration", @on_premises_calendar_sync_configuration)
                writer.write_enum_value("supportedClient", @supported_client)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the supportedClient property value. The supported client for Teams Rooms devices. The possible values are: unknown, skypeDefaultAndTeams, teamsDefaultAndSkype, skypeOnly, teamsOnly, unknownFutureValue.
            ## @return a teamwork_supported_client
            ## 
            def supported_client
                return @supported_client
            end
            ## 
            ## Sets the supportedClient property value. The supported client for Teams Rooms devices. The possible values are: unknown, skypeDefaultAndTeams, teamsDefaultAndSkype, skypeOnly, teamsOnly, unknownFutureValue.
            ## @param value Value to set for the supported_client property.
            ## @return a void
            ## 
            def supported_client=(value)
                @supported_client = value
            end
        end
    end
end
