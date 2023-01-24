require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Graph model for a reusable setting
    class DeviceManagementReusablePolicySetting < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # reusable setting creation date and time. This property is read-only.
        @created_date_time
        ## 
        # reusable setting description supplied by user.
        @description
        ## 
        # reusable setting display name supplied by user.
        @display_name
        ## 
        # date and time when reusable setting was last modified. This property is read-only.
        @last_modified_date_time
        ## 
        # configuration policies referencing the current reusable setting. This property is read-only.
        @referencing_configuration_policies
        ## 
        # count of configuration policies referencing the current reusable setting. Valid values 0 to 2147483647. This property is read-only.
        @referencing_configuration_policy_count
        ## 
        # setting definition id associated with this reusable setting.
        @setting_definition_id
        ## 
        # reusable setting configuration instance
        @setting_instance
        ## 
        # version number for reusable setting. Valid values 0 to 2147483647. This property is read-only.
        @version
        ## 
        ## Instantiates a new deviceManagementReusablePolicySetting and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. reusable setting creation date and time. This property is read-only.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. reusable setting creation date and time. This property is read-only.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_reusable_policy_setting
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementReusablePolicySetting.new
        end
        ## 
        ## Gets the description property value. reusable setting description supplied by user.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. reusable setting description supplied by user.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. reusable setting display name supplied by user.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. reusable setting display name supplied by user.
        ## @param value Value to set for the displayName property.
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
                "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "referencingConfigurationPolicies" => lambda {|n| @referencing_configuration_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicy.create_from_discriminator_value(pn) }) },
                "referencingConfigurationPolicyCount" => lambda {|n| @referencing_configuration_policy_count = n.get_number_value() },
                "settingDefinitionId" => lambda {|n| @setting_definition_id = n.get_string_value() },
                "settingInstance" => lambda {|n| @setting_instance = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingInstance.create_from_discriminator_value(pn) }) },
                "version" => lambda {|n| @version = n.get_number_value() },
            })
        end
        ## 
        ## Gets the lastModifiedDateTime property value. date and time when reusable setting was last modified. This property is read-only.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. date and time when reusable setting was last modified. This property is read-only.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the referencingConfigurationPolicies property value. configuration policies referencing the current reusable setting. This property is read-only.
        ## @return a device_management_configuration_policy
        ## 
        def referencing_configuration_policies
            return @referencing_configuration_policies
        end
        ## 
        ## Sets the referencingConfigurationPolicies property value. configuration policies referencing the current reusable setting. This property is read-only.
        ## @param value Value to set for the referencingConfigurationPolicies property.
        ## @return a void
        ## 
        def referencing_configuration_policies=(value)
            @referencing_configuration_policies = value
        end
        ## 
        ## Gets the referencingConfigurationPolicyCount property value. count of configuration policies referencing the current reusable setting. Valid values 0 to 2147483647. This property is read-only.
        ## @return a integer
        ## 
        def referencing_configuration_policy_count
            return @referencing_configuration_policy_count
        end
        ## 
        ## Sets the referencingConfigurationPolicyCount property value. count of configuration policies referencing the current reusable setting. Valid values 0 to 2147483647. This property is read-only.
        ## @param value Value to set for the referencingConfigurationPolicyCount property.
        ## @return a void
        ## 
        def referencing_configuration_policy_count=(value)
            @referencing_configuration_policy_count = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_object_values("referencingConfigurationPolicies", @referencing_configuration_policies)
            writer.write_string_value("settingDefinitionId", @setting_definition_id)
            writer.write_object_value("settingInstance", @setting_instance)
        end
        ## 
        ## Gets the settingDefinitionId property value. setting definition id associated with this reusable setting.
        ## @return a string
        ## 
        def setting_definition_id
            return @setting_definition_id
        end
        ## 
        ## Sets the settingDefinitionId property value. setting definition id associated with this reusable setting.
        ## @param value Value to set for the settingDefinitionId property.
        ## @return a void
        ## 
        def setting_definition_id=(value)
            @setting_definition_id = value
        end
        ## 
        ## Gets the settingInstance property value. reusable setting configuration instance
        ## @return a device_management_configuration_setting_instance
        ## 
        def setting_instance
            return @setting_instance
        end
        ## 
        ## Sets the settingInstance property value. reusable setting configuration instance
        ## @param value Value to set for the settingInstance property.
        ## @return a void
        ## 
        def setting_instance=(value)
            @setting_instance = value
        end
        ## 
        ## Gets the version property value. version number for reusable setting. Valid values 0 to 2147483647. This property is read-only.
        ## @return a integer
        ## 
        def version
            return @version
        end
        ## 
        ## Sets the version property value. version number for reusable setting. Valid values 0 to 2147483647. This property is read-only.
        ## @param value Value to set for the version property.
        ## @return a void
        ## 
        def version=(value)
            @version = value
        end
    end
end
