require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TimeCard < MicrosoftGraphBeta::Models::ChangeTrackedEntity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of breaks associated with the timeCard.
            @breaks
            ## 
            # The clock-in event of the timeCard.
            @clock_in_event
            ## 
            # The clock-out event of the timeCard.
            @clock_out_event
            ## 
            # Indicate if this timeCard entry is confirmed. Possible values are none, user, manager, unknownFutureValue.
            @confirmed_by
            ## 
            # Notes about the timeCard.
            @notes
            ## 
            # The original timeCardEntry of the timeCard, before user edits.
            @original_entry
            ## 
            # The current state of the timeCard during its life cycle.Possible values are: clockedIn, onBreak, clockedOut, unknownFutureValue.
            @state
            ## 
            # User ID to which  the timeCard belongs.
            @user_id
            ## 
            ## Gets the breaks property value. The list of breaks associated with the timeCard.
            ## @return a time_card_break
            ## 
            def breaks
                return @breaks
            end
            ## 
            ## Sets the breaks property value. The list of breaks associated with the timeCard.
            ## @param value Value to set for the breaks property.
            ## @return a void
            ## 
            def breaks=(value)
                @breaks = value
            end
            ## 
            ## Gets the clockInEvent property value. The clock-in event of the timeCard.
            ## @return a time_card_event
            ## 
            def clock_in_event
                return @clock_in_event
            end
            ## 
            ## Sets the clockInEvent property value. The clock-in event of the timeCard.
            ## @param value Value to set for the clock_in_event property.
            ## @return a void
            ## 
            def clock_in_event=(value)
                @clock_in_event = value
            end
            ## 
            ## Gets the clockOutEvent property value. The clock-out event of the timeCard.
            ## @return a time_card_event
            ## 
            def clock_out_event
                return @clock_out_event
            end
            ## 
            ## Sets the clockOutEvent property value. The clock-out event of the timeCard.
            ## @param value Value to set for the clock_out_event property.
            ## @return a void
            ## 
            def clock_out_event=(value)
                @clock_out_event = value
            end
            ## 
            ## Gets the confirmedBy property value. Indicate if this timeCard entry is confirmed. Possible values are none, user, manager, unknownFutureValue.
            ## @return a confirmed_by
            ## 
            def confirmed_by
                return @confirmed_by
            end
            ## 
            ## Sets the confirmedBy property value. Indicate if this timeCard entry is confirmed. Possible values are none, user, manager, unknownFutureValue.
            ## @param value Value to set for the confirmed_by property.
            ## @return a void
            ## 
            def confirmed_by=(value)
                @confirmed_by = value
            end
            ## 
            ## Instantiates a new TimeCard and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.timeCard"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a time_card
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TimeCard.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "breaks" => lambda {|n| @breaks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardBreak.create_from_discriminator_value(pn) }) },
                    "clockInEvent" => lambda {|n| @clock_in_event = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                    "clockOutEvent" => lambda {|n| @clock_out_event = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardEvent.create_from_discriminator_value(pn) }) },
                    "confirmedBy" => lambda {|n| @confirmed_by = n.get_enum_value(MicrosoftGraphBeta::Models::ConfirmedBy) },
                    "notes" => lambda {|n| @notes = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "originalEntry" => lambda {|n| @original_entry = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TimeCardEntry.create_from_discriminator_value(pn) }) },
                    "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraphBeta::Models::TimeCardState) },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the notes property value. Notes about the timeCard.
            ## @return a item_body
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes about the timeCard.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the originalEntry property value. The original timeCardEntry of the timeCard, before user edits.
            ## @return a time_card_entry
            ## 
            def original_entry
                return @original_entry
            end
            ## 
            ## Sets the originalEntry property value. The original timeCardEntry of the timeCard, before user edits.
            ## @param value Value to set for the original_entry property.
            ## @return a void
            ## 
            def original_entry=(value)
                @original_entry = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("breaks", @breaks)
                writer.write_object_value("clockInEvent", @clock_in_event)
                writer.write_object_value("clockOutEvent", @clock_out_event)
                writer.write_enum_value("confirmedBy", @confirmed_by)
                writer.write_object_value("notes", @notes)
                writer.write_object_value("originalEntry", @original_entry)
                writer.write_enum_value("state", @state)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the state property value. The current state of the timeCard during its life cycle.Possible values are: clockedIn, onBreak, clockedOut, unknownFutureValue.
            ## @return a time_card_state
            ## 
            def state
                return @state
            end
            ## 
            ## Sets the state property value. The current state of the timeCard during its life cycle.Possible values are: clockedIn, onBreak, clockedOut, unknownFutureValue.
            ## @param value Value to set for the state property.
            ## @return a void
            ## 
            def state=(value)
                @state = value
            end
            ## 
            ## Gets the userId property value. User ID to which  the timeCard belongs.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. User ID to which  the timeCard belongs.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
