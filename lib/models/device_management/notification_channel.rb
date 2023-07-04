require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './device_management'

module MicrosoftGraphBeta
    module Models
        module DeviceManagement
            class NotificationChannel
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The type of the notification channel. The possible values are: portal, email, phoneCall, sms, unknownFutureValue.
                @notification_channel_type
                ## 
                # Information about the notification receivers, such as locale and contact information. For example, en-us for locale and serena.davis@contoso.com for contact information.
                @notification_receivers
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The contact information about the notification receivers, such as email addresses. For portal notifications, receivers can be left blank. For email notifications, receivers consists of email addresses such as serena.davis@contoso.com.
                @receivers
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
                ## Instantiates a new NotificationChannel and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a notification_channel
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return NotificationChannel.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "notificationChannelType" => lambda {|n| @notification_channel_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagement::NotificationChannelType) },
                        "notificationReceivers" => lambda {|n| @notification_receivers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagement::NotificationReceiver.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "receivers" => lambda {|n| @receivers = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the notificationChannelType property value. The type of the notification channel. The possible values are: portal, email, phoneCall, sms, unknownFutureValue.
                ## @return a notification_channel_type
                ## 
                def notification_channel_type
                    return @notification_channel_type
                end
                ## 
                ## Sets the notificationChannelType property value. The type of the notification channel. The possible values are: portal, email, phoneCall, sms, unknownFutureValue.
                ## @param value Value to set for the notification_channel_type property.
                ## @return a void
                ## 
                def notification_channel_type=(value)
                    @notification_channel_type = value
                end
                ## 
                ## Gets the notificationReceivers property value. Information about the notification receivers, such as locale and contact information. For example, en-us for locale and serena.davis@contoso.com for contact information.
                ## @return a notification_receiver
                ## 
                def notification_receivers
                    return @notification_receivers
                end
                ## 
                ## Sets the notificationReceivers property value. Information about the notification receivers, such as locale and contact information. For example, en-us for locale and serena.davis@contoso.com for contact information.
                ## @param value Value to set for the notification_receivers property.
                ## @return a void
                ## 
                def notification_receivers=(value)
                    @notification_receivers = value
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
                ## Gets the receivers property value. The contact information about the notification receivers, such as email addresses. For portal notifications, receivers can be left blank. For email notifications, receivers consists of email addresses such as serena.davis@contoso.com.
                ## @return a string
                ## 
                def receivers
                    return @receivers
                end
                ## 
                ## Sets the receivers property value. The contact information about the notification receivers, such as email addresses. For portal notifications, receivers can be left blank. For email notifications, receivers consists of email addresses such as serena.davis@contoso.com.
                ## @param value Value to set for the receivers property.
                ## @return a void
                ## 
                def receivers=(value)
                    @receivers = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("notificationChannelType", @notification_channel_type)
                    writer.write_collection_of_object_values("notificationReceivers", @notification_receivers)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_collection_of_primitive_values("receivers", @receivers)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
