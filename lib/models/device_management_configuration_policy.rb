require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Management Configuration Policy
        class DeviceManagementConfigurationPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Policy assignments
            @assignments
            ## 
            # Policy creation date and time
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
            # Policy last modification date and time
            @last_modified_date_time
            ## 
            # Policy name
            @name
            ## 
            # Supported platform types.
            @platforms
            ## 
            # Indicates the priority of each policies that are selected by the admin during enrollment process
            @priority_meta_data
            ## 
            # List of Scope Tags for this Entity instance.
            @role_scope_tag_ids
            ## 
            # Number of settings
            @setting_count
            ## 
            # Policy settings
            @settings
            ## 
            # Describes which technology this setting can be deployed with
            @technologies
            ## 
            # Template reference information
            @template_reference
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
            ## Instantiates a new deviceManagementConfigurationPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. Policy creation date and time
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. Policy creation date and time
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationPolicy.new
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
            ## @param value Value to set for the creation_source property.
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
                    "priorityMetaData" => lambda {|n| @priority_meta_data = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementPriorityMetaData.create_from_discriminator_value(pn) }) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "settingCount" => lambda {|n| @setting_count = n.get_number_value() },
                    "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSetting.create_from_discriminator_value(pn) }) },
                    "technologies" => lambda {|n| @technologies = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTechnologies) },
                    "templateReference" => lambda {|n| @template_reference = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationPolicyTemplateReference.create_from_discriminator_value(pn) }) },
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
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Policy last modification date and time
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Policy last modification date and time
            ## @param value Value to set for the last_modified_date_time property.
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
            ## Gets the priorityMetaData property value. Indicates the priority of each policies that are selected by the admin during enrollment process
            ## @return a device_management_priority_meta_data
            ## 
            def priority_meta_data
                return @priority_meta_data
            end
            ## 
            ## Sets the priorityMetaData property value. Indicates the priority of each policies that are selected by the admin during enrollment process
            ## @param value Value to set for the priority_meta_data property.
            ## @return a void
            ## 
            def priority_meta_data=(value)
                @priority_meta_data = value
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
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("creationSource", @creation_source)
                writer.write_string_value("description", @description)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_enum_value("platforms", @platforms)
                writer.write_object_value("priorityMetaData", @priority_meta_data)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_number_value("settingCount", @setting_count)
                writer.write_collection_of_object_values("settings", @settings)
                writer.write_enum_value("technologies", @technologies)
                writer.write_object_value("templateReference", @template_reference)
            end
            ## 
            ## Gets the settingCount property value. Number of settings
            ## @return a integer
            ## 
            def setting_count
                return @setting_count
            end
            ## 
            ## Sets the settingCount property value. Number of settings
            ## @param value Value to set for the setting_count property.
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
            ## 
            ## Gets the templateReference property value. Template reference information
            ## @return a device_management_configuration_policy_template_reference
            ## 
            def template_reference
                return @template_reference
            end
            ## 
            ## Sets the templateReference property value. Template reference information
            ## @param value Value to set for the template_reference property.
            ## @return a void
            ## 
            def template_reference=(value)
                @template_reference = value
            end
        end
    end
end
