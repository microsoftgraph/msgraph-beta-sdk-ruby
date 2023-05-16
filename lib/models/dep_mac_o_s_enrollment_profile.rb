require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DepMacOSEnrollmentProfile < MicrosoftGraphBeta::Models::DepEnrollmentBaseProfile
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates if Accessibility screen is disabled
            @accessibility_screen_disabled
            ## 
            # Indicates what the full name for the admin account is
            @admin_account_full_name
            ## 
            # Indicates what the password for the admin account is
            @admin_account_password
            ## 
            # Indicates what the user name for the admin account is
            @admin_account_user_name
            ## 
            # Indicates if UnlockWithWatch screen is disabled
            @auto_unlock_with_watch_disabled
            ## 
            # Indicates if iCloud Documents and Desktop screen is disabled
            @choose_your_lock_screen_disabled
            ## 
            # Indicates whether Setup Assistant will auto populate the primary account information
            @dont_auto_populate_primary_account_info
            ## 
            # Indicates whether the user will enable blockediting
            @enable_restrict_editing
            ## 
            # Indicates if file vault is disabled
            @file_vault_disabled
            ## 
            # Indicates whether the admin account should be hidded or not
            @hide_admin_account
            ## 
            # Indicates if iCloud Analytics screen is disabled
            @i_cloud_diagnostics_disabled
            ## 
            # Indicates if iCloud Documents and Desktop screen is disabled
            @i_cloud_storage_disabled
            ## 
            # Indicates if Passcode setup pane is disabled
            @pass_code_disabled
            ## 
            # Indicates what the full name for the primary account is
            @primary_account_full_name
            ## 
            # Indicates what the account name for the primary account is
            @primary_account_user_name
            ## 
            # Indicates if registration is disabled
            @registration_disabled
            ## 
            # Indicates whether Setup Assistant will set the account as a regular user
            @set_primary_setup_account_as_regular_user
            ## 
            # Indicates whether Setup Assistant will skip the user interface for primary account setup
            @skip_primary_setup_account_creation
            ## 
            # Indicates if zoom setup pane is disabled
            @zoom_disabled
            ## 
            ## Gets the accessibilityScreenDisabled property value. Indicates if Accessibility screen is disabled
            ## @return a boolean
            ## 
            def accessibility_screen_disabled
                return @accessibility_screen_disabled
            end
            ## 
            ## Sets the accessibilityScreenDisabled property value. Indicates if Accessibility screen is disabled
            ## @param value Value to set for the accessibility_screen_disabled property.
            ## @return a void
            ## 
            def accessibility_screen_disabled=(value)
                @accessibility_screen_disabled = value
            end
            ## 
            ## Gets the adminAccountFullName property value. Indicates what the full name for the admin account is
            ## @return a string
            ## 
            def admin_account_full_name
                return @admin_account_full_name
            end
            ## 
            ## Sets the adminAccountFullName property value. Indicates what the full name for the admin account is
            ## @param value Value to set for the admin_account_full_name property.
            ## @return a void
            ## 
            def admin_account_full_name=(value)
                @admin_account_full_name = value
            end
            ## 
            ## Gets the adminAccountPassword property value. Indicates what the password for the admin account is
            ## @return a string
            ## 
            def admin_account_password
                return @admin_account_password
            end
            ## 
            ## Sets the adminAccountPassword property value. Indicates what the password for the admin account is
            ## @param value Value to set for the admin_account_password property.
            ## @return a void
            ## 
            def admin_account_password=(value)
                @admin_account_password = value
            end
            ## 
            ## Gets the adminAccountUserName property value. Indicates what the user name for the admin account is
            ## @return a string
            ## 
            def admin_account_user_name
                return @admin_account_user_name
            end
            ## 
            ## Sets the adminAccountUserName property value. Indicates what the user name for the admin account is
            ## @param value Value to set for the admin_account_user_name property.
            ## @return a void
            ## 
            def admin_account_user_name=(value)
                @admin_account_user_name = value
            end
            ## 
            ## Gets the autoUnlockWithWatchDisabled property value. Indicates if UnlockWithWatch screen is disabled
            ## @return a boolean
            ## 
            def auto_unlock_with_watch_disabled
                return @auto_unlock_with_watch_disabled
            end
            ## 
            ## Sets the autoUnlockWithWatchDisabled property value. Indicates if UnlockWithWatch screen is disabled
            ## @param value Value to set for the auto_unlock_with_watch_disabled property.
            ## @return a void
            ## 
            def auto_unlock_with_watch_disabled=(value)
                @auto_unlock_with_watch_disabled = value
            end
            ## 
            ## Gets the chooseYourLockScreenDisabled property value. Indicates if iCloud Documents and Desktop screen is disabled
            ## @return a boolean
            ## 
            def choose_your_lock_screen_disabled
                return @choose_your_lock_screen_disabled
            end
            ## 
            ## Sets the chooseYourLockScreenDisabled property value. Indicates if iCloud Documents and Desktop screen is disabled
            ## @param value Value to set for the choose_your_lock_screen_disabled property.
            ## @return a void
            ## 
            def choose_your_lock_screen_disabled=(value)
                @choose_your_lock_screen_disabled = value
            end
            ## 
            ## Instantiates a new DepMacOSEnrollmentProfile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.depMacOSEnrollmentProfile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a dep_mac_o_s_enrollment_profile
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DepMacOSEnrollmentProfile.new
            end
            ## 
            ## Gets the dontAutoPopulatePrimaryAccountInfo property value. Indicates whether Setup Assistant will auto populate the primary account information
            ## @return a boolean
            ## 
            def dont_auto_populate_primary_account_info
                return @dont_auto_populate_primary_account_info
            end
            ## 
            ## Sets the dontAutoPopulatePrimaryAccountInfo property value. Indicates whether Setup Assistant will auto populate the primary account information
            ## @param value Value to set for the dont_auto_populate_primary_account_info property.
            ## @return a void
            ## 
            def dont_auto_populate_primary_account_info=(value)
                @dont_auto_populate_primary_account_info = value
            end
            ## 
            ## Gets the enableRestrictEditing property value. Indicates whether the user will enable blockediting
            ## @return a boolean
            ## 
            def enable_restrict_editing
                return @enable_restrict_editing
            end
            ## 
            ## Sets the enableRestrictEditing property value. Indicates whether the user will enable blockediting
            ## @param value Value to set for the enable_restrict_editing property.
            ## @return a void
            ## 
            def enable_restrict_editing=(value)
                @enable_restrict_editing = value
            end
            ## 
            ## Gets the fileVaultDisabled property value. Indicates if file vault is disabled
            ## @return a boolean
            ## 
            def file_vault_disabled
                return @file_vault_disabled
            end
            ## 
            ## Sets the fileVaultDisabled property value. Indicates if file vault is disabled
            ## @param value Value to set for the file_vault_disabled property.
            ## @return a void
            ## 
            def file_vault_disabled=(value)
                @file_vault_disabled = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessibilityScreenDisabled" => lambda {|n| @accessibility_screen_disabled = n.get_boolean_value() },
                    "adminAccountFullName" => lambda {|n| @admin_account_full_name = n.get_string_value() },
                    "adminAccountPassword" => lambda {|n| @admin_account_password = n.get_string_value() },
                    "adminAccountUserName" => lambda {|n| @admin_account_user_name = n.get_string_value() },
                    "autoUnlockWithWatchDisabled" => lambda {|n| @auto_unlock_with_watch_disabled = n.get_boolean_value() },
                    "chooseYourLockScreenDisabled" => lambda {|n| @choose_your_lock_screen_disabled = n.get_boolean_value() },
                    "dontAutoPopulatePrimaryAccountInfo" => lambda {|n| @dont_auto_populate_primary_account_info = n.get_boolean_value() },
                    "enableRestrictEditing" => lambda {|n| @enable_restrict_editing = n.get_boolean_value() },
                    "fileVaultDisabled" => lambda {|n| @file_vault_disabled = n.get_boolean_value() },
                    "hideAdminAccount" => lambda {|n| @hide_admin_account = n.get_boolean_value() },
                    "iCloudDiagnosticsDisabled" => lambda {|n| @i_cloud_diagnostics_disabled = n.get_boolean_value() },
                    "iCloudStorageDisabled" => lambda {|n| @i_cloud_storage_disabled = n.get_boolean_value() },
                    "passCodeDisabled" => lambda {|n| @pass_code_disabled = n.get_boolean_value() },
                    "primaryAccountFullName" => lambda {|n| @primary_account_full_name = n.get_string_value() },
                    "primaryAccountUserName" => lambda {|n| @primary_account_user_name = n.get_string_value() },
                    "registrationDisabled" => lambda {|n| @registration_disabled = n.get_boolean_value() },
                    "setPrimarySetupAccountAsRegularUser" => lambda {|n| @set_primary_setup_account_as_regular_user = n.get_boolean_value() },
                    "skipPrimarySetupAccountCreation" => lambda {|n| @skip_primary_setup_account_creation = n.get_boolean_value() },
                    "zoomDisabled" => lambda {|n| @zoom_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the hideAdminAccount property value. Indicates whether the admin account should be hidded or not
            ## @return a boolean
            ## 
            def hide_admin_account
                return @hide_admin_account
            end
            ## 
            ## Sets the hideAdminAccount property value. Indicates whether the admin account should be hidded or not
            ## @param value Value to set for the hide_admin_account property.
            ## @return a void
            ## 
            def hide_admin_account=(value)
                @hide_admin_account = value
            end
            ## 
            ## Gets the iCloudDiagnosticsDisabled property value. Indicates if iCloud Analytics screen is disabled
            ## @return a boolean
            ## 
            def i_cloud_diagnostics_disabled
                return @i_cloud_diagnostics_disabled
            end
            ## 
            ## Sets the iCloudDiagnosticsDisabled property value. Indicates if iCloud Analytics screen is disabled
            ## @param value Value to set for the i_cloud_diagnostics_disabled property.
            ## @return a void
            ## 
            def i_cloud_diagnostics_disabled=(value)
                @i_cloud_diagnostics_disabled = value
            end
            ## 
            ## Gets the iCloudStorageDisabled property value. Indicates if iCloud Documents and Desktop screen is disabled
            ## @return a boolean
            ## 
            def i_cloud_storage_disabled
                return @i_cloud_storage_disabled
            end
            ## 
            ## Sets the iCloudStorageDisabled property value. Indicates if iCloud Documents and Desktop screen is disabled
            ## @param value Value to set for the i_cloud_storage_disabled property.
            ## @return a void
            ## 
            def i_cloud_storage_disabled=(value)
                @i_cloud_storage_disabled = value
            end
            ## 
            ## Gets the passCodeDisabled property value. Indicates if Passcode setup pane is disabled
            ## @return a boolean
            ## 
            def pass_code_disabled
                return @pass_code_disabled
            end
            ## 
            ## Sets the passCodeDisabled property value. Indicates if Passcode setup pane is disabled
            ## @param value Value to set for the pass_code_disabled property.
            ## @return a void
            ## 
            def pass_code_disabled=(value)
                @pass_code_disabled = value
            end
            ## 
            ## Gets the primaryAccountFullName property value. Indicates what the full name for the primary account is
            ## @return a string
            ## 
            def primary_account_full_name
                return @primary_account_full_name
            end
            ## 
            ## Sets the primaryAccountFullName property value. Indicates what the full name for the primary account is
            ## @param value Value to set for the primary_account_full_name property.
            ## @return a void
            ## 
            def primary_account_full_name=(value)
                @primary_account_full_name = value
            end
            ## 
            ## Gets the primaryAccountUserName property value. Indicates what the account name for the primary account is
            ## @return a string
            ## 
            def primary_account_user_name
                return @primary_account_user_name
            end
            ## 
            ## Sets the primaryAccountUserName property value. Indicates what the account name for the primary account is
            ## @param value Value to set for the primary_account_user_name property.
            ## @return a void
            ## 
            def primary_account_user_name=(value)
                @primary_account_user_name = value
            end
            ## 
            ## Gets the registrationDisabled property value. Indicates if registration is disabled
            ## @return a boolean
            ## 
            def registration_disabled
                return @registration_disabled
            end
            ## 
            ## Sets the registrationDisabled property value. Indicates if registration is disabled
            ## @param value Value to set for the registration_disabled property.
            ## @return a void
            ## 
            def registration_disabled=(value)
                @registration_disabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("accessibilityScreenDisabled", @accessibility_screen_disabled)
                writer.write_string_value("adminAccountFullName", @admin_account_full_name)
                writer.write_string_value("adminAccountPassword", @admin_account_password)
                writer.write_string_value("adminAccountUserName", @admin_account_user_name)
                writer.write_boolean_value("autoUnlockWithWatchDisabled", @auto_unlock_with_watch_disabled)
                writer.write_boolean_value("chooseYourLockScreenDisabled", @choose_your_lock_screen_disabled)
                writer.write_boolean_value("dontAutoPopulatePrimaryAccountInfo", @dont_auto_populate_primary_account_info)
                writer.write_boolean_value("enableRestrictEditing", @enable_restrict_editing)
                writer.write_boolean_value("fileVaultDisabled", @file_vault_disabled)
                writer.write_boolean_value("hideAdminAccount", @hide_admin_account)
                writer.write_boolean_value("iCloudDiagnosticsDisabled", @i_cloud_diagnostics_disabled)
                writer.write_boolean_value("iCloudStorageDisabled", @i_cloud_storage_disabled)
                writer.write_boolean_value("passCodeDisabled", @pass_code_disabled)
                writer.write_string_value("primaryAccountFullName", @primary_account_full_name)
                writer.write_string_value("primaryAccountUserName", @primary_account_user_name)
                writer.write_boolean_value("registrationDisabled", @registration_disabled)
                writer.write_boolean_value("setPrimarySetupAccountAsRegularUser", @set_primary_setup_account_as_regular_user)
                writer.write_boolean_value("skipPrimarySetupAccountCreation", @skip_primary_setup_account_creation)
                writer.write_boolean_value("zoomDisabled", @zoom_disabled)
            end
            ## 
            ## Gets the setPrimarySetupAccountAsRegularUser property value. Indicates whether Setup Assistant will set the account as a regular user
            ## @return a boolean
            ## 
            def set_primary_setup_account_as_regular_user
                return @set_primary_setup_account_as_regular_user
            end
            ## 
            ## Sets the setPrimarySetupAccountAsRegularUser property value. Indicates whether Setup Assistant will set the account as a regular user
            ## @param value Value to set for the set_primary_setup_account_as_regular_user property.
            ## @return a void
            ## 
            def set_primary_setup_account_as_regular_user=(value)
                @set_primary_setup_account_as_regular_user = value
            end
            ## 
            ## Gets the skipPrimarySetupAccountCreation property value. Indicates whether Setup Assistant will skip the user interface for primary account setup
            ## @return a boolean
            ## 
            def skip_primary_setup_account_creation
                return @skip_primary_setup_account_creation
            end
            ## 
            ## Sets the skipPrimarySetupAccountCreation property value. Indicates whether Setup Assistant will skip the user interface for primary account setup
            ## @param value Value to set for the skip_primary_setup_account_creation property.
            ## @return a void
            ## 
            def skip_primary_setup_account_creation=(value)
                @skip_primary_setup_account_creation = value
            end
            ## 
            ## Gets the zoomDisabled property value. Indicates if zoom setup pane is disabled
            ## @return a boolean
            ## 
            def zoom_disabled
                return @zoom_disabled
            end
            ## 
            ## Sets the zoomDisabled property value. Indicates if zoom setup pane is disabled
            ## @param value Value to set for the zoom_disabled property.
            ## @return a void
            ## 
            def zoom_disabled=(value)
                @zoom_disabled = value
            end
        end
    end
end
