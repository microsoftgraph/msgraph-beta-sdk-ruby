require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/online_meeting'
require_relative '../../../models/o_data_errors_o_data_error'
require_relative '../../me'
require_relative '../online_meetings'
require_relative './alternative_recording/alternative_recording_request_builder'
require_relative './attendance_reports/attendance_reports_request_builder'
require_relative './attendee_report/attendee_report_request_builder'
require_relative './broadcast_recording/broadcast_recording_request_builder'
require_relative './get_virtual_appointment_join_web_url/get_virtual_appointment_join_web_url_request_builder'
require_relative './item'
require_relative './meeting_attendance_report/meeting_attendance_report_request_builder'
require_relative './recording/recording_request_builder'
require_relative './recordings/recordings_request_builder'
require_relative './registration/registration_request_builder'
require_relative './transcripts/transcripts_request_builder'

module MicrosoftGraphBeta
    module Me
        module OnlineMeetings
            module Item
                ## 
                # Provides operations to manage the onlineMeetings property of the microsoft.graph.user entity.
                class OnlineMeetingItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the media for the user entity.
                    def alternative_recording()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::AlternativeRecording::AlternativeRecordingRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the attendanceReports property of the microsoft.graph.onlineMeeting entity.
                    def attendance_reports()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::AttendanceReports::AttendanceReportsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the media for the user entity.
                    def attendee_report()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::AttendeeReport::AttendeeReportRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the media for the user entity.
                    def broadcast_recording()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::BroadcastRecording::BroadcastRecordingRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the getVirtualAppointmentJoinWebUrl method.
                    def get_virtual_appointment_join_web_url()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::GetVirtualAppointmentJoinWebUrl::GetVirtualAppointmentJoinWebUrlRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the meetingAttendanceReport property of the microsoft.graph.onlineMeeting entity.
                    def meeting_attendance_report()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::MeetingAttendanceReport::MeetingAttendanceReportRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the media for the user entity.
                    def recording()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::Recording::RecordingRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the recordings property of the microsoft.graph.onlineMeeting entity.
                    def recordings()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::Recordings::RecordingsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the registration property of the microsoft.graph.onlineMeeting entity.
                    def registration()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::Registration::RegistrationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the transcripts property of the microsoft.graph.onlineMeeting entity.
                    def transcripts()
                        return MicrosoftGraphBeta::Me::OnlineMeetings::Item::Transcripts::TranscriptsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new OnlineMeetingItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/me/onlineMeetings/{onlineMeeting%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete an onlineMeeting object. This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Information about a meeting, including the URL used to join a meeting, the attendees' list, and the description.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of online_meeting
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OnlineMeeting.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Update the properties of the specified onlineMeeting object. Please see Request body section for the list of properties that support updating. This API is available in the following national cloud deployments.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of online_meeting
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::OnlineMeeting.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete an onlineMeeting object. This API is available in the following national cloud deployments.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        return request_info
                    end
                    ## 
                    ## Information about a meeting, including the URL used to join a meeting, the attendees' list, and the description.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Update the properties of the specified onlineMeeting object. Please see Request body section for the list of properties that support updating. This API is available in the following national cloud deployments.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.try_add('Accept', 'application/json')
                        return request_info
                    end
                    ## 
                    ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                    ## @param raw_url The raw URL to use for the request builder.
                    ## @return a online_meeting_item_request_builder
                    ## 
                    def with_url(raw_url)
                        raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                        return OnlineMeetingItemRequestBuilder.new(raw_url, @request_adapter)
                    end

                    ## 
                    # Information about a meeting, including the URL used to join a meeting, the attendees' list, and the description.
                    class OnlineMeetingItemRequestBuilderGetQueryParameters
                        
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param original_name The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "expand"
                                    return "%24expand"
                                when "select"
                                    return "%24select"
                                else
                                    return original_name
                            end
                        end
                    end
                end
            end
        end
    end
end
