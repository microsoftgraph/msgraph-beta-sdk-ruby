require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MessageTrace < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The destinationIPAddress property
        @destination_i_p_address
        ## 
        # The messageId property
        @message_id
        ## 
        # The receivedDateTime property
        @received_date_time
        ## 
        # The recipients property
        @recipients
        ## 
        # The senderEmail property
        @sender_email
        ## 
        # The size property
        @size
        ## 
        # The sourceIPAddress property
        @source_i_p_address
        ## 
        # The subject property
        @subject
        ## 
        ## Instantiates a new MessageTrace and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a message_trace
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MessageTrace.new
        end
        ## 
        ## Gets the destinationIPAddress property value. The destinationIPAddress property
        ## @return a string
        ## 
        def destination_i_p_address
            return @destination_i_p_address
        end
        ## 
        ## Sets the destinationIPAddress property value. The destinationIPAddress property
        ## @param value Value to set for the destinationIPAddress property.
        ## @return a void
        ## 
        def destination_i_p_address=(value)
            @destination_i_p_address = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "destinationIPAddress" => lambda {|n| @destination_i_p_address = n.get_string_value() },
                "messageId" => lambda {|n| @message_id = n.get_string_value() },
                "receivedDateTime" => lambda {|n| @received_date_time = n.get_date_time_value() },
                "recipients" => lambda {|n| @recipients = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MessageRecipient.create_from_discriminator_value(pn) }) },
                "senderEmail" => lambda {|n| @sender_email = n.get_string_value() },
                "size" => lambda {|n| @size = n.get_number_value() },
                "sourceIPAddress" => lambda {|n| @source_i_p_address = n.get_string_value() },
                "subject" => lambda {|n| @subject = n.get_string_value() },
            })
        end
        ## 
        ## Gets the messageId property value. The messageId property
        ## @return a string
        ## 
        def message_id
            return @message_id
        end
        ## 
        ## Sets the messageId property value. The messageId property
        ## @param value Value to set for the messageId property.
        ## @return a void
        ## 
        def message_id=(value)
            @message_id = value
        end
        ## 
        ## Gets the receivedDateTime property value. The receivedDateTime property
        ## @return a date_time
        ## 
        def received_date_time
            return @received_date_time
        end
        ## 
        ## Sets the receivedDateTime property value. The receivedDateTime property
        ## @param value Value to set for the receivedDateTime property.
        ## @return a void
        ## 
        def received_date_time=(value)
            @received_date_time = value
        end
        ## 
        ## Gets the recipients property value. The recipients property
        ## @return a message_recipient
        ## 
        def recipients
            return @recipients
        end
        ## 
        ## Sets the recipients property value. The recipients property
        ## @param value Value to set for the recipients property.
        ## @return a void
        ## 
        def recipients=(value)
            @recipients = value
        end
        ## 
        ## Gets the senderEmail property value. The senderEmail property
        ## @return a string
        ## 
        def sender_email
            return @sender_email
        end
        ## 
        ## Sets the senderEmail property value. The senderEmail property
        ## @param value Value to set for the senderEmail property.
        ## @return a void
        ## 
        def sender_email=(value)
            @sender_email = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("destinationIPAddress", @destination_i_p_address)
            writer.write_string_value("messageId", @message_id)
            writer.write_date_time_value("receivedDateTime", @received_date_time)
            writer.write_collection_of_object_values("recipients", @recipients)
            writer.write_string_value("senderEmail", @sender_email)
            writer.write_number_value("size", @size)
            writer.write_string_value("sourceIPAddress", @source_i_p_address)
            writer.write_string_value("subject", @subject)
        end
        ## 
        ## Gets the size property value. The size property
        ## @return a integer
        ## 
        def size
            return @size
        end
        ## 
        ## Sets the size property value. The size property
        ## @param value Value to set for the size property.
        ## @return a void
        ## 
        def size=(value)
            @size = value
        end
        ## 
        ## Gets the sourceIPAddress property value. The sourceIPAddress property
        ## @return a string
        ## 
        def source_i_p_address
            return @source_i_p_address
        end
        ## 
        ## Sets the sourceIPAddress property value. The sourceIPAddress property
        ## @param value Value to set for the sourceIPAddress property.
        ## @return a void
        ## 
        def source_i_p_address=(value)
            @source_i_p_address = value
        end
        ## 
        ## Gets the subject property value. The subject property
        ## @return a string
        ## 
        def subject
            return @subject
        end
        ## 
        ## Sets the subject property value. The subject property
        ## @param value Value to set for the subject property.
        ## @return a void
        ## 
        def subject=(value)
            @subject = value
        end
    end
end
