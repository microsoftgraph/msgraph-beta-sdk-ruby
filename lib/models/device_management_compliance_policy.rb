require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Management Compliance Policy
        class DeviceManagementCompliancePolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Policy assignments
            @assignments
            ## 
            # Policy creation date and time. This property is read-only.
            @created_date_time
            ## 
            # Policy creation source
            @creation_source
            ## 
            # Policy description
            @description
            ## 
            # Policy assignment status. This property is read-only.
            @is_assigned
            ## 
            # Policy last modification date and time. This property is read-only.
            @last_modified_date_time
            ## 
            # Policy name
            @name
            ## 
            # Supported platform types.
            @platforms
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            # The list of scheduled action for this rule
            @scheduled_actions_for_rule
            ## 
            # Number of settings. This property is read-only.
            @setting_count
            ## 
            # Policy settings
            @settings
            ## 
            # Describes which technology this setting can be deployed with
            @technologies
            ## 
            ## Gets the assignments property value. Policy assignments
            ## @return a device_management_configuration_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Policy assignments
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new deviceManagementCompliancePolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Policy creation date and time. This property is read-only.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Policy creation date and time. This property is read-only.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_compliance_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementCompliancePolicy.new
            end
            ## 
            ## Gets the creationSource property value. Policy creation source
            ## @return a string
            ## 
            def creation_source
                return @creation_source
            end
            ## 
            ## Sets the creationSource property value. Policy creation source
            ## @param value Value to set for the creationSource property.
            ## @return a void
            ## 
            def creation_source=(value)
                @creation_source = value
            end
            ## 
            ## Gets the description property value. Policy description
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Policy description
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "creationSource" => lambda {|n| @creation_source = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "platforms" => lambda {|n| @platforms = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationPlatforms) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "scheduledActionsForRule" => lambda {|n| @scheduled_actions_for_rule = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementComplianceScheduledActionForRule.create_from_discriminator_value(pn) }) },
                    "settingCount" => lambda {|n| @setting_count = n.get_number_value() },
                    "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSetting.create_from_discriminator_value(pn) }) },
                    "technologies" => lambda {|n| @technologies = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTechnologies) },
                })
            end
            ## 
            ## Gets the isAssigned property value. Policy assignment status. This property is read-only.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. Policy assignment status. This property is read-only.
            ## @param value Value to set for the isAssigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Policy last modification date and time. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Policy last modification date and time. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the name property value. Policy name
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Policy name
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the platforms property value. Supported platform types.
            ## @return a device_management_configuration_platforms
            ## 
            def platforms
                return @platforms
            end
            ## 
            ## Sets the platforms property value. Supported platform types.
            ## @param value Value to set for the platforms property.
            ## @return a void
            ## 
            def platforms=(value)
                @platforms = value
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
            ## @param value Value to set for the roleScopeTagIds property.
            ## @return a void
            ## 
            def role_scope_tag_ids=(value)
                @role_scope_tag_ids = value
            end
            ## 
            ## Gets the scheduledActionsForRule property value. The list of scheduled action for this rule
            ## @return a device_management_compliance_scheduled_action_for_rule
            ## 
            def scheduled_actions_for_rule
                return @scheduled_actions_for_rule
            end
            ## 
            ## Sets the scheduledActionsForRule property value. The list of scheduled action for this rule
            ## @param value Value to set for the scheduledActionsForRule property.
            ## @return a void
            ## 
            def scheduled_actions_for_rule=(value)
                @scheduled_actions_for_rule = value
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
                writer.write_string_value("creationSource", @creation_source)
                writer.write_string_value("description", @description)
                writer.write_string_value("name", @name)
                writer.write_enum_value("platforms", @platforms)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_collection_of_object_values("scheduledActionsForRule", @scheduled_actions_for_rule)
                writer.write_collection_of_object_values("settings", @settings)
                writer.write_enum_value("technologies", @technologies)
            end
            ## 
            ## Gets the settingCount property value. Number of settings. This property is read-only.
            ## @return a integer
            ## 
            def setting_count
                return @setting_count
            end
            ## 
            ## Sets the settingCount property value. Number of settings. This property is read-only.
            ## @param value Value to set for the settingCount property.
            ## @return a void
            ## 
            def setting_count=(value)
                @setting_count = value
            end
            ## 
            ## Gets the settings property value. Policy settings
            ## @return a device_management_configuration_setting
            ## 
            def settings
                return @settings
            end
            ## 
            ## Sets the settings property value. Policy settings
            ## @param value Value to set for the settings property.
            ## @return a void
            ## 
            def settings=(value)
                @settings = value
            end
            ## 
            ## Gets the technologies property value. Describes which technology this setting can be deployed with
            ## @return a device_management_configuration_technologies
            ## 
            def technologies
                return @technologies
            end
            ## 
            ## Sets the technologies property value. Describes which technology this setting can be deployed with
            ## @param value Value to set for the technologies property.
            ## @return a void
            ## 
            def technologies=(value)
                @technologies = value
            end
        end
    end
end
