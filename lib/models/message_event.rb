require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MessageEvent < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The dateTime property
        @date_time
        ## 
        # The description property
        @description
        ## 
        # The eventType property
        @event_type
        ## 
        ## Instantiates a new MessageEvent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a message_event
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MessageEvent.new
        end
        ## 
        ## Gets the dateTime property value. The dateTime property
        ## @return a date_time
        ## 
        def date_time
            return @date_time
        end
        ## 
        ## Sets the dateTime property value. The dateTime property
        ## @param value Value to set for the date_time property.
        ## @return a void
        ## 
        def date_time=(value)
            @date_time = value
        end
        ## 
        ## Gets the description property value. The description property
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description property
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the eventType property value. The eventType property
        ## @return a message_event_type
        ## 
        def event_type
            return @event_type
        end
        ## 
        ## Sets the eventType property value. The eventType property
        ## @param value Value to set for the event_type property.
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
            return super.merge({
                "dateTime" => lambda {|n| @date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "eventType" => lambda {|n| @event_type = n.get_enum_value(MicrosoftGraphBeta::Models::MessageEventType) },
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
            writer.write_date_time_value("dateTime", @date_time)
            writer.write_string_value("description", @description)
            writer.write_enum_value("eventType", @event_type)
        end
    end
end
