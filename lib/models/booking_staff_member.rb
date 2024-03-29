require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a staff member who provides services in a business.
        class BookingStaffMember < MicrosoftGraphBeta::Models::BookingPerson
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            @availability_is_affected_by_personal_calendar
            ## 
            # Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
            @color_index
            ## 
            # True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            @is_email_notification_enabled
            ## 
            # The membershipStatus property
            @membership_status
            ## 
            # The role property
            @role
            ## 
            # The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            @time_zone
            ## 
            # True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            @use_business_hours
            ## 
            # The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            @working_hours
            ## 
            ## Gets the availabilityIsAffectedByPersonalCalendar property value. True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            ## @return a boolean
            ## 
            def availability_is_affected_by_personal_calendar
                return @availability_is_affected_by_personal_calendar
            end
            ## 
            ## Sets the availabilityIsAffectedByPersonalCalendar property value. True means that if the staff member is a Microsoft 365 user, the Bookings API would verify the staff member's availability in their personal calendar in Microsoft 365, before making a booking.
            ## @param value Value to set for the availabilityIsAffectedByPersonalCalendar property.
            ## @return a void
            ## 
            def availability_is_affected_by_personal_calendar=(value)
                @availability_is_affected_by_personal_calendar = value
            end
            ## 
            ## Gets the colorIndex property value. Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
            ## @return a integer
            ## 
            def color_index
                return @color_index
            end
            ## 
            ## Sets the colorIndex property value. Identifies a color to represent the staff member. The color corresponds to the color palette in the Staff details page in the Bookings app.
            ## @param value Value to set for the colorIndex property.
            ## @return a void
            ## 
            def color_index=(value)
                @color_index = value
            end
            ## 
            ## Instantiates a new bookingStaffMember and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a booking_staff_member
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BookingStaffMember.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "availabilityIsAffectedByPersonalCalendar" => lambda {|n| @availability_is_affected_by_personal_calendar = n.get_boolean_value() },
                    "colorIndex" => lambda {|n| @color_index = n.get_number_value() },
                    "isEmailNotificationEnabled" => lambda {|n| @is_email_notification_enabled = n.get_boolean_value() },
                    "membershipStatus" => lambda {|n| @membership_status = n.get_enum_value(MicrosoftGraphBeta::Models::BookingStaffMembershipStatus) },
                    "role" => lambda {|n| @role = n.get_enum_value(MicrosoftGraphBeta::Models::BookingStaffRole) },
                    "timeZone" => lambda {|n| @time_zone = n.get_string_value() },
                    "useBusinessHours" => lambda {|n| @use_business_hours = n.get_boolean_value() },
                    "workingHours" => lambda {|n| @working_hours = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::BookingWorkHours.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the isEmailNotificationEnabled property value. True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            ## @return a boolean
            ## 
            def is_email_notification_enabled
                return @is_email_notification_enabled
            end
            ## 
            ## Sets the isEmailNotificationEnabled property value. True indicates that a staff member will be notified via email when a booking assigned to them is created or changed.
            ## @param value Value to set for the isEmailNotificationEnabled property.
            ## @return a void
            ## 
            def is_email_notification_enabled=(value)
                @is_email_notification_enabled = value
            end
            ## 
            ## Gets the membershipStatus property value. The membershipStatus property
            ## @return a booking_staff_membership_status
            ## 
            def membership_status
                return @membership_status
            end
            ## 
            ## Sets the membershipStatus property value. The membershipStatus property
            ## @param value Value to set for the membershipStatus property.
            ## @return a void
            ## 
            def membership_status=(value)
                @membership_status = value
            end
            ## 
            ## Gets the role property value. The role property
            ## @return a booking_staff_role
            ## 
            def role
                return @role
            end
            ## 
            ## Sets the role property value. The role property
            ## @param value Value to set for the role property.
            ## @return a void
            ## 
            def role=(value)
                @role = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("availabilityIsAffectedByPersonalCalendar", @availability_is_affected_by_personal_calendar)
                writer.write_number_value("colorIndex", @color_index)
                writer.write_boolean_value("isEmailNotificationEnabled", @is_email_notification_enabled)
                writer.write_enum_value("membershipStatus", @membership_status)
                writer.write_enum_value("role", @role)
                writer.write_string_value("timeZone", @time_zone)
                writer.write_boolean_value("useBusinessHours", @use_business_hours)
                writer.write_collection_of_object_values("workingHours", @working_hours)
            end
            ## 
            ## Gets the timeZone property value. The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            ## @return a string
            ## 
            def time_zone
                return @time_zone
            end
            ## 
            ## Sets the timeZone property value. The time zone of the staff member. For a list of possible values, see dateTimeTimeZone.
            ## @param value Value to set for the timeZone property.
            ## @return a void
            ## 
            def time_zone=(value)
                @time_zone = value
            end
            ## 
            ## Gets the useBusinessHours property value. True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            ## @return a boolean
            ## 
            def use_business_hours
                return @use_business_hours
            end
            ## 
            ## Sets the useBusinessHours property value. True means the staff member's availability is as specified in the businessHours property of the business. False means the availability is determined by the staff member's workingHours property setting.
            ## @param value Value to set for the useBusinessHours property.
            ## @return a void
            ## 
            def use_business_hours=(value)
                @use_business_hours = value
            end
            ## 
            ## Gets the workingHours property value. The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            ## @return a booking_work_hours
            ## 
            def working_hours
                return @working_hours
            end
            ## 
            ## Sets the workingHours property value. The range of hours each day of the week that the staff member is available for booking. By default, they are initialized to be the same as the businessHours property of the business.
            ## @param value Value to set for the workingHours property.
            ## @return a void
            ## 
            def working_hours=(value)
                @working_hours = value
            end
        end
    end
end
