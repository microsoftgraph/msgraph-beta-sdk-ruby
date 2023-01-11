require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcConnectivityEvent
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Indicates the date and time when this event was created. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        @event_date_time
        ## 
        # Name of the event.
        @event_name
        ## 
        # The eventResult property
        @event_result
        ## 
        # The eventType property
        @event_type
        ## 
        # Additional message for this event.
        @message
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
        ## Instantiates a new cloudPcConnectivityEvent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_connectivity_event
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcConnectivityEvent.new
        end
        ## 
        ## Gets the eventDateTime property value. Indicates the date and time when this event was created. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def event_date_time
            return @event_date_time
        end
        ## 
        ## Sets the eventDateTime property value. Indicates the date and time when this event was created. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as 2014-01-01T00:00:00Z.
        ## @param value Value to set for the eventDateTime property.
        ## @return a void
        ## 
        def event_date_time=(value)
            @event_date_time = value
        end
        ## 
        ## Gets the eventName property value. Name of the event.
        ## @return a string
        ## 
        def event_name
            return @event_name
        end
        ## 
        ## Sets the eventName property value. Name of the event.
        ## @param value Value to set for the eventName property.
        ## @return a void
        ## 
        def event_name=(value)
            @event_name = value
        end
        ## 
        ## Gets the eventResult property value. The eventResult property
        ## @return a cloud_pc_connectivity_event_result
        ## 
        def event_result
            return @event_result
        end
        ## 
        ## Sets the eventResult property value. The eventResult property
        ## @param value Value to set for the eventResult property.
        ## @return a void
        ## 
        def event_result=(value)
            @event_result = value
        end
        ## 
        ## Gets the eventType property value. The eventType property
        ## @return a cloud_pc_connectivity_event_type
        ## 
        def event_type
            return @event_type
        end
        ## 
        ## Sets the eventType property value. The eventType property
        ## @param value Value to set for the eventType property.
        ## @return a void
        ## 
        def event_type=(value)
            @event_type = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                "eventName" => lambda {|n| @event_name = n.get_string_value() },
                "eventResult" => lambda {|n| @event_result = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcConnectivityEventResult) },
                "eventType" => lambda {|n| @event_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcConnectivityEventType) },
                "message" => lambda {|n| @message = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the message property value. Additional message for this event.
        ## @return a string
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. Additional message for this event.
        ## @param value Value to set for the message property.
        ## @return a void
        ## 
        def message=(value)
            @message = value
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
        ## @param value Value to set for the OdataType property.
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
            writer.write_date_time_value("eventDateTime", @event_date_time)
            writer.write_string_value("eventName", @event_name)
            writer.write_enum_value("eventResult", @event_result)
            writer.write_enum_value("eventType", @event_type)
            writer.write_string_value("message", @message)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
