require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcAutopilotConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Indicates the number of minutes allowed for the Autopilot application to apply the device preparation profile (DPP) configurations to the device. If the Autopilot application doesn't finish within the specified time (applicationTimeoutInMinutes), the application error is added to the statusDetail property of the cloudPC object. The supported value is an integer between 10 and 360. Required.
            @application_timeout_in_minutes
            ## 
            # The unique identifier (ID) of the Autopilot device preparation profile (DPP) that links a Windows Autopilot device preparation policy to ensure that devices are ready for users after provisioning. Required.
            @device_preparation_profile_id
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates whether the access to the device is allowed when the application of Autopilot device preparation profile (DPP) configurations fails or times out. If true, the status of the device is failed and the device is unable to access; otherwise, the status of the device is provisionedWithWarnings and the device is allowed to access. The default value is false. Required.
            @on_failure_device_access_denied
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
            ## Gets the applicationTimeoutInMinutes property value. Indicates the number of minutes allowed for the Autopilot application to apply the device preparation profile (DPP) configurations to the device. If the Autopilot application doesn't finish within the specified time (applicationTimeoutInMinutes), the application error is added to the statusDetail property of the cloudPC object. The supported value is an integer between 10 and 360. Required.
            ## @return a integer
            ## 
            def application_timeout_in_minutes
                return @application_timeout_in_minutes
            end
            ## 
            ## Sets the applicationTimeoutInMinutes property value. Indicates the number of minutes allowed for the Autopilot application to apply the device preparation profile (DPP) configurations to the device. If the Autopilot application doesn't finish within the specified time (applicationTimeoutInMinutes), the application error is added to the statusDetail property of the cloudPC object. The supported value is an integer between 10 and 360. Required.
            ## @param value Value to set for the applicationTimeoutInMinutes property.
            ## @return a void
            ## 
            def application_timeout_in_minutes=(value)
                @application_timeout_in_minutes = value
            end
            ## 
            ## Instantiates a new CloudPcAutopilotConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_autopilot_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcAutopilotConfiguration.new
            end
            ## 
            ## Gets the devicePreparationProfileId property value. The unique identifier (ID) of the Autopilot device preparation profile (DPP) that links a Windows Autopilot device preparation policy to ensure that devices are ready for users after provisioning. Required.
            ## @return a string
            ## 
            def device_preparation_profile_id
                return @device_preparation_profile_id
            end
            ## 
            ## Sets the devicePreparationProfileId property value. The unique identifier (ID) of the Autopilot device preparation profile (DPP) that links a Windows Autopilot device preparation policy to ensure that devices are ready for users after provisioning. Required.
            ## @param value Value to set for the devicePreparationProfileId property.
            ## @return a void
            ## 
            def device_preparation_profile_id=(value)
                @device_preparation_profile_id = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "applicationTimeoutInMinutes" => lambda {|n| @application_timeout_in_minutes = n.get_number_value() },
                    "devicePreparationProfileId" => lambda {|n| @device_preparation_profile_id = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "onFailureDeviceAccessDenied" => lambda {|n| @on_failure_device_access_denied = n.get_boolean_value() },
                }
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
            ## Gets the onFailureDeviceAccessDenied property value. Indicates whether the access to the device is allowed when the application of Autopilot device preparation profile (DPP) configurations fails or times out. If true, the status of the device is failed and the device is unable to access; otherwise, the status of the device is provisionedWithWarnings and the device is allowed to access. The default value is false. Required.
            ## @return a boolean
            ## 
            def on_failure_device_access_denied
                return @on_failure_device_access_denied
            end
            ## 
            ## Sets the onFailureDeviceAccessDenied property value. Indicates whether the access to the device is allowed when the application of Autopilot device preparation profile (DPP) configurations fails or times out. If true, the status of the device is failed and the device is unable to access; otherwise, the status of the device is provisionedWithWarnings and the device is allowed to access. The default value is false. Required.
            ## @param value Value to set for the onFailureDeviceAccessDenied property.
            ## @return a void
            ## 
            def on_failure_device_access_denied=(value)
                @on_failure_device_access_denied = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("applicationTimeoutInMinutes", @application_timeout_in_minutes)
                writer.write_string_value("devicePreparationProfileId", @device_preparation_profile_id)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("onFailureDeviceAccessDenied", @on_failure_device_access_denied)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
