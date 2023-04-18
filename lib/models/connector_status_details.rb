require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represent connector status
        class ConnectorStatusDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Connector Instance Id
            @connector_instance_id
            ## 
            # Connectors name for connector status
            @connector_name
            ## 
            # Event datetime
            @event_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Connector health state for connector status
            @status
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
            ## Gets the connectorInstanceId property value. Connector Instance Id
            ## @return a string
            ## 
            def connector_instance_id
                return @connector_instance_id
            end
            ## 
            ## Sets the connectorInstanceId property value. Connector Instance Id
            ## @param value Value to set for the connector_instance_id property.
            ## @return a void
            ## 
            def connector_instance_id=(value)
                @connector_instance_id = value
            end
            ## 
            ## Gets the connectorName property value. Connectors name for connector status
            ## @return a connector_name
            ## 
            def connector_name
                return @connector_name
            end
            ## 
            ## Sets the connectorName property value. Connectors name for connector status
            ## @param value Value to set for the connector_name property.
            ## @return a void
            ## 
            def connector_name=(value)
                @connector_name = value
            end
            ## 
            ## Instantiates a new connectorStatusDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a connector_status_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ConnectorStatusDetails.new
            end
            ## 
            ## Gets the eventDateTime property value. Event datetime
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. Event datetime
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "connectorInstanceId" => lambda {|n| @connector_instance_id = n.get_string_value() },
                    "connectorName" => lambda {|n| @connector_name = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectorName) },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ConnectorHealthState) },
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
                writer.write_string_value("connectorInstanceId", @connector_instance_id)
                writer.write_enum_value("connectorName", @connector_name)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. Connector health state for connector status
            ## @return a connector_health_state
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Connector health state for connector status
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
