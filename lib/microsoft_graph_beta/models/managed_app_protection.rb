require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ManagedAppProtection < MicrosoftGraphBeta::Models::ManagedAppPolicy
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Data storage locations where a user may store managed data.
        @allowed_data_ingestion_locations
        ## 
        # Data storage locations where a user may store managed data.
        @allowed_data_storage_locations
        ## 
        # Data can be transferred from/to these classes of apps
        @allowed_inbound_data_transfer_sources
        ## 
        # Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed.
        @allowed_outbound_clipboard_sharing_exception_length
        ## 
        # Represents the level to which the device's clipboard may be shared between apps
        @allowed_outbound_clipboard_sharing_level
        ## 
        # Data can be transferred from/to these classes of apps
        @allowed_outbound_data_transfer_destinations
        ## 
        # An admin initiated action to be applied on a managed app.
        @app_action_if_device_compliance_required
        ## 
        # An admin initiated action to be applied on a managed app.
        @app_action_if_maximum_pin_retries_exceeded
        ## 
        # If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Possible values are: block, wipe, warn.
        @app_action_if_unable_to_authenticate_user
        ## 
        # Indicates whether a user can bring data into org documents.
        @block_data_ingestion_into_organization_documents
        ## 
        # Indicates whether contacts can be synced to the user's device.
        @contact_sync_blocked
        ## 
        # Indicates whether the backup of a managed app's data is blocked.
        @data_backup_blocked
        ## 
        # Indicates whether device compliance is required.
        @device_compliance_required
        ## 
        # The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.
        @dialer_restriction_level
        ## 
        # Indicates whether use of the app pin is required if the device pin is set.
        @disable_app_pin_if_device_pin_is_set
        ## 
        # Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
        @fingerprint_blocked
        ## 
        # A grace period before blocking app access during off clock hours.
        @grace_period_to_block_apps_during_off_clock_hours
        ## 
        # Type of managed browser
        @managed_browser
        ## 
        # Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
        @managed_browser_to_open_links_required
        ## 
        # The maxium threat level allowed for an app to be compliant.
        @maximum_allowed_device_threat_level
        ## 
        # Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
        @maximum_pin_retries
        ## 
        # Versions bigger than the specified version will block the managed app from accessing company data.
        @maximum_required_os_version
        ## 
        # Versions bigger than the specified version will block the managed app from accessing company data.
        @maximum_warning_os_version
        ## 
        # Versions bigger than the specified version will block the managed app from accessing company data.
        @maximum_wipe_os_version
        ## 
        # Minimum pin length required for an app-level pin if PinRequired is set to True
        @minimum_pin_length
        ## 
        # Versions less than the specified version will block the managed app from accessing company data.
        @minimum_required_app_version
        ## 
        # Versions less than the specified version will block the managed app from accessing company data.
        @minimum_required_os_version
        ## 
        # Versions less than the specified version will result in warning message on the managed app.
        @minimum_warning_app_version
        ## 
        # Versions less than the specified version will result in warning message on the managed app from accessing company data.
        @minimum_warning_os_version
        ## 
        # Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        @minimum_wipe_app_version
        ## 
        # Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        @minimum_wipe_os_version
        ## 
        # Indicates how to prioritize which Mobile Threat Defense (MTD) partner is enabled for a given platform, when more than one is enabled. An app can only be actively using a single Mobile Threat Defense partner. When NULL, Microsoft Defender will be given preference. Otherwise setting the value to defenderOverThirdPartyPartner or thirdPartyPartnerOverDefender will make explicit which partner to prioritize. Possible values are: null, defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender and unknownFutureValue. Default value is null. Possible values are: defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender, unknownFutureValue.
        @mobile_threat_defense_partner_priority
        ## 
        # An admin initiated action to be applied on a managed app.
        @mobile_threat_defense_remediation_action
        ## 
        # Restrict managed app notification
        @notification_restriction
        ## 
        # Indicates whether organizational credentials are required for app use.
        @organizational_credentials_required
        ## 
        # TimePeriod before the all-level pin must be reset if PinRequired is set to True.
        @period_before_pin_reset
        ## 
        # The period after which access is checked when the device is not connected to the internet.
        @period_offline_before_access_check
        ## 
        # The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
        @period_offline_before_wipe_is_enforced
        ## 
        # The period after which access is checked when the device is connected to the internet.
        @period_online_before_access_check
        ## 
        # Character set which is to be used for a user's app PIN
        @pin_character_set
        ## 
        # Indicates whether an app-level pin is required.
        @pin_required
        ## 
        # Timeout in minutes for an app pin instead of non biometrics passcode
        @pin_required_instead_of_biometric_timeout
        ## 
        # Requires a pin to be unique from the number specified in this property.
        @previous_pin_block_count
        ## 
        # Indicates whether printing is allowed from managed apps.
        @print_blocked
        ## 
        # Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
        @save_as_blocked
        ## 
        # Indicates whether simplePin is blocked.
        @simple_pin_blocked
        ## 
        ## Gets the allowedDataIngestionLocations property value. Data storage locations where a user may store managed data.
        ## @return a managed_app_data_ingestion_location
        ## 
        def allowed_data_ingestion_locations
            return @allowed_data_ingestion_locations
        end
        ## 
        ## Sets the allowedDataIngestionLocations property value. Data storage locations where a user may store managed data.
        ## @param value Value to set for the allowedDataIngestionLocations property.
        ## @return a void
        ## 
        def allowed_data_ingestion_locations=(value)
            @allowed_data_ingestion_locations = value
        end
        ## 
        ## Gets the allowedDataStorageLocations property value. Data storage locations where a user may store managed data.
        ## @return a managed_app_data_storage_location
        ## 
        def allowed_data_storage_locations
            return @allowed_data_storage_locations
        end
        ## 
        ## Sets the allowedDataStorageLocations property value. Data storage locations where a user may store managed data.
        ## @param value Value to set for the allowedDataStorageLocations property.
        ## @return a void
        ## 
        def allowed_data_storage_locations=(value)
            @allowed_data_storage_locations = value
        end
        ## 
        ## Gets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
        ## @return a managed_app_data_transfer_level
        ## 
        def allowed_inbound_data_transfer_sources
            return @allowed_inbound_data_transfer_sources
        end
        ## 
        ## Sets the allowedInboundDataTransferSources property value. Data can be transferred from/to these classes of apps
        ## @param value Value to set for the allowedInboundDataTransferSources property.
        ## @return a void
        ## 
        def allowed_inbound_data_transfer_sources=(value)
            @allowed_inbound_data_transfer_sources = value
        end
        ## 
        ## Gets the allowedOutboundClipboardSharingExceptionLength property value. Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed.
        ## @return a integer
        ## 
        def allowed_outbound_clipboard_sharing_exception_length
            return @allowed_outbound_clipboard_sharing_exception_length
        end
        ## 
        ## Sets the allowedOutboundClipboardSharingExceptionLength property value. Specify the number of characters that may be cut or copied from Org data and accounts to any application. This setting overrides the AllowedOutboundClipboardSharingLevel restriction. Default value of '0' means no exception is allowed.
        ## @param value Value to set for the allowedOutboundClipboardSharingExceptionLength property.
        ## @return a void
        ## 
        def allowed_outbound_clipboard_sharing_exception_length=(value)
            @allowed_outbound_clipboard_sharing_exception_length = value
        end
        ## 
        ## Gets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
        ## @return a managed_app_clipboard_sharing_level
        ## 
        def allowed_outbound_clipboard_sharing_level
            return @allowed_outbound_clipboard_sharing_level
        end
        ## 
        ## Sets the allowedOutboundClipboardSharingLevel property value. Represents the level to which the device's clipboard may be shared between apps
        ## @param value Value to set for the allowedOutboundClipboardSharingLevel property.
        ## @return a void
        ## 
        def allowed_outbound_clipboard_sharing_level=(value)
            @allowed_outbound_clipboard_sharing_level = value
        end
        ## 
        ## Gets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
        ## @return a managed_app_data_transfer_level
        ## 
        def allowed_outbound_data_transfer_destinations
            return @allowed_outbound_data_transfer_destinations
        end
        ## 
        ## Sets the allowedOutboundDataTransferDestinations property value. Data can be transferred from/to these classes of apps
        ## @param value Value to set for the allowedOutboundDataTransferDestinations property.
        ## @return a void
        ## 
        def allowed_outbound_data_transfer_destinations=(value)
            @allowed_outbound_data_transfer_destinations = value
        end
        ## 
        ## Gets the appActionIfDeviceComplianceRequired property value. An admin initiated action to be applied on a managed app.
        ## @return a managed_app_remediation_action
        ## 
        def app_action_if_device_compliance_required
            return @app_action_if_device_compliance_required
        end
        ## 
        ## Sets the appActionIfDeviceComplianceRequired property value. An admin initiated action to be applied on a managed app.
        ## @param value Value to set for the appActionIfDeviceComplianceRequired property.
        ## @return a void
        ## 
        def app_action_if_device_compliance_required=(value)
            @app_action_if_device_compliance_required = value
        end
        ## 
        ## Gets the appActionIfMaximumPinRetriesExceeded property value. An admin initiated action to be applied on a managed app.
        ## @return a managed_app_remediation_action
        ## 
        def app_action_if_maximum_pin_retries_exceeded
            return @app_action_if_maximum_pin_retries_exceeded
        end
        ## 
        ## Sets the appActionIfMaximumPinRetriesExceeded property value. An admin initiated action to be applied on a managed app.
        ## @param value Value to set for the appActionIfMaximumPinRetriesExceeded property.
        ## @return a void
        ## 
        def app_action_if_maximum_pin_retries_exceeded=(value)
            @app_action_if_maximum_pin_retries_exceeded = value
        end
        ## 
        ## Gets the appActionIfUnableToAuthenticateUser property value. If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Possible values are: block, wipe, warn.
        ## @return a managed_app_remediation_action
        ## 
        def app_action_if_unable_to_authenticate_user
            return @app_action_if_unable_to_authenticate_user
        end
        ## 
        ## Sets the appActionIfUnableToAuthenticateUser property value. If set, it will specify what action to take in the case where the user is unable to checkin because their authentication token is invalid. This happens when the user is deleted or disabled in AAD. Possible values are: block, wipe, warn.
        ## @param value Value to set for the appActionIfUnableToAuthenticateUser property.
        ## @return a void
        ## 
        def app_action_if_unable_to_authenticate_user=(value)
            @app_action_if_unable_to_authenticate_user = value
        end
        ## 
        ## Gets the blockDataIngestionIntoOrganizationDocuments property value. Indicates whether a user can bring data into org documents.
        ## @return a boolean
        ## 
        def block_data_ingestion_into_organization_documents
            return @block_data_ingestion_into_organization_documents
        end
        ## 
        ## Sets the blockDataIngestionIntoOrganizationDocuments property value. Indicates whether a user can bring data into org documents.
        ## @param value Value to set for the blockDataIngestionIntoOrganizationDocuments property.
        ## @return a void
        ## 
        def block_data_ingestion_into_organization_documents=(value)
            @block_data_ingestion_into_organization_documents = value
        end
        ## 
        ## Instantiates a new ManagedAppProtection and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.managedAppProtection"
        end
        ## 
        ## Gets the contactSyncBlocked property value. Indicates whether contacts can be synced to the user's device.
        ## @return a boolean
        ## 
        def contact_sync_blocked
            return @contact_sync_blocked
        end
        ## 
        ## Sets the contactSyncBlocked property value. Indicates whether contacts can be synced to the user's device.
        ## @param value Value to set for the contactSyncBlocked property.
        ## @return a void
        ## 
        def contact_sync_blocked=(value)
            @contact_sync_blocked = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a managed_app_protection
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            mapping_value_node = parse_node.get_child_node("@odata.type")
            unless mapping_value_node.nil? then
                mapping_value = mapping_value_node.get_string_value
                case mapping_value
                    when "#microsoft.graph.androidManagedAppProtection"
                        return AndroidManagedAppProtection.new
                    when "#microsoft.graph.defaultManagedAppProtection"
                        return DefaultManagedAppProtection.new
                    when "#microsoft.graph.iosManagedAppProtection"
                        return IosManagedAppProtection.new
                    when "#microsoft.graph.targetedManagedAppProtection"
                        return TargetedManagedAppProtection.new
                end
            end
            return ManagedAppProtection.new
        end
        ## 
        ## Gets the dataBackupBlocked property value. Indicates whether the backup of a managed app's data is blocked.
        ## @return a boolean
        ## 
        def data_backup_blocked
            return @data_backup_blocked
        end
        ## 
        ## Sets the dataBackupBlocked property value. Indicates whether the backup of a managed app's data is blocked.
        ## @param value Value to set for the dataBackupBlocked property.
        ## @return a void
        ## 
        def data_backup_blocked=(value)
            @data_backup_blocked = value
        end
        ## 
        ## Gets the deviceComplianceRequired property value. Indicates whether device compliance is required.
        ## @return a boolean
        ## 
        def device_compliance_required
            return @device_compliance_required
        end
        ## 
        ## Sets the deviceComplianceRequired property value. Indicates whether device compliance is required.
        ## @param value Value to set for the deviceComplianceRequired property.
        ## @return a void
        ## 
        def device_compliance_required=(value)
            @device_compliance_required = value
        end
        ## 
        ## Gets the dialerRestrictionLevel property value. The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.
        ## @return a managed_app_phone_number_redirect_level
        ## 
        def dialer_restriction_level
            return @dialer_restriction_level
        end
        ## 
        ## Sets the dialerRestrictionLevel property value. The classes of apps that are allowed to click-to-open a phone number, for making phone calls or sending text messages.
        ## @param value Value to set for the dialerRestrictionLevel property.
        ## @return a void
        ## 
        def dialer_restriction_level=(value)
            @dialer_restriction_level = value
        end
        ## 
        ## Gets the disableAppPinIfDevicePinIsSet property value. Indicates whether use of the app pin is required if the device pin is set.
        ## @return a boolean
        ## 
        def disable_app_pin_if_device_pin_is_set
            return @disable_app_pin_if_device_pin_is_set
        end
        ## 
        ## Sets the disableAppPinIfDevicePinIsSet property value. Indicates whether use of the app pin is required if the device pin is set.
        ## @param value Value to set for the disableAppPinIfDevicePinIsSet property.
        ## @return a void
        ## 
        def disable_app_pin_if_device_pin_is_set=(value)
            @disable_app_pin_if_device_pin_is_set = value
        end
        ## 
        ## Gets the fingerprintBlocked property value. Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
        ## @return a boolean
        ## 
        def fingerprint_blocked
            return @fingerprint_blocked
        end
        ## 
        ## Sets the fingerprintBlocked property value. Indicates whether use of the fingerprint reader is allowed in place of a pin if PinRequired is set to True.
        ## @param value Value to set for the fingerprintBlocked property.
        ## @return a void
        ## 
        def fingerprint_blocked=(value)
            @fingerprint_blocked = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "allowedDataIngestionLocations" => lambda {|n| @allowed_data_ingestion_locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppDataIngestionLocation.create_from_discriminator_value(pn) }) },
                "allowedDataStorageLocations" => lambda {|n| @allowed_data_storage_locations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedAppDataStorageLocation.create_from_discriminator_value(pn) }) },
                "allowedInboundDataTransferSources" => lambda {|n| @allowed_inbound_data_transfer_sources = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDataTransferLevel) },
                "allowedOutboundClipboardSharingExceptionLength" => lambda {|n| @allowed_outbound_clipboard_sharing_exception_length = n.get_number_value() },
                "allowedOutboundClipboardSharingLevel" => lambda {|n| @allowed_outbound_clipboard_sharing_level = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppClipboardSharingLevel) },
                "allowedOutboundDataTransferDestinations" => lambda {|n| @allowed_outbound_data_transfer_destinations = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDataTransferLevel) },
                "appActionIfDeviceComplianceRequired" => lambda {|n| @app_action_if_device_compliance_required = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                "appActionIfMaximumPinRetriesExceeded" => lambda {|n| @app_action_if_maximum_pin_retries_exceeded = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                "appActionIfUnableToAuthenticateUser" => lambda {|n| @app_action_if_unable_to_authenticate_user = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                "blockDataIngestionIntoOrganizationDocuments" => lambda {|n| @block_data_ingestion_into_organization_documents = n.get_boolean_value() },
                "contactSyncBlocked" => lambda {|n| @contact_sync_blocked = n.get_boolean_value() },
                "dataBackupBlocked" => lambda {|n| @data_backup_blocked = n.get_boolean_value() },
                "deviceComplianceRequired" => lambda {|n| @device_compliance_required = n.get_boolean_value() },
                "dialerRestrictionLevel" => lambda {|n| @dialer_restriction_level = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppPhoneNumberRedirectLevel) },
                "disableAppPinIfDevicePinIsSet" => lambda {|n| @disable_app_pin_if_device_pin_is_set = n.get_boolean_value() },
                "fingerprintBlocked" => lambda {|n| @fingerprint_blocked = n.get_boolean_value() },
                "gracePeriodToBlockAppsDuringOffClockHours" => lambda {|n| @grace_period_to_block_apps_during_off_clock_hours = n.get_duration_value() },
                "managedBrowser" => lambda {|n| @managed_browser = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedBrowserType) },
                "managedBrowserToOpenLinksRequired" => lambda {|n| @managed_browser_to_open_links_required = n.get_boolean_value() },
                "maximumAllowedDeviceThreatLevel" => lambda {|n| @maximum_allowed_device_threat_level = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppDeviceThreatLevel) },
                "maximumPinRetries" => lambda {|n| @maximum_pin_retries = n.get_number_value() },
                "maximumRequiredOsVersion" => lambda {|n| @maximum_required_os_version = n.get_string_value() },
                "maximumWarningOsVersion" => lambda {|n| @maximum_warning_os_version = n.get_string_value() },
                "maximumWipeOsVersion" => lambda {|n| @maximum_wipe_os_version = n.get_string_value() },
                "minimumPinLength" => lambda {|n| @minimum_pin_length = n.get_number_value() },
                "minimumRequiredAppVersion" => lambda {|n| @minimum_required_app_version = n.get_string_value() },
                "minimumRequiredOsVersion" => lambda {|n| @minimum_required_os_version = n.get_string_value() },
                "minimumWarningAppVersion" => lambda {|n| @minimum_warning_app_version = n.get_string_value() },
                "minimumWarningOsVersion" => lambda {|n| @minimum_warning_os_version = n.get_string_value() },
                "minimumWipeAppVersion" => lambda {|n| @minimum_wipe_app_version = n.get_string_value() },
                "minimumWipeOsVersion" => lambda {|n| @minimum_wipe_os_version = n.get_string_value() },
                "mobileThreatDefensePartnerPriority" => lambda {|n| @mobile_threat_defense_partner_priority = n.get_enum_value(MicrosoftGraphBeta::Models::MobileThreatDefensePartnerPriority) },
                "mobileThreatDefenseRemediationAction" => lambda {|n| @mobile_threat_defense_remediation_action = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppRemediationAction) },
                "notificationRestriction" => lambda {|n| @notification_restriction = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppNotificationRestriction) },
                "organizationalCredentialsRequired" => lambda {|n| @organizational_credentials_required = n.get_boolean_value() },
                "periodBeforePinReset" => lambda {|n| @period_before_pin_reset = n.get_duration_value() },
                "periodOfflineBeforeAccessCheck" => lambda {|n| @period_offline_before_access_check = n.get_duration_value() },
                "periodOfflineBeforeWipeIsEnforced" => lambda {|n| @period_offline_before_wipe_is_enforced = n.get_duration_value() },
                "periodOnlineBeforeAccessCheck" => lambda {|n| @period_online_before_access_check = n.get_duration_value() },
                "pinCharacterSet" => lambda {|n| @pin_character_set = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedAppPinCharacterSet) },
                "pinRequired" => lambda {|n| @pin_required = n.get_boolean_value() },
                "pinRequiredInsteadOfBiometricTimeout" => lambda {|n| @pin_required_instead_of_biometric_timeout = n.get_duration_value() },
                "previousPinBlockCount" => lambda {|n| @previous_pin_block_count = n.get_number_value() },
                "printBlocked" => lambda {|n| @print_blocked = n.get_boolean_value() },
                "saveAsBlocked" => lambda {|n| @save_as_blocked = n.get_boolean_value() },
                "simplePinBlocked" => lambda {|n| @simple_pin_blocked = n.get_boolean_value() },
            })
        end
        ## 
        ## Gets the gracePeriodToBlockAppsDuringOffClockHours property value. A grace period before blocking app access during off clock hours.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def grace_period_to_block_apps_during_off_clock_hours
            return @grace_period_to_block_apps_during_off_clock_hours
        end
        ## 
        ## Sets the gracePeriodToBlockAppsDuringOffClockHours property value. A grace period before blocking app access during off clock hours.
        ## @param value Value to set for the gracePeriodToBlockAppsDuringOffClockHours property.
        ## @return a void
        ## 
        def grace_period_to_block_apps_during_off_clock_hours=(value)
            @grace_period_to_block_apps_during_off_clock_hours = value
        end
        ## 
        ## Gets the managedBrowser property value. Type of managed browser
        ## @return a managed_browser_type
        ## 
        def managed_browser
            return @managed_browser
        end
        ## 
        ## Sets the managedBrowser property value. Type of managed browser
        ## @param value Value to set for the managedBrowser property.
        ## @return a void
        ## 
        def managed_browser=(value)
            @managed_browser = value
        end
        ## 
        ## Gets the managedBrowserToOpenLinksRequired property value. Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
        ## @return a boolean
        ## 
        def managed_browser_to_open_links_required
            return @managed_browser_to_open_links_required
        end
        ## 
        ## Sets the managedBrowserToOpenLinksRequired property value. Indicates whether internet links should be opened in the managed browser app, or any custom browser specified by CustomBrowserProtocol (for iOS) or CustomBrowserPackageId/CustomBrowserDisplayName (for Android)
        ## @param value Value to set for the managedBrowserToOpenLinksRequired property.
        ## @return a void
        ## 
        def managed_browser_to_open_links_required=(value)
            @managed_browser_to_open_links_required = value
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
        ## @param value Value to set for the maximumAllowedDeviceThreatLevel property.
        ## @return a void
        ## 
        def maximum_allowed_device_threat_level=(value)
            @maximum_allowed_device_threat_level = value
        end
        ## 
        ## Gets the maximumPinRetries property value. Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
        ## @return a integer
        ## 
        def maximum_pin_retries
            return @maximum_pin_retries
        end
        ## 
        ## Sets the maximumPinRetries property value. Maximum number of incorrect pin retry attempts before the managed app is either blocked or wiped.
        ## @param value Value to set for the maximumPinRetries property.
        ## @return a void
        ## 
        def maximum_pin_retries=(value)
            @maximum_pin_retries = value
        end
        ## 
        ## Gets the maximumRequiredOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @return a string
        ## 
        def maximum_required_os_version
            return @maximum_required_os_version
        end
        ## 
        ## Sets the maximumRequiredOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @param value Value to set for the maximumRequiredOsVersion property.
        ## @return a void
        ## 
        def maximum_required_os_version=(value)
            @maximum_required_os_version = value
        end
        ## 
        ## Gets the maximumWarningOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @return a string
        ## 
        def maximum_warning_os_version
            return @maximum_warning_os_version
        end
        ## 
        ## Sets the maximumWarningOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @param value Value to set for the maximumWarningOsVersion property.
        ## @return a void
        ## 
        def maximum_warning_os_version=(value)
            @maximum_warning_os_version = value
        end
        ## 
        ## Gets the maximumWipeOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @return a string
        ## 
        def maximum_wipe_os_version
            return @maximum_wipe_os_version
        end
        ## 
        ## Sets the maximumWipeOsVersion property value. Versions bigger than the specified version will block the managed app from accessing company data.
        ## @param value Value to set for the maximumWipeOsVersion property.
        ## @return a void
        ## 
        def maximum_wipe_os_version=(value)
            @maximum_wipe_os_version = value
        end
        ## 
        ## Gets the minimumPinLength property value. Minimum pin length required for an app-level pin if PinRequired is set to True
        ## @return a integer
        ## 
        def minimum_pin_length
            return @minimum_pin_length
        end
        ## 
        ## Sets the minimumPinLength property value. Minimum pin length required for an app-level pin if PinRequired is set to True
        ## @param value Value to set for the minimumPinLength property.
        ## @return a void
        ## 
        def minimum_pin_length=(value)
            @minimum_pin_length = value
        end
        ## 
        ## Gets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data.
        ## @return a string
        ## 
        def minimum_required_app_version
            return @minimum_required_app_version
        end
        ## 
        ## Sets the minimumRequiredAppVersion property value. Versions less than the specified version will block the managed app from accessing company data.
        ## @param value Value to set for the minimumRequiredAppVersion property.
        ## @return a void
        ## 
        def minimum_required_app_version=(value)
            @minimum_required_app_version = value
        end
        ## 
        ## Gets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data.
        ## @return a string
        ## 
        def minimum_required_os_version
            return @minimum_required_os_version
        end
        ## 
        ## Sets the minimumRequiredOsVersion property value. Versions less than the specified version will block the managed app from accessing company data.
        ## @param value Value to set for the minimumRequiredOsVersion property.
        ## @return a void
        ## 
        def minimum_required_os_version=(value)
            @minimum_required_os_version = value
        end
        ## 
        ## Gets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app.
        ## @return a string
        ## 
        def minimum_warning_app_version
            return @minimum_warning_app_version
        end
        ## 
        ## Sets the minimumWarningAppVersion property value. Versions less than the specified version will result in warning message on the managed app.
        ## @param value Value to set for the minimumWarningAppVersion property.
        ## @return a void
        ## 
        def minimum_warning_app_version=(value)
            @minimum_warning_app_version = value
        end
        ## 
        ## Gets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
        ## @return a string
        ## 
        def minimum_warning_os_version
            return @minimum_warning_os_version
        end
        ## 
        ## Sets the minimumWarningOsVersion property value. Versions less than the specified version will result in warning message on the managed app from accessing company data.
        ## @param value Value to set for the minimumWarningOsVersion property.
        ## @return a void
        ## 
        def minimum_warning_os_version=(value)
            @minimum_warning_os_version = value
        end
        ## 
        ## Gets the minimumWipeAppVersion property value. Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        ## @return a string
        ## 
        def minimum_wipe_app_version
            return @minimum_wipe_app_version
        end
        ## 
        ## Sets the minimumWipeAppVersion property value. Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        ## @param value Value to set for the minimumWipeAppVersion property.
        ## @return a void
        ## 
        def minimum_wipe_app_version=(value)
            @minimum_wipe_app_version = value
        end
        ## 
        ## Gets the minimumWipeOsVersion property value. Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        ## @return a string
        ## 
        def minimum_wipe_os_version
            return @minimum_wipe_os_version
        end
        ## 
        ## Sets the minimumWipeOsVersion property value. Versions less than or equal to the specified version will wipe the managed app and the associated company data.
        ## @param value Value to set for the minimumWipeOsVersion property.
        ## @return a void
        ## 
        def minimum_wipe_os_version=(value)
            @minimum_wipe_os_version = value
        end
        ## 
        ## Gets the mobileThreatDefensePartnerPriority property value. Indicates how to prioritize which Mobile Threat Defense (MTD) partner is enabled for a given platform, when more than one is enabled. An app can only be actively using a single Mobile Threat Defense partner. When NULL, Microsoft Defender will be given preference. Otherwise setting the value to defenderOverThirdPartyPartner or thirdPartyPartnerOverDefender will make explicit which partner to prioritize. Possible values are: null, defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender and unknownFutureValue. Default value is null. Possible values are: defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender, unknownFutureValue.
        ## @return a mobile_threat_defense_partner_priority
        ## 
        def mobile_threat_defense_partner_priority
            return @mobile_threat_defense_partner_priority
        end
        ## 
        ## Sets the mobileThreatDefensePartnerPriority property value. Indicates how to prioritize which Mobile Threat Defense (MTD) partner is enabled for a given platform, when more than one is enabled. An app can only be actively using a single Mobile Threat Defense partner. When NULL, Microsoft Defender will be given preference. Otherwise setting the value to defenderOverThirdPartyPartner or thirdPartyPartnerOverDefender will make explicit which partner to prioritize. Possible values are: null, defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender and unknownFutureValue. Default value is null. Possible values are: defenderOverThirdPartyPartner, thirdPartyPartnerOverDefender, unknownFutureValue.
        ## @param value Value to set for the mobileThreatDefensePartnerPriority property.
        ## @return a void
        ## 
        def mobile_threat_defense_partner_priority=(value)
            @mobile_threat_defense_partner_priority = value
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
        ## @param value Value to set for the mobileThreatDefenseRemediationAction property.
        ## @return a void
        ## 
        def mobile_threat_defense_remediation_action=(value)
            @mobile_threat_defense_remediation_action = value
        end
        ## 
        ## Gets the notificationRestriction property value. Restrict managed app notification
        ## @return a managed_app_notification_restriction
        ## 
        def notification_restriction
            return @notification_restriction
        end
        ## 
        ## Sets the notificationRestriction property value. Restrict managed app notification
        ## @param value Value to set for the notificationRestriction property.
        ## @return a void
        ## 
        def notification_restriction=(value)
            @notification_restriction = value
        end
        ## 
        ## Gets the organizationalCredentialsRequired property value. Indicates whether organizational credentials are required for app use.
        ## @return a boolean
        ## 
        def organizational_credentials_required
            return @organizational_credentials_required
        end
        ## 
        ## Sets the organizationalCredentialsRequired property value. Indicates whether organizational credentials are required for app use.
        ## @param value Value to set for the organizationalCredentialsRequired property.
        ## @return a void
        ## 
        def organizational_credentials_required=(value)
            @organizational_credentials_required = value
        end
        ## 
        ## Gets the periodBeforePinReset property value. TimePeriod before the all-level pin must be reset if PinRequired is set to True.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def period_before_pin_reset
            return @period_before_pin_reset
        end
        ## 
        ## Sets the periodBeforePinReset property value. TimePeriod before the all-level pin must be reset if PinRequired is set to True.
        ## @param value Value to set for the periodBeforePinReset property.
        ## @return a void
        ## 
        def period_before_pin_reset=(value)
            @period_before_pin_reset = value
        end
        ## 
        ## Gets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def period_offline_before_access_check
            return @period_offline_before_access_check
        end
        ## 
        ## Sets the periodOfflineBeforeAccessCheck property value. The period after which access is checked when the device is not connected to the internet.
        ## @param value Value to set for the periodOfflineBeforeAccessCheck property.
        ## @return a void
        ## 
        def period_offline_before_access_check=(value)
            @period_offline_before_access_check = value
        end
        ## 
        ## Gets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def period_offline_before_wipe_is_enforced
            return @period_offline_before_wipe_is_enforced
        end
        ## 
        ## Sets the periodOfflineBeforeWipeIsEnforced property value. The amount of time an app is allowed to remain disconnected from the internet before all managed data it is wiped.
        ## @param value Value to set for the periodOfflineBeforeWipeIsEnforced property.
        ## @return a void
        ## 
        def period_offline_before_wipe_is_enforced=(value)
            @period_offline_before_wipe_is_enforced = value
        end
        ## 
        ## Gets the periodOnlineBeforeAccessCheck property value. The period after which access is checked when the device is connected to the internet.
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def period_online_before_access_check
            return @period_online_before_access_check
        end
        ## 
        ## Sets the periodOnlineBeforeAccessCheck property value. The period after which access is checked when the device is connected to the internet.
        ## @param value Value to set for the periodOnlineBeforeAccessCheck property.
        ## @return a void
        ## 
        def period_online_before_access_check=(value)
            @period_online_before_access_check = value
        end
        ## 
        ## Gets the pinCharacterSet property value. Character set which is to be used for a user's app PIN
        ## @return a managed_app_pin_character_set
        ## 
        def pin_character_set
            return @pin_character_set
        end
        ## 
        ## Sets the pinCharacterSet property value. Character set which is to be used for a user's app PIN
        ## @param value Value to set for the pinCharacterSet property.
        ## @return a void
        ## 
        def pin_character_set=(value)
            @pin_character_set = value
        end
        ## 
        ## Gets the pinRequired property value. Indicates whether an app-level pin is required.
        ## @return a boolean
        ## 
        def pin_required
            return @pin_required
        end
        ## 
        ## Sets the pinRequired property value. Indicates whether an app-level pin is required.
        ## @param value Value to set for the pinRequired property.
        ## @return a void
        ## 
        def pin_required=(value)
            @pin_required = value
        end
        ## 
        ## Gets the pinRequiredInsteadOfBiometricTimeout property value. Timeout in minutes for an app pin instead of non biometrics passcode
        ## @return a microsoft_kiota_abstractions::_i_s_o_duration
        ## 
        def pin_required_instead_of_biometric_timeout
            return @pin_required_instead_of_biometric_timeout
        end
        ## 
        ## Sets the pinRequiredInsteadOfBiometricTimeout property value. Timeout in minutes for an app pin instead of non biometrics passcode
        ## @param value Value to set for the pinRequiredInsteadOfBiometricTimeout property.
        ## @return a void
        ## 
        def pin_required_instead_of_biometric_timeout=(value)
            @pin_required_instead_of_biometric_timeout = value
        end
        ## 
        ## Gets the previousPinBlockCount property value. Requires a pin to be unique from the number specified in this property.
        ## @return a integer
        ## 
        def previous_pin_block_count
            return @previous_pin_block_count
        end
        ## 
        ## Sets the previousPinBlockCount property value. Requires a pin to be unique from the number specified in this property.
        ## @param value Value to set for the previousPinBlockCount property.
        ## @return a void
        ## 
        def previous_pin_block_count=(value)
            @previous_pin_block_count = value
        end
        ## 
        ## Gets the printBlocked property value. Indicates whether printing is allowed from managed apps.
        ## @return a boolean
        ## 
        def print_blocked
            return @print_blocked
        end
        ## 
        ## Sets the printBlocked property value. Indicates whether printing is allowed from managed apps.
        ## @param value Value to set for the printBlocked property.
        ## @return a void
        ## 
        def print_blocked=(value)
            @print_blocked = value
        end
        ## 
        ## Gets the saveAsBlocked property value. Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
        ## @return a boolean
        ## 
        def save_as_blocked
            return @save_as_blocked
        end
        ## 
        ## Sets the saveAsBlocked property value. Indicates whether users may use the 'Save As' menu item to save a copy of protected files.
        ## @param value Value to set for the saveAsBlocked property.
        ## @return a void
        ## 
        def save_as_blocked=(value)
            @save_as_blocked = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("allowedDataIngestionLocations", @allowed_data_ingestion_locations)
            writer.write_collection_of_object_values("allowedDataStorageLocations", @allowed_data_storage_locations)
            writer.write_enum_value("allowedInboundDataTransferSources", @allowed_inbound_data_transfer_sources)
            writer.write_number_value("allowedOutboundClipboardSharingExceptionLength", @allowed_outbound_clipboard_sharing_exception_length)
            writer.write_enum_value("allowedOutboundClipboardSharingLevel", @allowed_outbound_clipboard_sharing_level)
            writer.write_enum_value("allowedOutboundDataTransferDestinations", @allowed_outbound_data_transfer_destinations)
            writer.write_enum_value("appActionIfDeviceComplianceRequired", @app_action_if_device_compliance_required)
            writer.write_enum_value("appActionIfMaximumPinRetriesExceeded", @app_action_if_maximum_pin_retries_exceeded)
            writer.write_enum_value("appActionIfUnableToAuthenticateUser", @app_action_if_unable_to_authenticate_user)
            writer.write_boolean_value("blockDataIngestionIntoOrganizationDocuments", @block_data_ingestion_into_organization_documents)
            writer.write_boolean_value("contactSyncBlocked", @contact_sync_blocked)
            writer.write_boolean_value("dataBackupBlocked", @data_backup_blocked)
            writer.write_boolean_value("deviceComplianceRequired", @device_compliance_required)
            writer.write_enum_value("dialerRestrictionLevel", @dialer_restriction_level)
            writer.write_boolean_value("disableAppPinIfDevicePinIsSet", @disable_app_pin_if_device_pin_is_set)
            writer.write_boolean_value("fingerprintBlocked", @fingerprint_blocked)
            writer.write_duration_value("gracePeriodToBlockAppsDuringOffClockHours", @grace_period_to_block_apps_during_off_clock_hours)
            writer.write_enum_value("managedBrowser", @managed_browser)
            writer.write_boolean_value("managedBrowserToOpenLinksRequired", @managed_browser_to_open_links_required)
            writer.write_enum_value("maximumAllowedDeviceThreatLevel", @maximum_allowed_device_threat_level)
            writer.write_number_value("maximumPinRetries", @maximum_pin_retries)
            writer.write_string_value("maximumRequiredOsVersion", @maximum_required_os_version)
            writer.write_string_value("maximumWarningOsVersion", @maximum_warning_os_version)
            writer.write_string_value("maximumWipeOsVersion", @maximum_wipe_os_version)
            writer.write_number_value("minimumPinLength", @minimum_pin_length)
            writer.write_string_value("minimumRequiredAppVersion", @minimum_required_app_version)
            writer.write_string_value("minimumRequiredOsVersion", @minimum_required_os_version)
            writer.write_string_value("minimumWarningAppVersion", @minimum_warning_app_version)
            writer.write_string_value("minimumWarningOsVersion", @minimum_warning_os_version)
            writer.write_string_value("minimumWipeAppVersion", @minimum_wipe_app_version)
            writer.write_string_value("minimumWipeOsVersion", @minimum_wipe_os_version)
            writer.write_enum_value("mobileThreatDefensePartnerPriority", @mobile_threat_defense_partner_priority)
            writer.write_enum_value("mobileThreatDefenseRemediationAction", @mobile_threat_defense_remediation_action)
            writer.write_enum_value("notificationRestriction", @notification_restriction)
            writer.write_boolean_value("organizationalCredentialsRequired", @organizational_credentials_required)
            writer.write_duration_value("periodBeforePinReset", @period_before_pin_reset)
            writer.write_duration_value("periodOfflineBeforeAccessCheck", @period_offline_before_access_check)
            writer.write_duration_value("periodOfflineBeforeWipeIsEnforced", @period_offline_before_wipe_is_enforced)
            writer.write_duration_value("periodOnlineBeforeAccessCheck", @period_online_before_access_check)
            writer.write_enum_value("pinCharacterSet", @pin_character_set)
            writer.write_boolean_value("pinRequired", @pin_required)
            writer.write_duration_value("pinRequiredInsteadOfBiometricTimeout", @pin_required_instead_of_biometric_timeout)
            writer.write_number_value("previousPinBlockCount", @previous_pin_block_count)
            writer.write_boolean_value("printBlocked", @print_blocked)
            writer.write_boolean_value("saveAsBlocked", @save_as_blocked)
            writer.write_boolean_value("simplePinBlocked", @simple_pin_blocked)
        end
        ## 
        ## Gets the simplePinBlocked property value. Indicates whether simplePin is blocked.
        ## @return a boolean
        ## 
        def simple_pin_blocked
            return @simple_pin_blocked
        end
        ## 
        ## Sets the simplePinBlocked property value. Indicates whether simplePin is blocked.
        ## @param value Value to set for the simplePinBlocked property.
        ## @return a void
        ## 
        def simple_pin_blocked=(value)
            @simple_pin_blocked = value
        end
    end
end
