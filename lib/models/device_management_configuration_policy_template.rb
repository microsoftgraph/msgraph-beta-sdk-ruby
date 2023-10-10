require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Management Configuration Policy Template
        class DeviceManagementConfigurationPolicyTemplate < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Allow unmanaged setting templates
            @allow_unmanaged_settings
            ## 
            # Template base identifier
            @base_id
            ## 
            # Template description
            @description
            ## 
            # Template display name
            @display_name
            ## 
            # Description of template version
            @display_version
            ## 
            # Describes current lifecycle state of a template
            @lifecycle_state
            ## 
            # Supported platform types.
            @platforms
            ## 
            # Number of setting templates. Valid values 0 to 2147483647. This property is read-only.
            @setting_template_count
            ## 
            # Setting templates
            @setting_templates
            ## 
            # Describes which technology this setting can be deployed with
            @technologies
            ## 
            # Describes the TemplateFamily for the Template entity
            @template_family
            ## 
            # Template version. Valid values 1 to 2147483647. This property is read-only.
            @version
            ## 
            ## Gets the allowUnmanagedSettings property value. Allow unmanaged setting templates
            ## @return a boolean
            ## 
            def allow_unmanaged_settings
                return @allow_unmanaged_settings
            end
            ## 
            ## Sets the allowUnmanagedSettings property value. Allow unmanaged setting templates
            ## @param value Value to set for the allowUnmanagedSettings property.
            ## @return a void
            ## 
            def allow_unmanaged_settings=(value)
                @allow_unmanaged_settings = value
            end
            ## 
            ## Gets the baseId property value. Template base identifier
            ## @return a string
            ## 
            def base_id
                return @base_id
            end
            ## 
            ## Sets the baseId property value. Template base identifier
            ## @param value Value to set for the baseId property.
            ## @return a void
            ## 
            def base_id=(value)
                @base_id = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationPolicyTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_policy_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationPolicyTemplate.new
            end
            ## 
            ## Gets the description property value. Template description
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Template description
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Template display name
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Template display name
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the displayVersion property value. Description of template version
            ## @return a string
            ## 
            def display_version
                return @display_version
            end
            ## 
            ## Sets the displayVersion property value. Description of template version
            ## @param value Value to set for the displayVersion property.
            ## @return a void
            ## 
            def display_version=(value)
                @display_version = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowUnmanagedSettings" => lambda {|n| @allow_unmanaged_settings = n.get_boolean_value() },
                    "baseId" => lambda {|n| @base_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "displayVersion" => lambda {|n| @display_version = n.get_string_value() },
                    "lifecycleState" => lambda {|n| @lifecycle_state = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementTemplateLifecycleState) },
                    "platforms" => lambda {|n| @platforms = n.get_enum_values(MicrosoftGraphBeta::Models::DeviceManagementConfigurationPlatforms) },
                    "settingTemplateCount" => lambda {|n| @setting_template_count = n.get_number_value() },
                    "settingTemplates" => lambda {|n| @setting_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingTemplate.create_from_discriminator_value(pn) }) },
                    "technologies" => lambda {|n| @technologies = n.get_enum_values(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTechnologies) },
                    "templateFamily" => lambda {|n| @template_family = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTemplateFamily) },
                    "version" => lambda {|n| @version = n.get_number_value() },
                })
            end
            ## 
            ## Gets the lifecycleState property value. Describes current lifecycle state of a template
            ## @return a device_management_template_lifecycle_state
            ## 
            def lifecycle_state
                return @lifecycle_state
            end
            ## 
            ## Sets the lifecycleState property value. Describes current lifecycle state of a template
            ## @param value Value to set for the lifecycleState property.
            ## @return a void
            ## 
            def lifecycle_state=(value)
                @lifecycle_state = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("allowUnmanagedSettings", @allow_unmanaged_settings)
                writer.write_string_value("baseId", @base_id)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("displayVersion", @display_version)
                writer.write_enum_value("lifecycleState", @lifecycle_state)
                writer.write_enum_value("platforms", @platforms)
                writer.write_collection_of_object_values("settingTemplates", @setting_templates)
                writer.write_enum_value("technologies", @technologies)
                writer.write_enum_value("templateFamily", @template_family)
            end
            ## 
            ## Gets the settingTemplateCount property value. Number of setting templates. Valid values 0 to 2147483647. This property is read-only.
            ## @return a integer
            ## 
            def setting_template_count
                return @setting_template_count
            end
            ## 
            ## Sets the settingTemplateCount property value. Number of setting templates. Valid values 0 to 2147483647. This property is read-only.
            ## @param value Value to set for the settingTemplateCount property.
            ## @return a void
            ## 
            def setting_template_count=(value)
                @setting_template_count = value
            end
            ## 
            ## Gets the settingTemplates property value. Setting templates
            ## @return a device_management_configuration_setting_template
            ## 
            def setting_templates
                return @setting_templates
            end
            ## 
            ## Sets the settingTemplates property value. Setting templates
            ## @param value Value to set for the settingTemplates property.
            ## @return a void
            ## 
            def setting_templates=(value)
                @setting_templates = value
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
            ## Gets the templateFamily property value. Describes the TemplateFamily for the Template entity
            ## @return a device_management_configuration_template_family
            ## 
            def template_family
                return @template_family
            end
            ## 
            ## Sets the templateFamily property value. Describes the TemplateFamily for the Template entity
            ## @param value Value to set for the templateFamily property.
            ## @return a void
            ## 
            def template_family=(value)
                @template_family = value
            end
            ## 
            ## Gets the version property value. Template version. Valid values 1 to 2147483647. This property is read-only.
            ## @return a integer
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Template version. Valid values 1 to 2147483647. This property is read-only.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
