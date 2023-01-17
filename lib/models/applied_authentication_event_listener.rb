require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AppliedAuthenticationEventListener
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The eventType property
        @event_type
        ## 
        # The executedListenerId property
        @executed_listener_id
        ## 
        # The handlerResult property
        @handler_result
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
        ## Instantiates a new appliedAuthenticationEventListener and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a applied_authentication_event_listener
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AppliedAuthenticationEventListener.new
        end
        ## 
        ## Gets the eventType property value. The eventType property
        ## @return a authentication_event_type
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
        ## Gets the executedListenerId property value. The executedListenerId property
        ## @return a string
        ## 
        def executed_listener_id
            return @executed_listener_id
        end
        ## 
        ## Sets the executedListenerId property value. The executedListenerId property
        ## @param value Value to set for the executedListenerId property.
        ## @return a void
        ## 
        def executed_listener_id=(value)
            @executed_listener_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "eventType" => lambda {|n| @event_type = n.get_enum_value(MicrosoftGraphBeta::Models::AuthenticationEventType) },
                "executedListenerId" => lambda {|n| @executed_listener_id = n.get_string_value() },
                "handlerResult" => lambda {|n| @handler_result = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationEventHandlerResult.create_from_discriminator_value(pn) }) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
            }
        end
        ## 
        ## Gets the handlerResult property value. The handlerResult property
        ## @return a authentication_event_handler_result
        ## 
        def handler_result
            return @handler_result
        end
        ## 
        ## Sets the handlerResult property value. The handlerResult property
        ## @param value Value to set for the handlerResult property.
        ## @return a void
        ## 
        def handler_result=(value)
            @handler_result = value
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
            writer.write_enum_value("eventType", @event_type)
            writer.write_string_value("executedListenerId", @executed_listener_id)
            writer.write_object_value("handlerResult", @handler_result)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
