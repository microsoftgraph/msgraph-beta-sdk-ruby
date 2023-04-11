require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcServicePlan < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name for the service plan. Read-only.
            @display_name
            ## 
            # Specifies the type of license used when provisioning Cloud PCs. By default, the license type is dedicated. Possible values are: dedicated, shared, unknownFutureValue.
            @provisioning_type
            ## 
            # The size of the RAM in GB. Read-only.
            @ram_in_g_b
            ## 
            # The size of the OS Disk in GB. Read-only.
            @storage_in_g_b
            ## 
            # The supportedSolution property
            @supported_solution
            ## 
            # The type of the service plan. Possible values are: enterprise, business, unknownFutureValue. Read-only.
            @type
            ## 
            # The size of the user profile disk in GB. Read-only.
            @user_profile_in_g_b
            ## 
            # The number of vCPUs. Read-only.
            @v_cpu_count
            ## 
            ## Instantiates a new CloudPcServicePlan and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_service_plan
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcServicePlan.new
            end
            ## 
            ## Gets the displayName property value. The name for the service plan. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name for the service plan. Read-only.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "provisioningType" => lambda {|n| @provisioning_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcProvisioningType) },
                    "ramInGB" => lambda {|n| @ram_in_g_b = n.get_number_value() },
                    "storageInGB" => lambda {|n| @storage_in_g_b = n.get_number_value() },
                    "supportedSolution" => lambda {|n| @supported_solution = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcManagementService) },
                    "type" => lambda {|n| @type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcServicePlanType) },
                    "userProfileInGB" => lambda {|n| @user_profile_in_g_b = n.get_number_value() },
                    "vCpuCount" => lambda {|n| @v_cpu_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the provisioningType property value. Specifies the type of license used when provisioning Cloud PCs. By default, the license type is dedicated. Possible values are: dedicated, shared, unknownFutureValue.
            ## @return a cloud_pc_provisioning_type
            ## 
            def provisioning_type
                return @provisioning_type
            end
            ## 
            ## Sets the provisioningType property value. Specifies the type of license used when provisioning Cloud PCs. By default, the license type is dedicated. Possible values are: dedicated, shared, unknownFutureValue.
            ## @param value Value to set for the provisioning_type property.
            ## @return a void
            ## 
            def provisioning_type=(value)
                @provisioning_type = value
            end
            ## 
            ## Gets the ramInGB property value. The size of the RAM in GB. Read-only.
            ## @return a integer
            ## 
            def ram_in_g_b
                return @ram_in_g_b
            end
            ## 
            ## Sets the ramInGB property value. The size of the RAM in GB. Read-only.
            ## @param value Value to set for the ram_in_g_b property.
            ## @return a void
            ## 
            def ram_in_g_b=(value)
                @ram_in_g_b = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("provisioningType", @provisioning_type)
                writer.write_number_value("ramInGB", @ram_in_g_b)
                writer.write_number_value("storageInGB", @storage_in_g_b)
                writer.write_enum_value("supportedSolution", @supported_solution)
                writer.write_enum_value("type", @type)
                writer.write_number_value("userProfileInGB", @user_profile_in_g_b)
                writer.write_number_value("vCpuCount", @v_cpu_count)
            end
            ## 
            ## Gets the storageInGB property value. The size of the OS Disk in GB. Read-only.
            ## @return a integer
            ## 
            def storage_in_g_b
                return @storage_in_g_b
            end
            ## 
            ## Sets the storageInGB property value. The size of the OS Disk in GB. Read-only.
            ## @param value Value to set for the storage_in_g_b property.
            ## @return a void
            ## 
            def storage_in_g_b=(value)
                @storage_in_g_b = value
            end
            ## 
            ## Gets the supportedSolution property value. The supportedSolution property
            ## @return a cloud_pc_management_service
            ## 
            def supported_solution
                return @supported_solution
            end
            ## 
            ## Sets the supportedSolution property value. The supportedSolution property
            ## @param value Value to set for the supported_solution property.
            ## @return a void
            ## 
            def supported_solution=(value)
                @supported_solution = value
            end
            ## 
            ## Gets the type property value. The type of the service plan. Possible values are: enterprise, business, unknownFutureValue. Read-only.
            ## @return a cloud_pc_service_plan_type
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The type of the service plan. Possible values are: enterprise, business, unknownFutureValue. Read-only.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
            ## 
            ## Gets the userProfileInGB property value. The size of the user profile disk in GB. Read-only.
            ## @return a integer
            ## 
            def user_profile_in_g_b
                return @user_profile_in_g_b
            end
            ## 
            ## Sets the userProfileInGB property value. The size of the user profile disk in GB. Read-only.
            ## @param value Value to set for the user_profile_in_g_b property.
            ## @return a void
            ## 
            def user_profile_in_g_b=(value)
                @user_profile_in_g_b = value
            end
            ## 
            ## Gets the vCpuCount property value. The number of vCPUs. Read-only.
            ## @return a integer
            ## 
            def v_cpu_count
                return @v_cpu_count
            end
            ## 
            ## Sets the vCpuCount property value. The number of vCPUs. Read-only.
            ## @param value Value to set for the v_cpu_count property.
            ## @return a void
            ## 
            def v_cpu_count=(value)
                @v_cpu_count = value
            end
        end
    end
end
