require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Entity that represents a defined collection of device settings
    class DeviceManagementTemplate < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Collection of setting categories within the template
        @categories
        ## 
        # The template's description
        @description
        ## 
        # The template's display name
        @display_name
        ## 
        # Number of Intents created from this template.
        @intent_count
        ## 
        # The template is deprecated or not. Intents cannot be created from a deprecated template.
        @is_deprecated
        ## 
        # Collection of templates this template can migrate to
        @migratable_to
        ## 
        # Supported platform types for policies.
        @platform_type
        ## 
        # When the template was published
        @published_date_time
        ## 
        # Collection of all settings this template has
        @settings
        ## 
        # Template subtype
        @template_subtype
        ## 
        # Template type
        @template_type
        ## 
        # The template's version information
        @version_info
        ## 
        ## Gets the categories property value. Collection of setting categories within the template
        ## @return a device_management_template_setting_category
        ## 
        def categories
            return @categories
        end
        ## 
        ## Sets the categories property value. Collection of setting categories within the template
        ## @param value Value to set for the categories property.
        ## @return a void
        ## 
        def categories=(value)
            @categories = value
        end
        ## 
        ## Instantiates a new deviceManagementTemplate and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_template
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.securityBaselineTemplate"
                        return SecurityBaselineTemplate.new
                end
            end
            return DeviceManagementTemplate.new
        end
        ## 
        ## Gets the description property value. The template's description
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The template's description
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The template's display name
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The template's display name
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
                "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplateSettingCategory.create_from_discriminator_value(pn) }) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "intentCount" => lambda {|n| @intent_count = n.get_number_value() },
                "isDeprecated" => lambda {|n| @is_deprecated = n.get_boolean_value() },
                "migratableTo" => lambda {|n| @migratable_to = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementTemplate.create_from_discriminator_value(pn) }) },
                "platformType" => lambda {|n| @platform_type = n.get_enum_value(MicrosoftGraphBeta::Models::PolicyPlatformType) },
                "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                "settings" => lambda {|n| @settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementSettingInstance.create_from_discriminator_value(pn) }) },
                "templateSubtype" => lambda {|n| @template_subtype = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementTemplateSubtype) },
                "templateType" => lambda {|n| @template_type = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementTemplateType) },
                "versionInfo" => lambda {|n| @version_info = n.get_string_value() },
            })
        end
        ## 
        ## Gets the intentCount property value. Number of Intents created from this template.
        ## @return a integer
        ## 
        def intent_count
            return @intent_count
        end
        ## 
        ## Sets the intentCount property value. Number of Intents created from this template.
        ## @param value Value to set for the intent_count property.
        ## @return a void
        ## 
        def intent_count=(value)
            @intent_count = value
        end
        ## 
        ## Gets the isDeprecated property value. The template is deprecated or not. Intents cannot be created from a deprecated template.
        ## @return a boolean
        ## 
        def is_deprecated
            return @is_deprecated
        end
        ## 
        ## Sets the isDeprecated property value. The template is deprecated or not. Intents cannot be created from a deprecated template.
        ## @param value Value to set for the is_deprecated property.
        ## @return a void
        ## 
        def is_deprecated=(value)
            @is_deprecated = value
        end
        ## 
        ## Gets the migratableTo property value. Collection of templates this template can migrate to
        ## @return a device_management_template
        ## 
        def migratable_to
            return @migratable_to
        end
        ## 
        ## Sets the migratableTo property value. Collection of templates this template can migrate to
        ## @param value Value to set for the migratable_to property.
        ## @return a void
        ## 
        def migratable_to=(value)
            @migratable_to = value
        end
        ## 
        ## Gets the platformType property value. Supported platform types for policies.
        ## @return a policy_platform_type
        ## 
        def platform_type
            return @platform_type
        end
        ## 
        ## Sets the platformType property value. Supported platform types for policies.
        ## @param value Value to set for the platform_type property.
        ## @return a void
        ## 
        def platform_type=(value)
            @platform_type = value
        end
        ## 
        ## Gets the publishedDateTime property value. When the template was published
        ## @return a date_time
        ## 
        def published_date_time
            return @published_date_time
        end
        ## 
        ## Sets the publishedDateTime property value. When the template was published
        ## @param value Value to set for the published_date_time property.
        ## @return a void
        ## 
        def published_date_time=(value)
            @published_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("categories", @categories)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_number_value("intentCount", @intent_count)
            writer.write_boolean_value("isDeprecated", @is_deprecated)
            writer.write_collection_of_object_values("migratableTo", @migratable_to)
            writer.write_enum_value("platformType", @platform_type)
            writer.write_date_time_value("publishedDateTime", @published_date_time)
            writer.write_collection_of_object_values("settings", @settings)
            writer.write_enum_value("templateSubtype", @template_subtype)
            writer.write_enum_value("templateType", @template_type)
            writer.write_string_value("versionInfo", @version_info)
        end
        ## 
        ## Gets the settings property value. Collection of all settings this template has
        ## @return a device_management_setting_instance
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. Collection of all settings this template has
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
        end
        ## 
        ## Gets the templateSubtype property value. Template subtype
        ## @return a device_management_template_subtype
        ## 
        def template_subtype
            return @template_subtype
        end
        ## 
        ## Sets the templateSubtype property value. Template subtype
        ## @param value Value to set for the template_subtype property.
        ## @return a void
        ## 
        def template_subtype=(value)
            @template_subtype = value
        end
        ## 
        ## Gets the templateType property value. Template type
        ## @return a device_management_template_type
        ## 
        def template_type
            return @template_type
        end
        ## 
        ## Sets the templateType property value. Template type
        ## @param value Value to set for the template_type property.
        ## @return a void
        ## 
        def template_type=(value)
            @template_type = value
        end
        ## 
        ## Gets the versionInfo property value. The template's version information
        ## @return a string
        ## 
        def version_info
            return @version_info
        end
        ## 
        ## Sets the versionInfo property value. The template's version information
        ## @param value Value to set for the version_info property.
        ## @return a void
        ## 
        def version_info=(value)
            @version_info = value
        end
    end
end
