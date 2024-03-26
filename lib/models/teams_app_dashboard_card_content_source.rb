require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsAppDashboardCardContentSource
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The configuration for the bot source. Required if sourceType is set to bot.
            @bot_configuration
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Represents the type of source that powers the content of the dashboard card. The possible values are: bot, unknownFutureValue.
            @source_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the botConfiguration property value. The configuration for the bot source. Required if sourceType is set to bot.
            ## @return a teams_app_dashboard_card_bot_configuration
            ## 
            def bot_configuration
                return @bot_configuration
            end
            ## 
            ## Sets the botConfiguration property value. The configuration for the bot source. Required if sourceType is set to bot.
            ## @param value Value to set for the botConfiguration property.
            ## @return a void
            ## 
            def bot_configuration=(value)
                @bot_configuration = value
            end
            ## 
            ## Instantiates a new TeamsAppDashboardCardContentSource and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_dashboard_card_content_source
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppDashboardCardContentSource.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "botConfiguration" => lambda {|n| @bot_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamsAppDashboardCardBotConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sourceType" => lambda {|n| @source_type = n.get_enum_value(MicrosoftGraphBeta::Models::TeamsAppDashboardCardSourceType) },
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
                writer.write_object_value("botConfiguration", @bot_configuration)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("sourceType", @source_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sourceType property value. Represents the type of source that powers the content of the dashboard card. The possible values are: bot, unknownFutureValue.
            ## @return a teams_app_dashboard_card_source_type
            ## 
            def source_type
                return @source_type
            end
            ## 
            ## Sets the sourceType property value. Represents the type of source that powers the content of the dashboard card. The possible values are: bot, unknownFutureValue.
            ## @param value Value to set for the sourceType property.
            ## @return a void
            ## 
            def source_type=(value)
                @source_type = value
            end
        end
    end
end
