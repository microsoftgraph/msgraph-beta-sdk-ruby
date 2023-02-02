require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Devices that are managed or pre-enrolled through Intune
    class ManagedDevice < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Whether the device is Azure Active Directory registered. This property is read-only.
        @aad_registered
        ## 
        # The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        @activation_lock_bypass_code
        ## 
        # Android security patch level. This property is read-only.
        @android_security_patch_level
        ## 
        # Managed device mobile app configuration states for this device.
        @assignment_filter_evaluation_status_details
        ## 
        # Reports if the managed device is enrolled via auto-pilot. This property is read-only.
        @autopilot_enrolled
        ## 
        # The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        @azure_a_d_device_id
        ## 
        # Whether the device is Azure Active Directory registered. This property is read-only.
        @azure_a_d_registered
        ## 
        # The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        @azure_active_directory_device_id
        ## 
        # Reports if the managed device has an escrowed Bootstrap Token. This is only for macOS devices. To get, include BootstrapTokenEscrowed in the select clause and query with a device id. If FALSE, no bootstrap token is escrowed. If TRUE, the device has escrowed a bootstrap token with Intune. This property is read-only.
        @bootstrap_token_escrowed
        ## 
        # Chassis type.
        @chassis_type
        ## 
        # List of properties of the ChromeOS Device.
        @chrome_o_s_device_info
        ## 
        # The cloudPcRemoteActionResults property
        @cloud_pc_remote_action_results
        ## 
        # The DateTime when device compliance grace period expires. This property is read-only.
        @compliance_grace_period_expiration_date_time
        ## 
        # Compliance state.
        @compliance_state
        ## 
        # ConfigrMgr client enabled features. This property is read-only.
        @configuration_manager_client_enabled_features
        ## 
        # Configuration manager client health state, valid only for devices managed by MDM/ConfigMgr Agent
        @configuration_manager_client_health_state
        ## 
        # Configuration manager client information, valid only for devices managed, duel-managed or tri-managed by ConfigMgr Agent
        @configuration_manager_client_information
        ## 
        # All applications currently installed on the device
        @detected_apps
        ## 
        # List of ComplexType deviceActionResult objects. This property is read-only.
        @device_action_results
        ## 
        # Device category
        @device_category
        ## 
        # Device category display name. This property is read-only.
        @device_category_display_name
        ## 
        # Device compliance policy states for this device.
        @device_compliance_policy_states
        ## 
        # Device configuration states for this device.
        @device_configuration_states
        ## 
        # Possible ways of adding a mobile device to management.
        @device_enrollment_type
        ## 
        # Indicates whether the device is DFCI managed. When TRUE the device is DFCI managed. When FALSE, the device is not DFCI managed. The default value is FALSE.
        @device_firmware_configuration_interface_managed
        ## 
        # The device health attestation state. This property is read-only.
        @device_health_attestation_state
        ## 
        # Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
        @device_health_script_states
        ## 
        # Name of the device. This property is read-only.
        @device_name
        ## 
        # Device registration status.
        @device_registration_state
        ## 
        # Device type.
        @device_type
        ## 
        # Whether the device is Exchange ActiveSync activated. This property is read-only.
        @eas_activated
        ## 
        # Exchange ActivationSync activation time of the device. This property is read-only.
        @eas_activation_date_time
        ## 
        # Exchange ActiveSync Id of the device. This property is read-only.
        @eas_device_id
        ## 
        # Email(s) for the user associated with the device. This property is read-only.
        @email_address
        ## 
        # Enrollment time of the device. This property is read-only.
        @enrolled_date_time
        ## 
        # Name of the enrollment profile assigned to the device. Default value is empty string, indicating no enrollment profile was assgined. This property is read-only.
        @enrollment_profile_name
        ## 
        # Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
        @ethernet_mac_address
        ## 
        # Device Exchange Access State.
        @exchange_access_state
        ## 
        # Device Exchange Access State Reason.
        @exchange_access_state_reason
        ## 
        # Last time the device contacted Exchange. This property is read-only.
        @exchange_last_successful_sync_date_time
        ## 
        # Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
        @free_storage_space_in_bytes
        ## 
        # The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Return default value in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        @hardware_information
        ## 
        # Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        @iccid
        ## 
        # IMEI. This property is read-only.
        @imei
        ## 
        # Device encryption status. This property is read-only.
        @is_encrypted
        ## 
        # Device supervised status. This property is read-only.
        @is_supervised
        ## 
        # whether the device is jail broken or rooted. This property is read-only.
        @jail_broken
        ## 
        # Device enrollment join type.
        @join_type
        ## 
        # The date and time that the device last completed a successful sync with Intune. This property is read-only.
        @last_sync_date_time
        ## 
        # List of log collection requests
        @log_collection_requests
        ## 
        # State of lost mode, indicating if lost mode is enabled or disabled
        @lost_mode_state
        ## 
        # Managed device mobile app configuration states for this device.
        @managed_device_mobile_app_configuration_states
        ## 
        # Automatically generated name to identify a device. Can be overwritten to a user friendly name.
        @managed_device_name
        ## 
        # Owner type of device.
        @managed_device_owner_type
        ## 
        # Management agent type.
        @management_agent
        ## 
        # Reports device management certificate expiration date. This property is read-only.
        @management_certificate_expiration_date
        ## 
        # Device management features.
        @management_features
        ## 
        # Management state of device in Microsoft Intune.
        @management_state
        ## 
        # Manufacturer of the device. This property is read-only.
        @manufacturer
        ## 
        # MEID. This property is read-only.
        @meid
        ## 
        # Model of the device. This property is read-only.
        @model
        ## 
        # Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
        @notes
        ## 
        # Operating system of the device. Windows, iOS, etc. This property is read-only.
        @operating_system
        ## 
        # Operating system version of the device. This property is read-only.
        @os_version
        ## 
        # Owner type of device.
        @owner_type
        ## 
        # Available health states for the Device Health API
        @partner_reported_threat_state
        ## 
        # Phone number of the device. This property is read-only.
        @phone_number
        ## 
        # Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
        @physical_memory_in_bytes
        ## 
        # Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. This property is read-only.
        @prefer_mdm_over_group_policy_applied_date_time
        ## 
        # Processor architecture
        @processor_architecture
        ## 
        # An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
        @remote_assistance_session_error_details
        ## 
        # Url that allows a Remote Assistance session to be established with the device. This property is read-only.
        @remote_assistance_session_url
        ## 
        # Reports if the managed iOS device is user approval enrollment. This property is read-only.
        @require_user_enrollment_approval
        ## 
        # Indicates the time after when a device will be auto retired because of scheduled action. This property is read-only.
        @retire_after_date_time
        ## 
        # List of Scope Tag IDs for this Device instance.
        @role_scope_tag_ids
        ## 
        # Security baseline states for this device.
        @security_baseline_states
        ## 
        # SerialNumber. This property is read-only.
        @serial_number
        ## 
        # Device sku family
        @sku_family
        ## 
        # Device sku number, see also: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo. Valid values 0 to 2147483647. This property is read-only.
        @sku_number
        ## 
        # Specification version. This property is read-only.
        @specification_version
        ## 
        # Subscriber Carrier. This property is read-only.
        @subscriber_carrier
        ## 
        # Total Storage in Bytes. This property is read-only.
        @total_storage_space_in_bytes
        ## 
        # Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        @udid
        ## 
        # User display name. This property is read-only.
        @user_display_name
        ## 
        # Unique Identifier for the user associated with the device. This property is read-only.
        @user_id
        ## 
        # Device user principal name. This property is read-only.
        @user_principal_name
        ## 
        # The primary users associated with the managed device.
        @users
        ## 
        # Indicates the last logged on users of a device. This property is read-only.
        @users_logged_on
        ## 
        # Wi-Fi MAC. This property is read-only.
        @wi_fi_mac_address
        ## 
        # Count of active malware for this windows device. This property is read-only.
        @windows_active_malware_count
        ## 
        # The device protection status. This property is read-only.
        @windows_protection_state
        ## 
        # Count of remediated malware for this windows device. This property is read-only.
        @windows_remediated_malware_count
        ## 
        ## Gets the aadRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
        ## @return a boolean
        ## 
        def aad_registered
            return @aad_registered
        end
        ## 
        ## Sets the aadRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
        ## @param value Value to set for the aad_registered property.
        ## @return a void
        ## 
        def aad_registered=(value)
            @aad_registered = value
        end
        ## 
        ## Gets the activationLockBypassCode property value. The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @return a string
        ## 
        def activation_lock_bypass_code
            return @activation_lock_bypass_code
        end
        ## 
        ## Sets the activationLockBypassCode property value. The code that allows the Activation Lock on managed device to be bypassed. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity in LIST call. Individual GET call with select query options is needed to retrieve actual values. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @param value Value to set for the activation_lock_bypass_code property.
        ## @return a void
        ## 
        def activation_lock_bypass_code=(value)
            @activation_lock_bypass_code = value
        end
        ## 
        ## Gets the androidSecurityPatchLevel property value. Android security patch level. This property is read-only.
        ## @return a string
        ## 
        def android_security_patch_level
            return @android_security_patch_level
        end
        ## 
        ## Sets the androidSecurityPatchLevel property value. Android security patch level. This property is read-only.
        ## @param value Value to set for the android_security_patch_level property.
        ## @return a void
        ## 
        def android_security_patch_level=(value)
            @android_security_patch_level = value
        end
        ## 
        ## Gets the assignmentFilterEvaluationStatusDetails property value. Managed device mobile app configuration states for this device.
        ## @return a assignment_filter_evaluation_status_details
        ## 
        def assignment_filter_evaluation_status_details
            return @assignment_filter_evaluation_status_details
        end
        ## 
        ## Sets the assignmentFilterEvaluationStatusDetails property value. Managed device mobile app configuration states for this device.
        ## @param value Value to set for the assignment_filter_evaluation_status_details property.
        ## @return a void
        ## 
        def assignment_filter_evaluation_status_details=(value)
            @assignment_filter_evaluation_status_details = value
        end
        ## 
        ## Gets the autopilotEnrolled property value. Reports if the managed device is enrolled via auto-pilot. This property is read-only.
        ## @return a boolean
        ## 
        def autopilot_enrolled
            return @autopilot_enrolled
        end
        ## 
        ## Sets the autopilotEnrolled property value. Reports if the managed device is enrolled via auto-pilot. This property is read-only.
        ## @param value Value to set for the autopilot_enrolled property.
        ## @return a void
        ## 
        def autopilot_enrolled=(value)
            @autopilot_enrolled = value
        end
        ## 
        ## Gets the azureADDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        ## @return a string
        ## 
        def azure_a_d_device_id
            return @azure_a_d_device_id
        end
        ## 
        ## Sets the azureADDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        ## @param value Value to set for the azure_a_d_device_id property.
        ## @return a void
        ## 
        def azure_a_d_device_id=(value)
            @azure_a_d_device_id = value
        end
        ## 
        ## Gets the azureADRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
        ## @return a boolean
        ## 
        def azure_a_d_registered
            return @azure_a_d_registered
        end
        ## 
        ## Sets the azureADRegistered property value. Whether the device is Azure Active Directory registered. This property is read-only.
        ## @param value Value to set for the azure_a_d_registered property.
        ## @return a void
        ## 
        def azure_a_d_registered=(value)
            @azure_a_d_registered = value
        end
        ## 
        ## Gets the azureActiveDirectoryDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        ## @return a string
        ## 
        def azure_active_directory_device_id
            return @azure_active_directory_device_id
        end
        ## 
        ## Sets the azureActiveDirectoryDeviceId property value. The unique identifier for the Azure Active Directory device. Read only. This property is read-only.
        ## @param value Value to set for the azure_active_directory_device_id property.
        ## @return a void
        ## 
        def azure_active_directory_device_id=(value)
            @azure_active_directory_device_id = value
        end
        ## 
        ## Gets the bootstrapTokenEscrowed property value. Reports if the managed device has an escrowed Bootstrap Token. This is only for macOS devices. To get, include BootstrapTokenEscrowed in the select clause and query with a device id. If FALSE, no bootstrap token is escrowed. If TRUE, the device has escrowed a bootstrap token with Intune. This property is read-only.
        ## @return a boolean
        ## 
        def bootstrap_token_escrowed
            return @bootstrap_token_escrowed
        end
        ## 
        ## Sets the bootstrapTokenEscrowed property value. Reports if the managed device has an escrowed Bootstrap Token. This is only for macOS devices. To get, include BootstrapTokenEscrowed in the select clause and query with a device id. If FALSE, no bootstrap token is escrowed. If TRUE, the device has escrowed a bootstrap token with Intune. This property is read-only.
        ## @param value Value to set for the bootstrap_token_escrowed property.
        ## @return a void
        ## 
        def bootstrap_token_escrowed=(value)
            @bootstrap_token_escrowed = value
        end
        ## 
        ## Gets the chassisType property value. Chassis type.
        ## @return a chassis_type
        ## 
        def chassis_type
            return @chassis_type
        end
        ## 
        ## Sets the chassisType property value. Chassis type.
        ## @param value Value to set for the chassis_type property.
        ## @return a void
        ## 
        def chassis_type=(value)
            @chassis_type = value
        end
        ## 
        ## Gets the chromeOSDeviceInfo property value. List of properties of the ChromeOS Device.
        ## @return a chrome_o_s_device_property
        ## 
        def chrome_o_s_device_info
            return @chrome_o_s_device_info
        end
        ## 
        ## Sets the chromeOSDeviceInfo property value. List of properties of the ChromeOS Device.
        ## @param value Value to set for the chrome_o_s_device_info property.
        ## @return a void
        ## 
        def chrome_o_s_device_info=(value)
            @chrome_o_s_device_info = value
        end
        ## 
        ## Gets the cloudPcRemoteActionResults property value. The cloudPcRemoteActionResults property
        ## @return a cloud_pc_remote_action_result
        ## 
        def cloud_pc_remote_action_results
            return @cloud_pc_remote_action_results
        end
        ## 
        ## Sets the cloudPcRemoteActionResults property value. The cloudPcRemoteActionResults property
        ## @param value Value to set for the cloud_pc_remote_action_results property.
        ## @return a void
        ## 
        def cloud_pc_remote_action_results=(value)
            @cloud_pc_remote_action_results = value
        end
        ## 
        ## Gets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires. This property is read-only.
        ## @return a date_time
        ## 
        def compliance_grace_period_expiration_date_time
            return @compliance_grace_period_expiration_date_time
        end
        ## 
        ## Sets the complianceGracePeriodExpirationDateTime property value. The DateTime when device compliance grace period expires. This property is read-only.
        ## @param value Value to set for the compliance_grace_period_expiration_date_time property.
        ## @return a void
        ## 
        def compliance_grace_period_expiration_date_time=(value)
            @compliance_grace_period_expiration_date_time = value
        end
        ## 
        ## Gets the complianceState property value. Compliance state.
        ## @return a compliance_state
        ## 
        def compliance_state
            return @compliance_state
        end
        ## 
        ## Sets the complianceState property value. Compliance state.
        ## @param value Value to set for the compliance_state property.
        ## @return a void
        ## 
        def compliance_state=(value)
            @compliance_state = value
        end
        ## 
        ## Gets the configurationManagerClientEnabledFeatures property value. ConfigrMgr client enabled features. This property is read-only.
        ## @return a configuration_manager_client_enabled_features
        ## 
        def configuration_manager_client_enabled_features
            return @configuration_manager_client_enabled_features
        end
        ## 
        ## Sets the configurationManagerClientEnabledFeatures property value. ConfigrMgr client enabled features. This property is read-only.
        ## @param value Value to set for the configuration_manager_client_enabled_features property.
        ## @return a void
        ## 
        def configuration_manager_client_enabled_features=(value)
            @configuration_manager_client_enabled_features = value
        end
        ## 
        ## Gets the configurationManagerClientHealthState property value. Configuration manager client health state, valid only for devices managed by MDM/ConfigMgr Agent
        ## @return a configuration_manager_client_health_state
        ## 
        def configuration_manager_client_health_state
            return @configuration_manager_client_health_state
        end
        ## 
        ## Sets the configurationManagerClientHealthState property value. Configuration manager client health state, valid only for devices managed by MDM/ConfigMgr Agent
        ## @param value Value to set for the configuration_manager_client_health_state property.
        ## @return a void
        ## 
        def configuration_manager_client_health_state=(value)
            @configuration_manager_client_health_state = value
        end
        ## 
        ## Gets the configurationManagerClientInformation property value. Configuration manager client information, valid only for devices managed, duel-managed or tri-managed by ConfigMgr Agent
        ## @return a configuration_manager_client_information
        ## 
        def configuration_manager_client_information
            return @configuration_manager_client_information
        end
        ## 
        ## Sets the configurationManagerClientInformation property value. Configuration manager client information, valid only for devices managed, duel-managed or tri-managed by ConfigMgr Agent
        ## @param value Value to set for the configuration_manager_client_information property.
        ## @return a void
        ## 
        def configuration_manager_client_information=(value)
            @configuration_manager_client_information = value
        end
        ## 
        ## Instantiates a new managedDevice and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_device
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.windowsManagedDevice"
                        return WindowsManagedDevice.new
                end
            end
            return ManagedDevice.new
        end
        ## 
        ## Gets the detectedApps property value. All applications currently installed on the device
        ## @return a detected_app
        ## 
        def detected_apps
            return @detected_apps
        end
        ## 
        ## Sets the detectedApps property value. All applications currently installed on the device
        ## @param value Value to set for the detected_apps property.
        ## @return a void
        ## 
        def detected_apps=(value)
            @detected_apps = value
        end
        ## 
        ## Gets the deviceActionResults property value. List of ComplexType deviceActionResult objects. This property is read-only.
        ## @return a device_action_result
        ## 
        def device_action_results
            return @device_action_results
        end
        ## 
        ## Sets the deviceActionResults property value. List of ComplexType deviceActionResult objects. This property is read-only.
        ## @param value Value to set for the device_action_results property.
        ## @return a void
        ## 
        def device_action_results=(value)
            @device_action_results = value
        end
        ## 
        ## Gets the deviceCategory property value. Device category
        ## @return a device_category
        ## 
        def device_category
            return @device_category
        end
        ## 
        ## Sets the deviceCategory property value. Device category
        ## @param value Value to set for the device_category property.
        ## @return a void
        ## 
        def device_category=(value)
            @device_category = value
        end
        ## 
        ## Gets the deviceCategoryDisplayName property value. Device category display name. This property is read-only.
        ## @return a string
        ## 
        def device_category_display_name
            return @device_category_display_name
        end
        ## 
        ## Sets the deviceCategoryDisplayName property value. Device category display name. This property is read-only.
        ## @param value Value to set for the device_category_display_name property.
        ## @return a void
        ## 
        def device_category_display_name=(value)
            @device_category_display_name = value
        end
        ## 
        ## Gets the deviceCompliancePolicyStates property value. Device compliance policy states for this device.
        ## @return a device_compliance_policy_state
        ## 
        def device_compliance_policy_states
            return @device_compliance_policy_states
        end
        ## 
        ## Sets the deviceCompliancePolicyStates property value. Device compliance policy states for this device.
        ## @param value Value to set for the device_compliance_policy_states property.
        ## @return a void
        ## 
        def device_compliance_policy_states=(value)
            @device_compliance_policy_states = value
        end
        ## 
        ## Gets the deviceConfigurationStates property value. Device configuration states for this device.
        ## @return a device_configuration_state
        ## 
        def device_configuration_states
            return @device_configuration_states
        end
        ## 
        ## Sets the deviceConfigurationStates property value. Device configuration states for this device.
        ## @param value Value to set for the device_configuration_states property.
        ## @return a void
        ## 
        def device_configuration_states=(value)
            @device_configuration_states = value
        end
        ## 
        ## Gets the deviceEnrollmentType property value. Possible ways of adding a mobile device to management.
        ## @return a device_enrollment_type
        ## 
        def device_enrollment_type
            return @device_enrollment_type
        end
        ## 
        ## Sets the deviceEnrollmentType property value. Possible ways of adding a mobile device to management.
        ## @param value Value to set for the device_enrollment_type property.
        ## @return a void
        ## 
        def device_enrollment_type=(value)
            @device_enrollment_type = value
        end
        ## 
        ## Gets the deviceFirmwareConfigurationInterfaceManaged property value. Indicates whether the device is DFCI managed. When TRUE the device is DFCI managed. When FALSE, the device is not DFCI managed. The default value is FALSE.
        ## @return a boolean
        ## 
        def device_firmware_configuration_interface_managed
            return @device_firmware_configuration_interface_managed
        end
        ## 
        ## Sets the deviceFirmwareConfigurationInterfaceManaged property value. Indicates whether the device is DFCI managed. When TRUE the device is DFCI managed. When FALSE, the device is not DFCI managed. The default value is FALSE.
        ## @param value Value to set for the device_firmware_configuration_interface_managed property.
        ## @return a void
        ## 
        def device_firmware_configuration_interface_managed=(value)
            @device_firmware_configuration_interface_managed = value
        end
        ## 
        ## Gets the deviceHealthAttestationState property value. The device health attestation state. This property is read-only.
        ## @return a device_health_attestation_state
        ## 
        def device_health_attestation_state
            return @device_health_attestation_state
        end
        ## 
        ## Sets the deviceHealthAttestationState property value. The device health attestation state. This property is read-only.
        ## @param value Value to set for the device_health_attestation_state property.
        ## @return a void
        ## 
        def device_health_attestation_state=(value)
            @device_health_attestation_state = value
        end
        ## 
        ## Gets the deviceHealthScriptStates property value. Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
        ## @return a device_health_script_policy_state
        ## 
        def device_health_script_states
            return @device_health_script_states
        end
        ## 
        ## Sets the deviceHealthScriptStates property value. Results of device health scripts that ran for this device. Default is empty list. This property is read-only.
        ## @param value Value to set for the device_health_script_states property.
        ## @return a void
        ## 
        def device_health_script_states=(value)
            @device_health_script_states = value
        end
        ## 
        ## Gets the deviceName property value. Name of the device. This property is read-only.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. Name of the device. This property is read-only.
        ## @param value Value to set for the device_name property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## Gets the deviceRegistrationState property value. Device registration status.
        ## @return a device_registration_state
        ## 
        def device_registration_state
            return @device_registration_state
        end
        ## 
        ## Sets the deviceRegistrationState property value. Device registration status.
        ## @param value Value to set for the device_registration_state property.
        ## @return a void
        ## 
        def device_registration_state=(value)
            @device_registration_state = value
        end
        ## 
        ## Gets the deviceType property value. Device type.
        ## @return a device_type
        ## 
        def device_type
            return @device_type
        end
        ## 
        ## Sets the deviceType property value. Device type.
        ## @param value Value to set for the device_type property.
        ## @return a void
        ## 
        def device_type=(value)
            @device_type = value
        end
        ## 
        ## Gets the easActivated property value. Whether the device is Exchange ActiveSync activated. This property is read-only.
        ## @return a boolean
        ## 
        def eas_activated
            return @eas_activated
        end
        ## 
        ## Sets the easActivated property value. Whether the device is Exchange ActiveSync activated. This property is read-only.
        ## @param value Value to set for the eas_activated property.
        ## @return a void
        ## 
        def eas_activated=(value)
            @eas_activated = value
        end
        ## 
        ## Gets the easActivationDateTime property value. Exchange ActivationSync activation time of the device. This property is read-only.
        ## @return a date_time
        ## 
        def eas_activation_date_time
            return @eas_activation_date_time
        end
        ## 
        ## Sets the easActivationDateTime property value. Exchange ActivationSync activation time of the device. This property is read-only.
        ## @param value Value to set for the eas_activation_date_time property.
        ## @return a void
        ## 
        def eas_activation_date_time=(value)
            @eas_activation_date_time = value
        end
        ## 
        ## Gets the easDeviceId property value. Exchange ActiveSync Id of the device. This property is read-only.
        ## @return a string
        ## 
        def eas_device_id
            return @eas_device_id
        end
        ## 
        ## Sets the easDeviceId property value. Exchange ActiveSync Id of the device. This property is read-only.
        ## @param value Value to set for the eas_device_id property.
        ## @return a void
        ## 
        def eas_device_id=(value)
            @eas_device_id = value
        end
        ## 
        ## Gets the emailAddress property value. Email(s) for the user associated with the device. This property is read-only.
        ## @return a string
        ## 
        def email_address
            return @email_address
        end
        ## 
        ## Sets the emailAddress property value. Email(s) for the user associated with the device. This property is read-only.
        ## @param value Value to set for the email_address property.
        ## @return a void
        ## 
        def email_address=(value)
            @email_address = value
        end
        ## 
        ## Gets the enrolledDateTime property value. Enrollment time of the device. This property is read-only.
        ## @return a date_time
        ## 
        def enrolled_date_time
            return @enrolled_date_time
        end
        ## 
        ## Sets the enrolledDateTime property value. Enrollment time of the device. This property is read-only.
        ## @param value Value to set for the enrolled_date_time property.
        ## @return a void
        ## 
        def enrolled_date_time=(value)
            @enrolled_date_time = value
        end
        ## 
        ## Gets the enrollmentProfileName property value. Name of the enrollment profile assigned to the device. Default value is empty string, indicating no enrollment profile was assgined. This property is read-only.
        ## @return a string
        ## 
        def enrollment_profile_name
            return @enrollment_profile_name
        end
        ## 
        ## Sets the enrollmentProfileName property value. Name of the enrollment profile assigned to the device. Default value is empty string, indicating no enrollment profile was assgined. This property is read-only.
        ## @param value Value to set for the enrollment_profile_name property.
        ## @return a void
        ## 
        def enrollment_profile_name=(value)
            @enrollment_profile_name = value
        end
        ## 
        ## Gets the ethernetMacAddress property value. Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @return a string
        ## 
        def ethernet_mac_address
            return @ethernet_mac_address
        end
        ## 
        ## Sets the ethernetMacAddress property value. Indicates Ethernet MAC Address of the device. Default, is Null (Non-Default property) for this property when returned as part of managedDevice entity. Individual get call with select query options is needed to retrieve actual values. Example: deviceManagement/managedDevices({managedDeviceId})?$select=ethernetMacAddress Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @param value Value to set for the ethernet_mac_address property.
        ## @return a void
        ## 
        def ethernet_mac_address=(value)
            @ethernet_mac_address = value
        end
        ## 
        ## Gets the exchangeAccessState property value. Device Exchange Access State.
        ## @return a device_management_exchange_access_state
        ## 
        def exchange_access_state
            return @exchange_access_state
        end
        ## 
        ## Sets the exchangeAccessState property value. Device Exchange Access State.
        ## @param value Value to set for the exchange_access_state property.
        ## @return a void
        ## 
        def exchange_access_state=(value)
            @exchange_access_state = value
        end
        ## 
        ## Gets the exchangeAccessStateReason property value. Device Exchange Access State Reason.
        ## @return a device_management_exchange_access_state_reason
        ## 
        def exchange_access_state_reason
            return @exchange_access_state_reason
        end
        ## 
        ## Sets the exchangeAccessStateReason property value. Device Exchange Access State Reason.
        ## @param value Value to set for the exchange_access_state_reason property.
        ## @return a void
        ## 
        def exchange_access_state_reason=(value)
            @exchange_access_state_reason = value
        end
        ## 
        ## Gets the exchangeLastSuccessfulSyncDateTime property value. Last time the device contacted Exchange. This property is read-only.
        ## @return a date_time
        ## 
        def exchange_last_successful_sync_date_time
            return @exchange_last_successful_sync_date_time
        end
        ## 
        ## Sets the exchangeLastSuccessfulSyncDateTime property value. Last time the device contacted Exchange. This property is read-only.
        ## @param value Value to set for the exchange_last_successful_sync_date_time property.
        ## @return a void
        ## 
        def exchange_last_successful_sync_date_time=(value)
            @exchange_last_successful_sync_date_time = value
        end
        ## 
        ## Gets the freeStorageSpaceInBytes property value. Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
        ## @return a int64
        ## 
        def free_storage_space_in_bytes
            return @free_storage_space_in_bytes
        end
        ## 
        ## Sets the freeStorageSpaceInBytes property value. Free Storage in Bytes. Default value is 0. Read-only. This property is read-only.
        ## @param value Value to set for the free_storage_space_in_bytes property.
        ## @return a void
        ## 
        def free_storage_space_in_bytes=(value)
            @free_storage_space_in_bytes = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "aadRegistered" => lambda {|n| @aad_registered = n.get_boolean_value() },
                "activationLockBypassCode" => lambda {|n| @activation_lock_bypass_code = n.get_string_value() },
                "androidSecurityPatchLevel" => lambda {|n| @android_security_patch_level = n.get_string_value() },
                "assignmentFilterEvaluationStatusDetails" => lambda {|n| @assignment_filter_evaluation_status_details = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AssignmentFilterEvaluationStatusDetails.create_from_discriminator_value(pn) }) },
                "autopilotEnrolled" => lambda {|n| @autopilot_enrolled = n.get_boolean_value() },
                "azureADDeviceId" => lambda {|n| @azure_a_d_device_id = n.get_string_value() },
                "azureADRegistered" => lambda {|n| @azure_a_d_registered = n.get_boolean_value() },
                "azureActiveDirectoryDeviceId" => lambda {|n| @azure_active_directory_device_id = n.get_string_value() },
                "bootstrapTokenEscrowed" => lambda {|n| @bootstrap_token_escrowed = n.get_boolean_value() },
                "chassisType" => lambda {|n| @chassis_type = n.get_enum_value(MicrosoftGraphBeta::Models::ChassisType) },
                "chromeOSDeviceInfo" => lambda {|n| @chrome_o_s_device_info = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ChromeOSDeviceProperty.create_from_discriminator_value(pn) }) },
                "cloudPcRemoteActionResults" => lambda {|n| @cloud_pc_remote_action_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CloudPcRemoteActionResult.create_from_discriminator_value(pn) }) },
                "complianceGracePeriodExpirationDateTime" => lambda {|n| @compliance_grace_period_expiration_date_time = n.get_date_time_value() },
                "complianceState" => lambda {|n| @compliance_state = n.get_enum_value(MicrosoftGraphBeta::Models::ComplianceState) },
                "configurationManagerClientEnabledFeatures" => lambda {|n| @configuration_manager_client_enabled_features = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConfigurationManagerClientEnabledFeatures.create_from_discriminator_value(pn) }) },
                "configurationManagerClientHealthState" => lambda {|n| @configuration_manager_client_health_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConfigurationManagerClientHealthState.create_from_discriminator_value(pn) }) },
                "configurationManagerClientInformation" => lambda {|n| @configuration_manager_client_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ConfigurationManagerClientInformation.create_from_discriminator_value(pn) }) },
                "detectedApps" => lambda {|n| @detected_apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DetectedApp.create_from_discriminator_value(pn) }) },
                "deviceActionResults" => lambda {|n| @device_action_results = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceActionResult.create_from_discriminator_value(pn) }) },
                "deviceCategory" => lambda {|n| @device_category = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCategory.create_from_discriminator_value(pn) }) },
                "deviceCategoryDisplayName" => lambda {|n| @device_category_display_name = n.get_string_value() },
                "deviceCompliancePolicyStates" => lambda {|n| @device_compliance_policy_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceCompliancePolicyState.create_from_discriminator_value(pn) }) },
                "deviceConfigurationStates" => lambda {|n| @device_configuration_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceConfigurationState.create_from_discriminator_value(pn) }) },
                "deviceEnrollmentType" => lambda {|n| @device_enrollment_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceEnrollmentType) },
                "deviceFirmwareConfigurationInterfaceManaged" => lambda {|n| @device_firmware_configuration_interface_managed = n.get_boolean_value() },
                "deviceHealthAttestationState" => lambda {|n| @device_health_attestation_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthAttestationState.create_from_discriminator_value(pn) }) },
                "deviceHealthScriptStates" => lambda {|n| @device_health_script_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceHealthScriptPolicyState.create_from_discriminator_value(pn) }) },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "deviceRegistrationState" => lambda {|n| @device_registration_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceRegistrationState) },
                "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceType) },
                "easActivated" => lambda {|n| @eas_activated = n.get_boolean_value() },
                "easActivationDateTime" => lambda {|n| @eas_activation_date_time = n.get_date_time_value() },
                "easDeviceId" => lambda {|n| @eas_device_id = n.get_string_value() },
                "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                "enrolledDateTime" => lambda {|n| @enrolled_date_time = n.get_date_time_value() },
                "enrollmentProfileName" => lambda {|n| @enrollment_profile_name = n.get_string_value() },
                "ethernetMacAddress" => lambda {|n| @ethernet_mac_address = n.get_string_value() },
                "exchangeAccessState" => lambda {|n| @exchange_access_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementExchangeAccessState) },
                "exchangeAccessStateReason" => lambda {|n| @exchange_access_state_reason = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementExchangeAccessStateReason) },
                "exchangeLastSuccessfulSyncDateTime" => lambda {|n| @exchange_last_successful_sync_date_time = n.get_date_time_value() },
                "freeStorageSpaceInBytes" => lambda {|n| @free_storage_space_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "hardwareInformation" => lambda {|n| @hardware_information = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::HardwareInformation.create_from_discriminator_value(pn) }) },
                "iccid" => lambda {|n| @iccid = n.get_string_value() },
                "imei" => lambda {|n| @imei = n.get_string_value() },
                "isEncrypted" => lambda {|n| @is_encrypted = n.get_boolean_value() },
                "isSupervised" => lambda {|n| @is_supervised = n.get_boolean_value() },
                "jailBroken" => lambda {|n| @jail_broken = n.get_string_value() },
                "joinType" => lambda {|n| @join_type = n.get_enum_value(MicrosoftGraphBeta::Models::JoinType) },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "logCollectionRequests" => lambda {|n| @log_collection_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceLogCollectionResponse.create_from_discriminator_value(pn) }) },
                "lostModeState" => lambda {|n| @lost_mode_state = n.get_enum_value(MicrosoftGraphBeta::Models::LostModeState) },
                "managedDeviceMobileAppConfigurationStates" => lambda {|n| @managed_device_mobile_app_configuration_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedDeviceMobileAppConfigurationState.create_from_discriminator_value(pn) }) },
                "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                "managedDeviceOwnerType" => lambda {|n| @managed_device_owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceOwnerType) },
                "managementAgent" => lambda {|n| @management_agent = n.get_enum_value(MicrosoftGraphBeta::Models::ManagementAgentType) },
                "managementCertificateExpirationDate" => lambda {|n| @management_certificate_expiration_date = n.get_date_time_value() },
                "managementFeatures" => lambda {|n| @management_features = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceManagementFeatures) },
                "managementState" => lambda {|n| @management_state = n.get_enum_value(MicrosoftGraphBeta::Models::ManagementState) },
                "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                "meid" => lambda {|n| @meid = n.get_string_value() },
                "model" => lambda {|n| @model = n.get_string_value() },
                "notes" => lambda {|n| @notes = n.get_string_value() },
                "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                "ownerType" => lambda {|n| @owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::OwnerType) },
                "partnerReportedThreatState" => lambda {|n| @partner_reported_threat_state = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDevicePartnerReportedHealthState) },
                "phoneNumber" => lambda {|n| @phone_number = n.get_string_value() },
                "physicalMemoryInBytes" => lambda {|n| @physical_memory_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "preferMdmOverGroupPolicyAppliedDateTime" => lambda {|n| @prefer_mdm_over_group_policy_applied_date_time = n.get_date_time_value() },
                "processorArchitecture" => lambda {|n| @processor_architecture = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceArchitecture) },
                "remoteAssistanceSessionErrorDetails" => lambda {|n| @remote_assistance_session_error_details = n.get_string_value() },
                "remoteAssistanceSessionUrl" => lambda {|n| @remote_assistance_session_url = n.get_string_value() },
                "requireUserEnrollmentApproval" => lambda {|n| @require_user_enrollment_approval = n.get_boolean_value() },
                "retireAfterDateTime" => lambda {|n| @retire_after_date_time = n.get_date_time_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "securityBaselineStates" => lambda {|n| @security_baseline_states = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityBaselineState.create_from_discriminator_value(pn) }) },
                "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                "skuFamily" => lambda {|n| @sku_family = n.get_string_value() },
                "skuNumber" => lambda {|n| @sku_number = n.get_number_value() },
                "specificationVersion" => lambda {|n| @specification_version = n.get_string_value() },
                "subscriberCarrier" => lambda {|n| @subscriber_carrier = n.get_string_value() },
                "totalStorageSpaceInBytes" => lambda {|n| @total_storage_space_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "udid" => lambda {|n| @udid = n.get_string_value() },
                "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                "userId" => lambda {|n| @user_id = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                "users" => lambda {|n| @users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::User.create_from_discriminator_value(pn) }) },
                "usersLoggedOn" => lambda {|n| @users_logged_on = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::LoggedOnUser.create_from_discriminator_value(pn) }) },
                "wiFiMacAddress" => lambda {|n| @wi_fi_mac_address = n.get_string_value() },
                "windowsActiveMalwareCount" => lambda {|n| @windows_active_malware_count = n.get_number_value() },
                "windowsProtectionState" => lambda {|n| @windows_protection_state = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsProtectionState.create_from_discriminator_value(pn) }) },
                "windowsRemediatedMalwareCount" => lambda {|n| @windows_remediated_malware_count = n.get_number_value() },
            })
        end
        ## 
        ## Gets the hardwareInformation property value. The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Return default value in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @return a hardware_information
        ## 
        def hardware_information
            return @hardware_information
        end
        ## 
        ## Sets the hardwareInformation property value. The hardward details for the device.  Includes information such as storage space, manufacturer, serial number, etc. Return default value in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @param value Value to set for the hardware_information property.
        ## @return a void
        ## 
        def hardware_information=(value)
            @hardware_information = value
        end
        ## 
        ## Gets the iccid property value. Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @return a string
        ## 
        def iccid
            return @iccid
        end
        ## 
        ## Sets the iccid property value. Integrated Circuit Card Identifier, it is A SIM card's unique identification number. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @param value Value to set for the iccid property.
        ## @return a void
        ## 
        def iccid=(value)
            @iccid = value
        end
        ## 
        ## Gets the imei property value. IMEI. This property is read-only.
        ## @return a string
        ## 
        def imei
            return @imei
        end
        ## 
        ## Sets the imei property value. IMEI. This property is read-only.
        ## @param value Value to set for the imei property.
        ## @return a void
        ## 
        def imei=(value)
            @imei = value
        end
        ## 
        ## Gets the isEncrypted property value. Device encryption status. This property is read-only.
        ## @return a boolean
        ## 
        def is_encrypted
            return @is_encrypted
        end
        ## 
        ## Sets the isEncrypted property value. Device encryption status. This property is read-only.
        ## @param value Value to set for the is_encrypted property.
        ## @return a void
        ## 
        def is_encrypted=(value)
            @is_encrypted = value
        end
        ## 
        ## Gets the isSupervised property value. Device supervised status. This property is read-only.
        ## @return a boolean
        ## 
        def is_supervised
            return @is_supervised
        end
        ## 
        ## Sets the isSupervised property value. Device supervised status. This property is read-only.
        ## @param value Value to set for the is_supervised property.
        ## @return a void
        ## 
        def is_supervised=(value)
            @is_supervised = value
        end
        ## 
        ## Gets the jailBroken property value. whether the device is jail broken or rooted. This property is read-only.
        ## @return a string
        ## 
        def jail_broken
            return @jail_broken
        end
        ## 
        ## Sets the jailBroken property value. whether the device is jail broken or rooted. This property is read-only.
        ## @param value Value to set for the jail_broken property.
        ## @return a void
        ## 
        def jail_broken=(value)
            @jail_broken = value
        end
        ## 
        ## Gets the joinType property value. Device enrollment join type.
        ## @return a join_type
        ## 
        def join_type
            return @join_type
        end
        ## 
        ## Sets the joinType property value. Device enrollment join type.
        ## @param value Value to set for the join_type property.
        ## @return a void
        ## 
        def join_type=(value)
            @join_type = value
        end
        ## 
        ## Gets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Intune. This property is read-only.
        ## @return a date_time
        ## 
        def last_sync_date_time
            return @last_sync_date_time
        end
        ## 
        ## Sets the lastSyncDateTime property value. The date and time that the device last completed a successful sync with Intune. This property is read-only.
        ## @param value Value to set for the last_sync_date_time property.
        ## @return a void
        ## 
        def last_sync_date_time=(value)
            @last_sync_date_time = value
        end
        ## 
        ## Gets the logCollectionRequests property value. List of log collection requests
        ## @return a device_log_collection_response
        ## 
        def log_collection_requests
            return @log_collection_requests
        end
        ## 
        ## Sets the logCollectionRequests property value. List of log collection requests
        ## @param value Value to set for the log_collection_requests property.
        ## @return a void
        ## 
        def log_collection_requests=(value)
            @log_collection_requests = value
        end
        ## 
        ## Gets the lostModeState property value. State of lost mode, indicating if lost mode is enabled or disabled
        ## @return a lost_mode_state
        ## 
        def lost_mode_state
            return @lost_mode_state
        end
        ## 
        ## Sets the lostModeState property value. State of lost mode, indicating if lost mode is enabled or disabled
        ## @param value Value to set for the lost_mode_state property.
        ## @return a void
        ## 
        def lost_mode_state=(value)
            @lost_mode_state = value
        end
        ## 
        ## Gets the managedDeviceMobileAppConfigurationStates property value. Managed device mobile app configuration states for this device.
        ## @return a managed_device_mobile_app_configuration_state
        ## 
        def managed_device_mobile_app_configuration_states
            return @managed_device_mobile_app_configuration_states
        end
        ## 
        ## Sets the managedDeviceMobileAppConfigurationStates property value. Managed device mobile app configuration states for this device.
        ## @param value Value to set for the managed_device_mobile_app_configuration_states property.
        ## @return a void
        ## 
        def managed_device_mobile_app_configuration_states=(value)
            @managed_device_mobile_app_configuration_states = value
        end
        ## 
        ## Gets the managedDeviceName property value. Automatically generated name to identify a device. Can be overwritten to a user friendly name.
        ## @return a string
        ## 
        def managed_device_name
            return @managed_device_name
        end
        ## 
        ## Sets the managedDeviceName property value. Automatically generated name to identify a device. Can be overwritten to a user friendly name.
        ## @param value Value to set for the managed_device_name property.
        ## @return a void
        ## 
        def managed_device_name=(value)
            @managed_device_name = value
        end
        ## 
        ## Gets the managedDeviceOwnerType property value. Owner type of device.
        ## @return a managed_device_owner_type
        ## 
        def managed_device_owner_type
            return @managed_device_owner_type
        end
        ## 
        ## Sets the managedDeviceOwnerType property value. Owner type of device.
        ## @param value Value to set for the managed_device_owner_type property.
        ## @return a void
        ## 
        def managed_device_owner_type=(value)
            @managed_device_owner_type = value
        end
        ## 
        ## Gets the managementAgent property value. Management agent type.
        ## @return a management_agent_type
        ## 
        def management_agent
            return @management_agent
        end
        ## 
        ## Sets the managementAgent property value. Management agent type.
        ## @param value Value to set for the management_agent property.
        ## @return a void
        ## 
        def management_agent=(value)
            @management_agent = value
        end
        ## 
        ## Gets the managementCertificateExpirationDate property value. Reports device management certificate expiration date. This property is read-only.
        ## @return a date_time
        ## 
        def management_certificate_expiration_date
            return @management_certificate_expiration_date
        end
        ## 
        ## Sets the managementCertificateExpirationDate property value. Reports device management certificate expiration date. This property is read-only.
        ## @param value Value to set for the management_certificate_expiration_date property.
        ## @return a void
        ## 
        def management_certificate_expiration_date=(value)
            @management_certificate_expiration_date = value
        end
        ## 
        ## Gets the managementFeatures property value. Device management features.
        ## @return a managed_device_management_features
        ## 
        def management_features
            return @management_features
        end
        ## 
        ## Sets the managementFeatures property value. Device management features.
        ## @param value Value to set for the management_features property.
        ## @return a void
        ## 
        def management_features=(value)
            @management_features = value
        end
        ## 
        ## Gets the managementState property value. Management state of device in Microsoft Intune.
        ## @return a management_state
        ## 
        def management_state
            return @management_state
        end
        ## 
        ## Sets the managementState property value. Management state of device in Microsoft Intune.
        ## @param value Value to set for the management_state property.
        ## @return a void
        ## 
        def management_state=(value)
            @management_state = value
        end
        ## 
        ## Gets the manufacturer property value. Manufacturer of the device. This property is read-only.
        ## @return a string
        ## 
        def manufacturer
            return @manufacturer
        end
        ## 
        ## Sets the manufacturer property value. Manufacturer of the device. This property is read-only.
        ## @param value Value to set for the manufacturer property.
        ## @return a void
        ## 
        def manufacturer=(value)
            @manufacturer = value
        end
        ## 
        ## Gets the meid property value. MEID. This property is read-only.
        ## @return a string
        ## 
        def meid
            return @meid
        end
        ## 
        ## Sets the meid property value. MEID. This property is read-only.
        ## @param value Value to set for the meid property.
        ## @return a void
        ## 
        def meid=(value)
            @meid = value
        end
        ## 
        ## Gets the model property value. Model of the device. This property is read-only.
        ## @return a string
        ## 
        def model
            return @model
        end
        ## 
        ## Sets the model property value. Model of the device. This property is read-only.
        ## @param value Value to set for the model property.
        ## @return a void
        ## 
        def model=(value)
            @model = value
        end
        ## 
        ## Gets the notes property value. Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
        ## @return a string
        ## 
        def notes
            return @notes
        end
        ## 
        ## Sets the notes property value. Notes on the device created by IT Admin. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select.  $Search is not supported.
        ## @param value Value to set for the notes property.
        ## @return a void
        ## 
        def notes=(value)
            @notes = value
        end
        ## 
        ## Gets the operatingSystem property value. Operating system of the device. Windows, iOS, etc. This property is read-only.
        ## @return a string
        ## 
        def operating_system
            return @operating_system
        end
        ## 
        ## Sets the operatingSystem property value. Operating system of the device. Windows, iOS, etc. This property is read-only.
        ## @param value Value to set for the operating_system property.
        ## @return a void
        ## 
        def operating_system=(value)
            @operating_system = value
        end
        ## 
        ## Gets the osVersion property value. Operating system version of the device. This property is read-only.
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. Operating system version of the device. This property is read-only.
        ## @param value Value to set for the os_version property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Gets the ownerType property value. Owner type of device.
        ## @return a owner_type
        ## 
        def owner_type
            return @owner_type
        end
        ## 
        ## Sets the ownerType property value. Owner type of device.
        ## @param value Value to set for the owner_type property.
        ## @return a void
        ## 
        def owner_type=(value)
            @owner_type = value
        end
        ## 
        ## Gets the partnerReportedThreatState property value. Available health states for the Device Health API
        ## @return a managed_device_partner_reported_health_state
        ## 
        def partner_reported_threat_state
            return @partner_reported_threat_state
        end
        ## 
        ## Sets the partnerReportedThreatState property value. Available health states for the Device Health API
        ## @param value Value to set for the partner_reported_threat_state property.
        ## @return a void
        ## 
        def partner_reported_threat_state=(value)
            @partner_reported_threat_state = value
        end
        ## 
        ## Gets the phoneNumber property value. Phone number of the device. This property is read-only.
        ## @return a string
        ## 
        def phone_number
            return @phone_number
        end
        ## 
        ## Sets the phoneNumber property value. Phone number of the device. This property is read-only.
        ## @param value Value to set for the phone_number property.
        ## @return a void
        ## 
        def phone_number=(value)
            @phone_number = value
        end
        ## 
        ## Gets the physicalMemoryInBytes property value. Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
        ## @return a int64
        ## 
        def physical_memory_in_bytes
            return @physical_memory_in_bytes
        end
        ## 
        ## Sets the physicalMemoryInBytes property value. Total Memory in Bytes. Return default value 0 in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. Default value is 0. Read-only. This property is read-only.
        ## @param value Value to set for the physical_memory_in_bytes property.
        ## @return a void
        ## 
        def physical_memory_in_bytes=(value)
            @physical_memory_in_bytes = value
        end
        ## 
        ## Gets the preferMdmOverGroupPolicyAppliedDateTime property value. Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. This property is read-only.
        ## @return a date_time
        ## 
        def prefer_mdm_over_group_policy_applied_date_time
            return @prefer_mdm_over_group_policy_applied_date_time
        end
        ## 
        ## Sets the preferMdmOverGroupPolicyAppliedDateTime property value. Reports the DateTime the preferMdmOverGroupPolicy setting was set.  When set, the Intune MDM settings will override Group Policy settings if there is a conflict. Read Only. This property is read-only.
        ## @param value Value to set for the prefer_mdm_over_group_policy_applied_date_time property.
        ## @return a void
        ## 
        def prefer_mdm_over_group_policy_applied_date_time=(value)
            @prefer_mdm_over_group_policy_applied_date_time = value
        end
        ## 
        ## Gets the processorArchitecture property value. Processor architecture
        ## @return a managed_device_architecture
        ## 
        def processor_architecture
            return @processor_architecture
        end
        ## 
        ## Sets the processorArchitecture property value. Processor architecture
        ## @param value Value to set for the processor_architecture property.
        ## @return a void
        ## 
        def processor_architecture=(value)
            @processor_architecture = value
        end
        ## 
        ## Gets the remoteAssistanceSessionErrorDetails property value. An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
        ## @return a string
        ## 
        def remote_assistance_session_error_details
            return @remote_assistance_session_error_details
        end
        ## 
        ## Sets the remoteAssistanceSessionErrorDetails property value. An error string that identifies issues when creating Remote Assistance session objects. This property is read-only.
        ## @param value Value to set for the remote_assistance_session_error_details property.
        ## @return a void
        ## 
        def remote_assistance_session_error_details=(value)
            @remote_assistance_session_error_details = value
        end
        ## 
        ## Gets the remoteAssistanceSessionUrl property value. Url that allows a Remote Assistance session to be established with the device. This property is read-only.
        ## @return a string
        ## 
        def remote_assistance_session_url
            return @remote_assistance_session_url
        end
        ## 
        ## Sets the remoteAssistanceSessionUrl property value. Url that allows a Remote Assistance session to be established with the device. This property is read-only.
        ## @param value Value to set for the remote_assistance_session_url property.
        ## @return a void
        ## 
        def remote_assistance_session_url=(value)
            @remote_assistance_session_url = value
        end
        ## 
        ## Gets the requireUserEnrollmentApproval property value. Reports if the managed iOS device is user approval enrollment. This property is read-only.
        ## @return a boolean
        ## 
        def require_user_enrollment_approval
            return @require_user_enrollment_approval
        end
        ## 
        ## Sets the requireUserEnrollmentApproval property value. Reports if the managed iOS device is user approval enrollment. This property is read-only.
        ## @param value Value to set for the require_user_enrollment_approval property.
        ## @return a void
        ## 
        def require_user_enrollment_approval=(value)
            @require_user_enrollment_approval = value
        end
        ## 
        ## Gets the retireAfterDateTime property value. Indicates the time after when a device will be auto retired because of scheduled action. This property is read-only.
        ## @return a date_time
        ## 
        def retire_after_date_time
            return @retire_after_date_time
        end
        ## 
        ## Sets the retireAfterDateTime property value. Indicates the time after when a device will be auto retired because of scheduled action. This property is read-only.
        ## @param value Value to set for the retire_after_date_time property.
        ## @return a void
        ## 
        def retire_after_date_time=(value)
            @retire_after_date_time = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. List of Scope Tag IDs for this Device instance.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. List of Scope Tag IDs for this Device instance.
        ## @param value Value to set for the role_scope_tag_ids property.
        ## @return a void
        ## 
        def role_scope_tag_ids=(value)
            @role_scope_tag_ids = value
        end
        ## 
        ## Gets the securityBaselineStates property value. Security baseline states for this device.
        ## @return a security_baseline_state
        ## 
        def security_baseline_states
            return @security_baseline_states
        end
        ## 
        ## Sets the securityBaselineStates property value. Security baseline states for this device.
        ## @param value Value to set for the security_baseline_states property.
        ## @return a void
        ## 
        def security_baseline_states=(value)
            @security_baseline_states = value
        end
        ## 
        ## Gets the serialNumber property value. SerialNumber. This property is read-only.
        ## @return a string
        ## 
        def serial_number
            return @serial_number
        end
        ## 
        ## Sets the serialNumber property value. SerialNumber. This property is read-only.
        ## @param value Value to set for the serial_number property.
        ## @return a void
        ## 
        def serial_number=(value)
            @serial_number = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("assignmentFilterEvaluationStatusDetails", @assignment_filter_evaluation_status_details)
            writer.write_enum_value("chassisType", @chassis_type)
            writer.write_collection_of_object_values("chromeOSDeviceInfo", @chrome_o_s_device_info)
            writer.write_collection_of_object_values("cloudPcRemoteActionResults", @cloud_pc_remote_action_results)
            writer.write_enum_value("complianceState", @compliance_state)
            writer.write_object_value("configurationManagerClientHealthState", @configuration_manager_client_health_state)
            writer.write_object_value("configurationManagerClientInformation", @configuration_manager_client_information)
            writer.write_collection_of_object_values("detectedApps", @detected_apps)
            writer.write_object_value("deviceCategory", @device_category)
            writer.write_collection_of_object_values("deviceCompliancePolicyStates", @device_compliance_policy_states)
            writer.write_collection_of_object_values("deviceConfigurationStates", @device_configuration_states)
            writer.write_enum_value("deviceEnrollmentType", @device_enrollment_type)
            writer.write_boolean_value("deviceFirmwareConfigurationInterfaceManaged", @device_firmware_configuration_interface_managed)
            writer.write_collection_of_object_values("deviceHealthScriptStates", @device_health_script_states)
            writer.write_enum_value("deviceRegistrationState", @device_registration_state)
            writer.write_enum_value("deviceType", @device_type)
            writer.write_enum_value("exchangeAccessState", @exchange_access_state)
            writer.write_enum_value("exchangeAccessStateReason", @exchange_access_state_reason)
            writer.write_enum_value("joinType", @join_type)
            writer.write_collection_of_object_values("logCollectionRequests", @log_collection_requests)
            writer.write_enum_value("lostModeState", @lost_mode_state)
            writer.write_collection_of_object_values("managedDeviceMobileAppConfigurationStates", @managed_device_mobile_app_configuration_states)
            writer.write_string_value("managedDeviceName", @managed_device_name)
            writer.write_enum_value("managedDeviceOwnerType", @managed_device_owner_type)
            writer.write_enum_value("managementAgent", @management_agent)
            writer.write_enum_value("managementFeatures", @management_features)
            writer.write_enum_value("managementState", @management_state)
            writer.write_string_value("notes", @notes)
            writer.write_enum_value("ownerType", @owner_type)
            writer.write_enum_value("partnerReportedThreatState", @partner_reported_threat_state)
            writer.write_enum_value("processorArchitecture", @processor_architecture)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_collection_of_object_values("securityBaselineStates", @security_baseline_states)
            writer.write_string_value("skuFamily", @sku_family)
            writer.write_collection_of_object_values("users", @users)
            writer.write_object_value("windowsProtectionState", @windows_protection_state)
        end
        ## 
        ## Gets the skuFamily property value. Device sku family
        ## @return a string
        ## 
        def sku_family
            return @sku_family
        end
        ## 
        ## Sets the skuFamily property value. Device sku family
        ## @param value Value to set for the sku_family property.
        ## @return a void
        ## 
        def sku_family=(value)
            @sku_family = value
        end
        ## 
        ## Gets the skuNumber property value. Device sku number, see also: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo. Valid values 0 to 2147483647. This property is read-only.
        ## @return a integer
        ## 
        def sku_number
            return @sku_number
        end
        ## 
        ## Sets the skuNumber property value. Device sku number, see also: https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo. Valid values 0 to 2147483647. This property is read-only.
        ## @param value Value to set for the sku_number property.
        ## @return a void
        ## 
        def sku_number=(value)
            @sku_number = value
        end
        ## 
        ## Gets the specificationVersion property value. Specification version. This property is read-only.
        ## @return a string
        ## 
        def specification_version
            return @specification_version
        end
        ## 
        ## Sets the specificationVersion property value. Specification version. This property is read-only.
        ## @param value Value to set for the specification_version property.
        ## @return a void
        ## 
        def specification_version=(value)
            @specification_version = value
        end
        ## 
        ## Gets the subscriberCarrier property value. Subscriber Carrier. This property is read-only.
        ## @return a string
        ## 
        def subscriber_carrier
            return @subscriber_carrier
        end
        ## 
        ## Sets the subscriberCarrier property value. Subscriber Carrier. This property is read-only.
        ## @param value Value to set for the subscriber_carrier property.
        ## @return a void
        ## 
        def subscriber_carrier=(value)
            @subscriber_carrier = value
        end
        ## 
        ## Gets the totalStorageSpaceInBytes property value. Total Storage in Bytes. This property is read-only.
        ## @return a int64
        ## 
        def total_storage_space_in_bytes
            return @total_storage_space_in_bytes
        end
        ## 
        ## Sets the totalStorageSpaceInBytes property value. Total Storage in Bytes. This property is read-only.
        ## @param value Value to set for the total_storage_space_in_bytes property.
        ## @return a void
        ## 
        def total_storage_space_in_bytes=(value)
            @total_storage_space_in_bytes = value
        end
        ## 
        ## Gets the udid property value. Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @return a string
        ## 
        def udid
            return @udid
        end
        ## 
        ## Sets the udid property value. Unique Device Identifier for iOS and macOS devices. Return default value null in LIST managedDevices. Real value only returned in singel device GET call with device id and included in select parameter. Supports: $select. $Search is not supported. Read-only. This property is read-only.
        ## @param value Value to set for the udid property.
        ## @return a void
        ## 
        def udid=(value)
            @udid = value
        end
        ## 
        ## Gets the userDisplayName property value. User display name. This property is read-only.
        ## @return a string
        ## 
        def user_display_name
            return @user_display_name
        end
        ## 
        ## Sets the userDisplayName property value. User display name. This property is read-only.
        ## @param value Value to set for the user_display_name property.
        ## @return a void
        ## 
        def user_display_name=(value)
            @user_display_name = value
        end
        ## 
        ## Gets the userId property value. Unique Identifier for the user associated with the device. This property is read-only.
        ## @return a string
        ## 
        def user_id
            return @user_id
        end
        ## 
        ## Sets the userId property value. Unique Identifier for the user associated with the device. This property is read-only.
        ## @param value Value to set for the user_id property.
        ## @return a void
        ## 
        def user_id=(value)
            @user_id = value
        end
        ## 
        ## Gets the userPrincipalName property value. Device user principal name. This property is read-only.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. Device user principal name. This property is read-only.
        ## @param value Value to set for the user_principal_name property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
        ## 
        ## Gets the users property value. The primary users associated with the managed device.
        ## @return a user
        ## 
        def users
            return @users
        end
        ## 
        ## Sets the users property value. The primary users associated with the managed device.
        ## @param value Value to set for the users property.
        ## @return a void
        ## 
        def users=(value)
            @users = value
        end
        ## 
        ## Gets the usersLoggedOn property value. Indicates the last logged on users of a device. This property is read-only.
        ## @return a logged_on_user
        ## 
        def users_logged_on
            return @users_logged_on
        end
        ## 
        ## Sets the usersLoggedOn property value. Indicates the last logged on users of a device. This property is read-only.
        ## @param value Value to set for the users_logged_on property.
        ## @return a void
        ## 
        def users_logged_on=(value)
            @users_logged_on = value
        end
        ## 
        ## Gets the wiFiMacAddress property value. Wi-Fi MAC. This property is read-only.
        ## @return a string
        ## 
        def wi_fi_mac_address
            return @wi_fi_mac_address
        end
        ## 
        ## Sets the wiFiMacAddress property value. Wi-Fi MAC. This property is read-only.
        ## @param value Value to set for the wi_fi_mac_address property.
        ## @return a void
        ## 
        def wi_fi_mac_address=(value)
            @wi_fi_mac_address = value
        end
        ## 
        ## Gets the windowsActiveMalwareCount property value. Count of active malware for this windows device. This property is read-only.
        ## @return a integer
        ## 
        def windows_active_malware_count
            return @windows_active_malware_count
        end
        ## 
        ## Sets the windowsActiveMalwareCount property value. Count of active malware for this windows device. This property is read-only.
        ## @param value Value to set for the windows_active_malware_count property.
        ## @return a void
        ## 
        def windows_active_malware_count=(value)
            @windows_active_malware_count = value
        end
        ## 
        ## Gets the windowsProtectionState property value. The device protection status. This property is read-only.
        ## @return a windows_protection_state
        ## 
        def windows_protection_state
            return @windows_protection_state
        end
        ## 
        ## Sets the windowsProtectionState property value. The device protection status. This property is read-only.
        ## @param value Value to set for the windows_protection_state property.
        ## @return a void
        ## 
        def windows_protection_state=(value)
            @windows_protection_state = value
        end
        ## 
        ## Gets the windowsRemediatedMalwareCount property value. Count of remediated malware for this windows device. This property is read-only.
        ## @return a integer
        ## 
        def windows_remediated_malware_count
            return @windows_remediated_malware_count
        end
        ## 
        ## Sets the windowsRemediatedMalwareCount property value. Count of remediated malware for this windows device. This property is read-only.
        ## @param value Value to set for the windows_remediated_malware_count property.
        ## @return a void
        ## 
        def windows_remediated_malware_count=(value)
            @windows_remediated_malware_count = value
        end
    end
end
