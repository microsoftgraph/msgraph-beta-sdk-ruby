require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExchangeAdmin < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents a user's mailboxes.
            @mailboxes
            ## 
            # The messageTraces property
            @message_traces
            ## 
            ## Instantiates a new ExchangeAdmin and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exchange_admin
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExchangeAdmin.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "mailboxes" => lambda {|n| @mailboxes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Mailbox.create_from_discriminator_value(pn) }) },
                    "messageTraces" => lambda {|n| @message_traces = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MessageTrace.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the mailboxes property value. Represents a user's mailboxes.
            ## @return a mailbox
            ## 
            def mailboxes
                return @mailboxes
            end
            ## 
            ## Sets the mailboxes property value. Represents a user's mailboxes.
            ## @param value Value to set for the mailboxes property.
            ## @return a void
            ## 
            def mailboxes=(value)
                @mailboxes = value
            end
            ## 
            ## Gets the messageTraces property value. The messageTraces property
            ## @return a message_trace
            ## 
            def message_traces
                return @message_traces
            end
            ## 
            ## Sets the messageTraces property value. The messageTraces property
            ## @param value Value to set for the messageTraces property.
            ## @return a void
            ## 
            def message_traces=(value)
                @message_traces = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("mailboxes", @mailboxes)
                writer.write_collection_of_object_values("messageTraces", @message_traces)
            end
        end
    end
end
