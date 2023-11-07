require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamworkSystemConfiguration
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The date and time configurations for a device.
            @date_time_configuration
            ## 
            # The default password for the device. Write-Only.
            @default_password
            ## 
            # The device lock timeout in seconds.
            @device_lock_timeout
            ## 
            # True if the device lock is enabled.
            @is_device_lock_enabled
            ## 
            # True if logging is enabled.
            @is_logging_enabled
            ## 
            # True if power saving is enabled.
            @is_power_saving_enabled
            ## 
            # True if screen capture is enabled.
            @is_screen_capture_enabled
            ## 
            # True if silent mode is enabled.
            @is_silent_mode_enabled
            ## 
            # The language option for the device.
            @language
            ## 
            # The pin that unlocks the device. Write-Only.
            @lock_pin
            ## 
            # The logging level for the device.
            @logging_level
            ## 
            # The network configuration for the device.
            @network_configuration
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new teamworkSystemConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teamwork_system_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamworkSystemConfiguration.new
            end
            ## 
            ## Gets the dateTimeConfiguration property value. The date and time configurations for a device.
            ## @return a teamwork_date_time_configuration
            ## 
            def date_time_configuration
                return @date_time_configuration
            end
            ## 
            ## Sets the dateTimeConfiguration property value. The date and time configurations for a device.
            ## @param value Value to set for the dateTimeConfiguration property.
            ## @return a void
            ## 
            def date_time_configuration=(value)
                @date_time_configuration = value
            end
            ## 
            ## Gets the defaultPassword property value. The default password for the device. Write-Only.
            ## @return a string
            ## 
            def default_password
                return @default_password
            end
            ## 
            ## Sets the defaultPassword property value. The default password for the device. Write-Only.
            ## @param value Value to set for the defaultPassword property.
            ## @return a void
            ## 
            def default_password=(value)
                @default_password = value
            end
            ## 
            ## Gets the deviceLockTimeout property value. The device lock timeout in seconds.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def device_lock_timeout
                return @device_lock_timeout
            end
            ## 
            ## Sets the deviceLockTimeout property value. The device lock timeout in seconds.
            ## @param value Value to set for the deviceLockTimeout property.
            ## @return a void
            ## 
            def device_lock_timeout=(value)
                @device_lock_timeout = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "dateTimeConfiguration" => lambda {|n| @date_time_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkDateTimeConfiguration.create_from_discriminator_value(pn) }) },
                    "defaultPassword" => lambda {|n| @default_password = n.get_string_value() },
                    "deviceLockTimeout" => lambda {|n| @device_lock_timeout = n.get_duration_value() },
                    "isDeviceLockEnabled" => lambda {|n| @is_device_lock_enabled = n.get_boolean_value() },
                    "isLoggingEnabled" => lambda {|n| @is_logging_enabled = n.get_boolean_value() },
                    "isPowerSavingEnabled" => lambda {|n| @is_power_saving_enabled = n.get_boolean_value() },
                    "isScreenCaptureEnabled" => lambda {|n| @is_screen_capture_enabled = n.get_boolean_value() },
                    "isSilentModeEnabled" => lambda {|n| @is_silent_mode_enabled = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "lockPin" => lambda {|n| @lock_pin = n.get_string_value() },
                    "loggingLevel" => lambda {|n| @logging_level = n.get_string_value() },
                    "networkConfiguration" => lambda {|n| @network_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkNetworkConfiguration.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the isDeviceLockEnabled property value. True if the device lock is enabled.
            ## @return a boolean
            ## 
            def is_device_lock_enabled
                return @is_device_lock_enabled
            end
            ## 
            ## Sets the isDeviceLockEnabled property value. True if the device lock is enabled.
            ## @param value Value to set for the isDeviceLockEnabled property.
            ## @return a void
            ## 
            def is_device_lock_enabled=(value)
                @is_device_lock_enabled = value
            end
            ## 
            ## Gets the isLoggingEnabled property value. True if logging is enabled.
            ## @return a boolean
            ## 
            def is_logging_enabled
                return @is_logging_enabled
            end
            ## 
            ## Sets the isLoggingEnabled property value. True if logging is enabled.
            ## @param value Value to set for the isLoggingEnabled property.
            ## @return a void
            ## 
            def is_logging_enabled=(value)
                @is_logging_enabled = value
            end
            ## 
            ## Gets the isPowerSavingEnabled property value. True if power saving is enabled.
            ## @return a boolean
            ## 
            def is_power_saving_enabled
                return @is_power_saving_enabled
            end
            ## 
            ## Sets the isPowerSavingEnabled property value. True if power saving is enabled.
            ## @param value Value to set for the isPowerSavingEnabled property.
            ## @return a void
            ## 
            def is_power_saving_enabled=(value)
                @is_power_saving_enabled = value
            end
            ## 
            ## Gets the isScreenCaptureEnabled property value. True if screen capture is enabled.
            ## @return a boolean
            ## 
            def is_screen_capture_enabled
                return @is_screen_capture_enabled
            end
            ## 
            ## Sets the isScreenCaptureEnabled property value. True if screen capture is enabled.
            ## @param value Value to set for the isScreenCaptureEnabled property.
            ## @return a void
            ## 
            def is_screen_capture_enabled=(value)
                @is_screen_capture_enabled = value
            end
            ## 
            ## Gets the isSilentModeEnabled property value. True if silent mode is enabled.
            ## @return a boolean
            ## 
            def is_silent_mode_enabled
                return @is_silent_mode_enabled
            end
            ## 
            ## Sets the isSilentModeEnabled property value. True if silent mode is enabled.
            ## @param value Value to set for the isSilentModeEnabled property.
            ## @return a void
            ## 
            def is_silent_mode_enabled=(value)
                @is_silent_mode_enabled = value
            end
            ## 
            ## Gets the language property value. The language option for the device.
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language option for the device.
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the lockPin property value. The pin that unlocks the device. Write-Only.
            ## @return a string
            ## 
            def lock_pin
                return @lock_pin
            end
            ## 
            ## Sets the lockPin property value. The pin that unlocks the device. Write-Only.
            ## @param value Value to set for the lockPin property.
            ## @return a void
            ## 
            def lock_pin=(value)
                @lock_pin = value
            end
            ## 
            ## Gets the loggingLevel property value. The logging level for the device.
            ## @return a string
            ## 
            def logging_level
                return @logging_level
            end
            ## 
            ## Sets the loggingLevel property value. The logging level for the device.
            ## @param value Value to set for the loggingLevel property.
            ## @return a void
            ## 
            def logging_level=(value)
                @logging_level = value
            end
            ## 
            ## Gets the networkConfiguration property value. The network configuration for the device.
            ## @return a teamwork_network_configuration
            ## 
            def network_configuration
                return @network_configuration
            end
            ## 
            ## Sets the networkConfiguration property value. The network configuration for the device.
            ## @param value Value to set for the networkConfiguration property.
            ## @return a void
            ## 
            def network_configuration=(value)
                @network_configuration = value
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
                writer.write_object_value("dateTimeConfiguration", @date_time_configuration)
                writer.write_string_value("defaultPassword", @default_password)
                writer.write_duration_value("deviceLockTimeout", @device_lock_timeout)
                writer.write_boolean_value("isDeviceLockEnabled", @is_device_lock_enabled)
                writer.write_boolean_value("isLoggingEnabled", @is_logging_enabled)
                writer.write_boolean_value("isPowerSavingEnabled", @is_power_saving_enabled)
                writer.write_boolean_value("isScreenCaptureEnabled", @is_screen_capture_enabled)
                writer.write_boolean_value("isSilentModeEnabled", @is_silent_mode_enabled)
                writer.write_string_value("language", @language)
                writer.write_string_value("lockPin", @lock_pin)
                writer.write_string_value("loggingLevel", @logging_level)
                writer.write_object_value("networkConfiguration", @network_configuration)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
