require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OnlineMeeting < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether attendees can turn on their camera.
            @allow_attendee_to_enable_camera
            ## 
            # Indicates whether attendees can turn on their microphone.
            @allow_attendee_to_enable_mic
            ## 
            # Specifies the mode of meeting chat.
            @allow_meeting_chat
            ## 
            # Specifies if participants are allowed to rename themselves in an instance of the meeting.
            @allow_participants_to_change_name
            ## 
            # Indicates if Teams reactions are enabled for the meeting.
            @allow_teamwork_reactions
            ## 
            # Specifies who can be a presenter in a meeting.
            @allowed_presenters
            ## 
            # The content stream of the alternative recording of a Microsoft Teams live event. Read-only.
            @alternative_recording
            ## 
            # The anonymizeIdentityForRoles property
            @anonymize_identity_for_roles
            ## 
            # The attendance reports of an online meeting. Read-only.
            @attendance_reports
            ## 
            # The content stream of the attendee report of a Teams live event. Read-only.
            @attendee_report
            ## 
            # The phone access (dial-in) information for an online meeting. Read-only.
            @audio_conferencing
            ## 
            # Settings related to a live event.
            @broadcast_settings
            ## 
            # The capabilities property
            @capabilities
            ## 
            # The chat information associated with this online meeting.
            @chat_info
            ## 
            # The meeting creation time in UTC. Read-only.
            @creation_date_time
            ## 
            # The meeting end time in UTC.
            @end_date_time
            ## 
            # The external ID. A custom ID. Optional.
            @external_id
            ## 
            # Indicates whether this is a Teams live event.
            @is_broadcast
            ## 
            # Indicates whether to announce when callers join or leave.
            @is_entry_exit_announced
            ## 
            # The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only.
            @join_information
            ## 
            # Specifies the joinMeetingId, the meeting passcode, and the requirement for the passcode. Once an onlineMeeting is created, the joinMeetingIdSettings cannot be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created.
            @join_meeting_id_settings
            ## 
            # The joinUrl property
            @join_url
            ## 
            # The join URL of the online meeting. Read-only.
            @join_web_url
            ## 
            # Specifies which participants can bypass the meeting lobby.
            @lobby_bypass_settings
            ## 
            # The meetingAttendanceReport property
            @meeting_attendance_report
            ## 
            # The participants associated with the online meeting. This includes the organizer and the attendees.
            @participants
            ## 
            # Indicates whether to record the meeting automatically.
            @record_automatically
            ## 
            # The content stream of the recording of a Teams live event. Read-only.
            @recording
            ## 
            # The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.
            @registration
            ## 
            # The shareMeetingChatHistoryDefault property
            @share_meeting_chat_history_default
            ## 
            # The meeting start time in UTC.
            @start_date_time
            ## 
            # The subject of the online meeting.
            @subject
            ## 
            # The transcripts of an online meeting. Read-only.
            @transcripts
            ## 
            # The video teleconferencing ID. Read-only.
            @video_teleconference_id
            ## 
            # The virtualAppointment property
            @virtual_appointment
            ## 
            # Specifies whether a watermark applies for different entities.
            @watermark_protection
            ## 
            ## Gets the allowAttendeeToEnableCamera property value. Indicates whether attendees can turn on their camera.
            ## @return a boolean
            ## 
            def allow_attendee_to_enable_camera
                return @allow_attendee_to_enable_camera
            end
            ## 
            ## Sets the allowAttendeeToEnableCamera property value. Indicates whether attendees can turn on their camera.
            ## @param value Value to set for the allow_attendee_to_enable_camera property.
            ## @return a void
            ## 
            def allow_attendee_to_enable_camera=(value)
                @allow_attendee_to_enable_camera = value
            end
            ## 
            ## Gets the allowAttendeeToEnableMic property value. Indicates whether attendees can turn on their microphone.
            ## @return a boolean
            ## 
            def allow_attendee_to_enable_mic
                return @allow_attendee_to_enable_mic
            end
            ## 
            ## Sets the allowAttendeeToEnableMic property value. Indicates whether attendees can turn on their microphone.
            ## @param value Value to set for the allow_attendee_to_enable_mic property.
            ## @return a void
            ## 
            def allow_attendee_to_enable_mic=(value)
                @allow_attendee_to_enable_mic = value
            end
            ## 
            ## Gets the allowMeetingChat property value. Specifies the mode of meeting chat.
            ## @return a meeting_chat_mode
            ## 
            def allow_meeting_chat
                return @allow_meeting_chat
            end
            ## 
            ## Sets the allowMeetingChat property value. Specifies the mode of meeting chat.
            ## @param value Value to set for the allow_meeting_chat property.
            ## @return a void
            ## 
            def allow_meeting_chat=(value)
                @allow_meeting_chat = value
            end
            ## 
            ## Gets the allowParticipantsToChangeName property value. Specifies if participants are allowed to rename themselves in an instance of the meeting.
            ## @return a boolean
            ## 
            def allow_participants_to_change_name
                return @allow_participants_to_change_name
            end
            ## 
            ## Sets the allowParticipantsToChangeName property value. Specifies if participants are allowed to rename themselves in an instance of the meeting.
            ## @param value Value to set for the allow_participants_to_change_name property.
            ## @return a void
            ## 
            def allow_participants_to_change_name=(value)
                @allow_participants_to_change_name = value
            end
            ## 
            ## Gets the allowTeamworkReactions property value. Indicates if Teams reactions are enabled for the meeting.
            ## @return a boolean
            ## 
            def allow_teamwork_reactions
                return @allow_teamwork_reactions
            end
            ## 
            ## Sets the allowTeamworkReactions property value. Indicates if Teams reactions are enabled for the meeting.
            ## @param value Value to set for the allow_teamwork_reactions property.
            ## @return a void
            ## 
            def allow_teamwork_reactions=(value)
                @allow_teamwork_reactions = value
            end
            ## 
            ## Gets the allowedPresenters property value. Specifies who can be a presenter in a meeting.
            ## @return a online_meeting_presenters
            ## 
            def allowed_presenters
                return @allowed_presenters
            end
            ## 
            ## Sets the allowedPresenters property value. Specifies who can be a presenter in a meeting.
            ## @param value Value to set for the allowed_presenters property.
            ## @return a void
            ## 
            def allowed_presenters=(value)
                @allowed_presenters = value
            end
            ## 
            ## Gets the alternativeRecording property value. The content stream of the alternative recording of a Microsoft Teams live event. Read-only.
            ## @return a base64url
            ## 
            def alternative_recording
                return @alternative_recording
            end
            ## 
            ## Sets the alternativeRecording property value. The content stream of the alternative recording of a Microsoft Teams live event. Read-only.
            ## @param value Value to set for the alternative_recording property.
            ## @return a void
            ## 
            def alternative_recording=(value)
                @alternative_recording = value
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
            ## @param value Value to set for the anonymize_identity_for_roles property.
            ## @return a void
            ## 
            def anonymize_identity_for_roles=(value)
                @anonymize_identity_for_roles = value
            end
            ## 
            ## Gets the attendanceReports property value. The attendance reports of an online meeting. Read-only.
            ## @return a meeting_attendance_report
            ## 
            def attendance_reports
                return @attendance_reports
            end
            ## 
            ## Sets the attendanceReports property value. The attendance reports of an online meeting. Read-only.
            ## @param value Value to set for the attendance_reports property.
            ## @return a void
            ## 
            def attendance_reports=(value)
                @attendance_reports = value
            end
            ## 
            ## Gets the attendeeReport property value. The content stream of the attendee report of a Teams live event. Read-only.
            ## @return a base64url
            ## 
            def attendee_report
                return @attendee_report
            end
            ## 
            ## Sets the attendeeReport property value. The content stream of the attendee report of a Teams live event. Read-only.
            ## @param value Value to set for the attendee_report property.
            ## @return a void
            ## 
            def attendee_report=(value)
                @attendee_report = value
            end
            ## 
            ## Gets the audioConferencing property value. The phone access (dial-in) information for an online meeting. Read-only.
            ## @return a audio_conferencing
            ## 
            def audio_conferencing
                return @audio_conferencing
            end
            ## 
            ## Sets the audioConferencing property value. The phone access (dial-in) information for an online meeting. Read-only.
            ## @param value Value to set for the audio_conferencing property.
            ## @return a void
            ## 
            def audio_conferencing=(value)
                @audio_conferencing = value
            end
            ## 
            ## Gets the broadcastSettings property value. Settings related to a live event.
            ## @return a broadcast_meeting_settings
            ## 
            def broadcast_settings
                return @broadcast_settings
            end
            ## 
            ## Sets the broadcastSettings property value. Settings related to a live event.
            ## @param value Value to set for the broadcast_settings property.
            ## @return a void
            ## 
            def broadcast_settings=(value)
                @broadcast_settings = value
            end
            ## 
            ## Gets the capabilities property value. The capabilities property
            ## @return a meeting_capabilities
            ## 
            def capabilities
                return @capabilities
            end
            ## 
            ## Sets the capabilities property value. The capabilities property
            ## @param value Value to set for the capabilities property.
            ## @return a void
            ## 
            def capabilities=(value)
                @capabilities = value
            end
            ## 
            ## Gets the chatInfo property value. The chat information associated with this online meeting.
            ## @return a chat_info
            ## 
            def chat_info
                return @chat_info
            end
            ## 
            ## Sets the chatInfo property value. The chat information associated with this online meeting.
            ## @param value Value to set for the chat_info property.
            ## @return a void
            ## 
            def chat_info=(value)
                @chat_info = value
            end
            ## 
            ## Instantiates a new onlineMeeting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a online_meeting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OnlineMeeting.new
            end
            ## 
            ## Gets the creationDateTime property value. The meeting creation time in UTC. Read-only.
            ## @return a date_time
            ## 
            def creation_date_time
                return @creation_date_time
            end
            ## 
            ## Sets the creationDateTime property value. The meeting creation time in UTC. Read-only.
            ## @param value Value to set for the creation_date_time property.
            ## @return a void
            ## 
            def creation_date_time=(value)
                @creation_date_time = value
            end
            ## 
            ## Gets the endDateTime property value. The meeting end time in UTC.
            ## @return a date_time
            ## 
            def end_date_time
                return @end_date_time
            end
            ## 
            ## Sets the endDateTime property value. The meeting end time in UTC.
            ## @param value Value to set for the end_date_time property.
            ## @return a void
            ## 
            def end_date_time=(value)
                @end_date_time = value
            end
            ## 
            ## Gets the externalId property value. The external ID. A custom ID. Optional.
            ## @return a string
            ## 
            def external_id
                return @external_id
            end
            ## 
            ## Sets the externalId property value. The external ID. A custom ID. Optional.
            ## @param value Value to set for the external_id property.
            ## @return a void
            ## 
            def external_id=(value)
                @external_id = value
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
                    "allowTeamworkReactions" => lambda {|n| @allow_teamwork_reactions = n.get_boolean_value() },
                    "allowedPresenters" => lambda {|n| @allowed_presenters = n.get_enum_value(MicrosoftGraphBeta::Models::OnlineMeetingPresenters) },
                    "alternativeRecording" => lambda {|n| @alternative_recording = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "anonymizeIdentityForRoles" => lambda {|n| @anonymize_identity_for_roles = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OnlineMeetingRole.create_from_discriminator_value(pn) }) },
                    "attendanceReports" => lambda {|n| @attendance_reports = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingAttendanceReport.create_from_discriminator_value(pn) }) },
                    "attendeeReport" => lambda {|n| @attendee_report = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "audioConferencing" => lambda {|n| @audio_conferencing = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AudioConferencing.create_from_discriminator_value(pn) }) },
                    "broadcastSettings" => lambda {|n| @broadcast_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::BroadcastMeetingSettings.create_from_discriminator_value(pn) }) },
                    "capabilities" => lambda {|n| @capabilities = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MeetingCapabilities.create_from_discriminator_value(pn) }) },
                    "chatInfo" => lambda {|n| @chat_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ChatInfo.create_from_discriminator_value(pn) }) },
                    "creationDateTime" => lambda {|n| @creation_date_time = n.get_date_time_value() },
                    "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
                    "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    "isBroadcast" => lambda {|n| @is_broadcast = n.get_boolean_value() },
                    "isEntryExitAnnounced" => lambda {|n| @is_entry_exit_announced = n.get_boolean_value() },
                    "joinInformation" => lambda {|n| @join_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemBody.create_from_discriminator_value(pn) }) },
                    "joinMeetingIdSettings" => lambda {|n| @join_meeting_id_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::JoinMeetingIdSettings.create_from_discriminator_value(pn) }) },
                    "joinUrl" => lambda {|n| @join_url = n.get_string_value() },
                    "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                    "lobbyBypassSettings" => lambda {|n| @lobby_bypass_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::LobbyBypassSettings.create_from_discriminator_value(pn) }) },
                    "meetingAttendanceReport" => lambda {|n| @meeting_attendance_report = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MeetingAttendanceReport.create_from_discriminator_value(pn) }) },
                    "participants" => lambda {|n| @participants = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MeetingParticipants.create_from_discriminator_value(pn) }) },
                    "recordAutomatically" => lambda {|n| @record_automatically = n.get_boolean_value() },
                    "recording" => lambda {|n| @recording = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "registration" => lambda {|n| @registration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MeetingRegistration.create_from_discriminator_value(pn) }) },
                    "shareMeetingChatHistoryDefault" => lambda {|n| @share_meeting_chat_history_default = n.get_enum_value(MicrosoftGraphBeta::Models::MeetingChatHistoryDefaultMode) },
                    "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    "subject" => lambda {|n| @subject = n.get_string_value() },
                    "transcripts" => lambda {|n| @transcripts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CallTranscript.create_from_discriminator_value(pn) }) },
                    "videoTeleconferenceId" => lambda {|n| @video_teleconference_id = n.get_string_value() },
                    "virtualAppointment" => lambda {|n| @virtual_appointment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VirtualAppointment.create_from_discriminator_value(pn) }) },
                    "watermarkProtection" => lambda {|n| @watermark_protection = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WatermarkProtectionValues.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isBroadcast property value. Indicates whether this is a Teams live event.
            ## @return a boolean
            ## 
            def is_broadcast
                return @is_broadcast
            end
            ## 
            ## Sets the isBroadcast property value. Indicates whether this is a Teams live event.
            ## @param value Value to set for the is_broadcast property.
            ## @return a void
            ## 
            def is_broadcast=(value)
                @is_broadcast = value
            end
            ## 
            ## Gets the isEntryExitAnnounced property value. Indicates whether to announce when callers join or leave.
            ## @return a boolean
            ## 
            def is_entry_exit_announced
                return @is_entry_exit_announced
            end
            ## 
            ## Sets the isEntryExitAnnounced property value. Indicates whether to announce when callers join or leave.
            ## @param value Value to set for the is_entry_exit_announced property.
            ## @return a void
            ## 
            def is_entry_exit_announced=(value)
                @is_entry_exit_announced = value
            end
            ## 
            ## Gets the joinInformation property value. The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only.
            ## @return a item_body
            ## 
            def join_information
                return @join_information
            end
            ## 
            ## Sets the joinInformation property value. The join information in the language and locale variant specified in 'Accept-Language' request HTTP header. Read-only.
            ## @param value Value to set for the join_information property.
            ## @return a void
            ## 
            def join_information=(value)
                @join_information = value
            end
            ## 
            ## Gets the joinMeetingIdSettings property value. Specifies the joinMeetingId, the meeting passcode, and the requirement for the passcode. Once an onlineMeeting is created, the joinMeetingIdSettings cannot be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created.
            ## @return a join_meeting_id_settings
            ## 
            def join_meeting_id_settings
                return @join_meeting_id_settings
            end
            ## 
            ## Sets the joinMeetingIdSettings property value. Specifies the joinMeetingId, the meeting passcode, and the requirement for the passcode. Once an onlineMeeting is created, the joinMeetingIdSettings cannot be modified. To make any changes to this property, the meeting needs to be canceled and a new one needs to be created.
            ## @param value Value to set for the join_meeting_id_settings property.
            ## @return a void
            ## 
            def join_meeting_id_settings=(value)
                @join_meeting_id_settings = value
            end
            ## 
            ## Gets the joinUrl property value. The joinUrl property
            ## @return a string
            ## 
            def join_url
                return @join_url
            end
            ## 
            ## Sets the joinUrl property value. The joinUrl property
            ## @param value Value to set for the join_url property.
            ## @return a void
            ## 
            def join_url=(value)
                @join_url = value
            end
            ## 
            ## Gets the joinWebUrl property value. The join URL of the online meeting. Read-only.
            ## @return a string
            ## 
            def join_web_url
                return @join_web_url
            end
            ## 
            ## Sets the joinWebUrl property value. The join URL of the online meeting. Read-only.
            ## @param value Value to set for the join_web_url property.
            ## @return a void
            ## 
            def join_web_url=(value)
                @join_web_url = value
            end
            ## 
            ## Gets the lobbyBypassSettings property value. Specifies which participants can bypass the meeting lobby.
            ## @return a lobby_bypass_settings
            ## 
            def lobby_bypass_settings
                return @lobby_bypass_settings
            end
            ## 
            ## Sets the lobbyBypassSettings property value. Specifies which participants can bypass the meeting lobby.
            ## @param value Value to set for the lobby_bypass_settings property.
            ## @return a void
            ## 
            def lobby_bypass_settings=(value)
                @lobby_bypass_settings = value
            end
            ## 
            ## Gets the meetingAttendanceReport property value. The meetingAttendanceReport property
            ## @return a meeting_attendance_report
            ## 
            def meeting_attendance_report
                return @meeting_attendance_report
            end
            ## 
            ## Sets the meetingAttendanceReport property value. The meetingAttendanceReport property
            ## @param value Value to set for the meeting_attendance_report property.
            ## @return a void
            ## 
            def meeting_attendance_report=(value)
                @meeting_attendance_report = value
            end
            ## 
            ## Gets the participants property value. The participants associated with the online meeting. This includes the organizer and the attendees.
            ## @return a meeting_participants
            ## 
            def participants
                return @participants
            end
            ## 
            ## Sets the participants property value. The participants associated with the online meeting. This includes the organizer and the attendees.
            ## @param value Value to set for the participants property.
            ## @return a void
            ## 
            def participants=(value)
                @participants = value
            end
            ## 
            ## Gets the recordAutomatically property value. Indicates whether to record the meeting automatically.
            ## @return a boolean
            ## 
            def record_automatically
                return @record_automatically
            end
            ## 
            ## Sets the recordAutomatically property value. Indicates whether to record the meeting automatically.
            ## @param value Value to set for the record_automatically property.
            ## @return a void
            ## 
            def record_automatically=(value)
                @record_automatically = value
            end
            ## 
            ## Gets the recording property value. The content stream of the recording of a Teams live event. Read-only.
            ## @return a base64url
            ## 
            def recording
                return @recording
            end
            ## 
            ## Sets the recording property value. The content stream of the recording of a Teams live event. Read-only.
            ## @param value Value to set for the recording property.
            ## @return a void
            ## 
            def recording=(value)
                @recording = value
            end
            ## 
            ## Gets the registration property value. The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.
            ## @return a meeting_registration
            ## 
            def registration
                return @registration
            end
            ## 
            ## Sets the registration property value. The registration that has been enabled for an online meeting. One online meeting can only have one registration enabled.
            ## @param value Value to set for the registration property.
            ## @return a void
            ## 
            def registration=(value)
                @registration = value
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
                writer.write_boolean_value("allowTeamworkReactions", @allow_teamwork_reactions)
                writer.write_enum_value("allowedPresenters", @allowed_presenters)
                writer.write_object_value("alternativeRecording", @alternative_recording)
                writer.write_collection_of_object_values("anonymizeIdentityForRoles", @anonymize_identity_for_roles)
                writer.write_collection_of_object_values("attendanceReports", @attendance_reports)
                writer.write_object_value("attendeeReport", @attendee_report)
                writer.write_object_value("audioConferencing", @audio_conferencing)
                writer.write_object_value("broadcastSettings", @broadcast_settings)
                writer.write_collection_of_object_values("capabilities", @capabilities)
                writer.write_object_value("chatInfo", @chat_info)
                writer.write_date_time_value("creationDateTime", @creation_date_time)
                writer.write_date_time_value("endDateTime", @end_date_time)
                writer.write_string_value("externalId", @external_id)
                writer.write_boolean_value("isBroadcast", @is_broadcast)
                writer.write_boolean_value("isEntryExitAnnounced", @is_entry_exit_announced)
                writer.write_object_value("joinInformation", @join_information)
                writer.write_object_value("joinMeetingIdSettings", @join_meeting_id_settings)
                writer.write_string_value("joinUrl", @join_url)
                writer.write_string_value("joinWebUrl", @join_web_url)
                writer.write_object_value("lobbyBypassSettings", @lobby_bypass_settings)
                writer.write_object_value("meetingAttendanceReport", @meeting_attendance_report)
                writer.write_object_value("participants", @participants)
                writer.write_boolean_value("recordAutomatically", @record_automatically)
                writer.write_object_value("recording", @recording)
                writer.write_object_value("registration", @registration)
                writer.write_enum_value("shareMeetingChatHistoryDefault", @share_meeting_chat_history_default)
                writer.write_date_time_value("startDateTime", @start_date_time)
                writer.write_string_value("subject", @subject)
                writer.write_collection_of_object_values("transcripts", @transcripts)
                writer.write_string_value("videoTeleconferenceId", @video_teleconference_id)
                writer.write_object_value("virtualAppointment", @virtual_appointment)
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
            ## @param value Value to set for the share_meeting_chat_history_default property.
            ## @return a void
            ## 
            def share_meeting_chat_history_default=(value)
                @share_meeting_chat_history_default = value
            end
            ## 
            ## Gets the startDateTime property value. The meeting start time in UTC.
            ## @return a date_time
            ## 
            def start_date_time
                return @start_date_time
            end
            ## 
            ## Sets the startDateTime property value. The meeting start time in UTC.
            ## @param value Value to set for the start_date_time property.
            ## @return a void
            ## 
            def start_date_time=(value)
                @start_date_time = value
            end
            ## 
            ## Gets the subject property value. The subject of the online meeting.
            ## @return a string
            ## 
            def subject
                return @subject
            end
            ## 
            ## Sets the subject property value. The subject of the online meeting.
            ## @param value Value to set for the subject property.
            ## @return a void
            ## 
            def subject=(value)
                @subject = value
            end
            ## 
            ## Gets the transcripts property value. The transcripts of an online meeting. Read-only.
            ## @return a call_transcript
            ## 
            def transcripts
                return @transcripts
            end
            ## 
            ## Sets the transcripts property value. The transcripts of an online meeting. Read-only.
            ## @param value Value to set for the transcripts property.
            ## @return a void
            ## 
            def transcripts=(value)
                @transcripts = value
            end
            ## 
            ## Gets the videoTeleconferenceId property value. The video teleconferencing ID. Read-only.
            ## @return a string
            ## 
            def video_teleconference_id
                return @video_teleconference_id
            end
            ## 
            ## Sets the videoTeleconferenceId property value. The video teleconferencing ID. Read-only.
            ## @param value Value to set for the video_teleconference_id property.
            ## @return a void
            ## 
            def video_teleconference_id=(value)
                @video_teleconference_id = value
            end
            ## 
            ## Gets the virtualAppointment property value. The virtualAppointment property
            ## @return a virtual_appointment
            ## 
            def virtual_appointment
                return @virtual_appointment
            end
            ## 
            ## Sets the virtualAppointment property value. The virtualAppointment property
            ## @param value Value to set for the virtual_appointment property.
            ## @return a void
            ## 
            def virtual_appointment=(value)
                @virtual_appointment = value
            end
            ## 
            ## Gets the watermarkProtection property value. Specifies whether a watermark applies for different entities.
            ## @return a watermark_protection_values
            ## 
            def watermark_protection
                return @watermark_protection
            end
            ## 
            ## Sets the watermarkProtection property value. Specifies whether a watermark applies for different entities.
            ## @param value Value to set for the watermark_protection property.
            ## @return a void
            ## 
            def watermark_protection=(value)
                @watermark_protection = value
            end
        end
    end
end
