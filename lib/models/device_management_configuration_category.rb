require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Device Management Configuration Policy
        class DeviceManagementConfigurationCategory < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description of the category header
            @category_description
            ## 
            # List of child ids of the category.
            @child_category_ids
            ## 
            # Description of the item
            @description
            ## 
            # Display name of the item
            @display_name
            ## 
            # Help text of the item
            @help_text
            ## 
            # Name of the item
            @name
            ## 
            # Parent id of the category.
            @parent_category_id
            ## 
            # Supported platform types.
            @platforms
            ## 
            # Root id of the category.
            @root_category_id
            ## 
            # Supported setting types
            @setting_usage
            ## 
            # Describes which technology this setting can be deployed with
            @technologies
            ## 
            ## Gets the categoryDescription property value. Description of the category header
            ## @return a string
            ## 
            def category_description
                return @category_description
            end
            ## 
            ## Sets the categoryDescription property value. Description of the category header
            ## @param value Value to set for the category_description property.
            ## @return a void
            ## 
            def category_description=(value)
                @category_description = value
            end
            ## 
            ## Gets the childCategoryIds property value. List of child ids of the category.
            ## @return a string
            ## 
            def child_category_ids
                return @child_category_ids
            end
            ## 
            ## Sets the childCategoryIds property value. List of child ids of the category.
            ## @param value Value to set for the child_category_ids property.
            ## @return a void
            ## 
            def child_category_ids=(value)
                @child_category_ids = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceManagementConfigurationCategory.new
            end
            ## 
            ## Gets the description property value. Description of the item
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the item
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the item
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the item
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
                    "categoryDescription" => lambda {|n| @category_description = n.get_string_value() },
                    "childCategoryIds" => lambda {|n| @child_category_ids = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "helpText" => lambda {|n| @help_text = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "parentCategoryId" => lambda {|n| @parent_category_id = n.get_string_value() },
                    "platforms" => lambda {|n| @platforms = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationPlatforms) },
                    "rootCategoryId" => lambda {|n| @root_category_id = n.get_string_value() },
                    "settingUsage" => lambda {|n| @setting_usage = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingUsage) },
                    "technologies" => lambda {|n| @technologies = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationTechnologies) },
                })
            end
            ## 
            ## Gets the helpText property value. Help text of the item
            ## @return a string
            ## 
            def help_text
                return @help_text
            end
            ## 
            ## Sets the helpText property value. Help text of the item
            ## @param value Value to set for the help_text property.
            ## @return a void
            ## 
            def help_text=(value)
                @help_text = value
            end
            ## 
            ## Gets the name property value. Name of the item
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the item
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the parentCategoryId property value. Parent id of the category.
            ## @return a string
            ## 
            def parent_category_id
                return @parent_category_id
            end
            ## 
            ## Sets the parentCategoryId property value. Parent id of the category.
            ## @param value Value to set for the parent_category_id property.
            ## @return a void
            ## 
            def parent_category_id=(value)
                @parent_category_id = value
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
            ## Gets the rootCategoryId property value. Root id of the category.
            ## @return a string
            ## 
            def root_category_id
                return @root_category_id
            end
            ## 
            ## Sets the rootCategoryId property value. Root id of the category.
            ## @param value Value to set for the root_category_id property.
            ## @return a void
            ## 
            def root_category_id=(value)
                @root_category_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("categoryDescription", @category_description)
                writer.write_collection_of_primitive_values("childCategoryIds", @child_category_ids)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("helpText", @help_text)
                writer.write_string_value("name", @name)
                writer.write_string_value("parentCategoryId", @parent_category_id)
                writer.write_enum_value("platforms", @platforms)
                writer.write_string_value("rootCategoryId", @root_category_id)
                writer.write_enum_value("settingUsage", @setting_usage)
                writer.write_enum_value("technologies", @technologies)
            end
            ## 
            ## Gets the settingUsage property value. Supported setting types
            ## @return a device_management_configuration_setting_usage
            ## 
            def setting_usage
                return @setting_usage
            end
            ## 
            ## Sets the settingUsage property value. Supported setting types
            ## @param value Value to set for the setting_usage property.
            ## @return a void
            ## 
            def setting_usage=(value)
                @setting_usage = value
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
