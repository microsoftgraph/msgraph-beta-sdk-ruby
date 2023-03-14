require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceManagementConfigurationSettingDefinition < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessTypes property
            @access_types
            ## 
            # Details which device setting is applicable on
            @applicability
            ## 
            # Base CSP Path
            @base_uri
            ## 
            # Specifies the area group under which the setting is configured in a specified configuration service provider (CSP)
            @category_id
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
            # List of links more info for the setting can be found at
            @info_urls
            ## 
            # Tokens which to search settings on
            @keywords
            ## 
            # Name of the item
            @name
            ## 
            # Indicates whether the setting is required or not
            @occurrence
            ## 
            # Offset CSP Path from Base
            @offset_uri
            ## 
            # List of referred setting information.
            @referred_setting_information_list
            ## 
            # Root setting definition if the setting is a child setting.
            @root_definition_id
            ## 
            # Supported setting types
            @setting_usage
            ## 
            # Setting control type representation in the UX
            @ux_behavior
            ## 
            # Item Version
            @version
            ## 
            # Supported setting types
            @visibility
            ## 
            ## Gets the accessTypes property value. The accessTypes property
            ## @return a device_management_configuration_setting_access_types
            ## 
            def access_types
                return @access_types
            end
            ## 
            ## Sets the accessTypes property value. The accessTypes property
            ## @param value Value to set for the access_types property.
            ## @return a void
            ## 
            def access_types=(value)
                @access_types = value
            end
            ## 
            ## Gets the applicability property value. Details which device setting is applicable on
            ## @return a device_management_configuration_setting_applicability
            ## 
            def applicability
                return @applicability
            end
            ## 
            ## Sets the applicability property value. Details which device setting is applicable on
            ## @param value Value to set for the applicability property.
            ## @return a void
            ## 
            def applicability=(value)
                @applicability = value
            end
            ## 
            ## Gets the baseUri property value. Base CSP Path
            ## @return a string
            ## 
            def base_uri
                return @base_uri
            end
            ## 
            ## Sets the baseUri property value. Base CSP Path
            ## @param value Value to set for the base_uri property.
            ## @return a void
            ## 
            def base_uri=(value)
                @base_uri = value
            end
            ## 
            ## Gets the categoryId property value. Specifies the area group under which the setting is configured in a specified configuration service provider (CSP)
            ## @return a string
            ## 
            def category_id
                return @category_id
            end
            ## 
            ## Sets the categoryId property value. Specifies the area group under which the setting is configured in a specified configuration service provider (CSP)
            ## @param value Value to set for the category_id property.
            ## @return a void
            ## 
            def category_id=(value)
                @category_id = value
            end
            ## 
            ## Instantiates a new deviceManagementConfigurationSettingDefinition and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_management_configuration_setting_definition
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingCollectionDefinition"
                            return DeviceManagementConfigurationChoiceSettingCollectionDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationChoiceSettingDefinition"
                            return DeviceManagementConfigurationChoiceSettingDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationRedirectSettingDefinition"
                            return DeviceManagementConfigurationRedirectSettingDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationSettingGroupCollectionDefinition"
                            return DeviceManagementConfigurationSettingGroupCollectionDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationSettingGroupDefinition"
                            return DeviceManagementConfigurationSettingGroupDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingCollectionDefinition"
                            return DeviceManagementConfigurationSimpleSettingCollectionDefinition.new
                        when "#microsoft.graph.deviceManagementConfigurationSimpleSettingDefinition"
                            return DeviceManagementConfigurationSimpleSettingDefinition.new
                    end
                end
                return DeviceManagementConfigurationSettingDefinition.new
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
                    "accessTypes" => lambda {|n| @access_types = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingAccessTypes) },
                    "applicability" => lambda {|n| @applicability = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingApplicability.create_from_discriminator_value(pn) }) },
                    "baseUri" => lambda {|n| @base_uri = n.get_string_value() },
                    "categoryId" => lambda {|n| @category_id = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "helpText" => lambda {|n| @help_text = n.get_string_value() },
                    "infoUrls" => lambda {|n| @info_urls = n.get_collection_of_primitive_values(String) },
                    "keywords" => lambda {|n| @keywords = n.get_collection_of_primitive_values(String) },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "occurrence" => lambda {|n| @occurrence = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingOccurrence.create_from_discriminator_value(pn) }) },
                    "offsetUri" => lambda {|n| @offset_uri = n.get_string_value() },
                    "referredSettingInformationList" => lambda {|n| @referred_setting_information_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceManagementConfigurationReferredSettingInformation.create_from_discriminator_value(pn) }) },
                    "rootDefinitionId" => lambda {|n| @root_definition_id = n.get_string_value() },
                    "settingUsage" => lambda {|n| @setting_usage = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingUsage) },
                    "uxBehavior" => lambda {|n| @ux_behavior = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationControlType) },
                    "version" => lambda {|n| @version = n.get_string_value() },
                    "visibility" => lambda {|n| @visibility = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementConfigurationSettingVisibility) },
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
            ## Gets the infoUrls property value. List of links more info for the setting can be found at
            ## @return a string
            ## 
            def info_urls
                return @info_urls
            end
            ## 
            ## Sets the infoUrls property value. List of links more info for the setting can be found at
            ## @param value Value to set for the info_urls property.
            ## @return a void
            ## 
            def info_urls=(value)
                @info_urls = value
            end
            ## 
            ## Gets the keywords property value. Tokens which to search settings on
            ## @return a string
            ## 
            def keywords
                return @keywords
            end
            ## 
            ## Sets the keywords property value. Tokens which to search settings on
            ## @param value Value to set for the keywords property.
            ## @return a void
            ## 
            def keywords=(value)
                @keywords = value
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
            ## Gets the occurrence property value. Indicates whether the setting is required or not
            ## @return a device_management_configuration_setting_occurrence
            ## 
            def occurrence
                return @occurrence
            end
            ## 
            ## Sets the occurrence property value. Indicates whether the setting is required or not
            ## @param value Value to set for the occurrence property.
            ## @return a void
            ## 
            def occurrence=(value)
                @occurrence = value
            end
            ## 
            ## Gets the offsetUri property value. Offset CSP Path from Base
            ## @return a string
            ## 
            def offset_uri
                return @offset_uri
            end
            ## 
            ## Sets the offsetUri property value. Offset CSP Path from Base
            ## @param value Value to set for the offset_uri property.
            ## @return a void
            ## 
            def offset_uri=(value)
                @offset_uri = value
            end
            ## 
            ## Gets the referredSettingInformationList property value. List of referred setting information.
            ## @return a device_management_configuration_referred_setting_information
            ## 
            def referred_setting_information_list
                return @referred_setting_information_list
            end
            ## 
            ## Sets the referredSettingInformationList property value. List of referred setting information.
            ## @param value Value to set for the referred_setting_information_list property.
            ## @return a void
            ## 
            def referred_setting_information_list=(value)
                @referred_setting_information_list = value
            end
            ## 
            ## Gets the rootDefinitionId property value. Root setting definition if the setting is a child setting.
            ## @return a string
            ## 
            def root_definition_id
                return @root_definition_id
            end
            ## 
            ## Sets the rootDefinitionId property value. Root setting definition if the setting is a child setting.
            ## @param value Value to set for the root_definition_id property.
            ## @return a void
            ## 
            def root_definition_id=(value)
                @root_definition_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("accessTypes", @access_types)
                writer.write_object_value("applicability", @applicability)
                writer.write_string_value("baseUri", @base_uri)
                writer.write_string_value("categoryId", @category_id)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("helpText", @help_text)
                writer.write_collection_of_primitive_values("infoUrls", @info_urls)
                writer.write_collection_of_primitive_values("keywords", @keywords)
                writer.write_string_value("name", @name)
                writer.write_object_value("occurrence", @occurrence)
                writer.write_string_value("offsetUri", @offset_uri)
                writer.write_collection_of_object_values("referredSettingInformationList", @referred_setting_information_list)
                writer.write_string_value("rootDefinitionId", @root_definition_id)
                writer.write_enum_value("settingUsage", @setting_usage)
                writer.write_enum_value("uxBehavior", @ux_behavior)
                writer.write_string_value("version", @version)
                writer.write_enum_value("visibility", @visibility)
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
            ## Gets the uxBehavior property value. Setting control type representation in the UX
            ## @return a device_management_configuration_control_type
            ## 
            def ux_behavior
                return @ux_behavior
            end
            ## 
            ## Sets the uxBehavior property value. Setting control type representation in the UX
            ## @param value Value to set for the ux_behavior property.
            ## @return a void
            ## 
            def ux_behavior=(value)
                @ux_behavior = value
            end
            ## 
            ## Gets the version property value. Item Version
            ## @return a string
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. Item Version
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
            ## 
            ## Gets the visibility property value. Supported setting types
            ## @return a device_management_configuration_setting_visibility
            ## 
            def visibility
                return @visibility
            end
            ## 
            ## Sets the visibility property value. Supported setting types
            ## @param value Value to set for the visibility property.
            ## @return a void
            ## 
            def visibility=(value)
                @visibility = value
            end
        end
    end
end
