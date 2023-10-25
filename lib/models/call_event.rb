require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallEvent < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The callEventType property
            @call_event_type
            ## 
            # The direction property
            @direction
            ## 
            # The joinCallUrl property
            @join_call_url
            ## 
            ## Gets the callEventType property value. The callEventType property
            ## @return a call_event_type
            ## 
            def call_event_type
                return @call_event_type
            end
            ## 
            ## Sets the callEventType property value. The callEventType property
            ## @param value Value to set for the callEventType property.
            ## @return a void
            ## 
            def call_event_type=(value)
                @call_event_type = value
            end
            ## 
            ## Instantiates a new callEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallEvent.new
            end
            ## 
            ## Gets the direction property value. The direction property
            ## @return a call_direction
            ## 
            def direction
                return @direction
            end
            ## 
            ## Sets the direction property value. The direction property
            ## @param value Value to set for the direction property.
            ## @return a void
            ## 
            def direction=(value)
                @direction = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "callEventType" => lambda {|n| @call_event_type = n.get_enum_value(MicrosoftGraphBeta::Models::CallEventType) },
                    "direction" => lambda {|n| @direction = n.get_enum_value(MicrosoftGraphBeta::Models::CallDirection) },
                    "joinCallUrl" => lambda {|n| @join_call_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the joinCallUrl property value. The joinCallUrl property
            ## @return a string
            ## 
            def join_call_url
                return @join_call_url
            end
            ## 
            ## Sets the joinCallUrl property value. The joinCallUrl property
            ## @param value Value to set for the joinCallUrl property.
            ## @return a void
            ## 
            def join_call_url=(value)
                @join_call_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("callEventType", @call_event_type)
                writer.write_enum_value("direction", @direction)
                writer.write_string_value("joinCallUrl", @join_call_url)
            end
        end
    end
end
