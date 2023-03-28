require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ChatActivityStatistics < MicrosoftGraphBeta::Models::ActivityStatistics
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Time spent on chats outside of working hours, which is based on the user's Microsoft Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
            @after_hours
            ## 
            ## Gets the afterHours property value. Time spent on chats outside of working hours, which is based on the user's Microsoft Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def after_hours
                return @after_hours
            end
            ## 
            ## Sets the afterHours property value. Time spent on chats outside of working hours, which is based on the user's Microsoft Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
            ## @param value Value to set for the after_hours property.
            ## @return a void
            ## 
            def after_hours=(value)
                @after_hours = value
            end
            ## 
            ## Instantiates a new ChatActivityStatistics and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.chatActivityStatistics"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a chat_activity_statistics
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChatActivityStatistics.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "afterHours" => lambda {|n| @after_hours = n.get_duration_value() },
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
                writer.write_duration_value("afterHours", @after_hours)
            end
        end
    end
end
