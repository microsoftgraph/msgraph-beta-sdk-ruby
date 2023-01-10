require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceManagementScriptRunSummary < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Error device count.
        @error_device_count
        ## 
        # Error user count.
        @error_user_count
        ## 
        # Success device count.
        @success_device_count
        ## 
        # Success user count.
        @success_user_count
        ## 
        ## Instantiates a new deviceManagementScriptRunSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_script_run_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementScriptRunSummary.new
        end
        ## 
        ## Gets the errorDeviceCount property value. Error device count.
        ## @return a integer
        ## 
        def error_device_count
            return @error_device_count
        end
        ## 
        ## Sets the errorDeviceCount property value. Error device count.
        ## @param value Value to set for the errorDeviceCount property.
        ## @return a void
        ## 
        def error_device_count=(value)
            @error_device_count = value
        end
        ## 
        ## Gets the errorUserCount property value. Error user count.
        ## @return a integer
        ## 
        def error_user_count
            return @error_user_count
        end
        ## 
        ## Sets the errorUserCount property value. Error user count.
        ## @param value Value to set for the errorUserCount property.
        ## @return a void
        ## 
        def error_user_count=(value)
            @error_user_count = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                "errorUserCount" => lambda {|n| @error_user_count = n.get_number_value() },
                "successDeviceCount" => lambda {|n| @success_device_count = n.get_number_value() },
                "successUserCount" => lambda {|n| @success_user_count = n.get_number_value() },
            })
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
            writer.write_number_value("successDeviceCount", @success_device_count)
            writer.write_number_value("successUserCount", @success_user_count)
        end
        ## 
        ## Gets the successDeviceCount property value. Success device count.
        ## @return a integer
        ## 
        def success_device_count
            return @success_device_count
        end
        ## 
        ## Sets the successDeviceCount property value. Success device count.
        ## @param value Value to set for the successDeviceCount property.
        ## @return a void
        ## 
        def success_device_count=(value)
            @success_device_count = value
        end
        ## 
        ## Gets the successUserCount property value. Success user count.
        ## @return a integer
        ## 
        def success_user_count
            return @success_user_count
        end
        ## 
        ## Sets the successUserCount property value. Success user count.
        ## @param value Value to set for the successUserCount property.
        ## @return a void
        ## 
        def success_user_count=(value)
            @success_user_count = value
        end
    end
end
