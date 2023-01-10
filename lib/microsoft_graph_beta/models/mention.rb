require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Mention < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
        @application
        ## 
        # A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
        @client_reference
        ## 
        # The email information of the user who made the mention.
        @created_by
        ## 
        # The date and time that the mention is created on the client.
        @created_date_time
        ## 
        # A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
        @deep_link
        ## 
        # The mentioned property
        @mentioned
        ## 
        # Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
        @mention_text
        ## 
        # The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
        @server_created_date_time
        ## 
        ## Gets the application property value. The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
        ## @return a string
        ## 
        def application
            return @application
        end
        ## 
        ## Sets the application property value. The name of the application where the mention is created. Optional. Not used and defaulted as null for message.
        ## @param value Value to set for the application property.
        ## @return a void
        ## 
        def application=(value)
            @application = value
        end
        ## 
        ## Gets the clientReference property value. A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
        ## @return a string
        ## 
        def client_reference
            return @client_reference
        end
        ## 
        ## Sets the clientReference property value. A unique identifier that represents a parent of the resource instance. Optional. Not used and defaulted as null for message.
        ## @param value Value to set for the clientReference property.
        ## @return a void
        ## 
        def client_reference=(value)
            @client_reference = value
        end
        ## 
        ## Instantiates a new mention and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdBy property value. The email information of the user who made the mention.
        ## @return a email_address
        ## 
        def created_by
            return @created_by
        end
        ## 
        ## Sets the createdBy property value. The email information of the user who made the mention.
        ## @param value Value to set for the createdBy property.
        ## @return a void
        ## 
        def created_by=(value)
            @created_by = value
        end
        ## 
        ## Gets the createdDateTime property value. The date and time that the mention is created on the client.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time that the mention is created on the client.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mention
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Mention.new
        end
        ## 
        ## Gets the deepLink property value. A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
        ## @return a string
        ## 
        def deep_link
            return @deep_link
        end
        ## 
        ## Sets the deepLink property value. A deep web link to the context of the mention in the resource instance. Optional. Not used and defaulted as null for message.
        ## @param value Value to set for the deepLink property.
        ## @return a void
        ## 
        def deep_link=(value)
            @deep_link = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "application" => lambda {|n| @application = n.get_string_value() },
                "clientReference" => lambda {|n| @client_reference = n.get_string_value() },
                "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "deepLink" => lambda {|n| @deep_link = n.get_string_value() },
                "mentioned" => lambda {|n| @mentioned = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EmailAddress.create_from_discriminator_value(pn) }) },
                "mentionText" => lambda {|n| @mention_text = n.get_string_value() },
                "serverCreatedDateTime" => lambda {|n| @server_created_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the mentioned property value. The mentioned property
        ## @return a email_address
        ## 
        def mentioned
            return @mentioned
        end
        ## 
        ## Sets the mentioned property value. The mentioned property
        ## @param value Value to set for the mentioned property.
        ## @return a void
        ## 
        def mentioned=(value)
            @mentioned = value
        end
        ## 
        ## Gets the mentionText property value. Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
        ## @return a string
        ## 
        def mention_text
            return @mention_text
        end
        ## 
        ## Sets the mentionText property value. Optional. Not used and defaulted as null for message. To get the mentions in a message, see the bodyPreview property of the message instead.
        ## @param value Value to set for the mentionText property.
        ## @return a void
        ## 
        def mention_text=(value)
            @mention_text = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("application", @application)
            writer.write_string_value("clientReference", @client_reference)
            writer.write_object_value("createdBy", @created_by)
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("deepLink", @deep_link)
            writer.write_object_value("mentioned", @mentioned)
            writer.write_string_value("mentionText", @mention_text)
            writer.write_date_time_value("serverCreatedDateTime", @server_created_date_time)
        end
        ## 
        ## Gets the serverCreatedDateTime property value. The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
        ## @return a date_time
        ## 
        def server_created_date_time
            return @server_created_date_time
        end
        ## 
        ## Sets the serverCreatedDateTime property value. The date and time that the mention is created on the server. Optional. Not used and defaulted as null for message.
        ## @param value Value to set for the serverCreatedDateTime property.
        ## @return a void
        ## 
        def server_created_date_time=(value)
            @server_created_date_time = value
        end
    end
end
