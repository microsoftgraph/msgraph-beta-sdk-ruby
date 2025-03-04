require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for device run state of the hardware configuration
        class HardwareConfigurationDeviceState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of identifier strings of different assignment filters applied
            @assignment_filter_ids
            ## 
            # Error from the hardware configuration execution
            @configuration_error
            ## 
            # Output of the hardware configuration execution
            @configuration_output
            ## 
            # Indicates the type of execution status of the device management script.
            @configuration_state
            ## 
            # The name of the device
            @device_name
            ## 
            # The Policy internal version
            @internal_version
            ## 
            # The last timestamp of when the hardware configuration executed
            @last_state_update_date_time
            ## 
            # Operating system version of the device (E.g. 10.0.19042.1165, 10.0.19042.1288 etc.)
            @os_version
            ## 
            # User Principal Name (UPN).
            @upn
            ## 
            # The unique identifier of the Entra user associated with the device for which policy is applied. Read-Only.
            @user_id
            ## 
            ## Gets the assignmentFilterIds property value. A list of identifier strings of different assignment filters applied
            ## @return a string
            ## 
            def assignment_filter_ids
                return @assignment_filter_ids
            end
            ## 
            ## Sets the assignmentFilterIds property value. A list of identifier strings of different assignment filters applied
            ## @param value Value to set for the assignmentFilterIds property.
            ## @return a void
            ## 
            def assignment_filter_ids=(value)
                @assignment_filter_ids = value
            end
            ## 
            ## Gets the configurationError property value. Error from the hardware configuration execution
            ## @return a string
            ## 
            def configuration_error
                return @configuration_error
            end
            ## 
            ## Sets the configurationError property value. Error from the hardware configuration execution
            ## @param value Value to set for the configurationError property.
            ## @return a void
            ## 
            def configuration_error=(value)
                @configuration_error = value
            end
            ## 
            ## Gets the configurationOutput property value. Output of the hardware configuration execution
            ## @return a string
            ## 
            def configuration_output
                return @configuration_output
            end
            ## 
            ## Sets the configurationOutput property value. Output of the hardware configuration execution
            ## @param value Value to set for the configurationOutput property.
            ## @return a void
            ## 
            def configuration_output=(value)
                @configuration_output = value
            end
            ## 
            ## Gets the configurationState property value. Indicates the type of execution status of the device management script.
            ## @return a run_state
            ## 
            def configuration_state
                return @configuration_state
            end
            ## 
            ## Sets the configurationState property value. Indicates the type of execution status of the device management script.
            ## @param value Value to set for the configurationState property.
            ## @return a void
            ## 
            def configuration_state=(value)
                @configuration_state = value
            end
            ## 
            ## Instantiates a new HardwareConfigurationDeviceState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_configuration_device_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareConfigurationDeviceState.new
            end
            ## 
            ## Gets the deviceName property value. The name of the device
            ## @return a string
            ## 
            def device_name
                return @device_name
            end
            ## 
            ## Sets the deviceName property value. The name of the device
            ## @param value Value to set for the deviceName property.
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
                return super.merge({
                    "assignmentFilterIds" => lambda {|n| @assignment_filter_ids = n.get_string_value() },
                    "configurationError" => lambda {|n| @configuration_error = n.get_string_value() },
                    "configurationOutput" => lambda {|n| @configuration_output = n.get_string_value() },
                    "configurationState" => lambda {|n| @configuration_state = n.get_enum_value(MicrosoftGraphBeta::Models::RunState) },
                    "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                    "internalVersion" => lambda {|n| @internal_version = n.get_number_value() },
                    "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                    "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                    "userId" => lambda {|n| @user_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the internalVersion property value. The Policy internal version
            ## @return a integer
            ## 
            def internal_version
                return @internal_version
            end
            ## 
            ## Sets the internalVersion property value. The Policy internal version
            ## @param value Value to set for the internalVersion property.
            ## @return a void
            ## 
            def internal_version=(value)
                @internal_version = value
            end
            ## 
            ## Gets the lastStateUpdateDateTime property value. The last timestamp of when the hardware configuration executed
            ## @return a date_time
            ## 
            def last_state_update_date_time
                return @last_state_update_date_time
            end
            ## 
            ## Sets the lastStateUpdateDateTime property value. The last timestamp of when the hardware configuration executed
            ## @param value Value to set for the lastStateUpdateDateTime property.
            ## @return a void
            ## 
            def last_state_update_date_time=(value)
                @last_state_update_date_time = value
            end
            ## 
            ## Gets the osVersion property value. Operating system version of the device (E.g. 10.0.19042.1165, 10.0.19042.1288 etc.)
            ## @return a string
            ## 
            def os_version
                return @os_version
            end
            ## 
            ## Sets the osVersion property value. Operating system version of the device (E.g. 10.0.19042.1165, 10.0.19042.1288 etc.)
            ## @param value Value to set for the osVersion property.
            ## @return a void
            ## 
            def os_version=(value)
                @os_version = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assignmentFilterIds", @assignment_filter_ids)
                writer.write_string_value("configurationError", @configuration_error)
                writer.write_string_value("configurationOutput", @configuration_output)
                writer.write_enum_value("configurationState", @configuration_state)
                writer.write_string_value("deviceName", @device_name)
                writer.write_number_value("internalVersion", @internal_version)
                writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
                writer.write_string_value("osVersion", @os_version)
                writer.write_string_value("upn", @upn)
                writer.write_string_value("userId", @user_id)
            end
            ## 
            ## Gets the upn property value. User Principal Name (UPN).
            ## @return a string
            ## 
            def upn
                return @upn
            end
            ## 
            ## Sets the upn property value. User Principal Name (UPN).
            ## @param value Value to set for the upn property.
            ## @return a void
            ## 
            def upn=(value)
                @upn = value
            end
            ## 
            ## Gets the userId property value. The unique identifier of the Entra user associated with the device for which policy is applied. Read-Only.
            ## @return a string
            ## 
            def user_id
                return @user_id
            end
            ## 
            ## Sets the userId property value. The unique identifier of the Entra user associated with the device for which policy is applied. Read-Only.
            ## @param value Value to set for the userId property.
            ## @return a void
            ## 
            def user_id=(value)
                @user_id = value
            end
        end
    end
end
