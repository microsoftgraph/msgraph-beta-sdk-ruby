require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The Group Policy setting to MDM/Intune mapping.
    class GroupPolicySettingMapping < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Admx Group Policy Id
        @admx_setting_definition_id
        ## 
        # List of Child Ids of the group policy setting.
        @child_id_list
        ## 
        # The Intune Setting Definition Id
        @intune_setting_definition_id
        ## 
        # The list of Intune Setting URIs this group policy setting maps to
        @intune_setting_uri_list
        ## 
        # Indicates if the setting is supported by Intune or not
        @is_mdm_supported
        ## 
        # The CSP name this group policy setting maps to.
        @mdm_csp_name
        ## 
        # The minimum OS version this mdm setting supports.
        @mdm_minimum_o_s_version
        ## 
        # The MDM CSP URI this group policy setting maps to.
        @mdm_setting_uri
        ## 
        # Mdm Support Status of the setting.
        @mdm_supported_state
        ## 
        # Parent Id of the group policy setting.
        @parent_id
        ## 
        # The category the group policy setting is in.
        @setting_category
        ## 
        # The display name of this group policy setting.
        @setting_display_name
        ## 
        # The display value of this group policy setting.
        @setting_display_value
        ## 
        # The display value type of this group policy setting.
        @setting_display_value_type
        ## 
        # The name of this group policy setting.
        @setting_name
        ## 
        # Scope of the group policy setting.
        @setting_scope
        ## 
        # Setting type of the group policy.
        @setting_type
        ## 
        # The value of this group policy setting.
        @setting_value
        ## 
        # The display units of this group policy setting value
        @setting_value_display_units
        ## 
        # The value type of this group policy setting.
        @setting_value_type
        ## 
        ## Gets the admxSettingDefinitionId property value. Admx Group Policy Id
        ## @return a string
        ## 
        def admx_setting_definition_id
            return @admx_setting_definition_id
        end
        ## 
        ## Sets the admxSettingDefinitionId property value. Admx Group Policy Id
        ## @param value Value to set for the admxSettingDefinitionId property.
        ## @return a void
        ## 
        def admx_setting_definition_id=(value)
            @admx_setting_definition_id = value
        end
        ## 
        ## Gets the childIdList property value. List of Child Ids of the group policy setting.
        ## @return a string
        ## 
        def child_id_list
            return @child_id_list
        end
        ## 
        ## Sets the childIdList property value. List of Child Ids of the group policy setting.
        ## @param value Value to set for the childIdList property.
        ## @return a void
        ## 
        def child_id_list=(value)
            @child_id_list = value
        end
        ## 
        ## Instantiates a new groupPolicySettingMapping and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_setting_mapping
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicySettingMapping.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "admxSettingDefinitionId" => lambda {|n| @admx_setting_definition_id = n.get_string_value() },
                "childIdList" => lambda {|n| @child_id_list = n.get_collection_of_primitive_values(String) },
                "intuneSettingDefinitionId" => lambda {|n| @intune_setting_definition_id = n.get_string_value() },
                "intuneSettingUriList" => lambda {|n| @intune_setting_uri_list = n.get_collection_of_primitive_values(String) },
                "isMdmSupported" => lambda {|n| @is_mdm_supported = n.get_boolean_value() },
                "mdmCspName" => lambda {|n| @mdm_csp_name = n.get_string_value() },
                "mdmMinimumOSVersion" => lambda {|n| @mdm_minimum_o_s_version = n.get_number_value() },
                "mdmSettingUri" => lambda {|n| @mdm_setting_uri = n.get_string_value() },
                "mdmSupportedState" => lambda {|n| @mdm_supported_state = n.get_enum_value(MicrosoftGraphBeta::Models::MdmSupportedState) },
                "parentId" => lambda {|n| @parent_id = n.get_string_value() },
                "settingCategory" => lambda {|n| @setting_category = n.get_string_value() },
                "settingDisplayName" => lambda {|n| @setting_display_name = n.get_string_value() },
                "settingDisplayValue" => lambda {|n| @setting_display_value = n.get_string_value() },
                "settingDisplayValueType" => lambda {|n| @setting_display_value_type = n.get_string_value() },
                "settingName" => lambda {|n| @setting_name = n.get_string_value() },
                "settingScope" => lambda {|n| @setting_scope = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicySettingScope) },
                "settingType" => lambda {|n| @setting_type = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicySettingType) },
                "settingValue" => lambda {|n| @setting_value = n.get_string_value() },
                "settingValueDisplayUnits" => lambda {|n| @setting_value_display_units = n.get_string_value() },
                "settingValueType" => lambda {|n| @setting_value_type = n.get_string_value() },
            })
        end
        ## 
        ## Gets the intuneSettingDefinitionId property value. The Intune Setting Definition Id
        ## @return a string
        ## 
        def intune_setting_definition_id
            return @intune_setting_definition_id
        end
        ## 
        ## Sets the intuneSettingDefinitionId property value. The Intune Setting Definition Id
        ## @param value Value to set for the intuneSettingDefinitionId property.
        ## @return a void
        ## 
        def intune_setting_definition_id=(value)
            @intune_setting_definition_id = value
        end
        ## 
        ## Gets the intuneSettingUriList property value. The list of Intune Setting URIs this group policy setting maps to
        ## @return a string
        ## 
        def intune_setting_uri_list
            return @intune_setting_uri_list
        end
        ## 
        ## Sets the intuneSettingUriList property value. The list of Intune Setting URIs this group policy setting maps to
        ## @param value Value to set for the intuneSettingUriList property.
        ## @return a void
        ## 
        def intune_setting_uri_list=(value)
            @intune_setting_uri_list = value
        end
        ## 
        ## Gets the isMdmSupported property value. Indicates if the setting is supported by Intune or not
        ## @return a boolean
        ## 
        def is_mdm_supported
            return @is_mdm_supported
        end
        ## 
        ## Sets the isMdmSupported property value. Indicates if the setting is supported by Intune or not
        ## @param value Value to set for the isMdmSupported property.
        ## @return a void
        ## 
        def is_mdm_supported=(value)
            @is_mdm_supported = value
        end
        ## 
        ## Gets the mdmCspName property value. The CSP name this group policy setting maps to.
        ## @return a string
        ## 
        def mdm_csp_name
            return @mdm_csp_name
        end
        ## 
        ## Sets the mdmCspName property value. The CSP name this group policy setting maps to.
        ## @param value Value to set for the mdmCspName property.
        ## @return a void
        ## 
        def mdm_csp_name=(value)
            @mdm_csp_name = value
        end
        ## 
        ## Gets the mdmMinimumOSVersion property value. The minimum OS version this mdm setting supports.
        ## @return a integer
        ## 
        def mdm_minimum_o_s_version
            return @mdm_minimum_o_s_version
        end
        ## 
        ## Sets the mdmMinimumOSVersion property value. The minimum OS version this mdm setting supports.
        ## @param value Value to set for the mdmMinimumOSVersion property.
        ## @return a void
        ## 
        def mdm_minimum_o_s_version=(value)
            @mdm_minimum_o_s_version = value
        end
        ## 
        ## Gets the mdmSettingUri property value. The MDM CSP URI this group policy setting maps to.
        ## @return a string
        ## 
        def mdm_setting_uri
            return @mdm_setting_uri
        end
        ## 
        ## Sets the mdmSettingUri property value. The MDM CSP URI this group policy setting maps to.
        ## @param value Value to set for the mdmSettingUri property.
        ## @return a void
        ## 
        def mdm_setting_uri=(value)
            @mdm_setting_uri = value
        end
        ## 
        ## Gets the mdmSupportedState property value. Mdm Support Status of the setting.
        ## @return a mdm_supported_state
        ## 
        def mdm_supported_state
            return @mdm_supported_state
        end
        ## 
        ## Sets the mdmSupportedState property value. Mdm Support Status of the setting.
        ## @param value Value to set for the mdmSupportedState property.
        ## @return a void
        ## 
        def mdm_supported_state=(value)
            @mdm_supported_state = value
        end
        ## 
        ## Gets the parentId property value. Parent Id of the group policy setting.
        ## @return a string
        ## 
        def parent_id
            return @parent_id
        end
        ## 
        ## Sets the parentId property value. Parent Id of the group policy setting.
        ## @param value Value to set for the parentId property.
        ## @return a void
        ## 
        def parent_id=(value)
            @parent_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("admxSettingDefinitionId", @admx_setting_definition_id)
            writer.write_collection_of_primitive_values("childIdList", @child_id_list)
            writer.write_string_value("intuneSettingDefinitionId", @intune_setting_definition_id)
            writer.write_collection_of_primitive_values("intuneSettingUriList", @intune_setting_uri_list)
            writer.write_boolean_value("isMdmSupported", @is_mdm_supported)
            writer.write_string_value("mdmCspName", @mdm_csp_name)
            writer.write_number_value("mdmMinimumOSVersion", @mdm_minimum_o_s_version)
            writer.write_string_value("mdmSettingUri", @mdm_setting_uri)
            writer.write_enum_value("mdmSupportedState", @mdm_supported_state)
            writer.write_string_value("parentId", @parent_id)
            writer.write_string_value("settingCategory", @setting_category)
            writer.write_string_value("settingDisplayName", @setting_display_name)
            writer.write_string_value("settingDisplayValue", @setting_display_value)
            writer.write_string_value("settingDisplayValueType", @setting_display_value_type)
            writer.write_string_value("settingName", @setting_name)
            writer.write_enum_value("settingScope", @setting_scope)
            writer.write_enum_value("settingType", @setting_type)
            writer.write_string_value("settingValue", @setting_value)
            writer.write_string_value("settingValueDisplayUnits", @setting_value_display_units)
            writer.write_string_value("settingValueType", @setting_value_type)
        end
        ## 
        ## Gets the settingCategory property value. The category the group policy setting is in.
        ## @return a string
        ## 
        def setting_category
            return @setting_category
        end
        ## 
        ## Sets the settingCategory property value. The category the group policy setting is in.
        ## @param value Value to set for the settingCategory property.
        ## @return a void
        ## 
        def setting_category=(value)
            @setting_category = value
        end
        ## 
        ## Gets the settingDisplayName property value. The display name of this group policy setting.
        ## @return a string
        ## 
        def setting_display_name
            return @setting_display_name
        end
        ## 
        ## Sets the settingDisplayName property value. The display name of this group policy setting.
        ## @param value Value to set for the settingDisplayName property.
        ## @return a void
        ## 
        def setting_display_name=(value)
            @setting_display_name = value
        end
        ## 
        ## Gets the settingDisplayValue property value. The display value of this group policy setting.
        ## @return a string
        ## 
        def setting_display_value
            return @setting_display_value
        end
        ## 
        ## Sets the settingDisplayValue property value. The display value of this group policy setting.
        ## @param value Value to set for the settingDisplayValue property.
        ## @return a void
        ## 
        def setting_display_value=(value)
            @setting_display_value = value
        end
        ## 
        ## Gets the settingDisplayValueType property value. The display value type of this group policy setting.
        ## @return a string
        ## 
        def setting_display_value_type
            return @setting_display_value_type
        end
        ## 
        ## Sets the settingDisplayValueType property value. The display value type of this group policy setting.
        ## @param value Value to set for the settingDisplayValueType property.
        ## @return a void
        ## 
        def setting_display_value_type=(value)
            @setting_display_value_type = value
        end
        ## 
        ## Gets the settingName property value. The name of this group policy setting.
        ## @return a string
        ## 
        def setting_name
            return @setting_name
        end
        ## 
        ## Sets the settingName property value. The name of this group policy setting.
        ## @param value Value to set for the settingName property.
        ## @return a void
        ## 
        def setting_name=(value)
            @setting_name = value
        end
        ## 
        ## Gets the settingScope property value. Scope of the group policy setting.
        ## @return a group_policy_setting_scope
        ## 
        def setting_scope
            return @setting_scope
        end
        ## 
        ## Sets the settingScope property value. Scope of the group policy setting.
        ## @param value Value to set for the settingScope property.
        ## @return a void
        ## 
        def setting_scope=(value)
            @setting_scope = value
        end
        ## 
        ## Gets the settingType property value. Setting type of the group policy.
        ## @return a group_policy_setting_type
        ## 
        def setting_type
            return @setting_type
        end
        ## 
        ## Sets the settingType property value. Setting type of the group policy.
        ## @param value Value to set for the settingType property.
        ## @return a void
        ## 
        def setting_type=(value)
            @setting_type = value
        end
        ## 
        ## Gets the settingValue property value. The value of this group policy setting.
        ## @return a string
        ## 
        def setting_value
            return @setting_value
        end
        ## 
        ## Sets the settingValue property value. The value of this group policy setting.
        ## @param value Value to set for the settingValue property.
        ## @return a void
        ## 
        def setting_value=(value)
            @setting_value = value
        end
        ## 
        ## Gets the settingValueDisplayUnits property value. The display units of this group policy setting value
        ## @return a string
        ## 
        def setting_value_display_units
            return @setting_value_display_units
        end
        ## 
        ## Sets the settingValueDisplayUnits property value. The display units of this group policy setting value
        ## @param value Value to set for the settingValueDisplayUnits property.
        ## @return a void
        ## 
        def setting_value_display_units=(value)
            @setting_value_display_units = value
        end
        ## 
        ## Gets the settingValueType property value. The value type of this group policy setting.
        ## @return a string
        ## 
        def setting_value_type
            return @setting_value_type
        end
        ## 
        ## Sets the settingValueType property value. The value type of this group policy setting.
        ## @param value Value to set for the settingValueType property.
        ## @return a void
        ## 
        def setting_value_type=(value)
            @setting_value_type = value
        end
    end
end
