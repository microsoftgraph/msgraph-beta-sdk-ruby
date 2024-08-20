require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for User state of the hardware configuration
        class HardwareConfigurationUserState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Error device count for specific user.
            @error_device_count
            ## 
            # Failed device count for specific user.
            @failed_device_count
            ## 
            # Last timestamp when the hardware configuration executed
            @last_state_update_date_time
            ## 
            # Not applicable device count for specific user.
            @not_applicable_device_count
            ## 
            # Pending device count for specific user.
            @pending_device_count
            ## 
            # Success device count for specific user.
            @successful_device_count
            ## 
            # Unknown device count for specific user.
            @unknown_device_count
            ## 
            # User Principal Name (UPN).
            @upn
            ## 
            # User Email address.
            @user_email
            ## 
            # User name
            @user_name
            ## 
            ## Instantiates a new HardwareConfigurationUserState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_configuration_user_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareConfigurationUserState.new
            end
            ## 
            ## Gets the errorDeviceCount property value. Error device count for specific user.
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Error device count for specific user.
            ## @param value Value to set for the errorDeviceCount property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## Gets the failedDeviceCount property value. Failed device count for specific user.
            ## @return a integer
            ## 
            def failed_device_count
                return @failed_device_count
            end
            ## 
            ## Sets the failedDeviceCount property value. Failed device count for specific user.
            ## @param value Value to set for the failedDeviceCount property.
            ## @return a void
            ## 
            def failed_device_count=(value)
                @failed_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "failedDeviceCount" => lambda {|n| @failed_device_count = n.get_number_value() },
                    "lastStateUpdateDateTime" => lambda {|n| @last_state_update_date_time = n.get_date_time_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "pendingDeviceCount" => lambda {|n| @pending_device_count = n.get_number_value() },
                    "successfulDeviceCount" => lambda {|n| @successful_device_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                    "upn" => lambda {|n| @upn = n.get_string_value() },
                    "userEmail" => lambda {|n| @user_email = n.get_string_value() },
                    "userName" => lambda {|n| @user_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the lastStateUpdateDateTime property value. Last timestamp when the hardware configuration executed
            ## @return a date_time
            ## 
            def last_state_update_date_time
                return @last_state_update_date_time
            end
            ## 
            ## Sets the lastStateUpdateDateTime property value. Last timestamp when the hardware configuration executed
            ## @param value Value to set for the lastStateUpdateDateTime property.
            ## @return a void
            ## 
            def last_state_update_date_time=(value)
                @last_state_update_date_time = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Not applicable device count for specific user.
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Not applicable device count for specific user.
            ## @param value Value to set for the notApplicableDeviceCount property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the pendingDeviceCount property value. Pending device count for specific user.
            ## @return a integer
            ## 
            def pending_device_count
                return @pending_device_count
            end
            ## 
            ## Sets the pendingDeviceCount property value. Pending device count for specific user.
            ## @param value Value to set for the pendingDeviceCount property.
            ## @return a void
            ## 
            def pending_device_count=(value)
                @pending_device_count = value
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
                writer.write_number_value("failedDeviceCount", @failed_device_count)
                writer.write_date_time_value("lastStateUpdateDateTime", @last_state_update_date_time)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("pendingDeviceCount", @pending_device_count)
                writer.write_number_value("successfulDeviceCount", @successful_device_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
                writer.write_string_value("upn", @upn)
                writer.write_string_value("userEmail", @user_email)
                writer.write_string_value("userName", @user_name)
            end
            ## 
            ## Gets the successfulDeviceCount property value. Success device count for specific user.
            ## @return a integer
            ## 
            def successful_device_count
                return @successful_device_count
            end
            ## 
            ## Sets the successfulDeviceCount property value. Success device count for specific user.
            ## @param value Value to set for the successfulDeviceCount property.
            ## @return a void
            ## 
            def successful_device_count=(value)
                @successful_device_count = value
            end
            ## 
            ## Gets the unknownDeviceCount property value. Unknown device count for specific user.
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Unknown device count for specific user.
            ## @param value Value to set for the unknownDeviceCount property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
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
            ## Gets the userEmail property value. User Email address.
            ## @return a string
            ## 
            def user_email
                return @user_email
            end
            ## 
            ## Sets the userEmail property value. User Email address.
            ## @param value Value to set for the userEmail property.
            ## @return a void
            ## 
            def user_email=(value)
                @user_email = value
            end
            ## 
            ## Gets the userName property value. User name
            ## @return a string
            ## 
            def user_name
                return @user_name
            end
            ## 
            ## Sets the userName property value. User name
            ## @param value Value to set for the userName property.
            ## @return a void
            ## 
            def user_name=(value)
                @user_name = value
            end
        end
    end
end
