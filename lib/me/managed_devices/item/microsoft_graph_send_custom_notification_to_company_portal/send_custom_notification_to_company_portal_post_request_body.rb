require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../me'
require_relative '../../managed_devices'
require_relative '../item'
require_relative './microsoft_graph_send_custom_notification_to_company_portal'

module MicrosoftGraphBeta::Me::ManagedDevices::Item::MicrosoftGraphSendCustomNotificationToCompanyPortal
    class SendCustomNotificationToCompanyPortalPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The notificationBody property
        @notification_body
        ## 
        # The notificationTitle property
        @notification_title
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
        ## Instantiates a new sendCustomNotificationToCompanyPortalPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                "notificationBody" => lambda {|n| @notification_body = n.get_string_value() },
                "notificationTitle" => lambda {|n| @notification_title = n.get_string_value() },
            }
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
        ## @param value Value to set for the notification_body property.
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
        ## @param value Value to set for the notification_title property.
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
            writer.write_string_value("notificationBody", @notification_body)
            writer.write_string_value("notificationTitle", @notification_title)
            writer.write_additional_data(@additional_data)
        end
    end
end
