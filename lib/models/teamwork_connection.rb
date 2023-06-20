require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkConnection
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether a component/peripheral is connected/disconnected or its state is unknown. The possible values are: unknown, connected, disconnected, unknownFutureValue.
            @connection_status
            ## 
            # Time at which the state was last changed. For example, indicates connected since when the state is connected and disconnected since when the state is disconnected.
            @last_modified_date_time
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the connectionStatus property value. Indicates whether a component/peripheral is connected/disconnected or its state is unknown. The possible values are: unknown, connected, disconnected, unknownFutureValue.
            ## @return a teamwork_connection_status
            ## 
            def connection_status
                return @connection_status
            end
            ## 
            ## Sets the connectionStatus property value. Indicates whether a component/peripheral is connected/disconnected or its state is unknown. The possible values are: unknown, connected, disconnected, unknownFutureValue.
            ## @param value Value to set for the connection_status property.
            ## @return a void
            ## 
            def connection_status=(value)
                @connection_status = value
            end
            ## 
            ## Instantiates a new TeamworkConnection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_connection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkConnection.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "connectionStatus" => lambda {|n| @connection_status = n.get_enum_value(MicrosoftGraphBeta::Models::TeamworkConnectionStatus) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Time at which the state was last changed. For example, indicates connected since when the state is connected and disconnected since when the state is disconnected.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Time at which the state was last changed. For example, indicates connected since when the state is connected and disconnected since when the state is disconnected.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
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
                writer.write_enum_value("connectionStatus", @connection_status)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
