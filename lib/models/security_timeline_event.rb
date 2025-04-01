require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityTimelineEvent
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The eventDateTime property
            @event_date_time
            ## 
            # The eventDetails property
            @event_details
            ## 
            # The eventResult property
            @event_result
            ## 
            # The eventSource property
            @event_source
            ## 
            # The eventThreats property
            @event_threats
            ## 
            # The eventType property
            @event_type
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new SecurityTimelineEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_timeline_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityTimelineEvent.new
            end
            ## 
            ## Gets the eventDateTime property value. The eventDateTime property
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The eventDateTime property
            ## @param value Value to set for the eventDateTime property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## Gets the eventDetails property value. The eventDetails property
            ## @return a string
            ## 
            def event_details
                return @event_details
            end
            ## 
            ## Sets the eventDetails property value. The eventDetails property
            ## @param value Value to set for the eventDetails property.
            ## @return a void
            ## 
            def event_details=(value)
                @event_details = value
            end
            ## 
            ## Gets the eventResult property value. The eventResult property
            ## @return a string
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
            ## Gets the eventSource property value. The eventSource property
            ## @return a security_event_source
            ## 
            def event_source
                return @event_source
            end
            ## 
            ## Sets the eventSource property value. The eventSource property
            ## @param value Value to set for the eventSource property.
            ## @return a void
            ## 
            def event_source=(value)
                @event_source = value
            end
            ## 
            ## Gets the eventThreats property value. The eventThreats property
            ## @return a string
            ## 
            def event_threats
                return @event_threats
            end
            ## 
            ## Sets the eventThreats property value. The eventThreats property
            ## @param value Value to set for the eventThreats property.
            ## @return a void
            ## 
            def event_threats=(value)
                @event_threats = value
            end
            ## 
            ## Gets the eventType property value. The eventType property
            ## @return a security_timeline_event_type
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
                    "eventDetails" => lambda {|n| @event_details = n.get_string_value() },
                    "eventResult" => lambda {|n| @event_result = n.get_string_value() },
                    "eventSource" => lambda {|n| @event_source = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityEventSource) },
                    "eventThreats" => lambda {|n| @event_threats = n.get_collection_of_primitive_values(String) },
                    "eventType" => lambda {|n| @event_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityTimelineEventType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("eventDetails", @event_details)
                writer.write_string_value("eventResult", @event_result)
                writer.write_enum_value("eventSource", @event_source)
                writer.write_collection_of_primitive_values("eventThreats", @event_threats)
                writer.write_enum_value("eventType", @event_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
