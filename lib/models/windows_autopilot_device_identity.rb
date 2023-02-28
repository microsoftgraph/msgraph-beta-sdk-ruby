require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The windowsAutopilotDeviceIdentity resource represents a Windows Autopilot Device.
        class WindowsAutopilotDeviceIdentity < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Addressable user name.
            @addressable_user_name
            ## 
            # AAD Device ID - to be deprecated
            @azure_active_directory_device_id
            ## 
            # AAD Device ID
            @azure_ad_device_id
            ## 
            # Deployment profile currently assigned to the Windows autopilot device.
            @deployment_profile
            ## 
            # Profile set time of the Windows autopilot device.
            @deployment_profile_assigned_date_time
            ## 
            # The deploymentProfileAssignmentDetailedStatus property
            @deployment_profile_assignment_detailed_status
            ## 
            # The deploymentProfileAssignmentStatus property
            @deployment_profile_assignment_status
            ## 
            # Surface Hub Device Account Password
            @device_account_password
            ## 
            # Surface Hub Device Account Upn
            @device_account_upn
            ## 
            # Surface Hub Device Friendly Name
            @device_friendly_name
            ## 
            # Display Name
            @display_name
            ## 
            # The enrollmentState property
            @enrollment_state
            ## 
            # Group Tag of the Windows autopilot device.
            @group_tag
            ## 
            # Deployment profile intended to be assigned to the Windows autopilot device.
            @intended_deployment_profile
            ## 
            # Intune Last Contacted Date Time of the Windows autopilot device.
            @last_contacted_date_time
            ## 
            # Managed Device ID
            @managed_device_id
            ## 
            # Oem manufacturer of the Windows autopilot device.
            @manufacturer
            ## 
            # Model name of the Windows autopilot device.
            @model
            ## 
            # Product Key of the Windows autopilot device.
            @product_key
            ## 
            # Purchase Order Identifier of the Windows autopilot device.
            @purchase_order_identifier
            ## 
            # Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device.
            @remediation_state
            ## 
            # RemediationState set time of Autopilot device.
            @remediation_state_last_modified_date_time
            ## 
            # Resource Name.
            @resource_name
            ## 
            # Serial number of the Windows autopilot device.
            @serial_number
            ## 
            # SKU Number
            @sku_number
            ## 
            # System Family
            @system_family
            ## 
            # User Principal Name.
            @user_principal_name
            ## 
            ## Gets the addressableUserName property value. Addressable user name.
            ## @return a string
            ## 
            def addressable_user_name
                return @addressable_user_name
            end
            ## 
            ## Sets the addressableUserName property value. Addressable user name.
            ## @param value Value to set for the addressable_user_name property.
            ## @return a void
            ## 
            def addressable_user_name=(value)
                @addressable_user_name = value
            end
            ## 
            ## Gets the azureActiveDirectoryDeviceId property value. AAD Device ID - to be deprecated
            ## @return a string
            ## 
            def azure_active_directory_device_id
                return @azure_active_directory_device_id
            end
            ## 
            ## Sets the azureActiveDirectoryDeviceId property value. AAD Device ID - to be deprecated
            ## @param value Value to set for the azure_active_directory_device_id property.
            ## @return a void
            ## 
            def azure_active_directory_device_id=(value)
                @azure_active_directory_device_id = value
            end
            ## 
            ## Gets the azureAdDeviceId property value. AAD Device ID
            ## @return a string
            ## 
            def azure_ad_device_id
                return @azure_ad_device_id
            end
            ## 
            ## Sets the azureAdDeviceId property value. AAD Device ID
            ## @param value Value to set for the azure_ad_device_id property.
            ## @return a void
            ## 
            def azure_ad_device_id=(value)
                @azure_ad_device_id = value
            end
            ## 
            ## Instantiates a new windowsAutopilotDeviceIdentity and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_autopilot_device_identity
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAutopilotDeviceIdentity.new
            end
            ## 
            ## Gets the deploymentProfile property value. Deployment profile currently assigned to the Windows autopilot device.
            ## @return a windows_autopilot_deployment_profile
            ## 
            def deployment_profile
                return @deployment_profile
            end
            ## 
            ## Sets the deploymentProfile property value. Deployment profile currently assigned to the Windows autopilot device.
            ## @param value Value to set for the deployment_profile property.
            ## @return a void
            ## 
            def deployment_profile=(value)
                @deployment_profile = value
            end
            ## 
            ## Gets the deploymentProfileAssignedDateTime property value. Profile set time of the Windows autopilot device.
            ## @return a date_time
            ## 
            def deployment_profile_assigned_date_time
                return @deployment_profile_assigned_date_time
            end
            ## 
            ## Sets the deploymentProfileAssignedDateTime property value. Profile set time of the Windows autopilot device.
            ## @param value Value to set for the deployment_profile_assigned_date_time property.
            ## @return a void
            ## 
            def deployment_profile_assigned_date_time=(value)
                @deployment_profile_assigned_date_time = value
            end
            ## 
            ## Gets the deploymentProfileAssignmentDetailedStatus property value. The deploymentProfileAssignmentDetailedStatus property
            ## @return a windows_autopilot_profile_assignment_detailed_status
            ## 
            def deployment_profile_assignment_detailed_status
                return @deployment_profile_assignment_detailed_status
            end
            ## 
            ## Sets the deploymentProfileAssignmentDetailedStatus property value. The deploymentProfileAssignmentDetailedStatus property
            ## @param value Value to set for the deployment_profile_assignment_detailed_status property.
            ## @return a void
            ## 
            def deployment_profile_assignment_detailed_status=(value)
                @deployment_profile_assignment_detailed_status = value
            end
            ## 
            ## Gets the deploymentProfileAssignmentStatus property value. The deploymentProfileAssignmentStatus property
            ## @return a windows_autopilot_profile_assignment_status
            ## 
            def deployment_profile_assignment_status
                return @deployment_profile_assignment_status
            end
            ## 
            ## Sets the deploymentProfileAssignmentStatus property value. The deploymentProfileAssignmentStatus property
            ## @param value Value to set for the deployment_profile_assignment_status property.
            ## @return a void
            ## 
            def deployment_profile_assignment_status=(value)
                @deployment_profile_assignment_status = value
            end
            ## 
            ## Gets the deviceAccountPassword property value. Surface Hub Device Account Password
            ## @return a string
            ## 
            def device_account_password
                return @device_account_password
            end
            ## 
            ## Sets the deviceAccountPassword property value. Surface Hub Device Account Password
            ## @param value Value to set for the device_account_password property.
            ## @return a void
            ## 
            def device_account_password=(value)
                @device_account_password = value
            end
            ## 
            ## Gets the deviceAccountUpn property value. Surface Hub Device Account Upn
            ## @return a string
            ## 
            def device_account_upn
                return @device_account_upn
            end
            ## 
            ## Sets the deviceAccountUpn property value. Surface Hub Device Account Upn
            ## @param value Value to set for the device_account_upn property.
            ## @return a void
            ## 
            def device_account_upn=(value)
                @device_account_upn = value
            end
            ## 
            ## Gets the deviceFriendlyName property value. Surface Hub Device Friendly Name
            ## @return a string
            ## 
            def device_friendly_name
                return @device_friendly_name
            end
            ## 
            ## Sets the deviceFriendlyName property value. Surface Hub Device Friendly Name
            ## @param value Value to set for the device_friendly_name property.
            ## @return a void
            ## 
            def device_friendly_name=(value)
                @device_friendly_name = value
            end
            ## 
            ## Gets the displayName property value. Display Name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display Name
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
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
            ## @param value Value to set for the enrollment_state property.
            ## @return a void
            ## 
            def enrollment_state=(value)
                @enrollment_state = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "addressableUserName" => lambda {|n| @addressable_user_name = n.get_string_value() },
                    "azureActiveDirectoryDeviceId" => lambda {|n| @azure_active_directory_device_id = n.get_string_value() },
                    "azureAdDeviceId" => lambda {|n| @azure_ad_device_id = n.get_string_value() },
                    "deploymentProfile" => lambda {|n| @deployment_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentProfile.create_from_discriminator_value(pn) }) },
                    "deploymentProfileAssignedDateTime" => lambda {|n| @deployment_profile_assigned_date_time = n.get_date_time_value() },
                    "deploymentProfileAssignmentDetailedStatus" => lambda {|n| @deployment_profile_assignment_detailed_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotProfileAssignmentDetailedStatus) },
                    "deploymentProfileAssignmentStatus" => lambda {|n| @deployment_profile_assignment_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotProfileAssignmentStatus) },
                    "deviceAccountPassword" => lambda {|n| @device_account_password = n.get_string_value() },
                    "deviceAccountUpn" => lambda {|n| @device_account_upn = n.get_string_value() },
                    "deviceFriendlyName" => lambda {|n| @device_friendly_name = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enrollmentState" => lambda {|n| @enrollment_state = n.get_enum_value(MicrosoftGraphBeta::Models::EnrollmentState) },
                    "groupTag" => lambda {|n| @group_tag = n.get_string_value() },
                    "intendedDeploymentProfile" => lambda {|n| @intended_deployment_profile = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsAutopilotDeploymentProfile.create_from_discriminator_value(pn) }) },
                    "lastContactedDateTime" => lambda {|n| @last_contacted_date_time = n.get_date_time_value() },
                    "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                    "manufacturer" => lambda {|n| @manufacturer = n.get_string_value() },
                    "model" => lambda {|n| @model = n.get_string_value() },
                    "productKey" => lambda {|n| @product_key = n.get_string_value() },
                    "purchaseOrderIdentifier" => lambda {|n| @purchase_order_identifier = n.get_string_value() },
                    "remediationState" => lambda {|n| @remediation_state = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotDeviceRemediationState) },
                    "remediationStateLastModifiedDateTime" => lambda {|n| @remediation_state_last_modified_date_time = n.get_date_time_value() },
                    "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
                    "serialNumber" => lambda {|n| @serial_number = n.get_string_value() },
                    "skuNumber" => lambda {|n| @sku_number = n.get_string_value() },
                    "systemFamily" => lambda {|n| @system_family = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @return a string
            ## 
            def group_tag
                return @group_tag
            end
            ## 
            ## Sets the groupTag property value. Group Tag of the Windows autopilot device.
            ## @param value Value to set for the group_tag property.
            ## @return a void
            ## 
            def group_tag=(value)
                @group_tag = value
            end
            ## 
            ## Gets the intendedDeploymentProfile property value. Deployment profile intended to be assigned to the Windows autopilot device.
            ## @return a windows_autopilot_deployment_profile
            ## 
            def intended_deployment_profile
                return @intended_deployment_profile
            end
            ## 
            ## Sets the intendedDeploymentProfile property value. Deployment profile intended to be assigned to the Windows autopilot device.
            ## @param value Value to set for the intended_deployment_profile property.
            ## @return a void
            ## 
            def intended_deployment_profile=(value)
                @intended_deployment_profile = value
            end
            ## 
            ## Gets the lastContactedDateTime property value. Intune Last Contacted Date Time of the Windows autopilot device.
            ## @return a date_time
            ## 
            def last_contacted_date_time
                return @last_contacted_date_time
            end
            ## 
            ## Sets the lastContactedDateTime property value. Intune Last Contacted Date Time of the Windows autopilot device.
            ## @param value Value to set for the last_contacted_date_time property.
            ## @return a void
            ## 
            def last_contacted_date_time=(value)
                @last_contacted_date_time = value
            end
            ## 
            ## Gets the managedDeviceId property value. Managed Device ID
            ## @return a string
            ## 
            def managed_device_id
                return @managed_device_id
            end
            ## 
            ## Sets the managedDeviceId property value. Managed Device ID
            ## @param value Value to set for the managed_device_id property.
            ## @return a void
            ## 
            def managed_device_id=(value)
                @managed_device_id = value
            end
            ## 
            ## Gets the manufacturer property value. Oem manufacturer of the Windows autopilot device.
            ## @return a string
            ## 
            def manufacturer
                return @manufacturer
            end
            ## 
            ## Sets the manufacturer property value. Oem manufacturer of the Windows autopilot device.
            ## @param value Value to set for the manufacturer property.
            ## @return a void
            ## 
            def manufacturer=(value)
                @manufacturer = value
            end
            ## 
            ## Gets the model property value. Model name of the Windows autopilot device.
            ## @return a string
            ## 
            def model
                return @model
            end
            ## 
            ## Sets the model property value. Model name of the Windows autopilot device.
            ## @param value Value to set for the model property.
            ## @return a void
            ## 
            def model=(value)
                @model = value
            end
            ## 
            ## Gets the productKey property value. Product Key of the Windows autopilot device.
            ## @return a string
            ## 
            def product_key
                return @product_key
            end
            ## 
            ## Sets the productKey property value. Product Key of the Windows autopilot device.
            ## @param value Value to set for the product_key property.
            ## @return a void
            ## 
            def product_key=(value)
                @product_key = value
            end
            ## 
            ## Gets the purchaseOrderIdentifier property value. Purchase Order Identifier of the Windows autopilot device.
            ## @return a string
            ## 
            def purchase_order_identifier
                return @purchase_order_identifier
            end
            ## 
            ## Sets the purchaseOrderIdentifier property value. Purchase Order Identifier of the Windows autopilot device.
            ## @param value Value to set for the purchase_order_identifier property.
            ## @return a void
            ## 
            def purchase_order_identifier=(value)
                @purchase_order_identifier = value
            end
            ## 
            ## Gets the remediationState property value. Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device.
            ## @return a windows_autopilot_device_remediation_state
            ## 
            def remediation_state
                return @remediation_state
            end
            ## 
            ## Sets the remediationState property value. Device remediation status, indicating whether or not hardware has been changed for an Autopilot-registered device.
            ## @param value Value to set for the remediation_state property.
            ## @return a void
            ## 
            def remediation_state=(value)
                @remediation_state = value
            end
            ## 
            ## Gets the remediationStateLastModifiedDateTime property value. RemediationState set time of Autopilot device.
            ## @return a date_time
            ## 
            def remediation_state_last_modified_date_time
                return @remediation_state_last_modified_date_time
            end
            ## 
            ## Sets the remediationStateLastModifiedDateTime property value. RemediationState set time of Autopilot device.
            ## @param value Value to set for the remediation_state_last_modified_date_time property.
            ## @return a void
            ## 
            def remediation_state_last_modified_date_time=(value)
                @remediation_state_last_modified_date_time = value
            end
            ## 
            ## Gets the resourceName property value. Resource Name.
            ## @return a string
            ## 
            def resource_name
                return @resource_name
            end
            ## 
            ## Sets the resourceName property value. Resource Name.
            ## @param value Value to set for the resource_name property.
            ## @return a void
            ## 
            def resource_name=(value)
                @resource_name = value
            end
            ## 
            ## Gets the serialNumber property value. Serial number of the Windows autopilot device.
            ## @return a string
            ## 
            def serial_number
                return @serial_number
            end
            ## 
            ## Sets the serialNumber property value. Serial number of the Windows autopilot device.
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
                writer.write_string_value("addressableUserName", @addressable_user_name)
                writer.write_string_value("azureActiveDirectoryDeviceId", @azure_active_directory_device_id)
                writer.write_string_value("azureAdDeviceId", @azure_ad_device_id)
                writer.write_object_value("deploymentProfile", @deployment_profile)
                writer.write_date_time_value("deploymentProfileAssignedDateTime", @deployment_profile_assigned_date_time)
                writer.write_enum_value("deploymentProfileAssignmentDetailedStatus", @deployment_profile_assignment_detailed_status)
                writer.write_enum_value("deploymentProfileAssignmentStatus", @deployment_profile_assignment_status)
                writer.write_string_value("deviceAccountPassword", @device_account_password)
                writer.write_string_value("deviceAccountUpn", @device_account_upn)
                writer.write_string_value("deviceFriendlyName", @device_friendly_name)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("enrollmentState", @enrollment_state)
                writer.write_string_value("groupTag", @group_tag)
                writer.write_object_value("intendedDeploymentProfile", @intended_deployment_profile)
                writer.write_date_time_value("lastContactedDateTime", @last_contacted_date_time)
                writer.write_string_value("managedDeviceId", @managed_device_id)
                writer.write_string_value("manufacturer", @manufacturer)
                writer.write_string_value("model", @model)
                writer.write_string_value("productKey", @product_key)
                writer.write_string_value("purchaseOrderIdentifier", @purchase_order_identifier)
                writer.write_enum_value("remediationState", @remediation_state)
                writer.write_date_time_value("remediationStateLastModifiedDateTime", @remediation_state_last_modified_date_time)
                writer.write_string_value("resourceName", @resource_name)
                writer.write_string_value("serialNumber", @serial_number)
                writer.write_string_value("skuNumber", @sku_number)
                writer.write_string_value("systemFamily", @system_family)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the skuNumber property value. SKU Number
            ## @return a string
            ## 
            def sku_number
                return @sku_number
            end
            ## 
            ## Sets the skuNumber property value. SKU Number
            ## @param value Value to set for the sku_number property.
            ## @return a void
            ## 
            def sku_number=(value)
                @sku_number = value
            end
            ## 
            ## Gets the systemFamily property value. System Family
            ## @return a string
            ## 
            def system_family
                return @system_family
            end
            ## 
            ## Sets the systemFamily property value. System Family
            ## @param value Value to set for the system_family property.
            ## @return a void
            ## 
            def system_family=(value)
                @system_family = value
            end
            ## 
            ## Gets the userPrincipalName property value. User Principal Name.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User Principal Name.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
