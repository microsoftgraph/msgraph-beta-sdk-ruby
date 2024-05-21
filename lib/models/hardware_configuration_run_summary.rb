require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for the run summary of a hardware configuration script.
        class HardwareConfigurationRunSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of devices for which hardware configuration state is error
            @error_device_count
            ## 
            # Number of users for which hardware configuration state is error
            @error_user_count
            ## 
            # Number of devices for which hardware configuration found an issue
            @failed_device_count
            ## 
            # Number of users for which hardware configuration found an issue
            @failed_user_count
            ## 
            # Last run time for the configuration across all devices
            @last_run_date_time
            ## 
            # Number of devices for which hardware configuration state is not applicable
            @not_applicable_device_count
            ## 
            # Number of users for which hardware configuration state is not applicable
            @not_applicable_user_count
            ## 
            # Number of devices for which hardware configuration is in pending state
            @pending_device_count
            ## 
            # Number of users for which hardware configuration is in pending state
            @pending_user_count
            ## 
            # Number of devices for which hardware configured without any issue
            @successful_device_count
            ## 
            # Number of users for which hardware configured without any issue
            @successful_user_count
            ## 
            # Number of devices for which hardware configuration state is unknown
            @unknown_device_count
            ## 
            # Number of users for which hardware configuration state is unknown
            @unknown_user_count
            ## 
            ## Instantiates a new HardwareConfigurationRunSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_configuration_run_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareConfigurationRunSummary.new
            end
            ## 
            ## Gets the errorDeviceCount property value. Number of devices for which hardware configuration state is error
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Number of devices for which hardware configuration state is error
            ## @param value Value to set for the errorDeviceCount property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## Gets the errorUserCount property value. Number of users for which hardware configuration state is error
            ## @return a integer
            ## 
            def error_user_count
                return @error_user_count
            end
            ## 
            ## Sets the errorUserCount property value. Number of users for which hardware configuration state is error
            ## @param value Value to set for the errorUserCount property.
            ## @return a void
            ## 
            def error_user_count=(value)
                @error_user_count = value
            end
            ## 
            ## Gets the failedDeviceCount property value. Number of devices for which hardware configuration found an issue
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Number of devices for which hardware configuration found an issue
            ## @param value Value to set for the failedDeviceCount property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## Gets the failedUserCount property value. Number of users for which hardware configuration found an issue
            ## @return a integer
            ## 
            def failed_user_count
                return @failed_user_count
            end
            ## 
            ## Sets the failedUserCount property value. Number of users for which hardware configuration found an issue
            ## @param value Value to set for the failedUserCount property.
            ## @return a void
            ## 
            def failed_user_count=(value)
                @failed_user_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "errorUserCount" => lambda {|n| @error_user_count = n.get_number_value() },
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "failedUserCount" => lambda {|n| @failed_user_count = n.get_number_value() },
                    "lastRunDateTime" => lambda {|n| @last_run_date_time = n.get_date_time_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "notApplicableUserCount" => lambda {|n| @not_applicable_user_count = n.get_number_value() },
                    "pendingDeviceCount" => lambda {|n| @pending_device_count = n.get_number_value() },
                    "pendingUserCount" => lambda {|n| @pending_user_count = n.get_number_value() },
                    "successfulDeviceCount" => lambda {|n| @successful_device_count = n.get_number_value() },
                    "successfulUserCount" => lambda {|n| @successful_user_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                    "unknownUserCount" => lambda {|n| @unknown_user_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lastRunDateTime property value. Last run time for the configuration across all devices
            ## @return a date_time
            ## 
            def last_run_date_time
                return @last_run_date_time
            end
            ## 
            ## Sets the lastRunDateTime property value. Last run time for the configuration across all devices
            ## @param value Value to set for the lastRunDateTime property.
            ## @return a void
            ## 
            def last_run_date_time=(value)
                @last_run_date_time = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Number of devices for which hardware configuration state is not applicable
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Number of devices for which hardware configuration state is not applicable
            ## @param value Value to set for the notApplicableDeviceCount property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the notApplicableUserCount property value. Number of users for which hardware configuration state is not applicable
            ## @return a integer
            ## 
            def not_applicable_user_count
                return @not_applicable_user_count
            end
            ## 
            ## Sets the notApplicableUserCount property value. Number of users for which hardware configuration state is not applicable
            ## @param value Value to set for the notApplicableUserCount property.
            ## @return a void
            ## 
            def not_applicable_user_count=(value)
                @not_applicable_user_count = value
            end
            ## 
            ## Gets the pendingDeviceCount property value. Number of devices for which hardware configuration is in pending state
            ## @return a integer
            ## 
            def pending_device_count
                return @pending_device_count
            end
            ## 
            ## Sets the pendingDeviceCount property value. Number of devices for which hardware configuration is in pending state
            ## @param value Value to set for the pendingDeviceCount property.
            ## @return a void
            ## 
            def pending_device_count=(value)
                @pending_device_count = value
            end
            ## 
            ## Gets the pendingUserCount property value. Number of users for which hardware configuration is in pending state
            ## @return a integer
            ## 
            def pending_user_count
                return @pending_user_count
            end
            ## 
            ## Sets the pendingUserCount property value. Number of users for which hardware configuration is in pending state
            ## @param value Value to set for the pendingUserCount property.
            ## @return a void
            ## 
            def pending_user_count=(value)
                @pending_user_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("errorUserCount", @error_user_count)
                writer.write_number_value("failedDeviceCount", @failed_device_count)
                writer.write_number_value("failedUserCount", @failed_user_count)
                writer.write_date_time_value("lastRunDateTime", @last_run_date_time)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("notApplicableUserCount", @not_applicable_user_count)
                writer.write_number_value("pendingDeviceCount", @pending_device_count)
                writer.write_number_value("pendingUserCount", @pending_user_count)
                writer.write_number_value("successfulDeviceCount", @successful_device_count)
                writer.write_number_value("successfulUserCount", @successful_user_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
                writer.write_number_value("unknownUserCount", @unknown_user_count)
            end
            ## 
            ## Gets the successfulDeviceCount property value. Number of devices for which hardware configured without any issue
            ## @return a integer
            ## 
            def successful_device_count
                return @successful_device_count
            end
            ## 
            ## Sets the successfulDeviceCount property value. Number of devices for which hardware configured without any issue
            ## @param value Value to set for the successfulDeviceCount property.
            ## @return a void
            ## 
            def successful_device_count=(value)
                @successful_device_count = value
            end
            ## 
            ## Gets the successfulUserCount property value. Number of users for which hardware configured without any issue
            ## @return a integer
            ## 
            def successful_user_count
                return @successful_user_count
            end
            ## 
            ## Sets the successfulUserCount property value. Number of users for which hardware configured without any issue
            ## @param value Value to set for the successfulUserCount property.
            ## @return a void
            ## 
            def successful_user_count=(value)
                @successful_user_count = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Number of devices for which hardware configuration state is unknown
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Number of devices for which hardware configuration state is unknown
            ## @param value Value to set for the unknownDeviceCount property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
            ## 
            ## Gets the unknownUserCount property value. Number of users for which hardware configuration state is unknown
            ## @return a integer
            ## 
            def unknown_user_count
                return @unknown_user_count
            end
            ## 
            ## Sets the unknownUserCount property value. Number of users for which hardware configuration state is unknown
            ## @param value Value to set for the unknownUserCount property.
            ## @return a void
            ## 
            def unknown_user_count=(value)
                @unknown_user_count = value
            end
        end
    end
end
