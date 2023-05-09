require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../../models/managed_device_remote_action'
require_relative '../../device_management'
require_relative '../managed_devices'
require_relative './execute_action'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module ExecuteAction
                class ExecuteActionPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # The actionName property
                    @action_name
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The carrierUrl property
                    @carrier_url
                    ## 
                    # The deprovisionReason property
                    @deprovision_reason
                    ## 
                    # The deviceIds property
                    @device_ids
                    ## 
                    # The deviceName property
                    @device_name
                    ## 
                    # The keepEnrollmentData property
                    @keep_enrollment_data
                    ## 
                    # The keepUserData property
                    @keep_user_data
                    ## 
                    # The notificationBody property
                    @notification_body
                    ## 
                    # The notificationTitle property
                    @notification_title
                    ## 
                    # The organizationalUnitPath property
                    @organizational_unit_path
                    ## 
                    # The persistEsimDataPlan property
                    @persist_esim_data_plan
                    ## 
                    ## Gets the actionName property value. The actionName property
                    ## @return a managed_device_remote_action
                    ## 
                    def action_name
                        return @action_name
                    end
                    ## 
                    ## Sets the actionName property value. The actionName property
                    ## @param value Value to set for the action_name property.
                    ## @return a void
                    ## 
                    def action_name=(value)
                        @action_name = value
                    end
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
                    ## Gets the carrierUrl property value. The carrierUrl property
                    ## @return a string
                    ## 
                    def carrier_url
                        return @carrier_url
                    end
                    ## 
                    ## Sets the carrierUrl property value. The carrierUrl property
                    ## @param value Value to set for the carrier_url property.
                    ## @return a void
                    ## 
                    def carrier_url=(value)
                        @carrier_url = value
                    end
                    ## 
                    ## Instantiates a new executeActionPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a execute_action_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ExecuteActionPostRequestBody.new
                    end
                    ## 
                    ## Gets the deprovisionReason property value. The deprovisionReason property
                    ## @return a string
                    ## 
                    def deprovision_reason
                        return @deprovision_reason
                    end
                    ## 
                    ## Sets the deprovisionReason property value. The deprovisionReason property
                    ## @param value Value to set for the deprovision_reason property.
                    ## @return a void
                    ## 
                    def deprovision_reason=(value)
                        @deprovision_reason = value
                    end
                    ## 
                    ## Gets the deviceIds property value. The deviceIds property
                    ## @return a string
                    ## 
                    def device_ids
                        return @device_ids
                    end
                    ## 
                    ## Sets the deviceIds property value. The deviceIds property
                    ## @param value Value to set for the device_ids property.
                    ## @return a void
                    ## 
                    def device_ids=(value)
                        @device_ids = value
                    end
                    ## 
                    ## Gets the deviceName property value. The deviceName property
                    ## @return a string
                    ## 
                    def device_name
                        return @device_name
                    end
                    ## 
                    ## Sets the deviceName property value. The deviceName property
                    ## @param value Value to set for the device_name property.
                    ## @return a void
                    ## 
                    def device_name=(value)
                        @device_name = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "actionName" => lambda {|n| @action_name = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceRemoteAction) },
                            "carrierUrl" => lambda {|n| @carrier_url = n.get_string_value() },
                            "deprovisionReason" => lambda {|n| @deprovision_reason = n.get_string_value() },
                            "deviceIds" => lambda {|n| @device_ids = n.get_collection_of_primitive_values(String) },
                            "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                            "keepEnrollmentData" => lambda {|n| @keep_enrollment_data = n.get_boolean_value() },
                            "keepUserData" => lambda {|n| @keep_user_data = n.get_boolean_value() },
                            "notificationBody" => lambda {|n| @notification_body = n.get_string_value() },
                            "notificationTitle" => lambda {|n| @notification_title = n.get_string_value() },
                            "organizationalUnitPath" => lambda {|n| @organizational_unit_path = n.get_string_value() },
                            "persistEsimDataPlan" => lambda {|n| @persist_esim_data_plan = n.get_boolean_value() },
                        }
                    end
                    ## 
                    ## Gets the keepEnrollmentData property value. The keepEnrollmentData property
                    ## @return a boolean
                    ## 
                    def keep_enrollment_data
                        return @keep_enrollment_data
                    end
                    ## 
                    ## Sets the keepEnrollmentData property value. The keepEnrollmentData property
                    ## @param value Value to set for the keep_enrollment_data property.
                    ## @return a void
                    ## 
                    def keep_enrollment_data=(value)
                        @keep_enrollment_data = value
                    end
                    ## 
                    ## Gets the keepUserData property value. The keepUserData property
                    ## @return a boolean
                    ## 
                    def keep_user_data
                        return @keep_user_data
                    end
                    ## 
                    ## Sets the keepUserData property value. The keepUserData property
                    ## @param value Value to set for the keep_user_data property.
                    ## @return a void
                    ## 
                    def keep_user_data=(value)
                        @keep_user_data = value
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
                    ## Gets the organizationalUnitPath property value. The organizationalUnitPath property
                    ## @return a string
                    ## 
                    def organizational_unit_path
                        return @organizational_unit_path
                    end
                    ## 
                    ## Sets the organizationalUnitPath property value. The organizationalUnitPath property
                    ## @param value Value to set for the organizational_unit_path property.
                    ## @return a void
                    ## 
                    def organizational_unit_path=(value)
                        @organizational_unit_path = value
                    end
                    ## 
                    ## Gets the persistEsimDataPlan property value. The persistEsimDataPlan property
                    ## @return a boolean
                    ## 
                    def persist_esim_data_plan
                        return @persist_esim_data_plan
                    end
                    ## 
                    ## Sets the persistEsimDataPlan property value. The persistEsimDataPlan property
                    ## @param value Value to set for the persist_esim_data_plan property.
                    ## @return a void
                    ## 
                    def persist_esim_data_plan=(value)
                        @persist_esim_data_plan = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_enum_value("actionName", @action_name)
                        writer.write_string_value("carrierUrl", @carrier_url)
                        writer.write_string_value("deprovisionReason", @deprovision_reason)
                        writer.write_collection_of_primitive_values("deviceIds", @device_ids)
                        writer.write_string_value("deviceName", @device_name)
                        writer.write_boolean_value("keepEnrollmentData", @keep_enrollment_data)
                        writer.write_boolean_value("keepUserData", @keep_user_data)
                        writer.write_string_value("notificationBody", @notification_body)
                        writer.write_string_value("notificationTitle", @notification_title)
                        writer.write_string_value("organizationalUnitPath", @organizational_unit_path)
                        writer.write_boolean_value("persistEsimDataPlan", @persist_esim_data_plan)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
