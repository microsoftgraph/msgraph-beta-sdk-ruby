require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # BIOS configuration and other settings provides customers the ability to configure hardware/bios settings on the enrolled Windows 10/11 Entra ID joined devices by uploading a configuration file generated with their OEM tool (e.g. Dell Command tool). A BIOS configuration policy can be assigned to multiple devices, allowing admins to remotely control a device's hardware properties (e.g. enable Secure Boot) from the Intune Portal.
        class HardwareConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A list of the Entra user group ids that hardware configuration will be applied to. Only security groups and Office 365 Groups are supported. Optional.
            @assignments
            ## 
            # The file content contains custom hardware settings that will be applied to the assigned devices' BIOS. Max allowed file size is 5KB. Represented as bytes. Required.
            @configuration_file_content
            ## 
            # The date and time  of when the BIOS configuration profile was created. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. This property is read-only.
            @created_date_time
            ## 
            # The description of the hardware configuration. Use this to provide context, purpose, applications, etc of the BIOS configuration profile for your organization's admins. Max length is 1000 characters. Optional.
            @description
            ## 
            # List of run states for the hardware configuration across all devices. Read-Only.
            @device_run_states
            ## 
            # The name of the hardware BIOS configuration profile. It serves as user-friendly name to identify hardware BIOS configuration profiles. Max length is 150 characters. Required. Read-Only.
            @display_name
            ## 
            # The file name for the BIOS configuration profile's ConfigurationFileContent. Max length is 150 characters. Required.
            @file_name
            ## 
            # Indicates the supported oems of hardware configuration
            @hardware_configuration_format
            ## 
            # The date and time  of when the BIOS configuration profile was last modified. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. Read-Only. This property is read-only.
            @last_modified_date_time
            ## 
            # When TRUE, indicates whether the policy-assigned devices' passwords are disabled. When FALSE, indicates they are enabled. Default is FALSE. Required.
            @per_device_password_disabled
            ## 
            # A list of unique Scope Tag IDs associated with the hardware configuration. Optional.
            @role_scope_tag_ids
            ## 
            # A summary of the results from an attempt to configure hardware settings. Read-Only.
            @run_summary
            ## 
            # List of run states for the hardware configuration across all users. Read-Only.
            @user_run_states
            ## 
            # The version of the hardware configuration (E.g. 1, 2, 3 ...). This is incremented after a change to the BIOS configuration profile's settings file name (FileName property), settings file content (ConfigurationFileContent property), or the PerDevicePasswordDisabled property. Read-Only.
            @version
            ## 
            ## Gets the assignments property value. A list of the Entra user group ids that hardware configuration will be applied to. Only security groups and Office 365 Groups are supported. Optional.
            ## @return a hardware_configuration_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. A list of the Entra user group ids that hardware configuration will be applied to. Only security groups and Office 365 Groups are supported. Optional.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the configurationFileContent property value. The file content contains custom hardware settings that will be applied to the assigned devices' BIOS. Max allowed file size is 5KB. Represented as bytes. Required.
            ## @return a base64url
            ## 
            def configuration_file_content
                return @configuration_file_content
            end
            ## 
            ## Sets the configurationFileContent property value. The file content contains custom hardware settings that will be applied to the assigned devices' BIOS. Max allowed file size is 5KB. Represented as bytes. Required.
            ## @param value Value to set for the configurationFileContent property.
            ## @return a void
            ## 
            def configuration_file_content=(value)
                @configuration_file_content = value
            end
            ## 
            ## Instantiates a new HardwareConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time  of when the BIOS configuration profile was created. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. This property is read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time  of when the BIOS configuration profile was created. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. This property is read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a hardware_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return HardwareConfiguration.new
            end
            ## 
            ## Gets the description property value. The description of the hardware configuration. Use this to provide context, purpose, applications, etc of the BIOS configuration profile for your organization's admins. Max length is 1000 characters. Optional.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the hardware configuration. Use this to provide context, purpose, applications, etc of the BIOS configuration profile for your organization's admins. Max length is 1000 characters. Optional.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceRunStates property value. List of run states for the hardware configuration across all devices. Read-Only.
            ## @return a hardware_configuration_device_state
            ## 
            def device_run_states
                return @device_run_states
            end
            ## 
            ## Sets the deviceRunStates property value. List of run states for the hardware configuration across all devices. Read-Only.
            ## @param value Value to set for the deviceRunStates property.
            ## @return a void
            ## 
            def device_run_states=(value)
                @device_run_states = value
            end
            ## 
            ## Gets the displayName property value. The name of the hardware BIOS configuration profile. It serves as user-friendly name to identify hardware BIOS configuration profiles. Max length is 150 characters. Required. Read-Only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the hardware BIOS configuration profile. It serves as user-friendly name to identify hardware BIOS configuration profiles. Max length is 150 characters. Required. Read-Only.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fileName property value. The file name for the BIOS configuration profile's ConfigurationFileContent. Max length is 150 characters. Required.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The file name for the BIOS configuration profile's ConfigurationFileContent. Max length is 150 characters. Required.
            ## @param value Value to set for the fileName property.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwareConfigurationAssignment.create_from_discriminator_value(pn) }) },
                    "configurationFileContent" => lambda {|n| @configuration_file_content = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceRunStates" => lambda {|n| @device_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwareConfigurationDeviceState.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "hardwareConfigurationFormat" => lambda {|n| @hardware_configuration_format = n.get_enum_value(MicrosoftGraphBeta::Models::HardwareConfigurationFormat) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "perDevicePasswordDisabled" => lambda {|n| @per_device_password_disabled = n.get_boolean_value() },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "runSummary" => lambda {|n| @run_summary = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HardwareConfigurationRunSummary.create_from_discriminator_value(pn) }) },
                    "userRunStates" => lambda {|n| @user_run_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HardwareConfigurationUserState.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the hardwareConfigurationFormat property value. Indicates the supported oems of hardware configuration
            ## @return a hardware_configuration_format
            ## 
            def hardware_configuration_format
                return @hardware_configuration_format
            end
            ## 
            ## Sets the hardwareConfigurationFormat property value. Indicates the supported oems of hardware configuration
            ## @param value Value to set for the hardwareConfigurationFormat property.
            ## @return a void
            ## 
            def hardware_configuration_format=(value)
                @hardware_configuration_format = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time  of when the BIOS configuration profile was last modified. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. Read-Only. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time  of when the BIOS configuration profile was last modified. The value cannot be modified and is automatically populated when the device is enrolled. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-Only. Read-Only. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the perDevicePasswordDisabled property value. When TRUE, indicates whether the policy-assigned devices' passwords are disabled. When FALSE, indicates they are enabled. Default is FALSE. Required.
            ## @return a boolean
            ## 
            def per_device_password_disabled
                return @per_device_password_disabled
            end
            ## 
            ## Sets the perDevicePasswordDisabled property value. When TRUE, indicates whether the policy-assigned devices' passwords are disabled. When FALSE, indicates they are enabled. Default is FALSE. Required.
            ## @param value Value to set for the perDevicePasswordDisabled property.
            ## @return a void
            ## 
            def per_device_password_disabled=(value)
                @per_device_password_disabled = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. A list of unique Scope Tag IDs associated with the hardware configuration. Optional.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. A list of unique Scope Tag IDs associated with the hardware configuration. Optional.
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the runSummary property value. A summary of the results from an attempt to configure hardware settings. Read-Only.
            ## @return a hardware_configuration_run_summary
            ## 
            def run_summary
                return @run_summary
            end
            ## 
            ## Sets the runSummary property value. A summary of the results from an attempt to configure hardware settings. Read-Only.
            ## @param value Value to set for the runSummary property.
            ## @return a void
            ## 
            def run_summary=(value)
                @run_summary = value
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
                writer.write_object_value("configurationFileContent", @configuration_file_content)
                writer.write_string_value("description", @description)
                writer.write_collection_of_object_values("deviceRunStates", @device_run_states)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("fileName", @file_name)
                writer.write_enum_value("hardwareConfigurationFormat", @hardware_configuration_format)
                writer.write_boolean_value("perDevicePasswordDisabled", @per_device_password_disabled)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_object_value("runSummary", @run_summary)
                writer.write_collection_of_object_values("userRunStates", @user_run_states)
                writer.write_number_value("version", @version)
            end
            ## 
            ## Gets the userRunStates property value. List of run states for the hardware configuration across all users. Read-Only.
            ## @return a hardware_configuration_user_state
            ## 
            def user_run_states
                return @user_run_states
            end
            ## 
            ## Sets the userRunStates property value. List of run states for the hardware configuration across all users. Read-Only.
            ## @param value Value to set for the userRunStates property.
            ## @return a void
            ## 
            def user_run_states=(value)
                @user_run_states = value
            end
            ## 
            ## Gets the version property value. The version of the hardware configuration (E.g. 1, 2, 3 ...). This is incremented after a change to the BIOS configuration profile's settings file name (FileName property), settings file content (ConfigurationFileContent property), or the PerDevicePasswordDisabled property. Read-Only.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. The version of the hardware configuration (E.g. 1, 2, 3 ...). This is incremented after a change to the BIOS configuration profile's settings file name (FileName property), settings file content (ConfigurationFileContent property), or the PerDevicePasswordDisabled property. Read-Only.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
