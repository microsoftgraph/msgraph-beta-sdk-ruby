require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A class containing the properties used for PolicySet Item.
    class PolicySetItem < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Creation time of the PolicySetItem.
        @created_date_time
        ## 
        # DisplayName of the PolicySetItem.
        @display_name
        ## 
        # The errorCode property
        @error_code
        ## 
        # Tags of the guided deployment
        @guided_deployment_tags
        ## 
        # policySetType of the PolicySetItem.
        @item_type
        ## 
        # Last modified time of the PolicySetItem.
        @last_modified_date_time
        ## 
        # PayloadId of the PolicySetItem.
        @payload_id
        ## 
        # The enum to specify the status of PolicySet.
        @status
        ## 
        ## Instantiates a new policySetItem and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. Creation time of the PolicySetItem.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. Creation time of the PolicySetItem.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a policy_set_item
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.deviceCompliancePolicyPolicySetItem"
                        return DeviceCompliancePolicyPolicySetItem.new
                    when "#microsoft.graph.deviceConfigurationPolicySetItem"
                        return DeviceConfigurationPolicySetItem.new
                    when "#microsoft.graph.deviceManagementConfigurationPolicyPolicySetItem"
                        return DeviceManagementConfigurationPolicyPolicySetItem.new
                    when "#microsoft.graph.deviceManagementScriptPolicySetItem"
                        return DeviceManagementScriptPolicySetItem.new
                    when "#microsoft.graph.enrollmentRestrictionsConfigurationPolicySetItem"
                        return EnrollmentRestrictionsConfigurationPolicySetItem.new
                    when "#microsoft.graph.iosLobAppProvisioningConfigurationPolicySetItem"
                        return IosLobAppProvisioningConfigurationPolicySetItem.new
                    when "#microsoft.graph.managedAppProtectionPolicySetItem"
                        return ManagedAppProtectionPolicySetItem.new
                    when "#microsoft.graph.managedDeviceMobileAppConfigurationPolicySetItem"
                        return ManagedDeviceMobileAppConfigurationPolicySetItem.new
                    when "#microsoft.graph.mdmWindowsInformationProtectionPolicyPolicySetItem"
                        return MdmWindowsInformationProtectionPolicyPolicySetItem.new
                    when "#microsoft.graph.mobileAppPolicySetItem"
                        return MobileAppPolicySetItem.new
                    when "#microsoft.graph.targetedManagedAppConfigurationPolicySetItem"
                        return TargetedManagedAppConfigurationPolicySetItem.new
                    when "#microsoft.graph.windows10EnrollmentCompletionPageConfigurationPolicySetItem"
                        return Windows10EnrollmentCompletionPageConfigurationPolicySetItem.new
                    when "#microsoft.graph.windowsAutopilotDeploymentProfilePolicySetItem"
                        return WindowsAutopilotDeploymentProfilePolicySetItem.new
                end
            end
            return PolicySetItem.new
        end
        ## 
        ## Gets the displayName property value. DisplayName of the PolicySetItem.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. DisplayName of the PolicySetItem.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the errorCode property value. The errorCode property
        ## @return a error_code
        ## 
        def error_code
            return @error_code
        end
        ## 
        ## Sets the errorCode property value. The errorCode property
        ## @param value Value to set for the errorCode property.
        ## @return a void
        ## 
        def error_code=(value)
            @error_code = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "errorCode" => lambda {|n| @error_code = n.get_enum_value(MicrosoftGraphBeta::Models::ErrorCode) },
                "guidedDeploymentTags" => lambda {|n| @guided_deployment_tags = n.get_collection_of_primitive_values(String) },
                "itemType" => lambda {|n| @item_type = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "payloadId" => lambda {|n| @payload_id = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::PolicySetStatus) },
            })
        end
        ## 
        ## Gets the guidedDeploymentTags property value. Tags of the guided deployment
        ## @return a string
        ## 
        def guided_deployment_tags
            return @guided_deployment_tags
        end
        ## 
        ## Sets the guidedDeploymentTags property value. Tags of the guided deployment
        ## @param value Value to set for the guidedDeploymentTags property.
        ## @return a void
        ## 
        def guided_deployment_tags=(value)
            @guided_deployment_tags = value
        end
        ## 
        ## Gets the itemType property value. policySetType of the PolicySetItem.
        ## @return a string
        ## 
        def item_type
            return @item_type
        end
        ## 
        ## Sets the itemType property value. policySetType of the PolicySetItem.
        ## @param value Value to set for the itemType property.
        ## @return a void
        ## 
        def item_type=(value)
            @item_type = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. Last modified time of the PolicySetItem.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. Last modified time of the PolicySetItem.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the payloadId property value. PayloadId of the PolicySetItem.
        ## @return a string
        ## 
        def payload_id
            return @payload_id
        end
        ## 
        ## Sets the payloadId property value. PayloadId of the PolicySetItem.
        ## @param value Value to set for the payloadId property.
        ## @return a void
        ## 
        def payload_id=(value)
            @payload_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_enum_value("errorCode", @error_code)
            writer.write_collection_of_primitive_values("guidedDeploymentTags", @guided_deployment_tags)
            writer.write_string_value("itemType", @item_type)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_string_value("payloadId", @payload_id)
            writer.write_enum_value("status", @status)
        end
        ## 
        ## Gets the status property value. The enum to specify the status of PolicySet.
        ## @return a policy_set_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The enum to specify the status of PolicySet.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
