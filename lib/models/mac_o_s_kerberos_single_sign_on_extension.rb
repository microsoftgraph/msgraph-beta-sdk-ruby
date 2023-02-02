require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class MacOSKerberosSingleSignOnExtension < MicrosoftGraphBeta::Models::MacOSSingleSignOnExtension
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Gets or sets the Active Directory site.
        @active_directory_site_code
        ## 
        # Enables or disables whether the Kerberos extension can automatically determine its site name.
        @block_active_directory_site_auto_discovery
        ## 
        # Enables or disables Keychain usage.
        @block_automatic_login
        ## 
        # Gets or sets the Generic Security Services name of the Kerberos cache to use for this profile.
        @cache_name
        ## 
        # Gets or sets a list of app Bundle IDs allowed to access the Kerberos Ticket Granting Ticket.
        @credential_bundle_id_access_control_list
        ## 
        # When set to True, the credential is requested on the next matching Kerberos challenge or network state change. When the credential is expired or missing, a new credential is created. Available for devices running macOS versions 12 and later.
        @credentials_cache_monitored
        ## 
        # Gets or sets a list of realms for custom domain-realm mapping. Realms are case sensitive.
        @domain_realms
        ## 
        # Gets or sets a list of hosts or domain names for which the app extension performs SSO.
        @domains
        ## 
        # When true, this profile's realm will be selected as the default. Necessary if multiple Kerberos-type profiles are configured.
        @is_default_realm
        ## 
        # When set to True, the Kerberos extension allows any apps entered with the app bundle ID, managed apps, and standard Kerberos utilities, such as TicketViewer and klist, to access and use the credential. Available for devices running macOS versions 12 and later.
        @kerberos_apps_in_bundle_id_a_c_l_included
        ## 
        # When set to True, the Kerberos extension allows managed apps, and any apps entered with the app bundle ID to access the credential. When set to False, the Kerberos extension allows all apps to access the credential. Available for devices running iOS and iPadOS versions 14 and later.
        @managed_apps_in_bundle_id_a_c_l_included
        ## 
        # Select how other processes use the Kerberos Extension credential.
        @mode_credential_used
        ## 
        # Enables or disables password changes.
        @password_block_modification
        ## 
        # Gets or sets the URL that the user will be sent to when they initiate a password change.
        @password_change_url
        ## 
        # Enables or disables password syncing. This won't affect users logged in with a mobile account on macOS.
        @password_enable_local_sync
        ## 
        # Overrides the default password expiration in days. For most domains, this value is calculated automatically.
        @password_expiration_days
        ## 
        # Gets or sets the number of days until the user is notified that their password will expire (default is 15).
        @password_expiration_notification_days
        ## 
        # Gets or sets the minimum number of days until a user can change their password again.
        @password_minimum_age_days
        ## 
        # Gets or sets the minimum length of a password.
        @password_minimum_length
        ## 
        # Gets or sets the number of previous passwords to block.
        @password_previous_password_block_count
        ## 
        # Enables or disables whether passwords must meet Active Directory's complexity requirements.
        @password_require_active_directory_complexity
        ## 
        # Gets or sets a description of the password complexity requirements.
        @password_requirements_description
        ## 
        # Add creates an ordered list of preferred Key Distribution Centers (KDCs) to use for Kerberos traffic. This list is used when the servers are not discoverable using DNS. When the servers are discoverable, the list is used for both connectivity checks, and used first for Kerberos traffic. If the servers don’t respond, then the device uses DNS discovery. Delete removes an existing list, and devices use DNS discovery. Available for devices running macOS versions 12 and later.
        @preferred_k_d_cs
        ## 
        # Gets or sets the case-sensitive realm name for this profile.
        @realm
        ## 
        # Gets or sets whether to require authentication via Touch ID, Face ID, or a passcode to access the keychain entry.
        @require_user_presence
        ## 
        # Text displayed to the user at the Kerberos sign in window. Available for devices running iOS and iPadOS versions 14 and later.
        @sign_in_help_text
        ## 
        # When set to True, LDAP connections are required to use Transport Layer Security (TLS). Available for devices running macOS versions 11 and later.
        @tls_for_l_d_a_p_required
        ## 
        # Gets or sets the principle user name to use for this profile. The realm name does not need to be included.
        @user_principal_name
        ## 
        # When set to True, the user isn’t prompted to set up the Kerberos extension until the extension is enabled by the admin, or a Kerberos challenge is received. Available for devices running macOS versions 11 and later.
        @user_setup_delayed
        ## 
        # This label replaces the user name shown in the Kerberos extension. You can enter a name to match the name of your company or organization. Available for devices running macOS versions 11 and later.
        @username_label_custom
        ## 
        ## Gets the activeDirectorySiteCode property value. Gets or sets the Active Directory site.
        ## @return a string
        ## 
        def active_directory_site_code
            return @active_directory_site_code
        end
        ## 
        ## Sets the activeDirectorySiteCode property value. Gets or sets the Active Directory site.
        ## @param value Value to set for the active_directory_site_code property.
        ## @return a void
        ## 
        def active_directory_site_code=(value)
            @active_directory_site_code = value
        end
        ## 
        ## Gets the blockActiveDirectorySiteAutoDiscovery property value. Enables or disables whether the Kerberos extension can automatically determine its site name.
        ## @return a boolean
        ## 
        def block_active_directory_site_auto_discovery
            return @block_active_directory_site_auto_discovery
        end
        ## 
        ## Sets the blockActiveDirectorySiteAutoDiscovery property value. Enables or disables whether the Kerberos extension can automatically determine its site name.
        ## @param value Value to set for the block_active_directory_site_auto_discovery property.
        ## @return a void
        ## 
        def block_active_directory_site_auto_discovery=(value)
            @block_active_directory_site_auto_discovery = value
        end
        ## 
        ## Gets the blockAutomaticLogin property value. Enables or disables Keychain usage.
        ## @return a boolean
        ## 
        def block_automatic_login
            return @block_automatic_login
        end
        ## 
        ## Sets the blockAutomaticLogin property value. Enables or disables Keychain usage.
        ## @param value Value to set for the block_automatic_login property.
        ## @return a void
        ## 
        def block_automatic_login=(value)
            @block_automatic_login = value
        end
        ## 
        ## Gets the cacheName property value. Gets or sets the Generic Security Services name of the Kerberos cache to use for this profile.
        ## @return a string
        ## 
        def cache_name
            return @cache_name
        end
        ## 
        ## Sets the cacheName property value. Gets or sets the Generic Security Services name of the Kerberos cache to use for this profile.
        ## @param value Value to set for the cache_name property.
        ## @return a void
        ## 
        def cache_name=(value)
            @cache_name = value
        end
        ## 
        ## Instantiates a new MacOSKerberosSingleSignOnExtension and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.macOSKerberosSingleSignOnExtension"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mac_o_s_kerberos_single_sign_on_extension
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MacOSKerberosSingleSignOnExtension.new
        end
        ## 
        ## Gets the credentialBundleIdAccessControlList property value. Gets or sets a list of app Bundle IDs allowed to access the Kerberos Ticket Granting Ticket.
        ## @return a string
        ## 
        def credential_bundle_id_access_control_list
            return @credential_bundle_id_access_control_list
        end
        ## 
        ## Sets the credentialBundleIdAccessControlList property value. Gets or sets a list of app Bundle IDs allowed to access the Kerberos Ticket Granting Ticket.
        ## @param value Value to set for the credential_bundle_id_access_control_list property.
        ## @return a void
        ## 
        def credential_bundle_id_access_control_list=(value)
            @credential_bundle_id_access_control_list = value
        end
        ## 
        ## Gets the credentialsCacheMonitored property value. When set to True, the credential is requested on the next matching Kerberos challenge or network state change. When the credential is expired or missing, a new credential is created. Available for devices running macOS versions 12 and later.
        ## @return a boolean
        ## 
        def credentials_cache_monitored
            return @credentials_cache_monitored
        end
        ## 
        ## Sets the credentialsCacheMonitored property value. When set to True, the credential is requested on the next matching Kerberos challenge or network state change. When the credential is expired or missing, a new credential is created. Available for devices running macOS versions 12 and later.
        ## @param value Value to set for the credentials_cache_monitored property.
        ## @return a void
        ## 
        def credentials_cache_monitored=(value)
            @credentials_cache_monitored = value
        end
        ## 
        ## Gets the domainRealms property value. Gets or sets a list of realms for custom domain-realm mapping. Realms are case sensitive.
        ## @return a string
        ## 
        def domain_realms
            return @domain_realms
        end
        ## 
        ## Sets the domainRealms property value. Gets or sets a list of realms for custom domain-realm mapping. Realms are case sensitive.
        ## @param value Value to set for the domain_realms property.
        ## @return a void
        ## 
        def domain_realms=(value)
            @domain_realms = value
        end
        ## 
        ## Gets the domains property value. Gets or sets a list of hosts or domain names for which the app extension performs SSO.
        ## @return a string
        ## 
        def domains
            return @domains
        end
        ## 
        ## Sets the domains property value. Gets or sets a list of hosts or domain names for which the app extension performs SSO.
        ## @param value Value to set for the domains property.
        ## @return a void
        ## 
        def domains=(value)
            @domains = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "activeDirectorySiteCode" => lambda {|n| @active_directory_site_code = n.get_string_value() },
                "blockActiveDirectorySiteAutoDiscovery" => lambda {|n| @block_active_directory_site_auto_discovery = n.get_boolean_value() },
                "blockAutomaticLogin" => lambda {|n| @block_automatic_login = n.get_boolean_value() },
                "cacheName" => lambda {|n| @cache_name = n.get_string_value() },
                "credentialBundleIdAccessControlList" => lambda {|n| @credential_bundle_id_access_control_list = n.get_collection_of_primitive_values(String) },
                "credentialsCacheMonitored" => lambda {|n| @credentials_cache_monitored = n.get_boolean_value() },
                "domainRealms" => lambda {|n| @domain_realms = n.get_collection_of_primitive_values(String) },
                "domains" => lambda {|n| @domains = n.get_collection_of_primitive_values(String) },
                "isDefaultRealm" => lambda {|n| @is_default_realm = n.get_boolean_value() },
                "kerberosAppsInBundleIdACLIncluded" => lambda {|n| @kerberos_apps_in_bundle_id_a_c_l_included = n.get_boolean_value() },
                "managedAppsInBundleIdACLIncluded" => lambda {|n| @managed_apps_in_bundle_id_a_c_l_included = n.get_boolean_value() },
                "modeCredentialUsed" => lambda {|n| @mode_credential_used = n.get_string_value() },
                "passwordBlockModification" => lambda {|n| @password_block_modification = n.get_boolean_value() },
                "passwordChangeUrl" => lambda {|n| @password_change_url = n.get_string_value() },
                "passwordEnableLocalSync" => lambda {|n| @password_enable_local_sync = n.get_boolean_value() },
                "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                "passwordExpirationNotificationDays" => lambda {|n| @password_expiration_notification_days = n.get_number_value() },
                "passwordMinimumAgeDays" => lambda {|n| @password_minimum_age_days = n.get_number_value() },
                "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                "passwordRequireActiveDirectoryComplexity" => lambda {|n| @password_require_active_directory_complexity = n.get_boolean_value() },
                "passwordRequirementsDescription" => lambda {|n| @password_requirements_description = n.get_string_value() },
                "preferredKDCs" => lambda {|n| @preferred_k_d_cs = n.get_collection_of_primitive_values(String) },
                "realm" => lambda {|n| @realm = n.get_string_value() },
                "requireUserPresence" => lambda {|n| @require_user_presence = n.get_boolean_value() },
                "signInHelpText" => lambda {|n| @sign_in_help_text = n.get_string_value() },
                "tlsForLDAPRequired" => lambda {|n| @tls_for_l_d_a_p_required = n.get_boolean_value() },
                "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                "userSetupDelayed" => lambda {|n| @user_setup_delayed = n.get_boolean_value() },
                "usernameLabelCustom" => lambda {|n| @username_label_custom = n.get_string_value() },
            })
        end
        ## 
        ## Gets the isDefaultRealm property value. When true, this profile's realm will be selected as the default. Necessary if multiple Kerberos-type profiles are configured.
        ## @return a boolean
        ## 
        def is_default_realm
            return @is_default_realm
        end
        ## 
        ## Sets the isDefaultRealm property value. When true, this profile's realm will be selected as the default. Necessary if multiple Kerberos-type profiles are configured.
        ## @param value Value to set for the is_default_realm property.
        ## @return a void
        ## 
        def is_default_realm=(value)
            @is_default_realm = value
        end
        ## 
        ## Gets the kerberosAppsInBundleIdACLIncluded property value. When set to True, the Kerberos extension allows any apps entered with the app bundle ID, managed apps, and standard Kerberos utilities, such as TicketViewer and klist, to access and use the credential. Available for devices running macOS versions 12 and later.
        ## @return a boolean
        ## 
        def kerberos_apps_in_bundle_id_a_c_l_included
            return @kerberos_apps_in_bundle_id_a_c_l_included
        end
        ## 
        ## Sets the kerberosAppsInBundleIdACLIncluded property value. When set to True, the Kerberos extension allows any apps entered with the app bundle ID, managed apps, and standard Kerberos utilities, such as TicketViewer and klist, to access and use the credential. Available for devices running macOS versions 12 and later.
        ## @param value Value to set for the kerberos_apps_in_bundle_id_a_c_l_included property.
        ## @return a void
        ## 
        def kerberos_apps_in_bundle_id_a_c_l_included=(value)
            @kerberos_apps_in_bundle_id_a_c_l_included = value
        end
        ## 
        ## Gets the managedAppsInBundleIdACLIncluded property value. When set to True, the Kerberos extension allows managed apps, and any apps entered with the app bundle ID to access the credential. When set to False, the Kerberos extension allows all apps to access the credential. Available for devices running iOS and iPadOS versions 14 and later.
        ## @return a boolean
        ## 
        def managed_apps_in_bundle_id_a_c_l_included
            return @managed_apps_in_bundle_id_a_c_l_included
        end
        ## 
        ## Sets the managedAppsInBundleIdACLIncluded property value. When set to True, the Kerberos extension allows managed apps, and any apps entered with the app bundle ID to access the credential. When set to False, the Kerberos extension allows all apps to access the credential. Available for devices running iOS and iPadOS versions 14 and later.
        ## @param value Value to set for the managed_apps_in_bundle_id_a_c_l_included property.
        ## @return a void
        ## 
        def managed_apps_in_bundle_id_a_c_l_included=(value)
            @managed_apps_in_bundle_id_a_c_l_included = value
        end
        ## 
        ## Gets the modeCredentialUsed property value. Select how other processes use the Kerberos Extension credential.
        ## @return a string
        ## 
        def mode_credential_used
            return @mode_credential_used
        end
        ## 
        ## Sets the modeCredentialUsed property value. Select how other processes use the Kerberos Extension credential.
        ## @param value Value to set for the mode_credential_used property.
        ## @return a void
        ## 
        def mode_credential_used=(value)
            @mode_credential_used = value
        end
        ## 
        ## Gets the passwordBlockModification property value. Enables or disables password changes.
        ## @return a boolean
        ## 
        def password_block_modification
            return @password_block_modification
        end
        ## 
        ## Sets the passwordBlockModification property value. Enables or disables password changes.
        ## @param value Value to set for the password_block_modification property.
        ## @return a void
        ## 
        def password_block_modification=(value)
            @password_block_modification = value
        end
        ## 
        ## Gets the passwordChangeUrl property value. Gets or sets the URL that the user will be sent to when they initiate a password change.
        ## @return a string
        ## 
        def password_change_url
            return @password_change_url
        end
        ## 
        ## Sets the passwordChangeUrl property value. Gets or sets the URL that the user will be sent to when they initiate a password change.
        ## @param value Value to set for the password_change_url property.
        ## @return a void
        ## 
        def password_change_url=(value)
            @password_change_url = value
        end
        ## 
        ## Gets the passwordEnableLocalSync property value. Enables or disables password syncing. This won't affect users logged in with a mobile account on macOS.
        ## @return a boolean
        ## 
        def password_enable_local_sync
            return @password_enable_local_sync
        end
        ## 
        ## Sets the passwordEnableLocalSync property value. Enables or disables password syncing. This won't affect users logged in with a mobile account on macOS.
        ## @param value Value to set for the password_enable_local_sync property.
        ## @return a void
        ## 
        def password_enable_local_sync=(value)
            @password_enable_local_sync = value
        end
        ## 
        ## Gets the passwordExpirationDays property value. Overrides the default password expiration in days. For most domains, this value is calculated automatically.
        ## @return a integer
        ## 
        def password_expiration_days
            return @password_expiration_days
        end
        ## 
        ## Sets the passwordExpirationDays property value. Overrides the default password expiration in days. For most domains, this value is calculated automatically.
        ## @param value Value to set for the password_expiration_days property.
        ## @return a void
        ## 
        def password_expiration_days=(value)
            @password_expiration_days = value
        end
        ## 
        ## Gets the passwordExpirationNotificationDays property value. Gets or sets the number of days until the user is notified that their password will expire (default is 15).
        ## @return a integer
        ## 
        def password_expiration_notification_days
            return @password_expiration_notification_days
        end
        ## 
        ## Sets the passwordExpirationNotificationDays property value. Gets or sets the number of days until the user is notified that their password will expire (default is 15).
        ## @param value Value to set for the password_expiration_notification_days property.
        ## @return a void
        ## 
        def password_expiration_notification_days=(value)
            @password_expiration_notification_days = value
        end
        ## 
        ## Gets the passwordMinimumAgeDays property value. Gets or sets the minimum number of days until a user can change their password again.
        ## @return a integer
        ## 
        def password_minimum_age_days
            return @password_minimum_age_days
        end
        ## 
        ## Sets the passwordMinimumAgeDays property value. Gets or sets the minimum number of days until a user can change their password again.
        ## @param value Value to set for the password_minimum_age_days property.
        ## @return a void
        ## 
        def password_minimum_age_days=(value)
            @password_minimum_age_days = value
        end
        ## 
        ## Gets the passwordMinimumLength property value. Gets or sets the minimum length of a password.
        ## @return a integer
        ## 
        def password_minimum_length
            return @password_minimum_length
        end
        ## 
        ## Sets the passwordMinimumLength property value. Gets or sets the minimum length of a password.
        ## @param value Value to set for the password_minimum_length property.
        ## @return a void
        ## 
        def password_minimum_length=(value)
            @password_minimum_length = value
        end
        ## 
        ## Gets the passwordPreviousPasswordBlockCount property value. Gets or sets the number of previous passwords to block.
        ## @return a integer
        ## 
        def password_previous_password_block_count
            return @password_previous_password_block_count
        end
        ## 
        ## Sets the passwordPreviousPasswordBlockCount property value. Gets or sets the number of previous passwords to block.
        ## @param value Value to set for the password_previous_password_block_count property.
        ## @return a void
        ## 
        def password_previous_password_block_count=(value)
            @password_previous_password_block_count = value
        end
        ## 
        ## Gets the passwordRequireActiveDirectoryComplexity property value. Enables or disables whether passwords must meet Active Directory's complexity requirements.
        ## @return a boolean
        ## 
        def password_require_active_directory_complexity
            return @password_require_active_directory_complexity
        end
        ## 
        ## Sets the passwordRequireActiveDirectoryComplexity property value. Enables or disables whether passwords must meet Active Directory's complexity requirements.
        ## @param value Value to set for the password_require_active_directory_complexity property.
        ## @return a void
        ## 
        def password_require_active_directory_complexity=(value)
            @password_require_active_directory_complexity = value
        end
        ## 
        ## Gets the passwordRequirementsDescription property value. Gets or sets a description of the password complexity requirements.
        ## @return a string
        ## 
        def password_requirements_description
            return @password_requirements_description
        end
        ## 
        ## Sets the passwordRequirementsDescription property value. Gets or sets a description of the password complexity requirements.
        ## @param value Value to set for the password_requirements_description property.
        ## @return a void
        ## 
        def password_requirements_description=(value)
            @password_requirements_description = value
        end
        ## 
        ## Gets the preferredKDCs property value. Add creates an ordered list of preferred Key Distribution Centers (KDCs) to use for Kerberos traffic. This list is used when the servers are not discoverable using DNS. When the servers are discoverable, the list is used for both connectivity checks, and used first for Kerberos traffic. If the servers don’t respond, then the device uses DNS discovery. Delete removes an existing list, and devices use DNS discovery. Available for devices running macOS versions 12 and later.
        ## @return a string
        ## 
        def preferred_k_d_cs
            return @preferred_k_d_cs
        end
        ## 
        ## Sets the preferredKDCs property value. Add creates an ordered list of preferred Key Distribution Centers (KDCs) to use for Kerberos traffic. This list is used when the servers are not discoverable using DNS. When the servers are discoverable, the list is used for both connectivity checks, and used first for Kerberos traffic. If the servers don’t respond, then the device uses DNS discovery. Delete removes an existing list, and devices use DNS discovery. Available for devices running macOS versions 12 and later.
        ## @param value Value to set for the preferred_k_d_cs property.
        ## @return a void
        ## 
        def preferred_k_d_cs=(value)
            @preferred_k_d_cs = value
        end
        ## 
        ## Gets the realm property value. Gets or sets the case-sensitive realm name for this profile.
        ## @return a string
        ## 
        def realm
            return @realm
        end
        ## 
        ## Sets the realm property value. Gets or sets the case-sensitive realm name for this profile.
        ## @param value Value to set for the realm property.
        ## @return a void
        ## 
        def realm=(value)
            @realm = value
        end
        ## 
        ## Gets the requireUserPresence property value. Gets or sets whether to require authentication via Touch ID, Face ID, or a passcode to access the keychain entry.
        ## @return a boolean
        ## 
        def require_user_presence
            return @require_user_presence
        end
        ## 
        ## Sets the requireUserPresence property value. Gets or sets whether to require authentication via Touch ID, Face ID, or a passcode to access the keychain entry.
        ## @param value Value to set for the require_user_presence property.
        ## @return a void
        ## 
        def require_user_presence=(value)
            @require_user_presence = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("activeDirectorySiteCode", @active_directory_site_code)
            writer.write_boolean_value("blockActiveDirectorySiteAutoDiscovery", @block_active_directory_site_auto_discovery)
            writer.write_boolean_value("blockAutomaticLogin", @block_automatic_login)
            writer.write_string_value("cacheName", @cache_name)
            writer.write_collection_of_primitive_values("credentialBundleIdAccessControlList", @credential_bundle_id_access_control_list)
            writer.write_boolean_value("credentialsCacheMonitored", @credentials_cache_monitored)
            writer.write_collection_of_primitive_values("domainRealms", @domain_realms)
            writer.write_collection_of_primitive_values("domains", @domains)
            writer.write_boolean_value("isDefaultRealm", @is_default_realm)
            writer.write_boolean_value("kerberosAppsInBundleIdACLIncluded", @kerberos_apps_in_bundle_id_a_c_l_included)
            writer.write_boolean_value("managedAppsInBundleIdACLIncluded", @managed_apps_in_bundle_id_a_c_l_included)
            writer.write_string_value("modeCredentialUsed", @mode_credential_used)
            writer.write_boolean_value("passwordBlockModification", @password_block_modification)
            writer.write_string_value("passwordChangeUrl", @password_change_url)
            writer.write_boolean_value("passwordEnableLocalSync", @password_enable_local_sync)
            writer.write_number_value("passwordExpirationDays", @password_expiration_days)
            writer.write_number_value("passwordExpirationNotificationDays", @password_expiration_notification_days)
            writer.write_number_value("passwordMinimumAgeDays", @password_minimum_age_days)
            writer.write_number_value("passwordMinimumLength", @password_minimum_length)
            writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
            writer.write_boolean_value("passwordRequireActiveDirectoryComplexity", @password_require_active_directory_complexity)
            writer.write_string_value("passwordRequirementsDescription", @password_requirements_description)
            writer.write_collection_of_primitive_values("preferredKDCs", @preferred_k_d_cs)
            writer.write_string_value("realm", @realm)
            writer.write_boolean_value("requireUserPresence", @require_user_presence)
            writer.write_string_value("signInHelpText", @sign_in_help_text)
            writer.write_boolean_value("tlsForLDAPRequired", @tls_for_l_d_a_p_required)
            writer.write_string_value("userPrincipalName", @user_principal_name)
            writer.write_boolean_value("userSetupDelayed", @user_setup_delayed)
            writer.write_string_value("usernameLabelCustom", @username_label_custom)
        end
        ## 
        ## Gets the signInHelpText property value. Text displayed to the user at the Kerberos sign in window. Available for devices running iOS and iPadOS versions 14 and later.
        ## @return a string
        ## 
        def sign_in_help_text
            return @sign_in_help_text
        end
        ## 
        ## Sets the signInHelpText property value. Text displayed to the user at the Kerberos sign in window. Available for devices running iOS and iPadOS versions 14 and later.
        ## @param value Value to set for the sign_in_help_text property.
        ## @return a void
        ## 
        def sign_in_help_text=(value)
            @sign_in_help_text = value
        end
        ## 
        ## Gets the tlsForLDAPRequired property value. When set to True, LDAP connections are required to use Transport Layer Security (TLS). Available for devices running macOS versions 11 and later.
        ## @return a boolean
        ## 
        def tls_for_l_d_a_p_required
            return @tls_for_l_d_a_p_required
        end
        ## 
        ## Sets the tlsForLDAPRequired property value. When set to True, LDAP connections are required to use Transport Layer Security (TLS). Available for devices running macOS versions 11 and later.
        ## @param value Value to set for the tls_for_l_d_a_p_required property.
        ## @return a void
        ## 
        def tls_for_l_d_a_p_required=(value)
            @tls_for_l_d_a_p_required = value
        end
        ## 
        ## Gets the userPrincipalName property value. Gets or sets the principle user name to use for this profile. The realm name does not need to be included.
        ## @return a string
        ## 
        def user_principal_name
            return @user_principal_name
        end
        ## 
        ## Sets the userPrincipalName property value. Gets or sets the principle user name to use for this profile. The realm name does not need to be included.
        ## @param value Value to set for the user_principal_name property.
        ## @return a void
        ## 
        def user_principal_name=(value)
            @user_principal_name = value
        end
        ## 
        ## Gets the userSetupDelayed property value. When set to True, the user isn’t prompted to set up the Kerberos extension until the extension is enabled by the admin, or a Kerberos challenge is received. Available for devices running macOS versions 11 and later.
        ## @return a boolean
        ## 
        def user_setup_delayed
            return @user_setup_delayed
        end
        ## 
        ## Sets the userSetupDelayed property value. When set to True, the user isn’t prompted to set up the Kerberos extension until the extension is enabled by the admin, or a Kerberos challenge is received. Available for devices running macOS versions 11 and later.
        ## @param value Value to set for the user_setup_delayed property.
        ## @return a void
        ## 
        def user_setup_delayed=(value)
            @user_setup_delayed = value
        end
        ## 
        ## Gets the usernameLabelCustom property value. This label replaces the user name shown in the Kerberos extension. You can enter a name to match the name of your company or organization. Available for devices running macOS versions 11 and later.
        ## @return a string
        ## 
        def username_label_custom
            return @username_label_custom
        end
        ## 
        ## Sets the usernameLabelCustom property value. This label replaces the user name shown in the Kerberos extension. You can enter a name to match the name of your company or organization. Available for devices running macOS versions 11 and later.
        ## @param value Value to set for the username_label_custom property.
        ## @return a void
        ## 
        def username_label_custom=(value)
            @username_label_custom = value
        end
    end
end
