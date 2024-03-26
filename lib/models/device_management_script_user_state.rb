require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Contains properties for user run state of the device management script.
        class DeviceManagementScriptUserState < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of run states for this script across all devices of specific user.
            @device_run_states
            ## 
            # Error device count for specific user.
            @error_device_count
            ## 
            # Success device count for specific user.
            @success_device_count
            ## 
            # User principle name of specific user.
            @user_principal_name
            ## 
            ## Instantiates a new DeviceManagementScriptUserState and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_script_user_state
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementScriptUserState.new
            end
            ## 
            ## Gets the deviceRunStates property value. List of run states for this script across all devices of specific user.
            ## @return a device_management_script_device_state
            ## 
            def device_run_states
                return @device_run_states
            end
            ## 
            ## Sets the deviceRunStates property value. List of run states for this script across all devices of specific user.
            ## @param value Value to set for the deviceRunStates property.
            ## @return a void
            ## 
            def device_run_states=(value)
                @device_run_states = value
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceRunStates" => lambda {|n| @device_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptDeviceState.create_from_discriminator_value(pn) }) },
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "successDeviceCount" => lambda {|n| @success_device_count = n.get_number_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
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
                writer.write_collection_of_object_values("deviceRunStates", @device_run_states)
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("successDeviceCount", @success_device_count)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the successDeviceCount property value. Success device count for specific user.
            ## @return a integer
            ## 
            def success_device_count
                return @success_device_count
            end
            ## 
            ## Sets the successDeviceCount property value. Success device count for specific user.
            ## @param value Value to set for the successDeviceCount property.
            ## @return a void
            ## 
            def success_device_count=(value)
                @success_device_count = value
            end
            ## 
            ## Gets the userPrincipalName property value. User principle name of specific user.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User principle name of specific user.
            ## @param value Value to set for the userPrincipalName property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
