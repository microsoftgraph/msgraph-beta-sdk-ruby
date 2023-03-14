require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WindowsManagedAppProtection < MicrosoftGraphBeta::Models::ManagedAppPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Data can be transferred from/to these classes of apps
            @allowed_inbound_data_transfer_sources
            ## 
            # Represents the level to which the device's clipboard may be shared between apps
            @allowed_outbound_clipboard_sharing_level
            ## 
            # Data can be transferred from/to these classes of apps
            @allowed_outbound_data_transfer_destinations
            ## 
            # If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Some possible values are block or wipe. If this property is not set, no action will be taken. Possible values are: block, wipe, warn.
            @app_action_if_unable_to_authenticate_user
            ## 
            # List of apps to which the policy is deployed.
            @apps
            ## 
            # Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            @assignments
            ## 
            # Indicates the total number of applications for which the current policy is deployed.
            @deployed_app_count
            ## 
            # When TRUE, indicates that the policy is deployed to some inclusion groups. When FALSE, indicates that the policy is not deployed to any inclusion groups. Default value is FALSE.
            @is_assigned
            ## 
            # The maxium threat level allowed for an app to be compliant.
            @maximum_allowed_device_threat_level
            ## 
            # Versions bigger than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @maximum_required_os_version
            ## 
            # Versions bigger than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @maximum_warning_os_version
            ## 
            # Versions bigger than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            @maximum_wipe_os_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @minimum_required_app_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @minimum_required_os_version
            ## 
            # Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @minimum_required_sdk_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @minimum_warning_app_version
            ## 
            # Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            @minimum_warning_os_version
            ## 
            # Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            @minimum_wipe_app_version
            ## 
            # Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            @minimum_wipe_os_version
            ## 
            # Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            @minimum_wipe_sdk_version
            ## 
            # An admin initiated action to be applied on a managed app.
            @mobile_threat_defense_remediation_action
            ## 
            # The period after which access is checked when the device is not connected to the internet. For example, PT5M indicates that the interval is 5 minutes in duration. A timespan value of PT0S indicates that access will be blocked immediately when the device is not connected to the internet.
            @period_offline_before_access_check
            ## 
            # The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. For example, P5D indicates that the interval is 5 days in duration. A timespan value of PT0S indicates that managed data will never be wiped when the device is not connected to the internet.
            @period_offline_before_wipe_is_enforced
            ## 
            # When TRUE, indicates that printing is blocked from managed apps. When FALSE, indicates that printing is allowed from managed apps. Default value is FALSE.
            @print_blocked
            ## 
            ## Gets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
            ## @return a windows_managed_app_data_transfer_level
            ## 
            def allowed_inbound_data_transfer_sources
                return @allowed_inbound_data_transfer_sources
            end
            ## 
            ## Sets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
            ## @param value Value to set for the allowed_inbound_data_transfer_sources property.
            ## @return a void
            ## 
            def allowed_inbound_data_transfer_sources=(value)
                @allowed_inbound_data_transfer_sources = value
            end
            ## 
            ## Gets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
            ## @return a windows_managed_app_clipboard_sharing_level
            ## 
            def allowed_outbound_clipboard_sharing_level
                return @allowed_outbound_clipboard_sharing_level
            end
            ## 
            ## Sets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
            ## @param value Value to set for the allowed_outbound_clipboard_sharing_level property.
            ## @return a void
            ## 
            def allowed_outbound_clipboard_sharing_level=(value)
                @allowed_outbound_clipboard_sharing_level = value
            end
            ## 
            ## Gets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
            ## @return a windows_managed_app_data_transfer_level
            ## 
            def allowed_outbound_data_transfer_destinations
                return @allowed_outbound_data_transfer_destinations
            end
            ## 
            ## Sets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
            ## @param value Value to set for the allowed_outbound_data_transfer_destinations property.
            ## @return a void
            ## 
            def allowed_outbound_data_transfer_destinations=(value)
                @allowed_outbound_data_transfer_destinations = value
            end
            ## 
            ## Gets the appActionIfUnableToAuthenticateUser property value. If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Some possible values are block or wipe. If this property is not set, no action will be taken. Possible values are: block, wipe, warn.
            ## @return a managed_app_remediation_action
            ## 
            def app_action_if_unable_to_authenticate_user
                return @app_action_if_unable_to_authenticate_user
            end
            ## 
            ## Sets the appActionIfUnableToAuthenticateUser property value. If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Some possible values are block or wipe. If this property is not set, no action will be taken. Possible values are: block, wipe, warn.
            ## @param value Value to set for the app_action_if_unable_to_authenticate_user property.
            ## @return a void
            ## 
            def app_action_if_unable_to_authenticate_user=(value)
                @app_action_if_unable_to_authenticate_user = value
            end
            ## 
            ## Gets the apps property value. List of apps to which the policy is deployed.
            ## @return a managed_mobile_app
            ## 
            def apps
                return @apps
            end
            ## 
            ## Sets the apps property value. List of apps to which the policy is deployed.
            ## @param value Value to set for the apps property.
            ## @return a void
            ## 
            def apps=(value)
                @apps = value
            end
            ## 
            ## Gets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @return a targeted_managed_app_policy_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Navigation property to list of inclusion and exclusion groups to which the policy is deployed.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new WindowsManagedAppProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsManagedAppProtection"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a windows_managed_app_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsManagedAppProtection.new
            end
            ## 
            ## Gets the deployedAppCount property value. Indicates the total number of applications for which the current policy is deployed.
            ## @return a integer
            ## 
            def deployed_app_count
                return @deployed_app_count
            end
            ## 
            ## Sets the deployedAppCount property value. Indicates the total number of applications for which the current policy is deployed.
            ## @param value Value to set for the deployed_app_count property.
            ## @return a void
            ## 
            def deployed_app_count=(value)
                @deployed_app_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "allowedInboundDataTransferSources" => lambda {|n| @allowed_inbound_data_transfer_sources = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsManagedAppDataTransferLevel) },
                    "allowedOutboundClipboardSharingLevel" => lambda {|n| @allowed_outbound_clipboard_sharing_level = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsManagedAppClipboardSharingLevel) },
                    "allowedOutboundDataTransferDestinations" => lambda {|n| @allowed_outbound_data_transfer_destinations = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsManagedAppDataTransferLevel) },
                    "appActionIfUnableToAuthenticateUser" => lambda {|n| @app_action_if_unable_to_authenticate_user = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "apps" => lambda {|n| @apps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedMobileApp.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::TargetedManagedAppPolicyAssignment.create_from_discriminator_value(pn) }) },
                    "deployedAppCount" => lambda {|n| @deployed_app_count = n.get_number_value() },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "maximumAllowedDeviceThreatLevel" => lambda {|n| @maximum_allowed_device_threat_level = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDeviceThreatLevel) },
                    "maximumRequiredOsVersion" => lambda {|n| @maximum_required_os_version = n.get_string_value() },
                    "maximumWarningOsVersion" => lambda {|n| @maximum_warning_os_version = n.get_string_value() },
                    "maximumWipeOsVersion" => lambda {|n| @maximum_wipe_os_version = n.get_string_value() },
                    "minimumRequiredAppVersion" => lambda {|n| @minimum_required_app_version = n.get_string_value() },
                    "minimumRequiredOsVersion" => lambda {|n| @minimum_required_os_version = n.get_string_value() },
                    "minimumRequiredSdkVersion" => lambda {|n| @minimum_required_sdk_version = n.get_string_value() },
                    "minimumWarningAppVersion" => lambda {|n| @minimum_warning_app_version = n.get_string_value() },
                    "minimumWarningOsVersion" => lambda {|n| @minimum_warning_os_version = n.get_string_value() },
                    "minimumWipeAppVersion" => lambda {|n| @minimum_wipe_app_version = n.get_string_value() },
                    "minimumWipeOsVersion" => lambda {|n| @minimum_wipe_os_version = n.get_string_value() },
                    "minimumWipeSdkVersion" => lambda {|n| @minimum_wipe_sdk_version = n.get_string_value() },
                    "mobileThreatDefenseRemediationAction" => lambda {|n| @mobile_threat_defense_remediation_action = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                    "periodOfflineBeforeAccessCheck" => lambda {|n| @period_offline_before_access_check = n.get_duration_value() },
                    "periodOfflineBeforeWipeIsEnforced" => lambda {|n| @period_offline_before_wipe_is_enforced = n.get_duration_value() },
                    "printBlocked" => lambda {|n| @print_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isAssigned property value. When TRUE, indicates that the policy is deployed to some inclusion groups. When FALSE, indicates that the policy is not deployed to any inclusion groups. Default value is FALSE.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. When TRUE, indicates that the policy is deployed to some inclusion groups. When FALSE, indicates that the policy is not deployed to any inclusion groups. Default value is FALSE.
            ## @param value Value to set for the is_assigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the maximumAllowedDeviceThreatLevel property value. The maxium threat level allowed for an app to be compliant.
            ## @return a managed_app_device_threat_level
            ## 
            def maximum_allowed_device_threat_level
                return @maximum_allowed_device_threat_level
            end
            ## 
            ## Sets the maximumAllowedDeviceThreatLevel property value. The maxium threat level allowed for an app to be compliant.
            ## @param value Value to set for the maximum_allowed_device_threat_level property.
            ## @return a void
            ## 
            def maximum_allowed_device_threat_level=(value)
                @maximum_allowed_device_threat_level = value
            end
            ## 
            ## Gets the maximumRequiredOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def maximum_required_os_version
                return @maximum_required_os_version
            end
            ## 
            ## Sets the maximumRequiredOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the maximum_required_os_version property.
            ## @return a void
            ## 
            def maximum_required_os_version=(value)
                @maximum_required_os_version = value
            end
            ## 
            ## Gets the maximumWarningOsVersion property value. Versions bigger than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def maximum_warning_os_version
                return @maximum_warning_os_version
            end
            ## 
            ## Sets the maximumWarningOsVersion property value. Versions bigger than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the maximum_warning_os_version property.
            ## @return a void
            ## 
            def maximum_warning_os_version=(value)
                @maximum_warning_os_version = value
            end
            ## 
            ## Gets the maximumWipeOsVersion property value. Versions bigger than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def maximum_wipe_os_version
                return @maximum_wipe_os_version
            end
            ## 
            ## Sets the maximumWipeOsVersion property value. Versions bigger than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the maximum_wipe_os_version property.
            ## @return a void
            ## 
            def maximum_wipe_os_version=(value)
                @maximum_wipe_os_version = value
            end
            ## 
            ## Gets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_required_app_version
                return @minimum_required_app_version
            end
            ## 
            ## Sets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_required_app_version property.
            ## @return a void
            ## 
            def minimum_required_app_version=(value)
                @minimum_required_app_version = value
            end
            ## 
            ## Gets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_required_os_version
                return @minimum_required_os_version
            end
            ## 
            ## Sets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_required_os_version property.
            ## @return a void
            ## 
            def minimum_required_os_version=(value)
                @minimum_required_os_version = value
            end
            ## 
            ## Gets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_required_sdk_version
                return @minimum_required_sdk_version
            end
            ## 
            ## Sets the minimumRequiredSdkVersion property value. Versions less than the specified version will block the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_required_sdk_version property.
            ## @return a void
            ## 
            def minimum_required_sdk_version=(value)
                @minimum_required_sdk_version = value
            end
            ## 
            ## Gets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_warning_app_version
                return @minimum_warning_app_version
            end
            ## 
            ## Sets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_warning_app_version property.
            ## @return a void
            ## 
            def minimum_warning_app_version=(value)
                @minimum_warning_app_version = value
            end
            ## 
            ## Gets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_warning_os_version
                return @minimum_warning_os_version
            end
            ## 
            ## Sets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_warning_os_version property.
            ## @return a void
            ## 
            def minimum_warning_os_version=(value)
                @minimum_warning_os_version = value
            end
            ## 
            ## Gets the minimumWipeAppVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_wipe_app_version
                return @minimum_wipe_app_version
            end
            ## 
            ## Sets the minimumWipeAppVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_wipe_app_version property.
            ## @return a void
            ## 
            def minimum_wipe_app_version=(value)
                @minimum_wipe_app_version = value
            end
            ## 
            ## Gets the minimumWipeOsVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_wipe_os_version
                return @minimum_wipe_os_version
            end
            ## 
            ## Sets the minimumWipeOsVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_wipe_os_version property.
            ## @return a void
            ## 
            def minimum_wipe_os_version=(value)
                @minimum_wipe_os_version = value
            end
            ## 
            ## Gets the minimumWipeSdkVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @return a string
            ## 
            def minimum_wipe_sdk_version
                return @minimum_wipe_sdk_version
            end
            ## 
            ## Sets the minimumWipeSdkVersion property value. Versions less than the specified version will wipe the managed app and the associated company data. For example: '8.1.0' or '13.1.1'.
            ## @param value Value to set for the minimum_wipe_sdk_version property.
            ## @return a void
            ## 
            def minimum_wipe_sdk_version=(value)
                @minimum_wipe_sdk_version = value
            end
            ## 
            ## Gets the mobileThreatDefenseRemediationAction property value. An admin initiated action to be applied on a managed app.
            ## @return a managed_app_remediation_action
            ## 
            def mobile_threat_defense_remediation_action
                return @mobile_threat_defense_remediation_action
            end
            ## 
            ## Sets the mobileThreatDefenseRemediationAction property value. An admin initiated action to be applied on a managed app.
            ## @param value Value to set for the mobile_threat_defense_remediation_action property.
            ## @return a void
            ## 
            def mobile_threat_defense_remediation_action=(value)
                @mobile_threat_defense_remediation_action = value
            end
            ## 
            ## Gets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet. For example, PT5M indicates that the interval is 5 minutes in duration. A timespan value of PT0S indicates that access will be blocked immediately when the device is not connected to the internet.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_offline_before_access_check
                return @period_offline_before_access_check
            end
            ## 
            ## Sets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet. For example, PT5M indicates that the interval is 5 minutes in duration. A timespan value of PT0S indicates that access will be blocked immediately when the device is not connected to the internet.
            ## @param value Value to set for the period_offline_before_access_check property.
            ## @return a void
            ## 
            def period_offline_before_access_check=(value)
                @period_offline_before_access_check = value
            end
            ## 
            ## Gets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. For example, P5D indicates that the interval is 5 days in duration. A timespan value of PT0S indicates that managed data will never be wiped when the device is not connected to the internet.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def period_offline_before_wipe_is_enforced
                return @period_offline_before_wipe_is_enforced
            end
            ## 
            ## Sets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped. For example, P5D indicates that the interval is 5 days in duration. A timespan value of PT0S indicates that managed data will never be wiped when the device is not connected to the internet.
            ## @param value Value to set for the period_offline_before_wipe_is_enforced property.
            ## @return a void
            ## 
            def period_offline_before_wipe_is_enforced=(value)
                @period_offline_before_wipe_is_enforced = value
            end
            ## 
            ## Gets the printBlocked property value. When TRUE, indicates that printing is blocked from managed apps. When FALSE, indicates that printing is allowed from managed apps. Default value is FALSE.
            ## @return a boolean
            ## 
            def print_blocked
                return @print_blocked
            end
            ## 
            ## Sets the printBlocked property value. When TRUE, indicates that printing is blocked from managed apps. When FALSE, indicates that printing is allowed from managed apps. Default value is FALSE.
            ## @param value Value to set for the print_blocked property.
            ## @return a void
            ## 
            def print_blocked=(value)
                @print_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("allowedInboundDataTransferSources", @allowed_inbound_data_transfer_sources)
                writer.write_enum_value("allowedOutboundClipboardSharingLevel", @allowed_outbound_clipboard_sharing_level)
                writer.write_enum_value("allowedOutboundDataTransferDestinations", @allowed_outbound_data_transfer_destinations)
                writer.write_enum_value("appActionIfUnableToAuthenticateUser", @app_action_if_unable_to_authenticate_user)
                writer.write_collection_of_object_values("apps", @apps)
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_number_value("deployedAppCount", @deployed_app_count)
                writer.write_boolean_value("isAssigned", @is_assigned)
                writer.write_enum_value("maximumAllowedDeviceThreatLevel", @maximum_allowed_device_threat_level)
                writer.write_string_value("maximumRequiredOsVersion", @maximum_required_os_version)
                writer.write_string_value("maximumWarningOsVersion", @maximum_warning_os_version)
                writer.write_string_value("maximumWipeOsVersion", @maximum_wipe_os_version)
                writer.write_string_value("minimumRequiredAppVersion", @minimum_required_app_version)
                writer.write_string_value("minimumRequiredOsVersion", @minimum_required_os_version)
                writer.write_string_value("minimumRequiredSdkVersion", @minimum_required_sdk_version)
                writer.write_string_value("minimumWarningAppVersion", @minimum_warning_app_version)
                writer.write_string_value("minimumWarningOsVersion", @minimum_warning_os_version)
                writer.write_string_value("minimumWipeAppVersion", @minimum_wipe_app_version)
                writer.write_string_value("minimumWipeOsVersion", @minimum_wipe_os_version)
                writer.write_string_value("minimumWipeSdkVersion", @minimum_wipe_sdk_version)
                writer.write_enum_value("mobileThreatDefenseRemediationAction", @mobile_threat_defense_remediation_action)
                writer.write_duration_value("periodOfflineBeforeAccessCheck", @period_offline_before_access_check)
                writer.write_duration_value("periodOfflineBeforeWipeIsEnforced", @period_offline_before_wipe_is_enforced)
                writer.write_boolean_value("printBlocked", @print_blocked)
            end
        end
    end
end
