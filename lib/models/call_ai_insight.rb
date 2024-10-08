require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CallAiInsight < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The actionItems property
            @action_items
            ## 
            # The callId property
            @call_id
            ## 
            # The contentCorrelationId property
            @content_correlation_id
            ## 
            # The createdDateTime property
            @created_date_time
            ## 
            # The endDateTime property
            @end_date_time
            ## 
            # The meetingNotes property
            @meeting_notes
            ## 
            # The viewpoint property
            @viewpoint
            ## 
            ## Gets the actionItems property value. The actionItems property
            ## @return a action_item
            ## 
            def action_items
                return @action_items
            end
            ## 
            ## Sets the actionItems property value. The actionItems property
            ## @param value Value to set for the actionItems property.
            ## @return a void
            ## 
            def action_items=(value)
                @action_items = value
            end
            ## 
            ## Gets the callId property value. The callId property
            ## @return a string
            ## 
            def call_id
                return @call_id
            end
            ## 
            ## Sets the callId property value. The callId property
            ## @param value Value to set for the callId property.
            ## @return a void
            ## 
            def call_id=(value)
                @call_id = value
            end
            ## 
            ## Instantiates a new CallAiInsight and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contentCorrelationId property value. The contentCorrelationId property
            ## @return a string
            ## 
            def content_correlation_id
                return @content_correlation_id
            end
            ## 
            ## Sets the contentCorrelationId property value. The contentCorrelationId property
            ## @param value Value to set for the contentCorrelationId property.
            ## @return a void
            ## 
            def content_correlation_id=(value)
                @content_correlation_id = value
            end
            ## 
            ## Gets the createdDateTime property value. The createdDateTime property
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The createdDateTime property
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a call_ai_insight
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CallAiInsight.new
            end
            ## 
            ## Gets the endDateTime property value. The endDateTime property
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The endDateTime property
            ## @param value Value to set for the endDateTime property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionItems" => lambda {|n| @action_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActionItem.create_from_discriminator_value(pn) }) },
                    "callId" => lambda {|n| @call_id = n.get_string_value() },
                    "contentCorrelationId" => lambda {|n| @content_correlation_id = n.get_string_value() },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "meetingNotes" => lambda {|n| @meeting_notes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingNote.create_from_discriminator_value(pn) }) },
                    "viewpoint" => lambda {|n| @viewpoint = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CallAiInsightViewPoint.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the meetingNotes property value. The meetingNotes property
            ## @return a meeting_note
            ## 
            def meeting_notes
                return @meeting_notes
            end
            ## 
            ## Sets the meetingNotes property value. The meetingNotes property
            ## @param value Value to set for the meetingNotes property.
            ## @return a void
            ## 
            def meeting_notes=(value)
                @meeting_notes = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("actionItems", @action_items)
                writer.write_string_value("callId", @call_id)
                writer.write_string_value("contentCorrelationId", @content_correlation_id)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_collection_of_object_values("meetingNotes", @meeting_notes)
                writer.write_object_value("viewpoint", @viewpoint)
            end
            ## 
            ## Gets the viewpoint property value. The viewpoint property
            ## @return a call_ai_insight_view_point
            ## 
            def viewpoint
                return @viewpoint
            end
            ## 
            ## Sets the viewpoint property value. The viewpoint property
            ## @param value Value to set for the viewpoint property.
            ## @return a void
            ## 
            def viewpoint=(value)
                @viewpoint = value
            end
        end
    end
end
