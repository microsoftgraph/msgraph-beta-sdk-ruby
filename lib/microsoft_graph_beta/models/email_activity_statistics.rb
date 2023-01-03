require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EmailActivityStatistics < MicrosoftGraphBeta::Models::ActivityStatistics
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Total hours spent on email outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        @after_hours
        ## 
        # Total hours spent reading email. The value is represented in ISO 8601 format for durations.
        @read_email
        ## 
        # Total hours spent writing and sending email. The value is represented in ISO 8601 format for durations.
        @sent_email
        ## 
        ## Gets the afterHours property value. Total hours spent on email outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def after_hours
            return @after_hours
        end
        ## 
        ## Sets the afterHours property value. Total hours spent on email outside of working hours, which is based on the user's Outlook calendar setting for work hours. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the afterHours property.
        ## @return a void
        ## 
        def after_hours=(value)
            @after_hours = value
        end
        ## 
        ## Instantiates a new EmailActivityStatistics and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.emailActivityStatistics"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a email_activity_statistics
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EmailActivityStatistics.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "afterHours" => lambda {|n| @after_hours = n.get_duration_value() },
                "readEmail" => lambda {|n| @read_email = n.get_duration_value() },
                "sentEmail" => lambda {|n| @sent_email = n.get_duration_value() },
            })
        end
        ## 
        ## Gets the readEmail property value. Total hours spent reading email. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def read_email
            return @read_email
        end
        ## 
        ## Sets the readEmail property value. Total hours spent reading email. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the readEmail property.
        ## @return a void
        ## 
        def read_email=(value)
            @read_email = value
        end
        ## 
        ## Gets the sentEmail property value. Total hours spent writing and sending email. The value is represented in ISO 8601 format for durations.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def sent_email
            return @sent_email
        end
        ## 
        ## Sets the sentEmail property value. Total hours spent writing and sending email. The value is represented in ISO 8601 format for durations.
        ## @param value Value to set for the sentEmail property.
        ## @return a void
        ## 
        def sent_email=(value)
            @sent_email = value
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
            writer.write_duration_value("readEmail", @read_email)
            writer.write_duration_value("sentEmail", @sent_email)
        end
    end
end
