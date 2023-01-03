require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Provides operations to manage the commsApplication singleton.
    class MeetingRegistrantBase < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A unique web URL for the registrant to join the meeting. Read-only.
        @join_web_url
        ## 
        ## Instantiates a new meetingRegistrantBase and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a meeting_registrant_base
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.externalMeetingRegistrant"
                        return ExternalMeetingRegistrant.new
                    when "#microsoft.graph.meetingRegistrant"
                        return MeetingRegistrant.new
                end
            end
            return MeetingRegistrantBase.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the joinWebUrl property value. A unique web URL for the registrant to join the meeting. Read-only.
        ## @return a string
        ## 
        def join_web_url
            return @join_web_url
        end
        ## 
        ## Sets the joinWebUrl property value. A unique web URL for the registrant to join the meeting. Read-only.
        ## @param value Value to set for the joinWebUrl property.
        ## @return a void
        ## 
        def join_web_url=(value)
            @join_web_url = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("joinWebUrl", @join_web_url)
        end
    end
end
