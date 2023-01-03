require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Represents an Autopilot flow event.
    class DeviceManagementAutopilotEvent < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Time spent in user ESP.
        @account_setup_duration
        ## 
        # The accountSetupStatus property
        @account_setup_status
        ## 
        # Autopilot deployment duration including enrollment.
        @deployment_duration
        ## 
        # Deployment end time.
        @deployment_end_date_time
        ## 
        # Deployment start time.
        @deployment_start_date_time
        ## 
        # The deploymentState property
        @deployment_state
        ## 
        # Total deployment duration from enrollment to Desktop screen.
        @deployment_total_duration
        ## 
        # Device id associated with the object
        @device_id
        ## 
        # Time spent in device enrollment.
        @device_preparation_duration
        ## 
        # Device registration date.
        @device_registered_date_time
        ## 
        # Device serial number.
        @device_serial_number
        ## 
        # Time spent in device ESP.
        @device_setup_duration
        ## 
        # The deviceSetupStatus property
        @device_setup_status
        ## 
        # Enrollment failure details.
        @enrollment_failure_details
        ## 
        # Device enrollment start date.
        @enrollment_start_date_time
        ## 
        # The enrollmentState property
        @enrollment_state
        ## 
        # The enrollmentType property
        @enrollment_type
        ## 
        # Time when the event occurred .
        @event_date_time
        ## 
        # Managed device name.
        @managed_device_name
        ## 
        # Device operating system version.
        @os_version
        ## 
        # Policy and application status details for this device.
        @policy_status_details
        ## 
        # Count of applications targeted.
        @targeted_app_count
        ## 
        # Count of policies targeted.
        @targeted_policy_count
        ## 
        # User principal name used to enroll the device.
        @user_principal_name
        ## 
        # Enrollment Status Page profile name
        @windows10_enrollment_completion_page_configuration_display_name
        ## 
        # Enrollment Status Page profile ID
        @windows10_enrollment_completion_page_configuration_id
        ## 
        # Autopilot profile name.
        @windows_autopilot_deployment_profile_display_name
        ## 
        ## Gets the accountSetupDuration property value. Time spent in user ESP.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def account_setup_duration
            return @account_setup_duration
        end
        ## 
        ## Sets the accountSetupDuration property value. Time spent in user ESP.
        ## @param value Value to set for the accountSetupDuration property.
        ## @return a void
        ## 
        def account_setup_duration=(value)
            @account_setup_duration = value
        end
        ## 
        ## Gets the accountSetupStatus property value. The accountSetupStatus property
        ## @return a windows_autopilot_deployment_state
        ## 
        def account_setup_status
            return @account_setup_status
        end
        ## 
        ## Sets the accountSetupStatus property value. The accountSetupStatus property
        ## @param value Value to set for the accountSetupStatus property.
        ## @return a void
        ## 
        def account_setup_status=(value)
            @account_setup_status = value
        end
        ## 
        ## Instantiates a new deviceManagementAutopilotEvent and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_autopilot_event
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementAutopilotEvent.new
        end
        ## 
        ## Gets the deploymentDuration property value. Autopilot deployment duration including enrollment.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def deployment_duration
            return @deployment_duration
        end
        ## 
        ## Sets the deploymentDuration property value. Autopilot deployment duration including enrollment.
        ## @param value Value to set for the deploymentDuration property.
        ## @return a void
        ## 
        def deployment_duration=(value)
            @deployment_duration = value
        end
        ## 
        ## Gets the deploymentEndDateTime property value. Deployment end time.
        ## @return a date_time
        ## 
        def deployment_end_date_time
            return @deployment_end_date_time
        end
        ## 
        ## Sets the deploymentEndDateTime property value. Deployment end time.
        ## @param value Value to set for the deploymentEndDateTime property.
        ## @return a void
        ## 
        def deployment_end_date_time=(value)
            @deployment_end_date_time = value
        end
        ## 
        ## Gets the deploymentStartDateTime property value. Deployment start time.
        ## @return a date_time
        ## 
        def deployment_start_date_time
            return @deployment_start_date_time
        end
        ## 
        ## Sets the deploymentStartDateTime property value. Deployment start time.
        ## @param value Value to set for the deploymentStartDateTime property.
        ## @return a void
        ## 
        def deployment_start_date_time=(value)
            @deployment_start_date_time = value
        end
        ## 
        ## Gets the deploymentState property value. The deploymentState property
        ## @return a windows_autopilot_deployment_state
        ## 
        def deployment_state
            return @deployment_state
        end
        ## 
        ## Sets the deploymentState property value. The deploymentState property
        ## @param value Value to set for the deploymentState property.
        ## @return a void
        ## 
        def deployment_state=(value)
            @deployment_state = value
        end
        ## 
        ## Gets the deploymentTotalDuration property value. Total deployment duration from enrollment to Desktop screen.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def deployment_total_duration
            return @deployment_total_duration
        end
        ## 
        ## Sets the deploymentTotalDuration property value. Total deployment duration from enrollment to Desktop screen.
        ## @param value Value to set for the deploymentTotalDuration property.
        ## @return a void
        ## 
        def deployment_total_duration=(value)
            @deployment_total_duration = value
        end
        ## 
        ## Gets the deviceId property value. Device id associated with the object
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. Device id associated with the object
        ## @param value Value to set for the deviceId property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the devicePreparationDuration property value. Time spent in device enrollment.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def device_preparation_duration
            return @device_preparation_duration
        end
        ## 
        ## Sets the devicePreparationDuration property value. Time spent in device enrollment.
        ## @param value Value to set for the devicePreparationDuration property.
        ## @return a void
        ## 
        def device_preparation_duration=(value)
            @device_preparation_duration = value
        end
        ## 
        ## Gets the deviceRegisteredDateTime property value. Device registration date.
        ## @return a date_time
        ## 
        def device_registered_date_time
            return @device_registered_date_time
        end
        ## 
        ## Sets the deviceRegisteredDateTime property value. Device registration date.
        ## @param value Value to set for the deviceRegisteredDateTime property.
        ## @return a void
        ## 
        def device_registered_date_time=(value)
            @device_registered_date_time = value
        end
        ## 
        ## Gets the deviceSerialNumber property value. Device serial number.
        ## @return a string
        ## 
        def device_serial_number
            return @device_serial_number
        end
        ## 
        ## Sets the deviceSerialNumber property value. Device serial number.
        ## @param value Value to set for the deviceSerialNumber property.
        ## @return a void
        ## 
        def device_serial_number=(value)
            @device_serial_number = value
        end
        ## 
        ## Gets the deviceSetupDuration property value. Time spent in device ESP.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def device_setup_duration
            return @device_setup_duration
        end
        ## 
        ## Sets the deviceSetupDuration property value. Time spent in device ESP.
        ## @param value Value to set for the deviceSetupDuration property.
        ## @return a void
        ## 
        def device_setup_duration=(value)
            @device_setup_duration = value
        end
        ## 
        ## Gets the deviceSetupStatus property value. The deviceSetupStatus property
        ## @return a windows_autopilot_deployment_state
        ## 
        def device_setup_status
            return @device_setup_status
        end
        ## 
        ## Sets the deviceSetupStatus property value. The deviceSetupStatus property
        ## @param value Value to set for the deviceSetupStatus property.
        ## @return a void
        ## 
        def device_setup_status=(value)
            @device_setup_status = value
        end
        ## 
        ## Gets the enrollmentFailureDetails property value. Enrollment failure details.
        ## @return a string
        ## 
        def enrollment_failure_details
            return @enrollment_failure_details
        end
        ## 
        ## Sets the enrollmentFailureDetails property value. Enrollment failure details.
        ## @param value Value to set for the enrollmentFailureDetails property.
        ## @return a void
        ## 
        def enrollment_failure_details=(value)
            @enrollment_failure_details = value
        end
        ## 
        ## Gets the enrollmentStartDateTime property value. Device enrollment start date.
        ## @return a date_time
        ## 
        def enrollment_start_date_time
            return @enrollment_start_date_time
        end
        ## 
        ## Sets the enrollmentStartDateTime property value. Device enrollment start date.
        ## @param value Value to set for the enrollmentStartDateTime property.
        ## @return a void
        ## 
        def enrollment_start_date_time=(value)
            @enrollment_start_date_time = value
        end
        ## 
        ## Gets the enrollmentState property value. The enrollmentState property
        ## @return a enrollment_state
        ## 
        def enrollment_state
            return @enrollment_state
        end
        ## 
        ## Sets the enrollmentState property value. The enrollmentState property
        ## @param value Value to set for the enrollmentState property.
        ## @return a void
        ## 
        def enrollment_state=(value)
            @enrollment_state = value
        end
        ## 
        ## Gets the enrollmentType property value. The enrollmentType property
        ## @return a windows_autopilot_enrollment_type
        ## 
        def enrollment_type
            return @enrollment_type
        end
        ## 
        ## Sets the enrollmentType property value. The enrollmentType property
        ## @param value Value to set for the enrollmentType property.
        ## @return a void
        ## 
        def enrollment_type=(value)
            @enrollment_type = value
        end
        ## 
        ## Gets the eventDateTime property value. Time when the event occurred .
        ## @return a date_time
        ## 
        def event_date_time
            return @event_date_time
        end
        ## 
        ## Sets the eventDateTime property value. Time when the event occurred .
        ## @param value Value to set for the eventDateTime property.
        ## @return a void
        ## 
        def event_date_time=(value)
            @event_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "accountSetupDuration" => lambda {|n| @account_setup_duration = n.get_duration_value() },
                "accountSetupStatus" => lambda {|n| @account_setup_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentState) },
                "deploymentDuration" => lambda {|n| @deployment_duration = n.get_duration_value() },
                "deploymentEndDateTime" => lambda {|n| @deployment_end_date_time = n.get_date_time_value() },
                "deploymentStartDateTime" => lambda {|n| @deployment_start_date_time = n.get_date_time_value() },
                "deploymentState" => lambda {|n| @deployment_state = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentState) },
                "deploymentTotalDuration" => lambda {|n| @deployment_total_duration = n.get_duration_value() },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "devicePreparationDuration" => lambda {|n| @device_preparation_duration = n.get_duration_value() },
                "deviceRegisteredDateTime" => lambda {|n| @device_registered_date_time = n.get_date_time_value() },
                "deviceSerialNumber" => lambda {|n| @device_serial_number = n.get_string_value() },
                "deviceSetupDuration" => lambda {|n| @device_setup_duration = n.get_duration_value() },
                "deviceSetupStatus" => lambda {|n| @device_setup_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentState) },
                "enrollmentFailureDetails" => lambda {|n| @enrollment_failure_details = n.get_string_value() },
                "enrollmentStartDateTime" => lambda {|n| @enrollment_start_date_time = n.get_date_time_value() },
                "enrollmentState" => lambda {|n| @enrollment_state = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentState) },
                "enrollmentType" => lambda {|n| @enrollment_type = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotEnrollmentType) },
                "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                "policyStatusDetails" => lambda {|n| @policy_status_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementAutopilotPolicyStatusDetail.create_from_discriminator_value(pn) }) },
                "targetedAppCount" => lambda {|n| @targeted_app_count = n.get_number_value() },
                "targetedPolicyCount" => lambda {|n| @targeted_policy_count = n.get_number_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                "windows10EnrollmentCompletionPageConfigurationDisplayName" => lambda {|n| @windows10_enrollment_completion_page_configuration_display_name = n.get_string_value() },
                "windows10EnrollmentCompletionPageConfigurationId" => lambda {|n| @windows10_enrollment_completion_page_configuration_id = n.get_string_value() },
                "windowsAutopilotDeploymentProfileDisplayName" => lambda {|n| @windows_autopilot_deployment_profile_display_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the managedDeviceName property value. Managed device name.
        ## @return a string
        ## 
        def managed_device_name
            return @managed_device_name
        end
        ## 
        ## Sets the managedDeviceName property value. Managed device name.
        ## @param value Value to set for the managedDeviceName property.
        ## @return a void
        ## 
        def managed_device_name=(value)
            @managed_device_name = value
        end
        ## 
        ## Gets the osVersion property value. Device operating system version.
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. Device operating system version.
        ## @param value Value to set for the osVersion property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Gets the policyStatusDetails property value. Policy and application status details for this device.
        ## @return a device_management_autopilot_policy_status_detail
        ## 
        def policy_status_details
            return @policy_status_details
        end
        ## 
        ## Sets the policyStatusDetails property value. Policy and application status details for this device.
        ## @param value Value to set for the policyStatusDetails property.
        ## @return a void
        ## 
        def policy_status_details=(value)
            @policy_status_details = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_duration_value("accountSetupDuration", @account_setup_duration)
            writer.write_enum_value("accountSetupStatus", @account_setup_status)
            writer.write_duration_value("deploymentDuration", @deployment_duration)
            writer.write_date_time_value("deploymentEndDateTime", @deployment_end_date_time)
            writer.write_date_time_value("deploymentStartDateTime", @deployment_start_date_time)
            writer.write_enum_value("deploymentState", @deployment_state)
            writer.write_duration_value("deploymentTotalDuration", @deployment_total_duration)
            writer.write_string_value("deviceId", @device_id)
            writer.write_duration_value("devicePreparationDuration", @device_preparation_duration)
            writer.write_date_time_value("deviceRegisteredDateTime", @device_registered_date_time)
            writer.write_string_value("deviceSerialNumber", @device_serial_number)
            writer.write_duration_value("deviceSetupDuration", @device_setup_duration)
            writer.write_enum_value("deviceSetupStatus", @device_setup_status)
            writer.write_string_value("enrollmentFailureDetails", @enrollment_failure_details)
            writer.write_date_time_value("enrollmentStartDateTime", @enrollment_start_date_time)
            writer.write_enum_value("enrollmentState", @enrollment_state)
            writer.write_enum_value("enrollmentType", @enrollment_type)
            writer.write_date_time_value("eventDateTime", @event_date_time)
            writer.write_string_value("managedDeviceName", @managed_device_name)
            writer.write_string_value("osVersion", @os_version)
            writer.write_collection_of_object_values("policyStatusDetails", @policy_status_details)
            writer.write_number_value("targetedAppCount", @targeted_app_count)
            writer.write_number_value("targetedPolicyCount", @targeted_policy_count)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_string_value("windows10EnrollmentCompletionPageConfigurationDisplayName", @windows10_enrollment_completion_page_configuration_display_name)
            writer.write_string_value("windows10EnrollmentCompletionPageConfigurationId", @windows10_enrollment_completion_page_configuration_id)
            writer.write_string_value("windowsAutopilotDeploymentProfileDisplayName", @windows_autopilot_deployment_profile_display_name)
        end
        ## 
        ## Gets the targetedAppCount property value. Count of applications targeted.
        ## @return a integer
        ## 
        def targeted_app_count
            return @targeted_app_count
        end
        ## 
        ## Sets the targetedAppCount property value. Count of applications targeted.
        ## @param value Value to set for the targetedAppCount property.
        ## @return a void
        ## 
        def targeted_app_count=(value)
            @targeted_app_count = value
        end
        ## 
        ## Gets the targetedPolicyCount property value. Count of policies targeted.
        ## @return a integer
        ## 
        def targeted_policy_count
            return @targeted_policy_count
        end
        ## 
        ## Sets the targetedPolicyCount property value. Count of policies targeted.
        ## @param value Value to set for the targetedPolicyCount property.
        ## @return a void
        ## 
        def targeted_policy_count=(value)
            @targeted_policy_count = value
        end
        ## 
        ## Gets the userPrincipalName property value. User principal name used to enroll the device.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. User principal name used to enroll the device.
        ## @param value Value to set for the userPrincipalName property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
        ## 
        ## Gets the windows10EnrollmentCompletionPageConfigurationDisplayName property value. Enrollment Status Page profile name
        ## @return a string
        ## 
        def windows10_enrollment_completion_page_configuration_display_name
            return @windows10_enrollment_completion_page_configuration_display_name
        end
        ## 
        ## Sets the windows10EnrollmentCompletionPageConfigurationDisplayName property value. Enrollment Status Page profile name
        ## @param value Value to set for the windows10EnrollmentCompletionPageConfigurationDisplayName property.
        ## @return a void
        ## 
        def windows10_enrollment_completion_page_configuration_display_name=(value)
            @windows10_enrollment_completion_page_configuration_display_name = value
        end
        ## 
        ## Gets the windows10EnrollmentCompletionPageConfigurationId property value. Enrollment Status Page profile ID
        ## @return a string
        ## 
        def windows10_enrollment_completion_page_configuration_id
            return @windows10_enrollment_completion_page_configuration_id
        end
        ## 
        ## Sets the windows10EnrollmentCompletionPageConfigurationId property value. Enrollment Status Page profile ID
        ## @param value Value to set for the windows10EnrollmentCompletionPageConfigurationId property.
        ## @return a void
        ## 
        def windows10_enrollment_completion_page_configuration_id=(value)
            @windows10_enrollment_completion_page_configuration_id = value
        end
        ## 
        ## Gets the windowsAutopilotDeploymentProfileDisplayName property value. Autopilot profile name.
        ## @return a string
        ## 
        def windows_autopilot_deployment_profile_display_name
            return @windows_autopilot_deployment_profile_display_name
        end
        ## 
        ## Sets the windowsAutopilotDeploymentProfileDisplayName property value. Autopilot profile name.
        ## @param value Value to set for the windowsAutopilotDeploymentProfileDisplayName property.
        ## @return a void
        ## 
        def windows_autopilot_deployment_profile_display_name=(value)
            @windows_autopilot_deployment_profile_display_name = value
        end
    end
end
