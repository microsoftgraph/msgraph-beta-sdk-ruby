require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnlineMeetingBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The allowAttendeeToEnableCamera property
            @allow_attendee_to_enable_camera
            ## 
            # The allowAttendeeToEnableMic property
            @allow_attendee_to_enable_mic
            ## 
            # The allowMeetingChat property
            @allow_meeting_chat
            ## 
            # The allowParticipantsToChangeName property
            @allow_participants_to_change_name
            ## 
            # The allowRecording property
            @allow_recording
            ## 
            # The allowTeamworkReactions property
            @allow_teamwork_reactions
            ## 
            # The allowTranscription property
            @allow_transcription
            ## 
            # The allowedPresenters property
            @allowed_presenters
            ## 
            # The anonymizeIdentityForRoles property
            @anonymize_identity_for_roles
            ## 
            # The attendanceReports property
            @attendance_reports
            ## 
            # The audioConferencing property
            @audio_conferencing
            ## 
            # The chatInfo property
            @chat_info
            ## 
            # The chatRestrictions property
            @chat_restrictions
            ## 
            # The isEndToEndEncryptionEnabled property
            @is_end_to_end_encryption_enabled
            ## 
            # The isEntryExitAnnounced property
            @is_entry_exit_announced
            ## 
            # The joinInformation property
            @join_information
            ## 
            # The joinMeetingIdSettings property
            @join_meeting_id_settings
            ## 
            # The joinWebUrl property
            @join_web_url
            ## 
            # The lobbyBypassSettings property
            @lobby_bypass_settings
            ## 
            # The recordAutomatically property
            @record_automatically
            ## 
            # The shareMeetingChatHistoryDefault property
            @share_meeting_chat_history_default
            ## 
            # The subject property
            @subject
            ## 
            # The videoTeleconferenceId property
            @video_teleconference_id
            ## 
            # The watermarkProtection property
            @watermark_protection
            ## 
            ## Gets the allowAttendeeToEnableCamera property value. The allowAttendeeToEnableCamera property
            ## @return a boolean
            ## 
            def allow_attendee_to_enable_camera
                return @allow_attendee_to_enable_camera
            end
            ## 
            ## Sets the allowAttendeeToEnableCamera property value. The allowAttendeeToEnableCamera property
            ## @param value Value to set for the allowAttendeeToEnableCamera property.
            ## @return a void
            ## 
            def allow_attendee_to_enable_camera=(value)
                @allow_attendee_to_enable_camera = value
            end
            ## 
            ## Gets the allowAttendeeToEnableMic property value. The allowAttendeeToEnableMic property
            ## @return a boolean
            ## 
            def allow_attendee_to_enable_mic
                return @allow_attendee_to_enable_mic
            end
            ## 
            ## Sets the allowAttendeeToEnableMic property value. The allowAttendeeToEnableMic property
            ## @param value Value to set for the allowAttendeeToEnableMic property.
            ## @return a void
            ## 
            def allow_attendee_to_enable_mic=(value)
                @allow_attendee_to_enable_mic = value
            end
            ## 
            ## Gets the allowMeetingChat property value. The allowMeetingChat property
            ## @return a meeting_chat_mode
            ## 
            def allow_meeting_chat
                return @allow_meeting_chat
            end
            ## 
            ## Sets the allowMeetingChat property value. The allowMeetingChat property
            ## @param value Value to set for the allowMeetingChat property.
            ## @return a void
            ## 
            def allow_meeting_chat=(value)
                @allow_meeting_chat = value
            end
            ## 
            ## Gets the allowParticipantsToChangeName property value. The allowParticipantsToChangeName property
            ## @return a boolean
            ## 
            def allow_participants_to_change_name
                return @allow_participants_to_change_name
            end
            ## 
            ## Sets the allowParticipantsToChangeName property value. The allowParticipantsToChangeName property
            ## @param value Value to set for the allowParticipantsToChangeName property.
            ## @return a void
            ## 
            def allow_participants_to_change_name=(value)
                @allow_participants_to_change_name = value
            end
            ## 
            ## Gets the allowRecording property value. The allowRecording property
            ## @return a boolean
            ## 
            def allow_recording
                return @allow_recording
            end
            ## 
            ## Sets the allowRecording property value. The allowRecording property
            ## @param value Value to set for the allowRecording property.
            ## @return a void
            ## 
            def allow_recording=(value)
                @allow_recording = value
            end
            ## 
            ## Gets the allowTeamworkReactions property value. The allowTeamworkReactions property
            ## @return a boolean
            ## 
            def allow_teamwork_reactions
                return @allow_teamwork_reactions
            end
            ## 
            ## Sets the allowTeamworkReactions property value. The allowTeamworkReactions property
            ## @param value Value to set for the allowTeamworkReactions property.
            ## @return a void
            ## 
            def allow_teamwork_reactions=(value)
                @allow_teamwork_reactions = value
            end
            ## 
            ## Gets the allowTranscription property value. The allowTranscription property
            ## @return a boolean
            ## 
            def allow_transcription
                return @allow_transcription
            end
            ## 
            ## Sets the allowTranscription property value. The allowTranscription property
            ## @param value Value to set for the allowTranscription property.
            ## @return a void
            ## 
            def allow_transcription=(value)
                @allow_transcription = value
            end
            ## 
            ## Gets the allowedPresenters property value. The allowedPresenters property
            ## @return a online_meeting_presenters
            ## 
            def allowed_presenters
                return @allowed_presenters
            end
            ## 
            ## Sets the allowedPresenters property value. The allowedPresenters property
            ## @param value Value to set for the allowedPresenters property.
            ## @return a void
            ## 
            def allowed_presenters=(value)
                @allowed_presenters = value
            end
            ## 
            ## Gets the anonymizeIdentityForRoles property value. The anonymizeIdentityForRoles property
            ## @return a online_meeting_role
            ## 
            def anonymize_identity_for_roles
                return @anonymize_identity_for_roles
            end
            ## 
            ## Sets the anonymizeIdentityForRoles property value. The anonymizeIdentityForRoles property
            ## @param value Value to set for the anonymizeIdentityForRoles property.
            ## @return a void
            ## 
            def anonymize_identity_for_roles=(value)
                @anonymize_identity_for_roles = value
            end
            ## 
            ## Gets the attendanceReports property value. The attendanceReports property
            ## @return a meeting_attendance_report
            ## 
            def attendance_reports
                return @attendance_reports
            end
            ## 
            ## Sets the attendanceReports property value. The attendanceReports property
            ## @param value Value to set for the attendanceReports property.
            ## @return a void
            ## 
            def attendance_reports=(value)
                @attendance_reports = value
            end
            ## 
            ## Gets the audioConferencing property value. The audioConferencing property
            ## @return a audio_conferencing
            ## 
            def audio_conferencing
                return @audio_conferencing
            end
            ## 
            ## Sets the audioConferencing property value. The audioConferencing property
            ## @param value Value to set for the audioConferencing property.
            ## @return a void
            ## 
            def audio_conferencing=(value)
                @audio_conferencing = value
            end
            ## 
            ## Gets the chatInfo property value. The chatInfo property
            ## @return a chat_info
            ## 
            def chat_info
                return @chat_info
            end
            ## 
            ## Sets the chatInfo property value. The chatInfo property
            ## @param value Value to set for the chatInfo property.
            ## @return a void
            ## 
            def chat_info=(value)
                @chat_info = value
            end
            ## 
            ## Gets the chatRestrictions property value. The chatRestrictions property
            ## @return a chat_restrictions
            ## 
            def chat_restrictions
                return @chat_restrictions
            end
            ## 
            ## Sets the chatRestrictions property value. The chatRestrictions property
            ## @param value Value to set for the chatRestrictions property.
            ## @return a void
            ## 
            def chat_restrictions=(value)
                @chat_restrictions = value
            end
            ## 
            ## Instantiates a new onlineMeetingBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a online_meeting_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.onlineMeeting"
                            return OnlineMeeting.new
                        when "#microsoft.graph.virtualEventSession"
                            return VirtualEventSession.new
                    end
                end
                return OnlineMeetingBase.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowAttendeeToEnableCamera" => lambda {|n| @allow_attendee_to_enable_camera = n.get_boolean_value() },
                    "allowAttendeeToEnableMic" => lambda {|n| @allow_attendee_to_enable_mic = n.get_boolean_value() },
                    "allowMeetingChat" => lambda {|n| @allow_meeting_chat = n.get_enum_value(MicrosoftGraphBeta::Models::MeetingChatMode) },
                    "allowParticipantsToChangeName" => lambda {|n| @allow_participants_to_change_name = n.get_boolean_value() },
                    "allowRecording" => lambda {|n| @allow_recording = n.get_boolean_value() },
                    "allowTeamworkReactions" => lambda {|n| @allow_teamwork_reactions = n.get_boolean_value() },
                    "allowTranscription" => lambda {|n| @allow_transcription = n.get_boolean_value() },
                    "allowedPresenters" => lambda {|n| @allowed_presenters = n.get_enum_value(MicrosoftGraphBeta::Models::OnlineMeetingPresenters) },
                    "anonymizeIdentityForRoles" => lambda {|n| @anonymize_identity_for_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnlineMeetingRole.create_from_discriminator_value(pn) }) },
                    "attendanceReports" => lambda {|n| @attendance_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingAttendanceReport.create_from_discriminator_value(pn) }) },
                    "audioConferencing" => lambda {|n| @audio_conferencing = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AudioConferencing.create_from_discriminator_value(pn) }) },
                    "chatInfo" => lambda {|n| @chat_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ChatInfo.create_from_discriminator_value(pn) }) },
                    "chatRestrictions" => lambda {|n| @chat_restrictions = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ChatRestrictions.create_from_discriminator_value(pn) }) },
                    "isEndToEndEncryptionEnabled" => lambda {|n| @is_end_to_end_encryption_enabled = n.get_boolean_value() },
                    "isEntryExitAnnounced" => lambda {|n| @is_entry_exit_announced = n.get_boolean_value() },
                    "joinInformation" => lambda {|n| @join_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "joinMeetingIdSettings" => lambda {|n| @join_meeting_id_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::JoinMeetingIdSettings.create_from_discriminator_value(pn) }) },
                    "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                    "lobbyBypassSettings" => lambda {|n| @lobby_bypass_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LobbyBypassSettings.create_from_discriminator_value(pn) }) },
                    "recordAutomatically" => lambda {|n| @record_automatically = n.get_boolean_value() },
                    "shareMeetingChatHistoryDefault" => lambda {|n| @share_meeting_chat_history_default = n.get_enum_value(MicrosoftGraphBeta::Models::MeetingChatHistoryDefaultMode) },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "videoTeleconferenceId" => lambda {|n| @video_teleconference_id = n.get_string_value() },
                    "watermarkProtection" => lambda {|n| @watermark_protection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WatermarkProtectionValues.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEndToEndEncryptionEnabled property value. The isEndToEndEncryptionEnabled property
            ## @return a boolean
            ## 
            def is_end_to_end_encryption_enabled
                return @is_end_to_end_encryption_enabled
            end
            ## 
            ## Sets the isEndToEndEncryptionEnabled property value. The isEndToEndEncryptionEnabled property
            ## @param value Value to set for the isEndToEndEncryptionEnabled property.
            ## @return a void
            ## 
            def is_end_to_end_encryption_enabled=(value)
                @is_end_to_end_encryption_enabled = value
            end
            ## 
            ## Gets the isEntryExitAnnounced property value. The isEntryExitAnnounced property
            ## @return a boolean
            ## 
            def is_entry_exit_announced
                return @is_entry_exit_announced
            end
            ## 
            ## Sets the isEntryExitAnnounced property value. The isEntryExitAnnounced property
            ## @param value Value to set for the isEntryExitAnnounced property.
            ## @return a void
            ## 
            def is_entry_exit_announced=(value)
                @is_entry_exit_announced = value
            end
            ## 
            ## Gets the joinInformation property value. The joinInformation property
            ## @return a item_body
            ## 
            def join_information
                return @join_information
            end
            ## 
            ## Sets the joinInformation property value. The joinInformation property
            ## @param value Value to set for the joinInformation property.
            ## @return a void
            ## 
            def join_information=(value)
                @join_information = value
            end
            ## 
            ## Gets the joinMeetingIdSettings property value. The joinMeetingIdSettings property
            ## @return a join_meeting_id_settings
            ## 
            def join_meeting_id_settings
                return @join_meeting_id_settings
            end
            ## 
            ## Sets the joinMeetingIdSettings property value. The joinMeetingIdSettings property
            ## @param value Value to set for the joinMeetingIdSettings property.
            ## @return a void
            ## 
            def join_meeting_id_settings=(value)
                @join_meeting_id_settings = value
            end
            ## 
            ## Gets the joinWebUrl property value. The joinWebUrl property
            ## @return a string
            ## 
            def join_web_url
                return @join_web_url
            end
            ## 
            ## Sets the joinWebUrl property value. The joinWebUrl property
            ## @param value Value to set for the joinWebUrl property.
            ## @return a void
            ## 
            def join_web_url=(value)
                @join_web_url = value
            end
            ## 
            ## Gets the lobbyBypassSettings property value. The lobbyBypassSettings property
            ## @return a lobby_bypass_settings
            ## 
            def lobby_bypass_settings
                return @lobby_bypass_settings
            end
            ## 
            ## Sets the lobbyBypassSettings property value. The lobbyBypassSettings property
            ## @param value Value to set for the lobbyBypassSettings property.
            ## @return a void
            ## 
            def lobby_bypass_settings=(value)
                @lobby_bypass_settings = value
            end
            ## 
            ## Gets the recordAutomatically property value. The recordAutomatically property
            ## @return a boolean
            ## 
            def record_automatically
                return @record_automatically
            end
            ## 
            ## Sets the recordAutomatically property value. The recordAutomatically property
            ## @param value Value to set for the recordAutomatically property.
            ## @return a void
            ## 
            def record_automatically=(value)
                @record_automatically = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowAttendeeToEnableCamera", @allow_attendee_to_enable_camera)
                writer.write_boolean_value("allowAttendeeToEnableMic", @allow_attendee_to_enable_mic)
                writer.write_enum_value("allowMeetingChat", @allow_meeting_chat)
                writer.write_boolean_value("allowParticipantsToChangeName", @allow_participants_to_change_name)
                writer.write_boolean_value("allowRecording", @allow_recording)
                writer.write_boolean_value("allowTeamworkReactions", @allow_teamwork_reactions)
                writer.write_boolean_value("allowTranscription", @allow_transcription)
                writer.write_enum_value("allowedPresenters", @allowed_presenters)
                writer.write_collection_of_object_values("anonymizeIdentityForRoles", @anonymize_identity_for_roles)
                writer.write_collection_of_object_values("attendanceReports", @attendance_reports)
                writer.write_object_value("audioConferencing", @audio_conferencing)
                writer.write_object_value("chatInfo", @chat_info)
                writer.write_object_value("chatRestrictions", @chat_restrictions)
                writer.write_boolean_value("isEndToEndEncryptionEnabled", @is_end_to_end_encryption_enabled)
                writer.write_boolean_value("isEntryExitAnnounced", @is_entry_exit_announced)
                writer.write_object_value("joinInformation", @join_information)
                writer.write_object_value("joinMeetingIdSettings", @join_meeting_id_settings)
                writer.write_string_value("joinWebUrl", @join_web_url)
                writer.write_object_value("lobbyBypassSettings", @lobby_bypass_settings)
                writer.write_boolean_value("recordAutomatically", @record_automatically)
                writer.write_enum_value("shareMeetingChatHistoryDefault", @share_meeting_chat_history_default)
                writer.write_string_value("subject", @subject)
                writer.write_string_value("videoTeleconferenceId", @video_teleconference_id)
                writer.write_object_value("watermarkProtection", @watermark_protection)
            end
            ## 
            ## Gets the shareMeetingChatHistoryDefault property value. The shareMeetingChatHistoryDefault property
            ## @return a meeting_chat_history_default_mode
            ## 
            def share_meeting_chat_history_default
                return @share_meeting_chat_history_default
            end
            ## 
            ## Sets the shareMeetingChatHistoryDefault property value. The shareMeetingChatHistoryDefault property
            ## @param value Value to set for the shareMeetingChatHistoryDefault property.
            ## @return a void
            ## 
            def share_meeting_chat_history_default=(value)
                @share_meeting_chat_history_default = value
            end
            ## 
            ## Gets the subject property value. The subject property
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject property
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the videoTeleconferenceId property value. The videoTeleconferenceId property
            ## @return a string
            ## 
            def video_teleconference_id
                return @video_teleconference_id
            end
            ## 
            ## Sets the videoTeleconferenceId property value. The videoTeleconferenceId property
            ## @param value Value to set for the videoTeleconferenceId property.
            ## @return a void
            ## 
            def video_teleconference_id=(value)
                @video_teleconference_id = value
            end
            ## 
            ## Gets the watermarkProtection property value. The watermarkProtection property
            ## @return a watermark_protection_values
            ## 
            def watermark_protection
                return @watermark_protection
            end
            ## 
            ## Sets the watermarkProtection property value. The watermarkProtection property
            ## @param value Value to set for the watermarkProtection property.
            ## @return a void
            ## 
            def watermark_protection=(value)
                @watermark_protection = value
            end
        end
    end
end
