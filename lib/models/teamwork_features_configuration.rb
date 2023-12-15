require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkFeaturesConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Email address to send logs and feedback.
            @email_to_send_logs_and_feedback
            ## 
            # True if auto screen shared is enabled.
            @is_auto_screen_share_enabled
            ## 
            # True if Bluetooth beaconing is enabled.
            @is_bluetooth_beaconing_enabled
            ## 
            # True if hiding meeting names is enabled.
            @is_hide_meeting_names_enabled
            ## 
            # True if sending logs and feedback is enabled.
            @is_send_logs_and_feedback_enabled
            ## 
            # The OdataType property
            @odata_type
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new teamworkFeaturesConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_features_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkFeaturesConfiguration.new
            end
            ## 
            ## Gets the emailToSendLogsAndFeedback property value. Email address to send logs and feedback.
            ## @return a string
            ## 
            def email_to_send_logs_and_feedback
                return @email_to_send_logs_and_feedback
            end
            ## 
            ## Sets the emailToSendLogsAndFeedback property value. Email address to send logs and feedback.
            ## @param value Value to set for the emailToSendLogsAndFeedback property.
            ## @return a void
            ## 
            def email_to_send_logs_and_feedback=(value)
                @email_to_send_logs_and_feedback = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "emailToSendLogsAndFeedback" => lambda {|n| @email_to_send_logs_and_feedback = n.get_string_value() },
                    "isAutoScreenShareEnabled" => lambda {|n| @is_auto_screen_share_enabled = n.get_boolean_value() },
                    "isBluetoothBeaconingEnabled" => lambda {|n| @is_bluetooth_beaconing_enabled = n.get_boolean_value() },
                    "isHideMeetingNamesEnabled" => lambda {|n| @is_hide_meeting_names_enabled = n.get_boolean_value() },
                    "isSendLogsAndFeedbackEnabled" => lambda {|n| @is_send_logs_and_feedback_enabled = n.get_boolean_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isAutoScreenShareEnabled property value. True if auto screen shared is enabled.
            ## @return a boolean
            ## 
            def is_auto_screen_share_enabled
                return @is_auto_screen_share_enabled
            end
            ## 
            ## Sets the isAutoScreenShareEnabled property value. True if auto screen shared is enabled.
            ## @param value Value to set for the isAutoScreenShareEnabled property.
            ## @return a void
            ## 
            def is_auto_screen_share_enabled=(value)
                @is_auto_screen_share_enabled = value
            end
            ## 
            ## Gets the isBluetoothBeaconingEnabled property value. True if Bluetooth beaconing is enabled.
            ## @return a boolean
            ## 
            def is_bluetooth_beaconing_enabled
                return @is_bluetooth_beaconing_enabled
            end
            ## 
            ## Sets the isBluetoothBeaconingEnabled property value. True if Bluetooth beaconing is enabled.
            ## @param value Value to set for the isBluetoothBeaconingEnabled property.
            ## @return a void
            ## 
            def is_bluetooth_beaconing_enabled=(value)
                @is_bluetooth_beaconing_enabled = value
            end
            ## 
            ## Gets the isHideMeetingNamesEnabled property value. True if hiding meeting names is enabled.
            ## @return a boolean
            ## 
            def is_hide_meeting_names_enabled
                return @is_hide_meeting_names_enabled
            end
            ## 
            ## Sets the isHideMeetingNamesEnabled property value. True if hiding meeting names is enabled.
            ## @param value Value to set for the isHideMeetingNamesEnabled property.
            ## @return a void
            ## 
            def is_hide_meeting_names_enabled=(value)
                @is_hide_meeting_names_enabled = value
            end
            ## 
            ## Gets the isSendLogsAndFeedbackEnabled property value. True if sending logs and feedback is enabled.
            ## @return a boolean
            ## 
            def is_send_logs_and_feedback_enabled
                return @is_send_logs_and_feedback_enabled
            end
            ## 
            ## Sets the isSendLogsAndFeedbackEnabled property value. True if sending logs and feedback is enabled.
            ## @param value Value to set for the isSendLogsAndFeedbackEnabled property.
            ## @return a void
            ## 
            def is_send_logs_and_feedback_enabled=(value)
                @is_send_logs_and_feedback_enabled = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("emailToSendLogsAndFeedback", @email_to_send_logs_and_feedback)
                writer.write_boolean_value("isAutoScreenShareEnabled", @is_auto_screen_share_enabled)
                writer.write_boolean_value("isBluetoothBeaconingEnabled", @is_bluetooth_beaconing_enabled)
                writer.write_boolean_value("isHideMeetingNamesEnabled", @is_hide_meeting_names_enabled)
                writer.write_boolean_value("isSendLogsAndFeedbackEnabled", @is_send_logs_and_feedback_enabled)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
