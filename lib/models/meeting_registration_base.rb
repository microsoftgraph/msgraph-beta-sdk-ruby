require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MeetingRegistrationBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies who can register for the meeting.
            @allowed_registrant
            ## 
            # Registrants of the online meeting.
            @registrants
            ## 
            ## Gets the allowedRegistrant property value. Specifies who can register for the meeting.
            ## @return a meeting_audience
            ## 
            def allowed_registrant
                return @allowed_registrant
            end
            ## 
            ## Sets the allowedRegistrant property value. Specifies who can register for the meeting.
            ## @param value Value to set for the allowed_registrant property.
            ## @return a void
            ## 
            def allowed_registrant=(value)
                @allowed_registrant = value
            end
            ## 
            ## Instantiates a new meetingRegistrationBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a meeting_registration_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.externalMeetingRegistration"
                            return ExternalMeetingRegistration.new
                        when "#microsoft.graph.meetingRegistration"
                            return MeetingRegistration.new
                    end
                end
                return MeetingRegistrationBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedRegistrant" => lambda {|n| @allowed_registrant = n.get_enum_value(MicrosoftGraphBeta::Models::MeetingAudience) },
                    "registrants" => lambda {|n| @registrants = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingRegistrantBase.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the registrants property value. Registrants of the online meeting.
            ## @return a meeting_registrant_base
            ## 
            def registrants
                return @registrants
            end
            ## 
            ## Sets the registrants property value. Registrants of the online meeting.
            ## @param value Value to set for the registrants property.
            ## @return a void
            ## 
            def registrants=(value)
                @registrants = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("allowedRegistrant", @allowed_registrant)
                writer.write_collection_of_object_values("registrants", @registrants)
            end
        end
    end
end
