require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta::Models::Security
    class EmailUrlThreatSubmission < MicrosoftGraphBeta::Models::Security::EmailThreatSubmission
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Specifies the url of the message to be submitted.
        @message_url
        ## 
        ## Instantiates a new EmailUrlThreatSubmission and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.security.emailUrlThreatSubmission"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a email_url_threat_submission
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EmailUrlThreatSubmission.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "messageUrl" => lambda {|n| @message_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the messageUrl property value. Specifies the url of the message to be submitted.
        ## @return a string
        ## 
        def message_url
            return @message_url
        end
        ## 
        ## Sets the messageUrl property value. Specifies the url of the message to be submitted.
        ## @param value Value to set for the messageUrl property.
        ## @return a void
        ## 
        def message_url=(value)
            @message_url = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("messageUrl", @message_url)
        end
    end
end
