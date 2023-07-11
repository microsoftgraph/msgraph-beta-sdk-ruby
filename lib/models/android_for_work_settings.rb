require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Settings for Android For Work.
        class AndroidForWorkSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Bind status of the tenant with the Google EMM API
            @bind_status
            ## 
            # Indicates if this account is flighting for Android Device Owner Management with CloudDPC.
            @device_owner_management_enabled
            ## 
            # Android for Work device management targeting type for the account
            @enrollment_target
            ## 
            # Last completion time for app sync
            @last_app_sync_date_time
            ## 
            # Sync status of the tenant with the Google EMM API
            @last_app_sync_status
            ## 
            # Last modification time for Android for Work settings
            @last_modified_date_time
            ## 
            # Organization name used when onboarding Android for Work
            @owner_organization_name
            ## 
            # Owner UPN that created the enterprise
            @owner_user_principal_name
            ## 
            # Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'
            @target_group_ids
            ## 
            ## Gets the bindStatus property value. Bind status of the tenant with the Google EMM API
            ## @return a android_for_work_bind_status
            ## 
            def bind_status
                return @bind_status
            end
            ## 
            ## Sets the bindStatus property value. Bind status of the tenant with the Google EMM API
            ## @param value Value to set for the bind_status property.
            ## @return a void
            ## 
            def bind_status=(value)
                @bind_status = value
            end
            ## 
            ## Instantiates a new androidForWorkSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_for_work_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidForWorkSettings.new
            end
            ## 
            ## Gets the deviceOwnerManagementEnabled property value. Indicates if this account is flighting for Android Device Owner Management with CloudDPC.
            ## @return a boolean
            ## 
            def device_owner_management_enabled
                return @device_owner_management_enabled
            end
            ## 
            ## Sets the deviceOwnerManagementEnabled property value. Indicates if this account is flighting for Android Device Owner Management with CloudDPC.
            ## @param value Value to set for the device_owner_management_enabled property.
            ## @return a void
            ## 
            def device_owner_management_enabled=(value)
                @device_owner_management_enabled = value
            end
            ## 
            ## Gets the enrollmentTarget property value. Android for Work device management targeting type for the account
            ## @return a android_for_work_enrollment_target
            ## 
            def enrollment_target
                return @enrollment_target
            end
            ## 
            ## Sets the enrollmentTarget property value. Android for Work device management targeting type for the account
            ## @param value Value to set for the enrollment_target property.
            ## @return a void
            ## 
            def enrollment_target=(value)
                @enrollment_target = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bindStatus" => lambda {|n| @bind_status = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidForWorkBindStatus) },
                    "deviceOwnerManagementEnabled" => lambda {|n| @device_owner_management_enabled = n.get_boolean_value() },
                    "enrollmentTarget" => lambda {|n| @enrollment_target = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidForWorkEnrollmentTarget) },
                    "lastAppSyncDateTime" => lambda {|n| @last_app_sync_date_time = n.get_date_time_value() },
                    "lastAppSyncStatus" => lambda {|n| @last_app_sync_status = n.get_enum_value(MicrosoftGraphBeta::Models::AndroidForWorkSyncStatus) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "ownerOrganizationName" => lambda {|n| @owner_organization_name = n.get_string_value() },
                    "ownerUserPrincipalName" => lambda {|n| @owner_user_principal_name = n.get_string_value() },
                    "targetGroupIds" => lambda {|n| @target_group_ids = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the lastAppSyncDateTime property value. Last completion time for app sync
            ## @return a date_time
            ## 
            def last_app_sync_date_time
                return @last_app_sync_date_time
            end
            ## 
            ## Sets the lastAppSyncDateTime property value. Last completion time for app sync
            ## @param value Value to set for the last_app_sync_date_time property.
            ## @return a void
            ## 
            def last_app_sync_date_time=(value)
                @last_app_sync_date_time = value
            end
            ## 
            ## Gets the lastAppSyncStatus property value. Sync status of the tenant with the Google EMM API
            ## @return a android_for_work_sync_status
            ## 
            def last_app_sync_status
                return @last_app_sync_status
            end
            ## 
            ## Sets the lastAppSyncStatus property value. Sync status of the tenant with the Google EMM API
            ## @param value Value to set for the last_app_sync_status property.
            ## @return a void
            ## 
            def last_app_sync_status=(value)
                @last_app_sync_status = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Last modification time for Android for Work settings
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Last modification time for Android for Work settings
            ## @param value Value to set for the last_modified_date_time property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the ownerOrganizationName property value. Organization name used when onboarding Android for Work
            ## @return a string
            ## 
            def owner_organization_name
                return @owner_organization_name
            end
            ## 
            ## Sets the ownerOrganizationName property value. Organization name used when onboarding Android for Work
            ## @param value Value to set for the owner_organization_name property.
            ## @return a void
            ## 
            def owner_organization_name=(value)
                @owner_organization_name = value
            end
            ## 
            ## Gets the ownerUserPrincipalName property value. Owner UPN that created the enterprise
            ## @return a string
            ## 
            def owner_user_principal_name
                return @owner_user_principal_name
            end
            ## 
            ## Sets the ownerUserPrincipalName property value. Owner UPN that created the enterprise
            ## @param value Value to set for the owner_user_principal_name property.
            ## @return a void
            ## 
            def owner_user_principal_name=(value)
                @owner_user_principal_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("bindStatus", @bind_status)
                writer.write_boolean_value("deviceOwnerManagementEnabled", @device_owner_management_enabled)
                writer.write_enum_value("enrollmentTarget", @enrollment_target)
                writer.write_date_time_value("lastAppSyncDateTime", @last_app_sync_date_time)
                writer.write_enum_value("lastAppSyncStatus", @last_app_sync_status)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("ownerOrganizationName", @owner_organization_name)
                writer.write_string_value("ownerUserPrincipalName", @owner_user_principal_name)
                writer.write_collection_of_primitive_values("targetGroupIds", @target_group_ids)
            end
            ## 
            ## Gets the targetGroupIds property value. Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'
            ## @return a string
            ## 
            def target_group_ids
                return @target_group_ids
            end
            ## 
            ## Sets the targetGroupIds property value. Specifies which AAD groups can enroll devices in Android for Work device management if enrollmentTarget is set to 'Targeted'
            ## @param value Value to set for the target_group_ids property.
            ## @return a void
            ## 
            def target_group_ids=(value)
                @target_group_ids = value
            end
        end
    end
end
