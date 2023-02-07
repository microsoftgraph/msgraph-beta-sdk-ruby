require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # ManagedDevices that are scheduled for retire
    class RetireScheduledManagedDevice
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The complianceState property
        @compliance_state
        ## 
        # Device Compliance PolicyId
        @device_compliance_policy_id
        ## 
        # Device Compliance Policy Name
        @device_compliance_policy_name
        ## 
        # Device type.
        @device_type
        ## 
        # Key of the entity.
        @id
        ## 
        # Managed DeviceId
        @managed_device_id
        ## 
        # Managed Device Name
        @managed_device_name
        ## 
        # Management agent type.
        @management_agent
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Owner type of device.
        @owner_type
        ## 
        # Managed Device Retire After DateTime
        @retire_after_date_time
        ## 
        # List of Scope Tags for this Entity instance.
        @role_scope_tag_ids
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Gets the complianceState property value. The complianceState property
        ## @return a compliance_status
        ## 
        def compliance_state
            return @compliance_state
        end
        ## 
        ## Sets the complianceState property value. The complianceState property
        ## @param value Value to set for the compliance_state property.
        ## @return a void
        ## 
        def compliance_state=(value)
            @compliance_state = value
        end
        ## 
        ## Instantiates a new retireScheduledManagedDevice and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a retire_scheduled_managed_device
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RetireScheduledManagedDevice.new
        end
        ## 
        ## Gets the deviceCompliancePolicyId property value. Device Compliance PolicyId
        ## @return a string
        ## 
        def device_compliance_policy_id
            return @device_compliance_policy_id
        end
        ## 
        ## Sets the deviceCompliancePolicyId property value. Device Compliance PolicyId
        ## @param value Value to set for the device_compliance_policy_id property.
        ## @return a void
        ## 
        def device_compliance_policy_id=(value)
            @device_compliance_policy_id = value
        end
        ## 
        ## Gets the deviceCompliancePolicyName property value. Device Compliance Policy Name
        ## @return a string
        ## 
        def device_compliance_policy_name
            return @device_compliance_policy_name
        end
        ## 
        ## Sets the deviceCompliancePolicyName property value. Device Compliance Policy Name
        ## @param value Value to set for the device_compliance_policy_name property.
        ## @return a void
        ## 
        def device_compliance_policy_name=(value)
            @device_compliance_policy_name = value
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
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "complianceState" => lambda {|n| @compliance_state = n.get_enum_value(MicrosoftGraphBeta::Models::ComplianceStatus) },
                "deviceCompliancePolicyId" => lambda {|n| @device_compliance_policy_id = n.get_string_value() },
                "deviceCompliancePolicyName" => lambda {|n| @device_compliance_policy_name = n.get_string_value() },
                "deviceType" => lambda {|n| @device_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceType) },
                "id" => lambda {|n| @id = n.get_string_value() },
                "managedDeviceId" => lambda {|n| @managed_device_id = n.get_string_value() },
                "managedDeviceName" => lambda {|n| @managed_device_name = n.get_string_value() },
                "managementAgent" => lambda {|n| @management_agent = n.get_enum_value(MicrosoftGraphBeta::Models::ManagementAgentType) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "ownerType" => lambda {|n| @owner_type = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedDeviceOwnerType) },
                "retireAfterDateTime" => lambda {|n| @retire_after_date_time = n.get_date_time_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the id property value. Key of the entity.
        ## @return a string
        ## 
        def id
            return @id
        end
        ## 
        ## Sets the id property value. Key of the entity.
        ## @param value Value to set for the id property.
        ## @return a void
        ## 
        def id=(value)
            @id = value
        end
        ## 
        ## Gets the managedDeviceId property value. Managed DeviceId
        ## @return a string
        ## 
        def managed_device_id
            return @managed_device_id
        end
        ## 
        ## Sets the managedDeviceId property value. Managed DeviceId
        ## @param value Value to set for the managed_device_id property.
        ## @return a void
        ## 
        def managed_device_id=(value)
            @managed_device_id = value
        end
        ## 
        ## Gets the managedDeviceName property value. Managed Device Name
        ## @return a string
        ## 
        def managed_device_name
            return @managed_device_name
        end
        ## 
        ## Sets the managedDeviceName property value. Managed Device Name
        ## @param value Value to set for the managed_device_name property.
        ## @return a void
        ## 
        def managed_device_name=(value)
            @managed_device_name = value
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
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the ownerType property value. Owner type of device.
        ## @return a managed_device_owner_type
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
        ## Gets the retireAfterDateTime property value. Managed Device Retire After DateTime
        ## @return a date_time
        ## 
        def retire_after_date_time
            return @retire_after_date_time
        end
        ## 
        ## Sets the retireAfterDateTime property value. Managed Device Retire After DateTime
        ## @param value Value to set for the retire_after_date_time property.
        ## @return a void
        ## 
        def retire_after_date_time=(value)
            @retire_after_date_time = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. List of Scope Tags for this Entity instance.
        ## @param value Value to set for the role_scope_tag_ids property.
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
            writer.write_enum_value("complianceState", @compliance_state)
            writer.write_string_value("deviceCompliancePolicyId", @device_compliance_policy_id)
            writer.write_string_value("deviceCompliancePolicyName", @device_compliance_policy_name)
            writer.write_enum_value("deviceType", @device_type)
            writer.write_string_value("id", @id)
            writer.write_string_value("managedDeviceId", @managed_device_id)
            writer.write_string_value("managedDeviceName", @managed_device_name)
            writer.write_enum_value("managementAgent", @management_agent)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("ownerType", @owner_type)
            writer.write_date_time_value("retireAfterDateTime", @retire_after_date_time)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_additional_data(@additional_data)
        end
    end
end
