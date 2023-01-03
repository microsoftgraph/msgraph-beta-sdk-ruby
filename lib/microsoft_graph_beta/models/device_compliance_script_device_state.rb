require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties for device run state of the device compliance script.
    class DeviceComplianceScriptDeviceState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the type of execution status of the device management script.
        @detection_state
        ## 
        # The next timestamp of when the device compliance script is expected to execute
        @expected_state_update_date_time
        ## 
        # The last timestamp of when the device compliance script executed
        @last_state_update_date_time
        ## 
        # The last time that Intune Managment Extension synced with Intune
        @last_sync_date_time
        ## 
        # The managed device on which the device compliance script executed
        @managed_device
        ## 
        # Error from the detection script
        @script_error
        ## 
        # Output of the detection script
        @script_output
        ## 
        ## Instantiates a new deviceComplianceScriptDeviceState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_compliance_script_device_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceComplianceScriptDeviceState.new
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
        ## Gets the expectedStateUpdateDateTime property value. The next timestamp of when the device compliance script is expected to execute
        ## @return a date_time
        ## 
        def expected_state_update_date_time
            return @expected_state_update_date_time
        end
        ## 
        ## Sets the expectedStateUpdateDateTime property value. The next timestamp of when the device compliance script is expected to execute
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
            return super.merge({
                "detectionState" => lambda {|n| @detection_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
                "expectedStateUpdateDateTime" => lambda {|n| @expected_state_update_date_time = n.get_date_time_value() },
                "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "managedDevice" => lambda {|n| @managed_device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                "scriptError" => lambda {|n| @script_error = n.get_string_value() },
                "scriptOutput" => lambda {|n| @script_output = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastStateUpdateDateTime property value. The last timestamp of when the device compliance script executed
        ## @return a date_time
        ## 
        def last_state_update_date_time
            return @last_state_update_date_time
        end
        ## 
        ## Sets the lastStateUpdateDateTime property value. The last timestamp of when the device compliance script executed
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
        ## Gets the managedDevice property value. The managed device on which the device compliance script executed
        ## @return a managed_device
        ## 
        def managed_device
            return @managed_device
        end
        ## 
        ## Sets the managedDevice property value. The managed device on which the device compliance script executed
        ## @param value Value to set for the managedDevice property.
        ## @return a void
        ## 
        def managed_device=(value)
            @managed_device = value
        end
        ## 
        ## Gets the scriptError property value. Error from the detection script
        ## @return a string
        ## 
        def script_error
            return @script_error
        end
        ## 
        ## Sets the scriptError property value. Error from the detection script
        ## @param value Value to set for the scriptError property.
        ## @return a void
        ## 
        def script_error=(value)
            @script_error = value
        end
        ## 
        ## Gets the scriptOutput property value. Output of the detection script
        ## @return a string
        ## 
        def script_output
            return @script_output
        end
        ## 
        ## Sets the scriptOutput property value. Output of the detection script
        ## @param value Value to set for the scriptOutput property.
        ## @return a void
        ## 
        def script_output=(value)
            @script_output = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("detectionState", @detection_state)
            writer.write_date_time_value("expectedStateUpdateDateTime", @expected_state_update_date_time)
            writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
            writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
            writer.write_object_value("managedDevice", @managed_device)
            writer.write_string_value("scriptError", @script_error)
            writer.write_string_value("scriptOutput", @script_output)
        end
    end
end
