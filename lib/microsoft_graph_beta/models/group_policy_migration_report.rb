require 'date'
require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # The Group Policy migration report.
    class GroupPolicyMigrationReport < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The date and time at which the GroupPolicyMigrationReport was created.
        @created_date_time
        ## 
        # The name of Group Policy Object from the GPO Xml Content
        @display_name
        ## 
        # The date and time at which the GroupPolicyMigrationReport was created.
        @group_policy_created_date_time
        ## 
        # The date and time at which the GroupPolicyMigrationReport was last modified.
        @group_policy_last_modified_date_time
        ## 
        # The Group Policy Object GUID from GPO Xml content
        @group_policy_object_id
        ## 
        # A list of group policy settings to MDM/Intune mappings.
        @group_policy_setting_mappings
        ## 
        # The date and time at which the GroupPolicyMigrationReport was last modified.
        @last_modified_date_time
        ## 
        # Indicates if the Group Policy Object file is covered and ready for Intune migration.
        @migration_readiness
        ## 
        # The distinguished name of the OU.
        @ou_distinguished_name
        ## 
        # The list of scope tags for the configuration.
        @role_scope_tag_ids
        ## 
        # The number of Group Policy Settings supported by Intune.
        @supported_settings_count
        ## 
        # The Percentage of Group Policy Settings supported by Intune.
        @supported_settings_percent
        ## 
        # The Targeted in AD property from GPO Xml Content
        @targeted_in_active_directory
        ## 
        # The total number of Group Policy Settings from GPO file.
        @total_settings_count
        ## 
        # A list of unsupported group policy extensions inside the Group Policy Object.
        @unsupported_group_policy_extensions
        ## 
        ## Instantiates a new groupPolicyMigrationReport and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Gets the createdDateTime property value. The date and time at which the GroupPolicyMigrationReport was created.
        ## @return a date_time
        ## 
        def created_date_time
            return @created_date_time
        end
        ## 
        ## Sets the createdDateTime property value. The date and time at which the GroupPolicyMigrationReport was created.
        ## @param value Value to set for the createdDateTime property.
        ## @return a void
        ## 
        def created_date_time=(value)
            @created_date_time = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a group_policy_migration_report
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GroupPolicyMigrationReport.new
        end
        ## 
        ## Gets the displayName property value. The name of Group Policy Object from the GPO Xml Content
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The name of Group Policy Object from the GPO Xml Content
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
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "groupPolicyCreatedDateTime" => lambda {|n| @group_policy_created_date_time = n.get_date_time_value() },
                "groupPolicyLastModifiedDateTime" => lambda {|n| @group_policy_last_modified_date_time = n.get_date_time_value() },
                "groupPolicyObjectId" => lambda {|n| @group_policy_object_id = n.get_guid_value() },
                "groupPolicySettingMappings" => lambda {|n| @group_policy_setting_mappings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GroupPolicySettingMapping.create_from_discriminator_value(pn) }) },
                "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                "migrationReadiness" => lambda {|n| @migration_readiness = n.get_enum_value(MicrosoftGraphBeta::Models::GroupPolicyMigrationReadiness) },
                "ouDistinguishedName" => lambda {|n| @ou_distinguished_name = n.get_string_value() },
                "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                "supportedSettingsCount" => lambda {|n| @supported_settings_count = n.get_number_value() },
                "supportedSettingsPercent" => lambda {|n| @supported_settings_percent = n.get_number_value() },
                "targetedInActiveDirectory" => lambda {|n| @targeted_in_active_directory = n.get_boolean_value() },
                "totalSettingsCount" => lambda {|n| @total_settings_count = n.get_number_value() },
                "unsupportedGroupPolicyExtensions" => lambda {|n| @unsupported_group_policy_extensions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnsupportedGroupPolicyExtension.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the groupPolicyCreatedDateTime property value. The date and time at which the GroupPolicyMigrationReport was created.
        ## @return a date_time
        ## 
        def group_policy_created_date_time
            return @group_policy_created_date_time
        end
        ## 
        ## Sets the groupPolicyCreatedDateTime property value. The date and time at which the GroupPolicyMigrationReport was created.
        ## @param value Value to set for the groupPolicyCreatedDateTime property.
        ## @return a void
        ## 
        def group_policy_created_date_time=(value)
            @group_policy_created_date_time = value
        end
        ## 
        ## Gets the groupPolicyLastModifiedDateTime property value. The date and time at which the GroupPolicyMigrationReport was last modified.
        ## @return a date_time
        ## 
        def group_policy_last_modified_date_time
            return @group_policy_last_modified_date_time
        end
        ## 
        ## Sets the groupPolicyLastModifiedDateTime property value. The date and time at which the GroupPolicyMigrationReport was last modified.
        ## @param value Value to set for the groupPolicyLastModifiedDateTime property.
        ## @return a void
        ## 
        def group_policy_last_modified_date_time=(value)
            @group_policy_last_modified_date_time = value
        end
        ## 
        ## Gets the groupPolicyObjectId property value. The Group Policy Object GUID from GPO Xml content
        ## @return a guid
        ## 
        def group_policy_object_id
            return @group_policy_object_id
        end
        ## 
        ## Sets the groupPolicyObjectId property value. The Group Policy Object GUID from GPO Xml content
        ## @param value Value to set for the groupPolicyObjectId property.
        ## @return a void
        ## 
        def group_policy_object_id=(value)
            @group_policy_object_id = value
        end
        ## 
        ## Gets the groupPolicySettingMappings property value. A list of group policy settings to MDM/Intune mappings.
        ## @return a group_policy_setting_mapping
        ## 
        def group_policy_setting_mappings
            return @group_policy_setting_mappings
        end
        ## 
        ## Sets the groupPolicySettingMappings property value. A list of group policy settings to MDM/Intune mappings.
        ## @param value Value to set for the groupPolicySettingMappings property.
        ## @return a void
        ## 
        def group_policy_setting_mappings=(value)
            @group_policy_setting_mappings = value
        end
        ## 
        ## Gets the lastModifiedDateTime property value. The date and time at which the GroupPolicyMigrationReport was last modified.
        ## @return a date_time
        ## 
        def last_modified_date_time
            return @last_modified_date_time
        end
        ## 
        ## Sets the lastModifiedDateTime property value. The date and time at which the GroupPolicyMigrationReport was last modified.
        ## @param value Value to set for the lastModifiedDateTime property.
        ## @return a void
        ## 
        def last_modified_date_time=(value)
            @last_modified_date_time = value
        end
        ## 
        ## Gets the migrationReadiness property value. Indicates if the Group Policy Object file is covered and ready for Intune migration.
        ## @return a group_policy_migration_readiness
        ## 
        def migration_readiness
            return @migration_readiness
        end
        ## 
        ## Sets the migrationReadiness property value. Indicates if the Group Policy Object file is covered and ready for Intune migration.
        ## @param value Value to set for the migrationReadiness property.
        ## @return a void
        ## 
        def migration_readiness=(value)
            @migration_readiness = value
        end
        ## 
        ## Gets the ouDistinguishedName property value. The distinguished name of the OU.
        ## @return a string
        ## 
        def ou_distinguished_name
            return @ou_distinguished_name
        end
        ## 
        ## Sets the ouDistinguishedName property value. The distinguished name of the OU.
        ## @param value Value to set for the ouDistinguishedName property.
        ## @return a void
        ## 
        def ou_distinguished_name=(value)
            @ou_distinguished_name = value
        end
        ## 
        ## Gets the roleScopeTagIds property value. The list of scope tags for the configuration.
        ## @return a string
        ## 
        def role_scope_tag_ids
            return @role_scope_tag_ids
        end
        ## 
        ## Sets the roleScopeTagIds property value. The list of scope tags for the configuration.
        ## @param value Value to set for the roleScopeTagIds property.
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
            writer.write_date_time_value("createdDateTime", @created_date_time)
            writer.write_string_value("displayName", @display_name)
            writer.write_date_time_value("groupPolicyCreatedDateTime", @group_policy_created_date_time)
            writer.write_date_time_value("groupPolicyLastModifiedDateTime", @group_policy_last_modified_date_time)
            writer.write_guid_value("groupPolicyObjectId", @group_policy_object_id)
            writer.write_collection_of_object_values("groupPolicySettingMappings", @group_policy_setting_mappings)
            writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
            writer.write_enum_value("migrationReadiness", @migration_readiness)
            writer.write_string_value("ouDistinguishedName", @ou_distinguished_name)
            writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
            writer.write_number_value("supportedSettingsCount", @supported_settings_count)
            writer.write_number_value("supportedSettingsPercent", @supported_settings_percent)
            writer.write_boolean_value("targetedInActiveDirectory", @targeted_in_active_directory)
            writer.write_number_value("totalSettingsCount", @total_settings_count)
            writer.write_collection_of_object_values("unsupportedGroupPolicyExtensions", @unsupported_group_policy_extensions)
        end
        ## 
        ## Gets the supportedSettingsCount property value. The number of Group Policy Settings supported by Intune.
        ## @return a integer
        ## 
        def supported_settings_count
            return @supported_settings_count
        end
        ## 
        ## Sets the supportedSettingsCount property value. The number of Group Policy Settings supported by Intune.
        ## @param value Value to set for the supportedSettingsCount property.
        ## @return a void
        ## 
        def supported_settings_count=(value)
            @supported_settings_count = value
        end
        ## 
        ## Gets the supportedSettingsPercent property value. The Percentage of Group Policy Settings supported by Intune.
        ## @return a integer
        ## 
        def supported_settings_percent
            return @supported_settings_percent
        end
        ## 
        ## Sets the supportedSettingsPercent property value. The Percentage of Group Policy Settings supported by Intune.
        ## @param value Value to set for the supportedSettingsPercent property.
        ## @return a void
        ## 
        def supported_settings_percent=(value)
            @supported_settings_percent = value
        end
        ## 
        ## Gets the targetedInActiveDirectory property value. The Targeted in AD property from GPO Xml Content
        ## @return a boolean
        ## 
        def targeted_in_active_directory
            return @targeted_in_active_directory
        end
        ## 
        ## Sets the targetedInActiveDirectory property value. The Targeted in AD property from GPO Xml Content
        ## @param value Value to set for the targetedInActiveDirectory property.
        ## @return a void
        ## 
        def targeted_in_active_directory=(value)
            @targeted_in_active_directory = value
        end
        ## 
        ## Gets the totalSettingsCount property value. The total number of Group Policy Settings from GPO file.
        ## @return a integer
        ## 
        def total_settings_count
            return @total_settings_count
        end
        ## 
        ## Sets the totalSettingsCount property value. The total number of Group Policy Settings from GPO file.
        ## @param value Value to set for the totalSettingsCount property.
        ## @return a void
        ## 
        def total_settings_count=(value)
            @total_settings_count = value
        end
        ## 
        ## Gets the unsupportedGroupPolicyExtensions property value. A list of unsupported group policy extensions inside the Group Policy Object.
        ## @return a unsupported_group_policy_extension
        ## 
        def unsupported_group_policy_extensions
            return @unsupported_group_policy_extensions
        end
        ## 
        ## Sets the unsupportedGroupPolicyExtensions property value. A list of unsupported group policy extensions inside the Group Policy Object.
        ## @param value Value to set for the unsupportedGroupPolicyExtensions property.
        ## @return a void
        ## 
        def unsupported_group_policy_extensions=(value)
            @unsupported_group_policy_extensions = value
        end
    end
end
