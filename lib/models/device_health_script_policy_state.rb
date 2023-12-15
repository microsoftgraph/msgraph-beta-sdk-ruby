require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for policy run state of the device health script.
        class DeviceHealthScriptPolicyState
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A list of the assignment filter ids used for health script applicability evaluation
            @assignment_filter_ids
            ## 
            # Indicates the type of execution status of the device management script.
            @detection_state
            ## 
            # The Intune device Id
            @device_id
            ## 
            # Display name of the device
            @device_name
            ## 
            # The next timestamp of when the device health script is expected to execute
            @expected_state_update_date_time
            ## 
            # Key of the device health script policy state is a concatenation of the MT sideCar policy Id and Intune device Id
            @id
            ## 
            # The last timestamp of when the device health script executed
            @last_state_update_date_time
            ## 
            # The last time that Intune Managment Extension synced with Intune
            @last_sync_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Value of the OS Version in string
            @os_version
            ## 
            # The MT sideCar policy Id
            @policy_id
            ## 
            # Display name of the device health script
            @policy_name
            ## 
            # Error from the detection script after remediation
            @post_remediation_detection_script_error
            ## 
            # Detection script output after remediation
            @post_remediation_detection_script_output
            ## 
            # Error from the detection script before remediation
            @pre_remediation_detection_script_error
            ## 
            # Output of the detection script before remediation
            @pre_remediation_detection_script_output
            ## 
            # Error output of the remediation script
            @remediation_script_error
            ## 
            # Indicates the type of execution status of the device management script.
            @remediation_state
            ## 
            # Name of the user whom ran the device health script
            @user_name
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
            ## Gets the assignmentFilterIds property value. A list of the assignment filter ids used for health script applicability evaluation
            ## @return a string
            ## 
            def assignment_filter_ids
                return @assignment_filter_ids
            end
            ## 
            ## Sets the assignmentFilterIds property value. A list of the assignment filter ids used for health script applicability evaluation
            ## @param value Value to set for the assignmentFilterIds property.
            ## @return a void
            ## 
            def assignment_filter_ids=(value)
                @assignment_filter_ids = value
            end
            ## 
            ## Instantiates a new deviceHealthScriptPolicyState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_policy_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceHealthScriptPolicyState.new
            end
            ## 
            ## Gets the detectionState property value. Indicates the type of execution status of the device management script.
            ## @return a run_state
            ## 
            def detection_state
                return @detection_state
            end
            ## 
            ## Sets the detectionState property value. Indicates the type of execution status of the device management script.
            ## @param value Value to set for the detectionState property.
            ## @return a void
            ## 
            def detection_state=(value)
                @detection_state = value
            end
            ## 
            ## Gets the deviceId property value. The Intune device Id
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The Intune device Id
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the deviceName property value. Display name of the device
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. Display name of the device
            ## @param value Value to set for the deviceName property.
            ## @return a void
            ## 
            def device_name=(value)
                @device_name = value
            end
            ## 
            ## Gets the expectedStateUpdateDateTime property value. The next timestamp of when the device health script is expected to execute
            ## @return a date_time
            ## 
            def expected_state_update_date_time
                return @expected_state_update_date_time
            end
            ## 
            ## Sets the expectedStateUpdateDateTime property value. The next timestamp of when the device health script is expected to execute
            ## @param value Value to set for the expectedStateUpdateDateTime property.
            ## @return a void
            ## 
            def expected_state_update_date_time=(value)
                @expected_state_update_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "assignmentFilterIds" => lambda {|n| @assignment_filter_ids = n.get_collection_of_primitive_values(String) },
                    "detectionState" => lambda {|n| @detection_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "expectedStateUpdateDateTime" => lambda {|n| @expected_state_update_date_time = n.get_date_time_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "policyId" => lambda {|n| @policy_id = n.get_string_value() },
                    "policyName" => lambda {|n| @policy_name = n.get_string_value() },
                    "postRemediationDetectionScriptError" => lambda {|n| @post_remediation_detection_script_error = n.get_string_value() },
                    "postRemediationDetectionScriptOutput" => lambda {|n| @post_remediation_detection_script_output = n.get_string_value() },
                    "preRemediationDetectionScriptError" => lambda {|n| @pre_remediation_detection_script_error = n.get_string_value() },
                    "preRemediationDetectionScriptOutput" => lambda {|n| @pre_remediation_detection_script_output = n.get_string_value() },
                    "remediationScriptError" => lambda {|n| @remediation_script_error = n.get_string_value() },
                    "remediationState" => lambda {|n| @remediation_state = n.get_enum_value(MicrosoftGraphBeta::Models::RemediationState) },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. Key of the device health script policy state is a concatenation of the MT sideCar policy Id and Intune device Id
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Key of the device health script policy state is a concatenation of the MT sideCar policy Id and Intune device Id
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the lastStateUpdateDateTime property value. The last timestamp of when the device health script executed
            ## @return a date_time
            ## 
            def last_state_update_date_time
                return @last_state_update_date_time
            end
            ## 
            ## Sets the lastStateUpdateDateTime property value. The last timestamp of when the device health script executed
            ## @param value Value to set for the lastStateUpdateDateTime property.
            ## @return a void
            ## 
            def last_state_update_date_time=(value)
                @last_state_update_date_time = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. The last time that Intune Managment Extension synced with Intune
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. The last time that Intune Managment Extension synced with Intune
            ## @param value Value to set for the lastSyncDateTime property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
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
            ## Gets the osVersion property value. Value of the OS Version in string
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Value of the OS Version in string
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Gets the policyId property value. The MT sideCar policy Id
            ## @return a string
            ## 
            def policy_id
                return @policy_id
            end
            ## 
            ## Sets the policyId property value. The MT sideCar policy Id
            ## @param value Value to set for the policyId property.
            ## @return a void
            ## 
            def policy_id=(value)
                @policy_id = value
            end
            ## 
            ## Gets the policyName property value. Display name of the device health script
            ## @return a string
            ## 
            def policy_name
                return @policy_name
            end
            ## 
            ## Sets the policyName property value. Display name of the device health script
            ## @param value Value to set for the policyName property.
            ## @return a void
            ## 
            def policy_name=(value)
                @policy_name = value
            end
            ## 
            ## Gets the postRemediationDetectionScriptError property value. Error from the detection script after remediation
            ## @return a string
            ## 
            def post_remediation_detection_script_error
                return @post_remediation_detection_script_error
            end
            ## 
            ## Sets the postRemediationDetectionScriptError property value. Error from the detection script after remediation
            ## @param value Value to set for the postRemediationDetectionScriptError property.
            ## @return a void
            ## 
            def post_remediation_detection_script_error=(value)
                @post_remediation_detection_script_error = value
            end
            ## 
            ## Gets the postRemediationDetectionScriptOutput property value. Detection script output after remediation
            ## @return a string
            ## 
            def post_remediation_detection_script_output
                return @post_remediation_detection_script_output
            end
            ## 
            ## Sets the postRemediationDetectionScriptOutput property value. Detection script output after remediation
            ## @param value Value to set for the postRemediationDetectionScriptOutput property.
            ## @return a void
            ## 
            def post_remediation_detection_script_output=(value)
                @post_remediation_detection_script_output = value
            end
            ## 
            ## Gets the preRemediationDetectionScriptError property value. Error from the detection script before remediation
            ## @return a string
            ## 
            def pre_remediation_detection_script_error
                return @pre_remediation_detection_script_error
            end
            ## 
            ## Sets the preRemediationDetectionScriptError property value. Error from the detection script before remediation
            ## @param value Value to set for the preRemediationDetectionScriptError property.
            ## @return a void
            ## 
            def pre_remediation_detection_script_error=(value)
                @pre_remediation_detection_script_error = value
            end
            ## 
            ## Gets the preRemediationDetectionScriptOutput property value. Output of the detection script before remediation
            ## @return a string
            ## 
            def pre_remediation_detection_script_output
                return @pre_remediation_detection_script_output
            end
            ## 
            ## Sets the preRemediationDetectionScriptOutput property value. Output of the detection script before remediation
            ## @param value Value to set for the preRemediationDetectionScriptOutput property.
            ## @return a void
            ## 
            def pre_remediation_detection_script_output=(value)
                @pre_remediation_detection_script_output = value
            end
            ## 
            ## Gets the remediationScriptError property value. Error output of the remediation script
            ## @return a string
            ## 
            def remediation_script_error
                return @remediation_script_error
            end
            ## 
            ## Sets the remediationScriptError property value. Error output of the remediation script
            ## @param value Value to set for the remediationScriptError property.
            ## @return a void
            ## 
            def remediation_script_error=(value)
                @remediation_script_error = value
            end
            ## 
            ## Gets the remediationState property value. Indicates the type of execution status of the device management script.
            ## @return a remediation_state
            ## 
            def remediation_state
                return @remediation_state
            end
            ## 
            ## Sets the remediationState property value. Indicates the type of execution status of the device management script.
            ## @param value Value to set for the remediationState property.
            ## @return a void
            ## 
            def remediation_state=(value)
                @remediation_state = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("assignmentFilterIds", @assignment_filter_ids)
                writer.write_enum_value("detectionState", @detection_state)
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("deviceName", @device_name)
                writer.write_date_time_value("expectedStateUpdateDateTime", @expected_state_update_date_time)
                writer.write_string_value("id", @id)
                writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("policyId", @policy_id)
                writer.write_string_value("policyName", @policy_name)
                writer.write_string_value("postRemediationDetectionScriptError", @post_remediation_detection_script_error)
                writer.write_string_value("postRemediationDetectionScriptOutput", @post_remediation_detection_script_output)
                writer.write_string_value("preRemediationDetectionScriptError", @pre_remediation_detection_script_error)
                writer.write_string_value("preRemediationDetectionScriptOutput", @pre_remediation_detection_script_output)
                writer.write_string_value("remediationScriptError", @remediation_script_error)
                writer.write_enum_value("remediationState", @remediation_state)
                writer.write_string_value("userName", @user_name)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the userName property value. Name of the user whom ran the device health script
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. Name of the user whom ran the device health script
            ## @param value Value to set for the userName property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
