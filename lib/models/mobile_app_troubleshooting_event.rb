require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MobileAppTroubleshootingEvent < MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection property of AppLogUploadRequest.
            @app_log_collection_requests
            ## 
            # Intune application identifier.
            @application_id
            ## 
            # Device identifier created or collected by Intune.
            @device_id
            ## 
            # Intune Mobile Application Troubleshooting History Item
            @history
            ## 
            # Device identifier created or collected by Intune.
            @managed_device_identifier
            ## 
            # Identifier for the user that tried to enroll the device.
            @user_id
            ## 
            ## Gets the appLogCollectionRequests property value. The collection property of AppLogUploadRequest.
            ## @return a app_log_collection_request
            ## 
            def app_log_collection_requests
                return @app_log_collection_requests
            end
            ## 
            ## Sets the appLogCollectionRequests property value. The collection property of AppLogUploadRequest.
            ## @param value Value to set for the app_log_collection_requests property.
            ## @return a void
            ## 
            def app_log_collection_requests=(value)
                @app_log_collection_requests = value
            end
            ## 
            ## Gets the applicationId property value. Intune application identifier.
            ## @return a string
            ## 
            def application_id
                return @application_id
            end
            ## 
            ## Sets the applicationId property value. Intune application identifier.
            ## @param value Value to set for the application_id property.
            ## @return a void
            ## 
            def application_id=(value)
                @application_id = value
            end
            ## 
            ## Instantiates a new MobileAppTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MobileAppTroubleshootingEvent.new
            end
            ## 
            ## Gets the deviceId property value. Device identifier created or collected by Intune.
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. Device identifier created or collected by Intune.
            ## @param value Value to set for the device_id property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appLogCollectionRequests" => lambda {|n| @app_log_collection_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppLogCollectionRequest.create_from_discriminator_value(pn) }) },
                    "applicationId" => lambda {|n| @application_id = n.get_string_value() },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "history" => lambda {|n| @history = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppTroubleshootingHistoryItem.create_from_discriminator_value(pn) }) },
                    "managedDeviceIdentifier" => lambda {|n| @managed_device_identifier = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the history property value. Intune Mobile Application Troubleshooting History Item
            ## @return a mobile_app_troubleshooting_history_item
            ## 
            def history
                return @history
            end
            ## 
            ## Sets the history property value. Intune Mobile Application Troubleshooting History Item
            ## @param value Value to set for the history property.
            ## @return a void
            ## 
            def history=(value)
                @history = value
            end
            ## 
            ## Gets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
            ## @return a string
            ## 
            def managed_device_identifier
                return @managed_device_identifier
            end
            ## 
            ## Sets the managedDeviceIdentifier property value. Device identifier created or collected by Intune.
            ## @param value Value to set for the managed_device_identifier property.
            ## @return a void
            ## 
            def managed_device_identifier=(value)
                @managed_device_identifier = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("appLogCollectionRequests", @app_log_collection_requests)
                writer.write_string_value("applicationId", @application_id)
                writer.write_string_value("deviceId", @device_id)
                writer.write_collection_of_object_values("history", @history)
                writer.write_string_value("managedDeviceIdentifier", @managed_device_identifier)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the userId property value. Identifier for the user that tried to enroll the device.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. Identifier for the user that tried to enroll the device.
            ## @param value Value to set for the user_id property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
