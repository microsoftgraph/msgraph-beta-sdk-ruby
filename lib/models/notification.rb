require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Notification < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Sets how long (in seconds) this notification content will stay in each platform's notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in the user's Windows Action Center.
        @display_time_to_live
        ## 
        # Sets a UTC expiration date and time on a user notification using ISO 8601 format (for example, midnight UTC on Jan 1, 2019 would look like this: '2019-01-01T00:00:00Z'). When time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days.
        @expiration_date_time
        ## 
        # The name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together.
        @group_name
        ## 
        # The payload property
        @payload
        ## 
        # Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are None, High and Low.
        @priority
        ## 
        # Represents the host name of the app to which the calling service wants to post the notification, for the given user. If targeting web endpoints (see targetPolicy.platformTypes), ensure that targetHostName is the same as the name used when creating a subscription on the client side within the application JSON property.
        @target_host_name
        ## 
        # Target policy object handles notification delivery policy for endpoint types that should be targeted (Windows, iOS, Android and WebPush) for the given user.
        @target_policy
        ## 
        ## Instantiates a new notification and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a notification
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Notification.new
        end
        ## 
        ## Gets the displayTimeToLive property value. Sets how long (in seconds) this notification content will stay in each platform's notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in the user's Windows Action Center.
        ## @return a integer
        ## 
        def display_time_to_live
            return @display_time_to_live
        end
        ## 
        ## Sets the displayTimeToLive property value. Sets how long (in seconds) this notification content will stay in each platform's notification viewer. For example, when the notification is delivered to a Windows device, the value of this property is passed on to ToastNotification.ExpirationTime, which determines how long the toast notification will stay in the user's Windows Action Center.
        ## @param value Value to set for the displayTimeToLive property.
        ## @return a void
        ## 
        def display_time_to_live=(value)
            @display_time_to_live = value
        end
        ## 
        ## Gets the expirationDateTime property value. Sets a UTC expiration date and time on a user notification using ISO 8601 format (for example, midnight UTC on Jan 1, 2019 would look like this: '2019-01-01T00:00:00Z'). When time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days.
        ## @return a date_time
        ## 
        def expiration_date_time
            return @expiration_date_time
        end
        ## 
        ## Sets the expirationDateTime property value. Sets a UTC expiration date and time on a user notification using ISO 8601 format (for example, midnight UTC on Jan 1, 2019 would look like this: '2019-01-01T00:00:00Z'). When time is up, the notification is removed from the Microsoft Graph notification feed store completely and is no longer part of notification history. Max value is 30 days.
        ## @param value Value to set for the expirationDateTime property.
        ## @return a void
        ## 
        def expiration_date_time=(value)
            @expiration_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayTimeToLive" => lambda {|n| @display_time_to_live = n.get_number_value() },
                "expirationDateTime" => lambda {|n| @expiration_date_time = n.get_date_time_value() },
                "groupName" => lambda {|n| @group_name = n.get_string_value() },
                "payload" => lambda {|n| @payload = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PayloadTypes.create_from_discriminator_value(pn) }) },
                "priority" => lambda {|n| @priority = n.get_enum_value(MicrosoftGraphBeta::Models::Priority) },
                "targetHostName" => lambda {|n| @target_host_name = n.get_string_value() },
                "targetPolicy" => lambda {|n| @target_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TargetPolicyEndpoints.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the groupName property value. The name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together.
        ## @return a string
        ## 
        def group_name
            return @group_name
        end
        ## 
        ## Sets the groupName property value. The name of the group that this notification belongs to. It is set by the developer for the purpose of grouping notifications together.
        ## @param value Value to set for the groupName property.
        ## @return a void
        ## 
        def group_name=(value)
            @group_name = value
        end
        ## 
        ## Gets the payload property value. The payload property
        ## @return a payload_types
        ## 
        def payload
            return @payload
        end
        ## 
        ## Sets the payload property value. The payload property
        ## @param value Value to set for the payload property.
        ## @return a void
        ## 
        def payload=(value)
            @payload = value
        end
        ## 
        ## Gets the priority property value. Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are None, High and Low.
        ## @return a priority
        ## 
        def priority
            return @priority
        end
        ## 
        ## Sets the priority property value. Indicates the priority of a raw user notification. Visual notifications are sent with high priority by default. Valid values are None, High and Low.
        ## @param value Value to set for the priority property.
        ## @return a void
        ## 
        def priority=(value)
            @priority = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("displayTimeToLive", @display_time_to_live)
            writer.write_date_time_value("expirationDateTime", @expiration_date_time)
            writer.write_string_value("groupName", @group_name)
            writer.write_object_value("payload", @payload)
            writer.write_enum_value("priority", @priority)
            writer.write_string_value("targetHostName", @target_host_name)
            writer.write_object_value("targetPolicy", @target_policy)
        end
        ## 
        ## Gets the targetHostName property value. Represents the host name of the app to which the calling service wants to post the notification, for the given user. If targeting web endpoints (see targetPolicy.platformTypes), ensure that targetHostName is the same as the name used when creating a subscription on the client side within the application JSON property.
        ## @return a string
        ## 
        def target_host_name
            return @target_host_name
        end
        ## 
        ## Sets the targetHostName property value. Represents the host name of the app to which the calling service wants to post the notification, for the given user. If targeting web endpoints (see targetPolicy.platformTypes), ensure that targetHostName is the same as the name used when creating a subscription on the client side within the application JSON property.
        ## @param value Value to set for the targetHostName property.
        ## @return a void
        ## 
        def target_host_name=(value)
            @target_host_name = value
        end
        ## 
        ## Gets the targetPolicy property value. Target policy object handles notification delivery policy for endpoint types that should be targeted (Windows, iOS, Android and WebPush) for the given user.
        ## @return a target_policy_endpoints
        ## 
        def target_policy
            return @target_policy
        end
        ## 
        ## Sets the targetPolicy property value. Target policy object handles notification delivery policy for endpoint types that should be targeted (Windows, iOS, Android and WebPush) for the given user.
        ## @param value Value to set for the targetPolicy property.
        ## @return a void
        ## 
        def target_policy=(value)
            @target_policy = value
        end
    end
end
