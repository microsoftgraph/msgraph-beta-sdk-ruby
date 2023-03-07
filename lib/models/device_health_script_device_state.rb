require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for device run state of the device health script.
        class DeviceHealthScriptDeviceState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of the assignment filter ids used for health script applicability evaluation
            @assignment_filter_ids
            ## 
            # Indicates the type of execution status of the device management script.
            @detection_state
            ## 
            # The next timestamp of when the device health script is expected to execute
            @expected_state_update_date_time
            ## 
            # The last timestamp of when the device health script executed
            @last_state_update_date_time
            ## 
            # The last time that Intune Managment Extension synced with Intune
            @last_sync_date_time
            ## 
            # The managed device on which the device health script executed
            @managed_device
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
            ## Gets the assignmentFilterIds property value. A list of the assignment filter ids used for health script applicability evaluation
            ## @return a string
            ## 
            def assignment_filter_ids
                return @assignment_filter_ids
            end
            ## 
            ## Sets the assignmentFilterIds property value. A list of the assignment filter ids used for health script applicability evaluation
            ## @param value Value to set for the assignment_filter_ids property.
            ## @return a void
            ## 
            def assignment_filter_ids=(value)
                @assignment_filter_ids = value
            end
            ## 
            ## Instantiates a new deviceHealthScriptDeviceState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_device_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceHealthScriptDeviceState.new
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
            ## @param value Value to set for the detection_state property.
            ## @return a void
            ## 
            def detection_state=(value)
                @detection_state = value
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
            ## @param value Value to set for the expected_state_update_date_time property.
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
                return super.merge({
                    "assignmentFilterIds" => lambda {|n| @assignment_filter_ids = n.get_collection_of_primitive_values(String) },
                    "detectionState" => lambda {|n| @detection_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
                    "expectedStateUpdateDateTime" => lambda {|n| @expected_state_update_date_time = n.get_date_time_value() },
                    "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "managedDevice" => lambda {|n| @managed_device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                    "postRemediationDetectionScriptError" => lambda {|n| @post_remediation_detection_script_error = n.get_string_value() },
                    "postRemediationDetectionScriptOutput" => lambda {|n| @post_remediation_detection_script_output = n.get_string_value() },
                    "preRemediationDetectionScriptError" => lambda {|n| @pre_remediation_detection_script_error = n.get_string_value() },
                    "preRemediationDetectionScriptOutput" => lambda {|n| @pre_remediation_detection_script_output = n.get_string_value() },
                    "remediationScriptError" => lambda {|n| @remediation_script_error = n.get_string_value() },
                    "remediationState" => lambda {|n| @remediation_state = n.get_enum_value(MicrosoftGraphBeta::Models::RemediationState) },
                })
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
            ## @param value Value to set for the last_state_update_date_time property.
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
            ## @param value Value to set for the last_sync_date_time property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Gets the managedDevice property value. The managed device on which the device health script executed
            ## @return a managed_device
            ## 
            def managed_device
                return @managed_device
            end
            ## 
            ## Sets the managedDevice property value. The managed device on which the device health script executed
            ## @param value Value to set for the managed_device property.
            ## @return a void
            ## 
            def managed_device=(value)
                @managed_device = value
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
            ## @param value Value to set for the post_remediation_detection_script_error property.
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
            ## @param value Value to set for the post_remediation_detection_script_output property.
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
            ## @param value Value to set for the pre_remediation_detection_script_error property.
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
            ## @param value Value to set for the pre_remediation_detection_script_output property.
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
            ## @param value Value to set for the remediation_script_error property.
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
            ## @param value Value to set for the remediation_state property.
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
                super
                writer.write_collection_of_primitive_values("assignmentFilterIds", @assignment_filter_ids)
                writer.write_enum_value("detectionState", @detection_state)
                writer.write_date_time_value("expectedStateUpdateDateTime", @expected_state_update_date_time)
                writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_object_value("managedDevice", @managed_device)
                writer.write_string_value("postRemediationDetectionScriptError", @post_remediation_detection_script_error)
                writer.write_string_value("postRemediationDetectionScriptOutput", @post_remediation_detection_script_output)
                writer.write_string_value("preRemediationDetectionScriptError", @pre_remediation_detection_script_error)
                writer.write_string_value("preRemediationDetectionScriptOutput", @pre_remediation_detection_script_output)
                writer.write_string_value("remediationScriptError", @remediation_script_error)
                writer.write_enum_value("remediationState", @remediation_state)
            end
        end
    end
end
