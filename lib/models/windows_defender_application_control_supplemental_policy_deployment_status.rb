require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Contains properties for the deployment state of a WindowsDefenderApplicationControl supplemental policy for a device.
    class WindowsDefenderApplicationControlSupplementalPolicyDeploymentStatus < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.
        @deployment_status
        ## 
        # Device ID.
        @device_id
        ## 
        # Device name.
        @device_name
        ## 
        # Last sync date time.
        @last_sync_date_time
        ## 
        # Windows OS Version Description.
        @os_description
        ## 
        # Windows OS Version.
        @os_version
        ## 
        # The navigation link to the WindowsDefenderApplicationControl supplemental policy.
        @policy
        ## 
        # Human readable version of the WindowsDefenderApplicationControl supplemental policy.
        @policy_version
        ## 
        # The name of the user of this device.
        @user_name
        ## 
        # User Principal Name.
        @user_principal_name
        ## 
        ## Instantiates a new windowsDefenderApplicationControlSupplementalPolicyDeploymentStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_defender_application_control_supplemental_policy_deployment_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsDefenderApplicationControlSupplementalPolicyDeploymentStatus.new
        end
        ## 
        ## Gets the deploymentStatus property value. Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.
        ## @return a windows_defender_application_control_supplemental_policy_statuses
        ## 
        def deployment_status
            return @deployment_status
        end
        ## 
        ## Sets the deploymentStatus property value. Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.
        ## @param value Value to set for the deployment_status property.
        ## @return a void
        ## 
        def deployment_status=(value)
            @deployment_status = value
        end
        ## 
        ## Gets the deviceId property value. Device ID.
        ## @return a string
        ## 
        def device_id
            return @device_id
        end
        ## 
        ## Sets the deviceId property value. Device ID.
        ## @param value Value to set for the device_id property.
        ## @return a void
        ## 
        def device_id=(value)
            @device_id = value
        end
        ## 
        ## Gets the deviceName property value. Device name.
        ## @return a string
        ## 
        def device_name
            return @device_name
        end
        ## 
        ## Sets the deviceName property value. Device name.
        ## @param value Value to set for the device_name property.
        ## @return a void
        ## 
        def device_name=(value)
            @device_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "deploymentStatus" => lambda {|n| @deployment_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicyStatuses) },
                "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                "deviceName" => lambda {|n| @device_name = n.get_string_value() },
                "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                "osDescription" => lambda {|n| @os_description = n.get_string_value() },
                "osVersion" => lambda {|n| @os_version = n.get_string_value() },
                "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsDefenderApplicationControlSupplementalPolicy.create_from_discriminator_value(pn) }) },
                "policyVersion" => lambda {|n| @policy_version = n.get_string_value() },
                "userName" => lambda {|n| @user_name = n.get_string_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastSyncDateTime property value. Last sync date time.
        ## @return a date_time
        ## 
        def last_sync_date_time
            return @last_sync_date_time
        end
        ## 
        ## Sets the lastSyncDateTime property value. Last sync date time.
        ## @param value Value to set for the last_sync_date_time property.
        ## @return a void
        ## 
        def last_sync_date_time=(value)
            @last_sync_date_time = value
        end
        ## 
        ## Gets the osDescription property value. Windows OS Version Description.
        ## @return a string
        ## 
        def os_description
            return @os_description
        end
        ## 
        ## Sets the osDescription property value. Windows OS Version Description.
        ## @param value Value to set for the os_description property.
        ## @return a void
        ## 
        def os_description=(value)
            @os_description = value
        end
        ## 
        ## Gets the osVersion property value. Windows OS Version.
        ## @return a string
        ## 
        def os_version
            return @os_version
        end
        ## 
        ## Sets the osVersion property value. Windows OS Version.
        ## @param value Value to set for the os_version property.
        ## @return a void
        ## 
        def os_version=(value)
            @os_version = value
        end
        ## 
        ## Gets the policy property value. The navigation link to the WindowsDefenderApplicationControl supplemental policy.
        ## @return a windows_defender_application_control_supplemental_policy
        ## 
        def policy
            return @policy
        end
        ## 
        ## Sets the policy property value. The navigation link to the WindowsDefenderApplicationControl supplemental policy.
        ## @param value Value to set for the policy property.
        ## @return a void
        ## 
        def policy=(value)
            @policy = value
        end
        ## 
        ## Gets the policyVersion property value. Human readable version of the WindowsDefenderApplicationControl supplemental policy.
        ## @return a string
        ## 
        def policy_version
            return @policy_version
        end
        ## 
        ## Sets the policyVersion property value. Human readable version of the WindowsDefenderApplicationControl supplemental policy.
        ## @param value Value to set for the policy_version property.
        ## @return a void
        ## 
        def policy_version=(value)
            @policy_version = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_enum_value("deploymentStatus", @deployment_status)
            writer.write_string_value("deviceId", @device_id)
            writer.write_string_value("deviceName", @device_name)
            writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
            writer.write_string_value("osDescription", @os_description)
            writer.write_string_value("osVersion", @os_version)
            writer.write_object_value("policy", @policy)
            writer.write_string_value("policyVersion", @policy_version)
            writer.write_string_value("userName", @user_name)
            writer.write_string_value("userPrincipalName", @user_principal_name)
        end
        ## 
        ## Gets the userName property value. The name of the user of this device.
        ## @return a string
        ## 
        def user_name
            return @user_name
        end
        ## 
        ## Sets the userName property value. The name of the user of this device.
        ## @param value Value to set for the user_name property.
        ## @return a void
        ## 
        def user_name=(value)
            @user_name = value
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
