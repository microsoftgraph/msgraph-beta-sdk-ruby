require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph_beta'
require_relative '../../../../../../../../models/event'
require_relative '../../../../../../../../models/o_data_errors_o_data_error'
require_relative '../../../../../../../me'
require_relative '../../../../../../calendar'
require_relative '../../../../../calendar_view'
require_relative '../../../../item'
require_relative '../../../instances'
require_relative '../../item'
require_relative '../exception_occurrences'
require_relative './accept/accept_request_builder'
require_relative './attachments/attachments_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './cancel/cancel_request_builder'
require_relative './decline/decline_request_builder'
require_relative './dismiss_reminder/dismiss_reminder_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './forward/forward_request_builder'
require_relative './item'
require_relative './snooze_reminder/snooze_reminder_request_builder'
require_relative './tentatively_accept/tentatively_accept_request_builder'

module MicrosoftGraphBeta
    module Me
        module Calendar
            module CalendarView
                module Item
                    module Instances
                        module Item
                            module ExceptionOccurrences
                                module Item
                                    ## 
                                    # Provides operations to manage the exceptionOccurrences property of the microsoft.graph.event entity.
                                    class EventItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to call the accept method.
                                        def accept()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Accept::AcceptRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the attachments property of the microsoft.graph.event entity.
                                        def attachments()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the calendar property of the microsoft.graph.event entity.
                                        def calendar()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the cancel method.
                                        def cancel()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the decline method.
                                        def decline()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Decline::DeclineRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the dismissReminder method.
                                        def dismiss_reminder()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::DismissReminder::DismissReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to manage the extensions property of the microsoft.graph.event entity.
                                        def extensions()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the forward method.
                                        def forward()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::Forward::ForwardRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the snoozeReminder method.
                                        def snooze_reminder()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::SnoozeReminder::SnoozeReminderRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the tentativelyAccept method.
                                        def tentatively_accept()
                                            return MicrosoftGraphBeta::Me::Calendar::CalendarView::Item::Instances::Item::ExceptionOccurrences::Item::TentativelyAccept::TentativelyAcceptRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new EventItemRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/me/calendar/calendarView/{event%2Did}/instances/{event%2Did1}/exceptionOccurrences/{event%2Did2}{?%24select,%24expand}")
                                        end
                                        ## 
                                        ## Get exceptionOccurrences from me
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of event
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Event.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Get exceptionOccurrences from me
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_get_request_information(request_configuration=nil)
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :GET
                                            request_info.headers.add('Accept', 'application/json')
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            return request_info
                                        end

                                        ## 
                                        # Get exceptionOccurrences from me
                                        class EventItemRequestBuilderGetQueryParameters
                                            
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
                end
            end
        end
    end
end
