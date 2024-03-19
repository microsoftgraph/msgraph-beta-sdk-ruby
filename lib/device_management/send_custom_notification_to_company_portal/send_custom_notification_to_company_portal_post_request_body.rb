require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../device_management'
require_relative './send_custom_notification_to_company_portal'

module MicrosoftGraphBeta
    module DeviceManagement
        module SendCustomNotificationToCompanyPortal
            class SendCustomNotificationToCompanyPortalPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The groupsToNotify property
                @groups_to_notify
                ## 
                # The notificationBody property
                @notification_body
                ## 
                # The notificationTitle property
                @notification_title
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new SendCustomNotificationToCompanyPortalPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a send_custom_notification_to_company_portal_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SendCustomNotificationToCompanyPortalPostRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "groupsToNotify" => lambda {|n| @groups_to_notify = n.get_collection_of_primitive_values(String) },
                        "notificationBody" => lambda {|n| @notification_body = n.get_string_value() },
                        "notificationTitle" => lambda {|n| @notification_title = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the groupsToNotify property value. The groupsToNotify property
                ## @return a string
                ## 
                def groups_to_notify
                    return @groups_to_notify
                end
                ## 
                ## Sets the groupsToNotify property value. The groupsToNotify property
                ## @param value Value to set for the groupsToNotify property.
                ## @return a void
                ## 
                def groups_to_notify=(value)
                    @groups_to_notify = value
                end
                ## 
                ## Gets the notificationBody property value. The notificationBody property
                ## @return a string
                ## 
                def notification_body
                    return @notification_body
                end
                ## 
                ## Sets the notificationBody property value. The notificationBody property
                ## @param value Value to set for the notificationBody property.
                ## @return a void
                ## 
                def notification_body=(value)
                    @notification_body = value
                end
                ## 
                ## Gets the notificationTitle property value. The notificationTitle property
                ## @return a string
                ## 
                def notification_title
                    return @notification_title
                end
                ## 
                ## Sets the notificationTitle property value. The notificationTitle property
                ## @param value Value to set for the notificationTitle property.
                ## @return a void
                ## 
                def notification_title=(value)
                    @notification_title = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("groupsToNotify", @groups_to_notify)
                    writer.write_string_value("notificationBody", @notification_body)
                    writer.write_string_value("notificationTitle", @notification_title)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
