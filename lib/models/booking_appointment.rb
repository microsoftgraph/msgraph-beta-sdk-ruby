require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BookingAppointment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Additional information that is sent to the customer when an appointment is confirmed.
            @additional_information
            ## 
            # The URL of the meeting to join anonymously.
            @anonymous_join_web_url
            ## 
            # The SMTP address of the bookingCustomer who is booking the appointment.
            @customer_email_address
            ## 
            # The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            @customer_id
            ## 
            # Represents location information for the bookingCustomer who is booking the appointment.
            @customer_location
            ## 
            # The customer's name.
            @customer_name
            ## 
            # Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
            @customer_notes
            ## 
            # The customer's phone number.
            @customer_phone
            ## 
            # The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            @customer_time_zone
            ## 
            # A collection of the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            @customers
            ## 
            # The length of the appointment, denoted in ISO8601 format.
            @duration
            ## 
            # The end property
            @end_escaped
            ## 
            # The current number of customers in the appointment.
            @filled_attendees_count
            ## 
            # The billed amount on the invoice.
            @invoice_amount
            ## 
            # The date, time, and time zone of the invoice for this appointment.
            @invoice_date
            ## 
            # The ID of the invoice.
            @invoice_id
            ## 
            # The invoiceStatus property
            @invoice_status
            ## 
            # The URL of the invoice in Microsoft Bookings.
            @invoice_url
            ## 
            # True indicates that the appointment will be held online. Default value is false.
            @is_location_online
            ## 
            # The URL of the online meeting for the appointment.
            @join_web_url
            ## 
            # The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            @maximum_attendees_count
            ## 
            # The onlineMeetingUrl property
            @online_meeting_url
            ## 
            # True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            @opt_out_of_customer_email
            ## 
            # The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            @post_buffer
            ## 
            # The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            @pre_buffer
            ## 
            # The regular price for an appointment for the specified bookingService.
            @price
            ## 
            # Represents the type of pricing of a booking service.
            @price_type
            ## 
            # The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            @reminders
            ## 
            # An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
            @self_service_appointment_id
            ## 
            # The ID of the bookingService associated with this appointment.
            @service_id
            ## 
            # The location where the service is delivered.
            @service_location
            ## 
            # The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            @service_name
            ## 
            # Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            @service_notes
            ## 
            # True indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            @sms_notifications_enabled
            ## 
            # The ID of each bookingStaffMember who is scheduled in this appointment.
            @staff_member_ids
            ## 
            # The start property
            @start
            ## 
            ## Gets the additionalInformation property value. Additional information that is sent to the customer when an appointment is confirmed.
            ## @return a string
            ## 
            def additional_information
                return @additional_information
            end
            ## 
            ## Sets the additionalInformation property value. Additional information that is sent to the customer when an appointment is confirmed.
            ## @param value Value to set for the additional_information property.
            ## @return a void
            ## 
            def additional_information=(value)
                @additional_information = value
            end
            ## 
            ## Gets the anonymousJoinWebUrl property value. The URL of the meeting to join anonymously.
            ## @return a string
            ## 
            def anonymous_join_web_url
                return @anonymous_join_web_url
            end
            ## 
            ## Sets the anonymousJoinWebUrl property value. The URL of the meeting to join anonymously.
            ## @param value Value to set for the anonymous_join_web_url property.
            ## @return a void
            ## 
            def anonymous_join_web_url=(value)
                @anonymous_join_web_url = value
            end
            ## 
            ## Instantiates a new BookingAppointment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a booking_appointment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingAppointment.new
            end
            ## 
            ## Gets the customerEmailAddress property value. The SMTP address of the bookingCustomer who is booking the appointment.
            ## @return a string
            ## 
            def customer_email_address
                return @customer_email_address
            end
            ## 
            ## Sets the customerEmailAddress property value. The SMTP address of the bookingCustomer who is booking the appointment.
            ## @param value Value to set for the customer_email_address property.
            ## @return a void
            ## 
            def customer_email_address=(value)
                @customer_email_address = value
            end
            ## 
            ## Gets the customerId property value. The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            ## @return a string
            ## 
            def customer_id
                return @customer_id
            end
            ## 
            ## Sets the customerId property value. The ID of the bookingCustomer for this appointment. If no ID is specified when an appointment is created, then a new bookingCustomer object is created. Once set, you should consider the customerId immutable.
            ## @param value Value to set for the customer_id property.
            ## @return a void
            ## 
            def customer_id=(value)
                @customer_id = value
            end
            ## 
            ## Gets the customerLocation property value. Represents location information for the bookingCustomer who is booking the appointment.
            ## @return a location
            ## 
            def customer_location
                return @customer_location
            end
            ## 
            ## Sets the customerLocation property value. Represents location information for the bookingCustomer who is booking the appointment.
            ## @param value Value to set for the customer_location property.
            ## @return a void
            ## 
            def customer_location=(value)
                @customer_location = value
            end
            ## 
            ## Gets the customerName property value. The customer's name.
            ## @return a string
            ## 
            def customer_name
                return @customer_name
            end
            ## 
            ## Sets the customerName property value. The customer's name.
            ## @param value Value to set for the customer_name property.
            ## @return a void
            ## 
            def customer_name=(value)
                @customer_name = value
            end
            ## 
            ## Gets the customerNotes property value. Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
            ## @return a string
            ## 
            def customer_notes
                return @customer_notes
            end
            ## 
            ## Sets the customerNotes property value. Notes from the customer associated with this appointment. You can get the value only when reading this bookingAppointment by its ID.  You can set this property only when initially creating an appointment with a new customer. After that point, the value is computed from the customer represented by customerId.
            ## @param value Value to set for the customer_notes property.
            ## @return a void
            ## 
            def customer_notes=(value)
                @customer_notes = value
            end
            ## 
            ## Gets the customerPhone property value. The customer's phone number.
            ## @return a string
            ## 
            def customer_phone
                return @customer_phone
            end
            ## 
            ## Sets the customerPhone property value. The customer's phone number.
            ## @param value Value to set for the customer_phone property.
            ## @return a void
            ## 
            def customer_phone=(value)
                @customer_phone = value
            end
            ## 
            ## Gets the customerTimeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @return a string
            ## 
            def customer_time_zone
                return @customer_time_zone
            end
            ## 
            ## Sets the customerTimeZone property value. The time zone of the customer. For a list of possible values, see dateTimeTimeZone.
            ## @param value Value to set for the customer_time_zone property.
            ## @return a void
            ## 
            def customer_time_zone=(value)
                @customer_time_zone = value
            end
            ## 
            ## Gets the customers property value. A collection of the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            ## @return a booking_customer_information_base
            ## 
            def customers
                return @customers
            end
            ## 
            ## Sets the customers property value. A collection of the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.
            ## @param value Value to set for the customers property.
            ## @return a void
            ## 
            def customers=(value)
                @customers = value
            end
            ## 
            ## Gets the duration property value. The length of the appointment, denoted in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration
                return @duration
            end
            ## 
            ## Sets the duration property value. The length of the appointment, denoted in ISO8601 format.
            ## @param value Value to set for the duration property.
            ## @return a void
            ## 
            def duration=(value)
                @duration = value
            end
            ## 
            ## Gets the end property value. The end property
            ## @return a date_time_time_zone
            ## 
            def end_escaped
                return @end_escaped
            end
            ## 
            ## Sets the end property value. The end property
            ## @param value Value to set for the end property.
            ## @return a void
            ## 
            def end_escaped=(value)
                @end_escaped = value
            end
            ## 
            ## Gets the filledAttendeesCount property value. The current number of customers in the appointment.
            ## @return a integer
            ## 
            def filled_attendees_count
                return @filled_attendees_count
            end
            ## 
            ## Sets the filledAttendeesCount property value. The current number of customers in the appointment.
            ## @param value Value to set for the filled_attendees_count property.
            ## @return a void
            ## 
            def filled_attendees_count=(value)
                @filled_attendees_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "additionalInformation" => lambda {|n| @additional_information = n.get_string_value() },
                    "anonymousJoinWebUrl" => lambda {|n| @anonymous_join_web_url = n.get_string_value() },
                    "customerEmailAddress" => lambda {|n| @customer_email_address = n.get_string_value() },
                    "customerId" => lambda {|n| @customer_id = n.get_string_value() },
                    "customerLocation" => lambda {|n| @customer_location = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Location.create_from_discriminator_value(pn) }) },
                    "customerName" => lambda {|n| @customer_name = n.get_string_value() },
                    "customerNotes" => lambda {|n| @customer_notes = n.get_string_value() },
                    "customerPhone" => lambda {|n| @customer_phone = n.get_string_value() },
                    "customerTimeZone" => lambda {|n| @customer_time_zone = n.get_string_value() },
                    "customers" => lambda {|n| @customers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BookingCustomerInformationBase.create_from_discriminator_value(pn) }) },
                    "duration" => lambda {|n| @duration = n.get_duration_value() },
                    "end" => lambda {|n| @end_escaped = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "filledAttendeesCount" => lambda {|n| @filled_attendees_count = n.get_number_value() },
                    "invoiceAmount" => lambda {|n| @invoice_amount = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "invoiceDate" => lambda {|n| @invoice_date = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                    "invoiceId" => lambda {|n| @invoice_id = n.get_string_value() },
                    "invoiceStatus" => lambda {|n| @invoice_status = n.get_enum_value(MicrosoftGraphBeta::Models::BookingInvoiceStatus) },
                    "invoiceUrl" => lambda {|n| @invoice_url = n.get_string_value() },
                    "isLocationOnline" => lambda {|n| @is_location_online = n.get_boolean_value() },
                    "joinWebUrl" => lambda {|n| @join_web_url = n.get_string_value() },
                    "maximumAttendeesCount" => lambda {|n| @maximum_attendees_count = n.get_number_value() },
                    "onlineMeetingUrl" => lambda {|n| @online_meeting_url = n.get_string_value() },
                    "optOutOfCustomerEmail" => lambda {|n| @opt_out_of_customer_email = n.get_boolean_value() },
                    "postBuffer" => lambda {|n| @post_buffer = n.get_duration_value() },
                    "preBuffer" => lambda {|n| @pre_buffer = n.get_duration_value() },
                    "price" => lambda {|n| @price = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "priceType" => lambda {|n| @price_type = n.get_enum_value(MicrosoftGraphBeta::Models::BookingPriceType) },
                    "reminders" => lambda {|n| @reminders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BookingReminder.create_from_discriminator_value(pn) }) },
                    "selfServiceAppointmentId" => lambda {|n| @self_service_appointment_id = n.get_string_value() },
                    "serviceId" => lambda {|n| @service_id = n.get_string_value() },
                    "serviceLocation" => lambda {|n| @service_location = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Location.create_from_discriminator_value(pn) }) },
                    "serviceName" => lambda {|n| @service_name = n.get_string_value() },
                    "serviceNotes" => lambda {|n| @service_notes = n.get_string_value() },
                    "smsNotificationsEnabled" => lambda {|n| @sms_notifications_enabled = n.get_boolean_value() },
                    "staffMemberIds" => lambda {|n| @staff_member_ids = n.get_collection_of_primitive_values(String) },
                    "start" => lambda {|n| @start = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DateTimeTimeZone.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the invoiceAmount property value. The billed amount on the invoice.
            ## @return a double
            ## 
            def invoice_amount
                return @invoice_amount
            end
            ## 
            ## Sets the invoiceAmount property value. The billed amount on the invoice.
            ## @param value Value to set for the invoice_amount property.
            ## @return a void
            ## 
            def invoice_amount=(value)
                @invoice_amount = value
            end
            ## 
            ## Gets the invoiceDate property value. The date, time, and time zone of the invoice for this appointment.
            ## @return a date_time_time_zone
            ## 
            def invoice_date
                return @invoice_date
            end
            ## 
            ## Sets the invoiceDate property value. The date, time, and time zone of the invoice for this appointment.
            ## @param value Value to set for the invoice_date property.
            ## @return a void
            ## 
            def invoice_date=(value)
                @invoice_date = value
            end
            ## 
            ## Gets the invoiceId property value. The ID of the invoice.
            ## @return a string
            ## 
            def invoice_id
                return @invoice_id
            end
            ## 
            ## Sets the invoiceId property value. The ID of the invoice.
            ## @param value Value to set for the invoice_id property.
            ## @return a void
            ## 
            def invoice_id=(value)
                @invoice_id = value
            end
            ## 
            ## Gets the invoiceStatus property value. The invoiceStatus property
            ## @return a booking_invoice_status
            ## 
            def invoice_status
                return @invoice_status
            end
            ## 
            ## Sets the invoiceStatus property value. The invoiceStatus property
            ## @param value Value to set for the invoice_status property.
            ## @return a void
            ## 
            def invoice_status=(value)
                @invoice_status = value
            end
            ## 
            ## Gets the invoiceUrl property value. The URL of the invoice in Microsoft Bookings.
            ## @return a string
            ## 
            def invoice_url
                return @invoice_url
            end
            ## 
            ## Sets the invoiceUrl property value. The URL of the invoice in Microsoft Bookings.
            ## @param value Value to set for the invoice_url property.
            ## @return a void
            ## 
            def invoice_url=(value)
                @invoice_url = value
            end
            ## 
            ## Gets the isLocationOnline property value. True indicates that the appointment will be held online. Default value is false.
            ## @return a boolean
            ## 
            def is_location_online
                return @is_location_online
            end
            ## 
            ## Sets the isLocationOnline property value. True indicates that the appointment will be held online. Default value is false.
            ## @param value Value to set for the is_location_online property.
            ## @return a void
            ## 
            def is_location_online=(value)
                @is_location_online = value
            end
            ## 
            ## Gets the joinWebUrl property value. The URL of the online meeting for the appointment.
            ## @return a string
            ## 
            def join_web_url
                return @join_web_url
            end
            ## 
            ## Sets the joinWebUrl property value. The URL of the online meeting for the appointment.
            ## @param value Value to set for the join_web_url property.
            ## @return a void
            ## 
            def join_web_url=(value)
                @join_web_url = value
            end
            ## 
            ## Gets the maximumAttendeesCount property value. The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @return a integer
            ## 
            def maximum_attendees_count
                return @maximum_attendees_count
            end
            ## 
            ## Sets the maximumAttendeesCount property value. The maximum number of customers allowed in an appointment. If maximumAttendeesCount of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the Create bookingCustomer operation.
            ## @param value Value to set for the maximum_attendees_count property.
            ## @return a void
            ## 
            def maximum_attendees_count=(value)
                @maximum_attendees_count = value
            end
            ## 
            ## Gets the onlineMeetingUrl property value. The onlineMeetingUrl property
            ## @return a string
            ## 
            def online_meeting_url
                return @online_meeting_url
            end
            ## 
            ## Sets the onlineMeetingUrl property value. The onlineMeetingUrl property
            ## @param value Value to set for the online_meeting_url property.
            ## @return a void
            ## 
            def online_meeting_url=(value)
                @online_meeting_url = value
            end
            ## 
            ## Gets the optOutOfCustomerEmail property value. True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            ## @return a boolean
            ## 
            def opt_out_of_customer_email
                return @opt_out_of_customer_email
            end
            ## 
            ## Sets the optOutOfCustomerEmail property value. True indicates that the bookingCustomer for this appointment does not wish to receive a confirmation for this appointment.
            ## @param value Value to set for the opt_out_of_customer_email property.
            ## @return a void
            ## 
            def opt_out_of_customer_email=(value)
                @opt_out_of_customer_email = value
            end
            ## 
            ## Gets the postBuffer property value. The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def post_buffer
                return @post_buffer
            end
            ## 
            ## Sets the postBuffer property value. The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in ISO8601 format.
            ## @param value Value to set for the post_buffer property.
            ## @return a void
            ## 
            def post_buffer=(value)
                @post_buffer = value
            end
            ## 
            ## Gets the preBuffer property value. The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def pre_buffer
                return @pre_buffer
            end
            ## 
            ## Sets the preBuffer property value. The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in ISO8601 format.
            ## @param value Value to set for the pre_buffer property.
            ## @return a void
            ## 
            def pre_buffer=(value)
                @pre_buffer = value
            end
            ## 
            ## Gets the price property value. The regular price for an appointment for the specified bookingService.
            ## @return a double
            ## 
            def price
                return @price
            end
            ## 
            ## Sets the price property value. The regular price for an appointment for the specified bookingService.
            ## @param value Value to set for the price property.
            ## @return a void
            ## 
            def price=(value)
                @price = value
            end
            ## 
            ## Gets the priceType property value. Represents the type of pricing of a booking service.
            ## @return a booking_price_type
            ## 
            def price_type
                return @price_type
            end
            ## 
            ## Sets the priceType property value. Represents the type of pricing of a booking service.
            ## @param value Value to set for the price_type property.
            ## @return a void
            ## 
            def price_type=(value)
                @price_type = value
            end
            ## 
            ## Gets the reminders property value. The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @return a booking_reminder
            ## 
            def reminders
                return @reminders
            end
            ## 
            ## Sets the reminders property value. The collection of customer reminders sent for this appointment. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @param value Value to set for the reminders property.
            ## @return a void
            ## 
            def reminders=(value)
                @reminders = value
            end
            ## 
            ## Gets the selfServiceAppointmentId property value. An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
            ## @return a string
            ## 
            def self_service_appointment_id
                return @self_service_appointment_id
            end
            ## 
            ## Sets the selfServiceAppointmentId property value. An additional tracking ID for the appointment, if the appointment has been created directly by the customer on the scheduling page, as opposed to by a staff member on the behalf of the customer.
            ## @param value Value to set for the self_service_appointment_id property.
            ## @return a void
            ## 
            def self_service_appointment_id=(value)
                @self_service_appointment_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("additionalInformation", @additional_information)
                writer.write_string_value("anonymousJoinWebUrl", @anonymous_join_web_url)
                writer.write_string_value("customerEmailAddress", @customer_email_address)
                writer.write_string_value("customerId", @customer_id)
                writer.write_object_value("customerLocation", @customer_location)
                writer.write_string_value("customerName", @customer_name)
                writer.write_string_value("customerNotes", @customer_notes)
                writer.write_string_value("customerPhone", @customer_phone)
                writer.write_string_value("customerTimeZone", @customer_time_zone)
                writer.write_collection_of_object_values("customers", @customers)
                writer.write_object_value("end", @end_escaped)
                writer.write_object_value("invoiceAmount", @invoice_amount)
                writer.write_object_value("invoiceDate", @invoice_date)
                writer.write_string_value("invoiceId", @invoice_id)
                writer.write_enum_value("invoiceStatus", @invoice_status)
                writer.write_string_value("invoiceUrl", @invoice_url)
                writer.write_boolean_value("isLocationOnline", @is_location_online)
                writer.write_string_value("joinWebUrl", @join_web_url)
                writer.write_number_value("maximumAttendeesCount", @maximum_attendees_count)
                writer.write_string_value("onlineMeetingUrl", @online_meeting_url)
                writer.write_boolean_value("optOutOfCustomerEmail", @opt_out_of_customer_email)
                writer.write_duration_value("postBuffer", @post_buffer)
                writer.write_duration_value("preBuffer", @pre_buffer)
                writer.write_object_value("price", @price)
                writer.write_enum_value("priceType", @price_type)
                writer.write_collection_of_object_values("reminders", @reminders)
                writer.write_string_value("selfServiceAppointmentId", @self_service_appointment_id)
                writer.write_string_value("serviceId", @service_id)
                writer.write_object_value("serviceLocation", @service_location)
                writer.write_string_value("serviceName", @service_name)
                writer.write_string_value("serviceNotes", @service_notes)
                writer.write_boolean_value("smsNotificationsEnabled", @sms_notifications_enabled)
                writer.write_collection_of_primitive_values("staffMemberIds", @staff_member_ids)
                writer.write_object_value("start", @start)
            end
            ## 
            ## Gets the serviceId property value. The ID of the bookingService associated with this appointment.
            ## @return a string
            ## 
            def service_id
                return @service_id
            end
            ## 
            ## Sets the serviceId property value. The ID of the bookingService associated with this appointment.
            ## @param value Value to set for the service_id property.
            ## @return a void
            ## 
            def service_id=(value)
                @service_id = value
            end
            ## 
            ## Gets the serviceLocation property value. The location where the service is delivered.
            ## @return a location
            ## 
            def service_location
                return @service_location
            end
            ## 
            ## Sets the serviceLocation property value. The location where the service is delivered.
            ## @param value Value to set for the service_location property.
            ## @return a void
            ## 
            def service_location=(value)
                @service_location = value
            end
            ## 
            ## Gets the serviceName property value. The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            ## @return a string
            ## 
            def service_name
                return @service_name
            end
            ## 
            ## Sets the serviceName property value. The name of the bookingService associated with this appointment.This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the serviceId property.
            ## @param value Value to set for the service_name property.
            ## @return a void
            ## 
            def service_name=(value)
                @service_name = value
            end
            ## 
            ## Gets the serviceNotes property value. Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @return a string
            ## 
            def service_notes
                return @service_notes
            end
            ## 
            ## Sets the serviceNotes property value. Notes from a bookingStaffMember. The value of this property is available only when reading this bookingAppointment by its ID.
            ## @param value Value to set for the service_notes property.
            ## @return a void
            ## 
            def service_notes=(value)
                @service_notes = value
            end
            ## 
            ## Gets the smsNotificationsEnabled property value. True indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            ## @return a boolean
            ## 
            def sms_notifications_enabled
                return @sms_notifications_enabled
            end
            ## 
            ## Sets the smsNotificationsEnabled property value. True indicates SMS notifications will be sent to the customers for the appointment. Default value is false.
            ## @param value Value to set for the sms_notifications_enabled property.
            ## @return a void
            ## 
            def sms_notifications_enabled=(value)
                @sms_notifications_enabled = value
            end
            ## 
            ## Gets the staffMemberIds property value. The ID of each bookingStaffMember who is scheduled in this appointment.
            ## @return a string
            ## 
            def staff_member_ids
                return @staff_member_ids
            end
            ## 
            ## Sets the staffMemberIds property value. The ID of each bookingStaffMember who is scheduled in this appointment.
            ## @param value Value to set for the staff_member_ids property.
            ## @return a void
            ## 
            def staff_member_ids=(value)
                @staff_member_ids = value
            end
            ## 
            ## Gets the start property value. The start property
            ## @return a date_time_time_zone
            ## 
            def start
                return @start
            end
            ## 
            ## Sets the start property value. The start property
            ## @param value Value to set for the start property.
            ## @return a void
            ## 
            def start=(value)
                @start = value
            end
        end
    end
end
