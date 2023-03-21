require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents a custom attribute script for macOS.
        class DeviceCustomAttributeShellScript < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments for the device management script.
            @assignments
            ## 
            # The date and time the device management script was created. This property is read-only.
            @created_date_time
            ## 
            # The name of the custom attribute.
            @custom_attribute_name
            ## 
            # Represents the expected type for a macOS custom attribute script value.
            @custom_attribute_type
            ## 
            # Optional description for the device management script.
            @description
            ## 
            # List of run states for this script across all devices.
            @device_run_states
            ## 
            # Name of the device management script.
            @display_name
            ## 
            # Script file name.
            @file_name
            ## 
            # The list of group assignments for the device management script.
            @group_assignments
            ## 
            # The date and time the device management script was last modified. This property is read-only.
            @last_modified_date_time
            ## 
            # List of Scope Tag IDs for this PowerShellScript instance.
            @role_scope_tag_ids
            ## 
            # Indicates the type of execution context the app runs in.
            @run_as_account
            ## 
            # Run summary for device management script.
            @run_summary
            ## 
            # The script content.
            @script_content
            ## 
            # List of run states for this script across all users.
            @user_run_states
            ## 
            ## Gets the assignments property value. The list of group assignments for the device management script.
            ## @return a device_management_script_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for the device management script.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new deviceCustomAttributeShellScript and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the device management script was created. This property is read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the device management script was created. This property is read-only.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_custom_attribute_shell_script
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCustomAttributeShellScript.new
            end
            ## 
            ## Gets the customAttributeName property value. The name of the custom attribute.
            ## @return a string
            ## 
            def custom_attribute_name
                return @custom_attribute_name
            end
            ## 
            ## Sets the customAttributeName property value. The name of the custom attribute.
            ## @param value Value to set for the custom_attribute_name property.
            ## @return a void
            ## 
            def custom_attribute_name=(value)
                @custom_attribute_name = value
            end
            ## 
            ## Gets the customAttributeType property value. Represents the expected type for a macOS custom attribute script value.
            ## @return a device_custom_attribute_value_type
            ## 
            def custom_attribute_type
                return @custom_attribute_type
            end
            ## 
            ## Sets the customAttributeType property value. Represents the expected type for a macOS custom attribute script value.
            ## @param value Value to set for the custom_attribute_type property.
            ## @return a void
            ## 
            def custom_attribute_type=(value)
                @custom_attribute_type = value
            end
            ## 
            ## Gets the description property value. Optional description for the device management script.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Optional description for the device management script.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceRunStates property value. List of run states for this script across all devices.
            ## @return a device_management_script_device_state
            ## 
            def device_run_states
                return @device_run_states
            end
            ## 
            ## Sets the deviceRunStates property value. List of run states for this script across all devices.
            ## @param value Value to set for the device_run_states property.
            ## @return a void
            ## 
            def device_run_states=(value)
                @device_run_states = value
            end
            ## 
            ## Gets the displayName property value. Name of the device management script.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the device management script.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fileName property value. Script file name.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. Script file name.
            ## @param value Value to set for the file_name property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "customAttributeName" => lambda {|n| @custom_attribute_name = n.get_string_value() },
                    "customAttributeType" => lambda {|n| @custom_attribute_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceCustomAttributeValueType) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceRunStates" => lambda {|n| @device_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptDeviceState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "groupAssignments" => lambda {|n| @group_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptGroupAssignment.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "runAsAccount" => lambda {|n| @run_as_account = n.get_enum_value(MicrosoftGraphBeta::Models::RunAsAccountType) },
                    "runSummary" => lambda {|n| @run_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptRunSummary.create_from_discriminator_value(pn) }) },
                    "scriptContent" => lambda {|n| @script_content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "userRunStates" => lambda {|n| @user_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementScriptUserState.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the groupAssignments property value. The list of group assignments for the device management script.
            ## @return a device_management_script_group_assignment
            ## 
            def group_assignments
                return @group_assignments
            end
            ## 
            ## Sets the groupAssignments property value. The list of group assignments for the device management script.
            ## @param value Value to set for the group_assignments property.
            ## @return a void
            ## 
            def group_assignments=(value)
                @group_assignments = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the device management script was last modified. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the device management script was last modified. This property is read-only.
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of Scope Tag IDs for this PowerShellScript instance.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of Scope Tag IDs for this PowerShellScript instance.
            ## @param value Value to set for the role_scope_tag_ids property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @return a run_as_account_type
            ## 
            def run_as_account
                return @run_as_account
            end
            ## 
            ## Sets the runAsAccount property value. Indicates the type of execution context the app runs in.
            ## @param value Value to set for the run_as_account property.
            ## @return a void
            ## 
            def run_as_account=(value)
                @run_as_account = value
            end
            ## 
            ## Gets the runSummary property value. Run summary for device management script.
            ## @return a device_management_script_run_summary
            ## 
            def run_summary
                return @run_summary
            end
            ## 
            ## Sets the runSummary property value. Run summary for device management script.
            ## @param value Value to set for the run_summary property.
            ## @return a void
            ## 
            def run_summary=(value)
                @run_summary = value
            end
            ## 
            ## Gets the scriptContent property value. The script content.
            ## @return a base64url
            ## 
            def script_content
                return @script_content
            end
            ## 
            ## Sets the scriptContent property value. The script content.
            ## @param value Value to set for the script_content property.
            ## @return a void
            ## 
            def script_content=(value)
                @script_content = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("customAttributeName", @custom_attribute_name)
                writer.write_enum_value("customAttributeType", @custom_attribute_type)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceRunStates", @device_run_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("fileName", @file_name)
                writer.write_collection_of_object_values("groupAssignments", @group_assignments)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_enum_value("runAsAccount", @run_as_account)
                writer.write_object_value("runSummary", @run_summary)
                writer.write_object_value("scriptContent", @script_content)
                writer.write_collection_of_object_values("userRunStates", @user_run_states)
            end
            ## 
            ## Gets the userRunStates property value. List of run states for this script across all users.
            ## @return a device_management_script_user_state
            ## 
            def user_run_states
                return @user_run_states
            end
            ## 
            ## Sets the userRunStates property value. List of run states for this script across all users.
            ## @param value Value to set for the user_run_states property.
            ## @return a void
            ## 
            def user_run_states=(value)
                @user_run_states = value
            end
        end
    end
end
