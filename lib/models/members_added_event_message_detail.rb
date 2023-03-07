require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MembersAddedEventMessageDetail < MicrosoftGraphBeta::Models::EventMessageDetail
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Initiator of the event.
            @initiator
            ## 
            # List of members added.
            @members
            ## 
            # The timestamp denoting how far back a conversation's history is shared with the conversation members.
            @visible_history_start_date_time
            ## 
            ## Instantiates a new MembersAddedEventMessageDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.membersAddedEventMessageDetail"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a members_added_event_message_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MembersAddedEventMessageDetail.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "initiator" => lambda {|n| @initiator = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkUserIdentity.create_from_discriminator_value(pn) }) },
                    "visibleHistoryStartDateTime" => lambda {|n| @visible_history_start_date_time = n.get_date_time_value() },
                })
            end
            ## 
            ## Gets the initiator property value. Initiator of the event.
            ## @return a identity_set
            ## 
            def initiator
                return @initiator
            end
            ## 
            ## Sets the initiator property value. Initiator of the event.
            ## @param value Value to set for the initiator property.
            ## @return a void
            ## 
            def initiator=(value)
                @initiator = value
            end
            ## 
            ## Gets the members property value. List of members added.
            ## @return a teamwork_user_identity
            ## 
            def members
                return @members
            end
            ## 
            ## Sets the members property value. List of members added.
            ## @param value Value to set for the members property.
            ## @return a void
            ## 
            def members=(value)
                @members = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("initiator", @initiator)
                writer.write_collection_of_object_values("members", @members)
                writer.write_date_time_value("visibleHistoryStartDateTime", @visible_history_start_date_time)
            end
            ## 
            ## Gets the visibleHistoryStartDateTime property value. The timestamp denoting how far back a conversation's history is shared with the conversation members.
            ## @return a date_time
            ## 
            def visible_history_start_date_time
                return @visible_history_start_date_time
            end
            ## 
            ## Sets the visibleHistoryStartDateTime property value. The timestamp denoting how far back a conversation's history is shared with the conversation members.
            ## @param value Value to set for the visible_history_start_date_time property.
            ## @return a void
            ## 
            def visible_history_start_date_time=(value)
                @visible_history_start_date_time = value
            end
        end
    end
end
