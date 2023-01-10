require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties for device run state of the device management script.
    class DeviceManagementScriptDeviceState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Error code corresponding to erroneous execution of the device management script.
        @error_code
        ## 
        # Error description corresponding to erroneous execution of the device management script.
        @error_description
        ## 
        # Latest time the device management script executes.
        @last_state_update_date_time
        ## 
        # The managed devices that executes the device management script.
        @managed_device
        ## 
        # Details of execution output.
        @result_message
        ## 
        # Indicates the type of execution status of the device management script.
        @run_state
        ## 
        ## Instantiates a new deviceManagementScriptDeviceState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_script_device_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementScriptDeviceState.new
        end
        ## 
        ## Gets the errorCode property value. Error code corresponding to erroneous execution of the device management script.
        ## @return a integer
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. Error code corresponding to erroneous execution of the device management script.
        ## @param value Value to set for the errorCode property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## Gets the errorDescription property value. Error description corresponding to erroneous execution of the device management script.
        ## @return a string
        ## 
        def error_description
            return @error_description
        end
        ## 
        ## Sets the errorDescription property value. Error description corresponding to erroneous execution of the device management script.
        ## @param value Value to set for the errorDescription property.
        ## @return a void
        ## 
        def error_description=(value)
            @error_description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "errorCode" => lambda {|n| @error_code = n.get_number_value() },
                "errorDescription" => lambda {|n| @error_description = n.get_string_value() },
                "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                "managedDevice" => lambda {|n| @managed_device = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDevice.create_from_discriminator_value(pn) }) },
                "resultMessage" => lambda {|n| @result_message = n.get_string_value() },
                "runState" => lambda {|n| @run_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
            })
        end
        ## 
        ## Gets the lastStateUpdateDateTime property value. Latest time the device management script executes.
        ## @return a date_time
        ## 
        def last_state_update_date_time
            return @last_state_update_date_time
        end
        ## 
        ## Sets the lastStateUpdateDateTime property value. Latest time the device management script executes.
        ## @param value Value to set for the lastStateUpdateDateTime property.
        ## @return a void
        ## 
        def last_state_update_date_time=(value)
            @last_state_update_date_time = value
        end
        ## 
        ## Gets the managedDevice property value. The managed devices that executes the device management script.
        ## @return a managed_device
        ## 
        def managed_device
            return @managed_device
        end
        ## 
        ## Sets the managedDevice property value. The managed devices that executes the device management script.
        ## @param value Value to set for the managedDevice property.
        ## @return a void
        ## 
        def managed_device=(value)
            @managed_device = value
        end
        ## 
        ## Gets the resultMessage property value. Details of execution output.
        ## @return a string
        ## 
        def result_message
            return @result_message
        end
        ## 
        ## Sets the resultMessage property value. Details of execution output.
        ## @param value Value to set for the resultMessage property.
        ## @return a void
        ## 
        def result_message=(value)
            @result_message = value
        end
        ## 
        ## Gets the runState property value. Indicates the type of execution status of the device management script.
        ## @return a run_state
        ## 
        def run_state
            return @run_state
        end
        ## 
        ## Sets the runState property value. Indicates the type of execution status of the device management script.
        ## @param value Value to set for the runState property.
        ## @return a void
        ## 
        def run_state=(value)
            @run_state = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_number_value("errorCode", @error_code)
            writer.write_string_value("errorDescription", @error_description)
            writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
            writer.write_object_value("managedDevice", @managed_device)
            writer.write_string_value("resultMessage", @result_message)
            writer.write_enum_value("runState", @run_state)
        end
    end
end
