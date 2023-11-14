require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../../../../../me'
require_relative '../../../../../../../../../../calendar_groups'
require_relative '../../../../../../../../../item'
require_relative '../../../../../../../../calendars'
require_relative '../../../../../../../item'
require_relative '../../../../../../calendar_view'
require_relative '../../../../../item'
require_relative '../../../../instances'
require_relative '../../../item'
require_relative '../../exception_occurrences'
require_relative '../item'
require_relative './forward'

module MicrosoftGraphBeta
    module Me
        module CalendarGroups
            module Item
                module Calendars
                    module Item
                        module CalendarView
                            module Item
                                module Instances
                                    module Item
                                        module ExceptionOccurrences
                                            module Item
                                                module Forward
                                                    ## 
                                                    # Provides operations to call the forward method.
                                                    class ForwardRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                                        
                                                        ## 
                                                        ## Instantiates a new ForwardRequestBuilder and sets the default values.
                                                        ## @param path_parameters Path parameters for the request
                                                        ## @param request_adapter The request adapter to use to execute the requests.
                                                        ## @return a void
                                                        ## 
                                                        def initialize(path_parameters, request_adapter)
                                                            super(path_parameters, request_adapter, "{+baseurl}/me/calendarGroups/{calendarGroup%2Did}/calendars/{calendar%2Did}/calendarView/{event%2Did}/instances/{event%2Did1}/exceptionOccurrences/{event%2Did2}/forward")
                                                        end
                                                        ## 
                                                        ## This action allows the organizer or attendee of a meeting event to forward the meeting request to a new recipient.  If the meeting event is forwarded from an attendee's Microsoft 365 mailbox to another recipient, this action also sends a message to notify the organizer of the forwarding, and adds the recipient to the organizer's copy of the meeting event. This convenience is not available when forwarding from an Outlook.com account. This API is available in the following national cloud deployments.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a Fiber of void
                                                        ## 
                                                        def post(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = self.to_post_request_information(
                                                                body, request_configuration
                                                            )
                                                            error_mapping = Hash.new
                                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                                            return @request_adapter.send_async(request_info, nil, error_mapping)
                                                        end
                                                        ## 
                                                        ## This action allows the organizer or attendee of a meeting event to forward the meeting request to a new recipient.  If the meeting event is forwarded from an attendee's Microsoft 365 mailbox to another recipient, this action also sends a message to notify the organizer of the forwarding, and adds the recipient to the organizer's copy of the meeting event. This convenience is not available when forwarding from an Outlook.com account. This API is available in the following national cloud deployments.
                                                        ## @param body The request body
                                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                                        ## @return a request_information
                                                        ## 
                                                        def to_post_request_information(body, request_configuration=nil)
                                                            raise StandardError, 'body cannot be null' if body.nil?
                                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                                            unless request_configuration.nil?
                                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                                request_info.add_request_options(request_configuration.options)
                                                            end
                                                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                                                            request_info.url_template = @url_template
                                                            request_info.path_parameters = @path_parameters
                                                            request_info.http_method = :POST
                                                            request_info.headers.try_add('Accept', 'application/json')
                                                            return request_info
                                                        end
                                                        ## 
                                                        ## Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
                                                        ## @param raw_url The raw URL to use for the request builder.
                                                        ## @return a forward_request_builder
                                                        ## 
                                                        def with_url(raw_url)
                                                            raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                                                            return ForwardRequestBuilder.new(raw_url, @request_adapter)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
