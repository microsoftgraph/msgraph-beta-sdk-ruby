require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MessageRecipient < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deliveryStatus property
            @delivery_status
            ## 
            # The events property
            @events
            ## 
            # The recipientEmail property
            @recipient_email
            ## 
            ## Instantiates a new MessageRecipient and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a message_recipient
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MessageRecipient.new
            end
            ## 
            ## Gets the deliveryStatus property value. The deliveryStatus property
            ## @return a message_status
            ## 
            def delivery_status
                return @delivery_status
            end
            ## 
            ## Sets the deliveryStatus property value. The deliveryStatus property
            ## @param value Value to set for the delivery_status property.
            ## @return a void
            ## 
            def delivery_status=(value)
                @delivery_status = value
            end
            ## 
            ## Gets the events property value. The events property
            ## @return a message_event
            ## 
            def events
                return @events
            end
            ## 
            ## Sets the events property value. The events property
            ## @param value Value to set for the events property.
            ## @return a void
            ## 
            def events=(value)
                @events = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deliveryStatus" => lambda {|n| @delivery_status = n.get_enum_value(MicrosoftGraphBeta::Models::MessageStatus) },
                    "events" => lambda {|n| @events = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MessageEvent.create_from_discriminator_value(pn) }) },
                    "recipientEmail" => lambda {|n| @recipient_email = n.get_string_value() },
                })
            end
            ## 
            ## Gets the recipientEmail property value. The recipientEmail property
            ## @return a string
            ## 
            def recipient_email
                return @recipient_email
            end
            ## 
            ## Sets the recipientEmail property value. The recipientEmail property
            ## @param value Value to set for the recipient_email property.
            ## @return a void
            ## 
            def recipient_email=(value)
                @recipient_email = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("deliveryStatus", @delivery_status)
                writer.write_collection_of_object_values("events", @events)
                writer.write_string_value("recipientEmail", @recipient_email)
            end
        end
    end
end
