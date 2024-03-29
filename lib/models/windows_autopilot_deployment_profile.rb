require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Windows Autopilot Deployment Profile
        class WindowsAutopilotDeploymentProfile < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of assigned devices for the profile.
            @assigned_devices
            ## 
            # The list of group assignments for the profile.
            @assignments
            ## 
            # Profile creation time
            @created_date_time
            ## 
            # Description of the profile
            @description
            ## 
            # The template used to name the AutoPilot Device. This can be a custom text and can also contain either the serial number of the device, or a randomly generated number. The total length of the text generated by the template can be no more than 15 characters.
            @device_name_template
            ## 
            # The deviceType property
            @device_type
            ## 
            # Name of the profile
            @display_name
            ## 
            # Enable Autopilot White Glove for the profile.
            @enable_white_glove
            ## 
            # Enrollment status screen setting
            @enrollment_status_screen_settings
            ## 
            # HardwareHash Extraction for the profile
            @extract_hardware_hash
            ## 
            # Language configured on the device
            @language
            ## 
            # Profile last modified time
            @last_modified_date_time
            ## 
            # AzureAD management app ID used during client device-based enrollment discovery
            @management_service_app_id
            ## 
            # Out of box experience setting
            @out_of_box_experience_settings
            ## 
            # Scope tags for the profile.
            @role_scope_tag_ids
            ## 
            ## Gets the assignedDevices property value. The list of assigned devices for the profile.
            ## @return a windows_autopilot_device_identity
            ## 
            def assigned_devices
                return @assigned_devices
            end
            ## 
            ## Sets the assignedDevices property value. The list of assigned devices for the profile.
            ## @param value Value to set for the assignedDevices property.
            ## @return a void
            ## 
            def assigned_devices=(value)
                @assigned_devices = value
            end
            ## 
            ## Gets the assignments property value. The list of group assignments for the profile.
            ## @return a windows_autopilot_deployment_profile_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for the profile.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new windowsAutopilotDeploymentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Profile creation time
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Profile creation time
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_autopilot_deployment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.activeDirectoryWindowsAutopilotDeploymentProfile"
                            return ActiveDirectoryWindowsAutopilotDeploymentProfile.new
                        when "#microsoft.graph.azureADWindowsAutopilotDeploymentProfile"
                            return AzureADWindowsAutopilotDeploymentProfile.new
                    end
                end
                return WindowsAutopilotDeploymentProfile.new
            end
            ## 
            ## Gets the description property value. Description of the profile
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the profile
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the deviceNameTemplate property value. The template used to name the AutoPilot Device. This can be a custom text and can also contain either the serial number of the device, or a randomly generated number. The total length of the text generated by the template can be no more than 15 characters.
            ## @return a string
            ## 
            def device_name_template
                return @device_name_template
            end
            ## 
            ## Sets the deviceNameTemplate property value. The template used to name the AutoPilot Device. This can be a custom text and can also contain either the serial number of the device, or a randomly generated number. The total length of the text generated by the template can be no more than 15 characters.
            ## @param value Value to set for the deviceNameTemplate property.
            ## @return a void
            ## 
            def device_name_template=(value)
                @device_name_template = value
            end
            ## 
            ## Gets the deviceType property value. The deviceType property
            ## @return a windows_autopilot_device_type
            ## 
            def device_type
                return @device_type
            end
            ## 
            ## Sets the deviceType property value. The deviceType property
            ## @param value Value to set for the deviceType property.
            ## @return a void
            ## 
            def device_type=(value)
                @device_type = value
            end
            ## 
            ## Gets the displayName property value. Name of the profile
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the profile
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enableWhiteGlove property value. Enable Autopilot White Glove for the profile.
            ## @return a boolean
            ## 
            def enable_white_glove
                return @enable_white_glove
            end
            ## 
            ## Sets the enableWhiteGlove property value. Enable Autopilot White Glove for the profile.
            ## @param value Value to set for the enableWhiteGlove property.
            ## @return a void
            ## 
            def enable_white_glove=(value)
                @enable_white_glove = value
            end
            ## 
            ## Gets the enrollmentStatusScreenSettings property value. Enrollment status screen setting
            ## @return a windows_enrollment_status_screen_settings
            ## 
            def enrollment_status_screen_settings
                return @enrollment_status_screen_settings
            end
            ## 
            ## Sets the enrollmentStatusScreenSettings property value. Enrollment status screen setting
            ## @param value Value to set for the enrollmentStatusScreenSettings property.
            ## @return a void
            ## 
            def enrollment_status_screen_settings=(value)
                @enrollment_status_screen_settings = value
            end
            ## 
            ## Gets the extractHardwareHash property value. HardwareHash Extraction for the profile
            ## @return a boolean
            ## 
            def extract_hardware_hash
                return @extract_hardware_hash
            end
            ## 
            ## Sets the extractHardwareHash property value. HardwareHash Extraction for the profile
            ## @param value Value to set for the extractHardwareHash property.
            ## @return a void
            ## 
            def extract_hardware_hash=(value)
                @extract_hardware_hash = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedDevices" => lambda {|n| @assigned_devices = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeviceIdentity.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentProfileAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "deviceNameTemplate" => lambda {|n| @device_name_template = n.get_string_value() },
                    "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotDeviceType) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enableWhiteGlove" => lambda {|n| @enable_white_glove = n.get_boolean_value() },
                    "enrollmentStatusScreenSettings" => lambda {|n| @enrollment_status_screen_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsEnrollmentStatusScreenSettings.create_from_discriminator_value(pn) }) },
                    "extractHardwareHash" => lambda {|n| @extract_hardware_hash = n.get_boolean_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "managementServiceAppId" => lambda {|n| @management_service_app_id = n.get_string_value() },
                    "outOfBoxExperienceSettings" => lambda {|n| @out_of_box_experience_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OutOfBoxExperienceSettings.create_from_discriminator_value(pn) }) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the language property value. Language configured on the device
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. Language configured on the device
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Profile last modified time
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Profile last modified time
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the managementServiceAppId property value. AzureAD management app ID used during client device-based enrollment discovery
            ## @return a string
            ## 
            def management_service_app_id
                return @management_service_app_id
            end
            ## 
            ## Sets the managementServiceAppId property value. AzureAD management app ID used during client device-based enrollment discovery
            ## @param value Value to set for the managementServiceAppId property.
            ## @return a void
            ## 
            def management_service_app_id=(value)
                @management_service_app_id = value
            end
            ## 
            ## Gets the outOfBoxExperienceSettings property value. Out of box experience setting
            ## @return a out_of_box_experience_settings
            ## 
            def out_of_box_experience_settings
                return @out_of_box_experience_settings
            end
            ## 
            ## Sets the outOfBoxExperienceSettings property value. Out of box experience setting
            ## @param value Value to set for the outOfBoxExperienceSettings property.
            ## @return a void
            ## 
            def out_of_box_experience_settings=(value)
                @out_of_box_experience_settings = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. Scope tags for the profile.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. Scope tags for the profile.
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignedDevices", @assigned_devices)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("description", @description)
                writer.write_string_value("deviceNameTemplate", @device_name_template)
                writer.write_enum_value("deviceType", @device_type)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("enableWhiteGlove", @enable_white_glove)
                writer.write_object_value("enrollmentStatusScreenSettings", @enrollment_status_screen_settings)
                writer.write_boolean_value("extractHardwareHash", @extract_hardware_hash)
                writer.write_string_value("language", @language)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("managementServiceAppId", @management_service_app_id)
                writer.write_object_value("outOfBoxExperienceSettings", @out_of_box_experience_settings)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            end
        end
    end
end
