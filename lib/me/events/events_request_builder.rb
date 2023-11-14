require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../../models/event'
require_relative '../../models/event_collection_response'
require_relative '../../models/o_data_errors_o_data_error'
require_relative '../me'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'
require_relative './events'
require_relative './item/event_item_request_builder'

module MicrosoftGraphBeta
    module Me
        module Events
            ## 
            # Provides operations to manage the events property of the microsoft.graph.user entity.
            class EventsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to count the resources in the collection.
                def count()
                    return MicrosoftGraphBeta::Me::Events::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to call the delta method.
                def delta()
                    return MicrosoftGraphBeta::Me::Events::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Provides operations to manage the events property of the microsoft.graph.user entity.
                ## @param event_id The unique identifier of event
                ## @return a event_item_request_builder
                ## 
                def by_event_id(event_id)
                    raise StandardError, 'event_id cannot be null' if event_id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["event%2Did"] = event_id
                    return MicrosoftGraphBeta::Me::Events::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Instantiates a new EventsRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/me/events{?%24top,%24skip,%24filter,%24count,%24orderby,%24select,%24expand}")
                end
                ## 
                ## Get a list of event objects from the user's default calendar orfrom a specified calendar. The list contains single instance meetings and series masters. To get expanded event instances, you can get the calendar view, orget the instances of an event. There are two scenarios where an app can get events in another user's calendar: This API is available in the following national cloud deployments.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of event_collection_response
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::EventCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Create an event in the user's default calendar or specified calendar. By default, the allowNewTimeProposals property is set to true when an event is created, which means invitees can propose a different date/time for the event. See Propose new meeting times for more information on how to propose a time, and how to receive and accept a new time proposal. You can specify the time zone for each of the start and end times of the event as part of their values, because the start and end properties are of dateTimeTimeZone type. First find the supported time zones to make sure you set only time zones that have been configured for the user's mailbox server.  When an event is sent, the server sends invitations to all the attendees. Setting the location in an event An Exchange administrator can set up a mailbox and an email address for a resource such as a meeting room, or equipmentlike a projector. Users can then invite the resource as an attendee to a meeting. On behalf of the resource, the server accepts or rejectsthe meeting request based on the free/busy schedule of the resource.If the server accepts a meeting for the resource, it creates an event for the meeting in the resource's calendar. If the meeting is rescheduled,the server automatically updates the event in the resource's calendar. Another advantage of setting up a mailbox for a resource is to control scheduling of the resource, for example, only executivesor their delegates can book a private meeting room. If you're organizing an event that involves a meeting location: Additionally, if the meeting location has been set up as a resource, or if the event involves some equipment that has been set up as a resource: This API is available in the following national cloud deployments.
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of event
                ## 
                def post(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_post_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraphBeta::Models::ODataErrorsODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraphBeta::Models::Event.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Get a list of event objects from the user's default calendar orfrom a specified calendar. The list contains single instance meetings and series masters. To get expanded event instances, you can get the calendar view, orget the instances of an event. There are two scenarios where an app can get events in another user's calendar: This API is available in the following national cloud deployments.
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
                ## Create an event in the user's default calendar or specified calendar. By default, the allowNewTimeProposals property is set to true when an event is created, which means invitees can propose a different date/time for the event. See Propose new meeting times for more information on how to propose a time, and how to receive and accept a new time proposal. You can specify the time zone for each of the start and end times of the event as part of their values, because the start and end properties are of dateTimeTimeZone type. First find the supported time zones to make sure you set only time zones that have been configured for the user's mailbox server.  When an event is sent, the server sends invitations to all the attendees. Setting the location in an event An Exchange administrator can set up a mailbox and an email address for a resource such as a meeting room, or equipmentlike a projector. Users can then invite the resource as an attendee to a meeting. On behalf of the resource, the server accepts or rejectsthe meeting request based on the free/busy schedule of the resource.If the server accepts a meeting for the resource, it creates an event for the meeting in the resource's calendar. If the meeting is rescheduled,the server automatically updates the event in the resource's calendar. Another advantage of setting up a mailbox for a resource is to control scheduling of the resource, for example, only executivesor their delegates can book a private meeting room. If you're organizing an event that involves a meeting location: Additionally, if the meeting location has been set up as a resource, or if the event involves some equipment that has been set up as a resource: This API is available in the following national cloud deployments.
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
                ## @return a events_request_builder
                ## 
                def with_url(raw_url)
                    raise StandardError, 'raw_url cannot be null' if raw_url.nil?
                    return EventsRequestBuilder.new(raw_url, @request_adapter)
                end

                ## 
                # Get a list of event objects from the user's default calendar orfrom a specified calendar. The list contains single instance meetings and series masters. To get expanded event instances, you can get the calendar view, orget the instances of an event. There are two scenarios where an app can get events in another user's calendar: This API is available in the following national cloud deployments.
                class EventsRequestBuilderGetQueryParameters
                    
                    ## 
                    # Include count of items
                    attr_accessor :count
                    ## 
                    # Expand related entities
                    attr_accessor :expand
                    ## 
                    # Filter items by property values
                    attr_accessor :filter
                    ## 
                    # Order items by property values
                    attr_accessor :orderby
                    ## 
                    # Select properties to be returned
                    attr_accessor :select
                    ## 
                    # Skip the first n items
                    attr_accessor :skip
                    ## 
                    # Show only the first n items
                    attr_accessor :top
                    ## 
                    ## Maps the query parameters names to their encoded names for the URI template parsing.
                    ## @param original_name The original query parameter name in the class.
                    ## @return a string
                    ## 
                    def get_query_parameter(original_name)
                        raise StandardError, 'original_name cannot be null' if original_name.nil?
                        case original_name
                            when "count"
                                return "%24count"
                            when "expand"
                                return "%24expand"
                            when "filter"
                                return "%24filter"
                            when "orderby"
                                return "%24orderby"
                            when "select"
                                return "%24select"
                            when "skip"
                                return "%24skip"
                            when "top"
                                return "%24top"
                            else
                                return original_name
                        end
                    end
                end
            end
        end
    end
end
