require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Windows management app health state entity.
    class WindowsManagementAppHealthState < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Name of the device on which Windows management app is installed.
        @device_name
        ## 
        # Windows 10 OS version of the device on which Windows management app is installed.
        @device_o_s_version
        ## 
        # Indicates health state of the Windows management app.
        @health_state
        ## 
        # Windows management app installed version.
        @installed_version
        ## 
        # Windows management app last check-in time.
        @last_check_in_date_time
        ## 
        ## Instantiates a new windowsManagementAppHealthState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_management_app_health_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsManagementAppHealthState.new
        end
        ## 
        ## Gets the deviceName property value. Name of the device on which Windows management app is installed.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. Name of the device on which Windows management app is installed.
        ## @param value Value to set for the device_name property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## Gets the deviceOSVersion property value. Windows 10 OS version of the device on which Windows management app is installed.
        ## @return a string
        ## 
        def device_o_s_version
            return @device_o_s_version
        end
        ## 
        ## Sets the deviceOSVersion property value. Windows 10 OS version of the device on which Windows management app is installed.
        ## @param value Value to set for the device_o_s_version property.
        ## @return a void
        ## 
        def device_o_s_version=(value)
            @device_o_s_version = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "deviceOSVersion" => lambda {|n| @device_o_s_version = n.get_string_value() },
                "healthState" => lambda {|n| @health_state = n.get_enum_value(MicrosoftGraphBeta::Models::HealthState) },
                "installedVersion" => lambda {|n| @installed_version = n.get_string_value() },
                "lastCheckInDateTime" => lambda {|n| @last_check_in_date_time = n.get_date_time_value() },
            })
        end
        ## 
        ## Gets the healthState property value. Indicates health state of the Windows management app.
        ## @return a health_state
        ## 
        def health_state
            return @health_state
        end
        ## 
        ## Sets the healthState property value. Indicates health state of the Windows management app.
        ## @param value Value to set for the health_state property.
        ## @return a void
        ## 
        def health_state=(value)
            @health_state = value
        end
        ## 
        ## Gets the installedVersion property value. Windows management app installed version.
        ## @return a string
        ## 
        def installed_version
            return @installed_version
        end
        ## 
        ## Sets the installedVersion property value. Windows management app installed version.
        ## @param value Value to set for the installed_version property.
        ## @return a void
        ## 
        def installed_version=(value)
            @installed_version = value
        end
        ## 
        ## Gets the lastCheckInDateTime property value. Windows management app last check-in time.
        ## @return a date_time
        ## 
        def last_check_in_date_time
            return @last_check_in_date_time
        end
        ## 
        ## Sets the lastCheckInDateTime property value. Windows management app last check-in time.
        ## @param value Value to set for the last_check_in_date_time property.
        ## @return a void
        ## 
        def last_check_in_date_time=(value)
            @last_check_in_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("deviceName", @device_name)
            writer.write_string_value("deviceOSVersion", @device_o_s_version)
            writer.write_enum_value("healthState", @health_state)
            writer.write_string_value("installedVersion", @installed_version)
            writer.write_date_time_value("lastCheckInDateTime", @last_check_in_date_time)
        end
    end
end
