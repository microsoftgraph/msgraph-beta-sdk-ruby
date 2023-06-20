require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MeetingCapability
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates whether anonymous users dialout is allowed in a meeting.
            @allow_anonymous_users_to_dial_out
            ## 
            # Indicates whether anonymous users are allowed to start a meeting.
            @allow_anonymous_users_to_start_meeting
            ## 
            # The autoAdmittedUsers property
            @auto_admitted_users
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the allowAnonymousUsersToDialOut property value. Indicates whether anonymous users dialout is allowed in a meeting.
            ## @return a boolean
            ## 
            def allow_anonymous_users_to_dial_out
                return @allow_anonymous_users_to_dial_out
            end
            ## 
            ## Sets the allowAnonymousUsersToDialOut property value. Indicates whether anonymous users dialout is allowed in a meeting.
            ## @param value Value to set for the allow_anonymous_users_to_dial_out property.
            ## @return a void
            ## 
            def allow_anonymous_users_to_dial_out=(value)
                @allow_anonymous_users_to_dial_out = value
            end
            ## 
            ## Gets the allowAnonymousUsersToStartMeeting property value. Indicates whether anonymous users are allowed to start a meeting.
            ## @return a boolean
            ## 
            def allow_anonymous_users_to_start_meeting
                return @allow_anonymous_users_to_start_meeting
            end
            ## 
            ## Sets the allowAnonymousUsersToStartMeeting property value. Indicates whether anonymous users are allowed to start a meeting.
            ## @param value Value to set for the allow_anonymous_users_to_start_meeting property.
            ## @return a void
            ## 
            def allow_anonymous_users_to_start_meeting=(value)
                @allow_anonymous_users_to_start_meeting = value
            end
            ## 
            ## Gets the autoAdmittedUsers property value. The autoAdmittedUsers property
            ## @return a auto_admitted_users_type
            ## 
            def auto_admitted_users
                return @auto_admitted_users
            end
            ## 
            ## Sets the autoAdmittedUsers property value. The autoAdmittedUsers property
            ## @param value Value to set for the auto_admitted_users property.
            ## @return a void
            ## 
            def auto_admitted_users=(value)
                @auto_admitted_users = value
            end
            ## 
            ## Instantiates a new meetingCapability and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a meeting_capability
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MeetingCapability.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowAnonymousUsersToDialOut" => lambda {|n| @allow_anonymous_users_to_dial_out = n.get_boolean_value() },
                    "allowAnonymousUsersToStartMeeting" => lambda {|n| @allow_anonymous_users_to_start_meeting = n.get_boolean_value() },
                    "autoAdmittedUsers" => lambda {|n| @auto_admitted_users = n.get_enum_value(MicrosoftGraphBeta::Models::AutoAdmittedUsersType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowAnonymousUsersToDialOut", @allow_anonymous_users_to_dial_out)
                writer.write_boolean_value("allowAnonymousUsersToStartMeeting", @allow_anonymous_users_to_start_meeting)
                writer.write_enum_value("autoAdmittedUsers", @auto_admitted_users)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
