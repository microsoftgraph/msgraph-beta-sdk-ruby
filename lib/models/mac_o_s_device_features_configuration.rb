require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # MacOS device features configuration profile.
        class MacOSDeviceFeaturesConfiguration < MicrosoftGraphBeta::Models::AppleDeviceFeaturesConfigurationBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Whether to show admin host information on the login window.
            @admin_show_host_info
            ## 
            # Gets or sets a list that maps apps to their associated domains. Application identifiers must be unique. This collection can contain a maximum of 500 elements.
            @app_associated_domains
            ## 
            # DEPRECATED: use appAssociatedDomains instead. Gets or sets a list that maps apps to their associated domains. The key should match the app's ID, and the value should be a string in the form of 'service:domain' where domain is a fully qualified hostname (e.g. webcredentials:example.com). This collection can contain a maximum of 500 elements.
            @associated_domains
            ## 
            # Whether to show the name and password dialog or a list of users on the login window.
            @authorized_users_list_hidden
            ## 
            # Whether to hide admin users in the authorized users list on the login window.
            @authorized_users_list_hide_admin_users
            ## 
            # Whether to show only network and system users in the authorized users list on the login window.
            @authorized_users_list_hide_local_users
            ## 
            # Whether to hide mobile users in the authorized users list on the login window.
            @authorized_users_list_hide_mobile_accounts
            ## 
            # Whether to show network users in the authorized users list on the login window.
            @authorized_users_list_include_network_users
            ## 
            # Whether to show other users in the authorized users list on the login window.
            @authorized_users_list_show_other_managed_users
            ## 
            # List of applications, files, folders, and other items to launch when the user logs in. This collection can contain a maximum of 500 elements.
            @auto_launch_items
            ## 
            # Whether the Other user will disregard use of the console special user name.
            @console_access_disabled
            ## 
            # Prevents content caches from purging content to free up disk space for other apps.
            @content_caching_block_deletion
            ## 
            # A list of custom IP ranges content caches will use to listen for clients. This collection can contain a maximum of 500 elements.
            @content_caching_client_listen_ranges
            ## 
            # Determines which clients a content cache will serve.
            @content_caching_client_policy
            ## 
            # The path to the directory used to store cached content. The value must be (or end with) /Library/Application Support/Apple/AssetCache/Data
            @content_caching_data_path
            ## 
            # Disables internet connection sharing.
            @content_caching_disable_connection_sharing
            ## 
            # Enables content caching and prevents it from being disabled by the user.
            @content_caching_enabled
            ## 
            # Forces internet connection sharing. contentCachingDisableConnectionSharing overrides this setting.
            @content_caching_force_connection_sharing
            ## 
            # Prevent the device from sleeping if content caching is enabled.
            @content_caching_keep_awake
            ## 
            # Enables logging of IP addresses and ports of clients that request cached content.
            @content_caching_log_client_identities
            ## 
            # The maximum number of bytes of disk space that will be used for the content cache. A value of 0 (default) indicates unlimited disk space.
            @content_caching_max_size_bytes
            ## 
            # Determines how content caches select a parent cache.
            @content_caching_parent_selection_policy
            ## 
            # A list of IP addresses representing parent content caches.
            @content_caching_parents
            ## 
            # A list of custom IP ranges content caches will use to query for content from peers caches. This collection can contain a maximum of 500 elements.
            @content_caching_peer_filter_ranges
            ## 
            # A list of custom IP ranges content caches will use to listen for peer caches. This collection can contain a maximum of 500 elements.
            @content_caching_peer_listen_ranges
            ## 
            # Determines which content caches other content caches will peer with.
            @content_caching_peer_policy
            ## 
            # Sets the port used for content caching. If the value is 0, a random available port will be selected. Valid values 0 to 65535
            @content_caching_port
            ## 
            # A list of custom IP ranges that Apple's content caching service should use to match clients to content caches. This collection can contain a maximum of 500 elements.
            @content_caching_public_ranges
            ## 
            # Display content caching alerts as system notifications.
            @content_caching_show_alerts
            ## 
            # Indicates the type of content allowed to be cached by Apple's content caching service.
            @content_caching_type
            ## 
            # Whether the Log Out menu item on the login window will be disabled while the user is logged in.
            @log_out_disabled_while_logged_in
            ## 
            # Custom text to be displayed on the login window.
            @login_window_text
            ## 
            # Gets or sets a single sign-on extension profile.
            @mac_o_s_single_sign_on_extension
            ## 
            # Whether the Power Off menu item on the login window will be disabled while the user is logged in.
            @power_off_disabled_while_logged_in
            ## 
            # Whether to hide the Restart button item on the login window.
            @restart_disabled
            ## 
            # Whether the Restart menu item on the login window will be disabled while the user is logged in.
            @restart_disabled_while_logged_in
            ## 
            # Whether to disable the immediate screen lock functions.
            @screen_lock_disable_immediate
            ## 
            # Whether to hide the Shut Down button item on the login window.
            @shut_down_disabled
            ## 
            # Whether the Shut Down menu item on the login window will be disabled while the user is logged in.
            @shut_down_disabled_while_logged_in
            ## 
            # Gets or sets a single sign-on extension profile. Deprecated: use MacOSSingleSignOnExtension instead.
            @single_sign_on_extension
            ## 
            # PKINIT Certificate for the authentication with single sign-on extensions.
            @single_sign_on_extension_pkinit_certificate
            ## 
            # Whether to hide the Sleep menu item on the login window.
            @sleep_disabled
            ## 
            ## Gets the adminShowHostInfo property value. Whether to show admin host information on the login window.
            ## @return a boolean
            ## 
            def admin_show_host_info
                return @admin_show_host_info
            end
            ## 
            ## Sets the adminShowHostInfo property value. Whether to show admin host information on the login window.
            ## @param value Value to set for the admin_show_host_info property.
            ## @return a void
            ## 
            def admin_show_host_info=(value)
                @admin_show_host_info = value
            end
            ## 
            ## Gets the appAssociatedDomains property value. Gets or sets a list that maps apps to their associated domains. Application identifiers must be unique. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_associated_domains_item
            ## 
            def app_associated_domains
                return @app_associated_domains
            end
            ## 
            ## Sets the appAssociatedDomains property value. Gets or sets a list that maps apps to their associated domains. Application identifiers must be unique. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the app_associated_domains property.
            ## @return a void
            ## 
            def app_associated_domains=(value)
                @app_associated_domains = value
            end
            ## 
            ## Gets the associatedDomains property value. DEPRECATED: use appAssociatedDomains instead. Gets or sets a list that maps apps to their associated domains. The key should match the app's ID, and the value should be a string in the form of 'service:domain' where domain is a fully qualified hostname (e.g. webcredentials:example.com). This collection can contain a maximum of 500 elements.
            ## @return a key_value_pair
            ## 
            def associated_domains
                return @associated_domains
            end
            ## 
            ## Sets the associatedDomains property value. DEPRECATED: use appAssociatedDomains instead. Gets or sets a list that maps apps to their associated domains. The key should match the app's ID, and the value should be a string in the form of 'service:domain' where domain is a fully qualified hostname (e.g. webcredentials:example.com). This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the associated_domains property.
            ## @return a void
            ## 
            def associated_domains=(value)
                @associated_domains = value
            end
            ## 
            ## Gets the authorizedUsersListHidden property value. Whether to show the name and password dialog or a list of users on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_hidden
                return @authorized_users_list_hidden
            end
            ## 
            ## Sets the authorizedUsersListHidden property value. Whether to show the name and password dialog or a list of users on the login window.
            ## @param value Value to set for the authorized_users_list_hidden property.
            ## @return a void
            ## 
            def authorized_users_list_hidden=(value)
                @authorized_users_list_hidden = value
            end
            ## 
            ## Gets the authorizedUsersListHideAdminUsers property value. Whether to hide admin users in the authorized users list on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_hide_admin_users
                return @authorized_users_list_hide_admin_users
            end
            ## 
            ## Sets the authorizedUsersListHideAdminUsers property value. Whether to hide admin users in the authorized users list on the login window.
            ## @param value Value to set for the authorized_users_list_hide_admin_users property.
            ## @return a void
            ## 
            def authorized_users_list_hide_admin_users=(value)
                @authorized_users_list_hide_admin_users = value
            end
            ## 
            ## Gets the authorizedUsersListHideLocalUsers property value. Whether to show only network and system users in the authorized users list on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_hide_local_users
                return @authorized_users_list_hide_local_users
            end
            ## 
            ## Sets the authorizedUsersListHideLocalUsers property value. Whether to show only network and system users in the authorized users list on the login window.
            ## @param value Value to set for the authorized_users_list_hide_local_users property.
            ## @return a void
            ## 
            def authorized_users_list_hide_local_users=(value)
                @authorized_users_list_hide_local_users = value
            end
            ## 
            ## Gets the authorizedUsersListHideMobileAccounts property value. Whether to hide mobile users in the authorized users list on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_hide_mobile_accounts
                return @authorized_users_list_hide_mobile_accounts
            end
            ## 
            ## Sets the authorizedUsersListHideMobileAccounts property value. Whether to hide mobile users in the authorized users list on the login window.
            ## @param value Value to set for the authorized_users_list_hide_mobile_accounts property.
            ## @return a void
            ## 
            def authorized_users_list_hide_mobile_accounts=(value)
                @authorized_users_list_hide_mobile_accounts = value
            end
            ## 
            ## Gets the authorizedUsersListIncludeNetworkUsers property value. Whether to show network users in the authorized users list on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_include_network_users
                return @authorized_users_list_include_network_users
            end
            ## 
            ## Sets the authorizedUsersListIncludeNetworkUsers property value. Whether to show network users in the authorized users list on the login window.
            ## @param value Value to set for the authorized_users_list_include_network_users property.
            ## @return a void
            ## 
            def authorized_users_list_include_network_users=(value)
                @authorized_users_list_include_network_users = value
            end
            ## 
            ## Gets the authorizedUsersListShowOtherManagedUsers property value. Whether to show other users in the authorized users list on the login window.
            ## @return a boolean
            ## 
            def authorized_users_list_show_other_managed_users
                return @authorized_users_list_show_other_managed_users
            end
            ## 
            ## Sets the authorizedUsersListShowOtherManagedUsers property value. Whether to show other users in the authorized users list on the login window.
            ## @param value Value to set for the authorized_users_list_show_other_managed_users property.
            ## @return a void
            ## 
            def authorized_users_list_show_other_managed_users=(value)
                @authorized_users_list_show_other_managed_users = value
            end
            ## 
            ## Gets the autoLaunchItems property value. List of applications, files, folders, and other items to launch when the user logs in. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_launch_item
            ## 
            def auto_launch_items
                return @auto_launch_items
            end
            ## 
            ## Sets the autoLaunchItems property value. List of applications, files, folders, and other items to launch when the user logs in. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the auto_launch_items property.
            ## @return a void
            ## 
            def auto_launch_items=(value)
                @auto_launch_items = value
            end
            ## 
            ## Gets the consoleAccessDisabled property value. Whether the Other user will disregard use of the console special user name.
            ## @return a boolean
            ## 
            def console_access_disabled
                return @console_access_disabled
            end
            ## 
            ## Sets the consoleAccessDisabled property value. Whether the Other user will disregard use of the console special user name.
            ## @param value Value to set for the console_access_disabled property.
            ## @return a void
            ## 
            def console_access_disabled=(value)
                @console_access_disabled = value
            end
            ## 
            ## Instantiates a new macOSDeviceFeaturesConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSDeviceFeaturesConfiguration"
            end
            ## 
            ## Gets the contentCachingBlockDeletion property value. Prevents content caches from purging content to free up disk space for other apps.
            ## @return a boolean
            ## 
            def content_caching_block_deletion
                return @content_caching_block_deletion
            end
            ## 
            ## Sets the contentCachingBlockDeletion property value. Prevents content caches from purging content to free up disk space for other apps.
            ## @param value Value to set for the content_caching_block_deletion property.
            ## @return a void
            ## 
            def content_caching_block_deletion=(value)
                @content_caching_block_deletion = value
            end
            ## 
            ## Gets the contentCachingClientListenRanges property value. A list of custom IP ranges content caches will use to listen for clients. This collection can contain a maximum of 500 elements.
            ## @return a ip_range
            ## 
            def content_caching_client_listen_ranges
                return @content_caching_client_listen_ranges
            end
            ## 
            ## Sets the contentCachingClientListenRanges property value. A list of custom IP ranges content caches will use to listen for clients. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the content_caching_client_listen_ranges property.
            ## @return a void
            ## 
            def content_caching_client_listen_ranges=(value)
                @content_caching_client_listen_ranges = value
            end
            ## 
            ## Gets the contentCachingClientPolicy property value. Determines which clients a content cache will serve.
            ## @return a mac_o_s_content_caching_client_policy
            ## 
            def content_caching_client_policy
                return @content_caching_client_policy
            end
            ## 
            ## Sets the contentCachingClientPolicy property value. Determines which clients a content cache will serve.
            ## @param value Value to set for the content_caching_client_policy property.
            ## @return a void
            ## 
            def content_caching_client_policy=(value)
                @content_caching_client_policy = value
            end
            ## 
            ## Gets the contentCachingDataPath property value. The path to the directory used to store cached content. The value must be (or end with) /Library/Application Support/Apple/AssetCache/Data
            ## @return a string
            ## 
            def content_caching_data_path
                return @content_caching_data_path
            end
            ## 
            ## Sets the contentCachingDataPath property value. The path to the directory used to store cached content. The value must be (or end with) /Library/Application Support/Apple/AssetCache/Data
            ## @param value Value to set for the content_caching_data_path property.
            ## @return a void
            ## 
            def content_caching_data_path=(value)
                @content_caching_data_path = value
            end
            ## 
            ## Gets the contentCachingDisableConnectionSharing property value. Disables internet connection sharing.
            ## @return a boolean
            ## 
            def content_caching_disable_connection_sharing
                return @content_caching_disable_connection_sharing
            end
            ## 
            ## Sets the contentCachingDisableConnectionSharing property value. Disables internet connection sharing.
            ## @param value Value to set for the content_caching_disable_connection_sharing property.
            ## @return a void
            ## 
            def content_caching_disable_connection_sharing=(value)
                @content_caching_disable_connection_sharing = value
            end
            ## 
            ## Gets the contentCachingEnabled property value. Enables content caching and prevents it from being disabled by the user.
            ## @return a boolean
            ## 
            def content_caching_enabled
                return @content_caching_enabled
            end
            ## 
            ## Sets the contentCachingEnabled property value. Enables content caching and prevents it from being disabled by the user.
            ## @param value Value to set for the content_caching_enabled property.
            ## @return a void
            ## 
            def content_caching_enabled=(value)
                @content_caching_enabled = value
            end
            ## 
            ## Gets the contentCachingForceConnectionSharing property value. Forces internet connection sharing. contentCachingDisableConnectionSharing overrides this setting.
            ## @return a boolean
            ## 
            def content_caching_force_connection_sharing
                return @content_caching_force_connection_sharing
            end
            ## 
            ## Sets the contentCachingForceConnectionSharing property value. Forces internet connection sharing. contentCachingDisableConnectionSharing overrides this setting.
            ## @param value Value to set for the content_caching_force_connection_sharing property.
            ## @return a void
            ## 
            def content_caching_force_connection_sharing=(value)
                @content_caching_force_connection_sharing = value
            end
            ## 
            ## Gets the contentCachingKeepAwake property value. Prevent the device from sleeping if content caching is enabled.
            ## @return a boolean
            ## 
            def content_caching_keep_awake
                return @content_caching_keep_awake
            end
            ## 
            ## Sets the contentCachingKeepAwake property value. Prevent the device from sleeping if content caching is enabled.
            ## @param value Value to set for the content_caching_keep_awake property.
            ## @return a void
            ## 
            def content_caching_keep_awake=(value)
                @content_caching_keep_awake = value
            end
            ## 
            ## Gets the contentCachingLogClientIdentities property value. Enables logging of IP addresses and ports of clients that request cached content.
            ## @return a boolean
            ## 
            def content_caching_log_client_identities
                return @content_caching_log_client_identities
            end
            ## 
            ## Sets the contentCachingLogClientIdentities property value. Enables logging of IP addresses and ports of clients that request cached content.
            ## @param value Value to set for the content_caching_log_client_identities property.
            ## @return a void
            ## 
            def content_caching_log_client_identities=(value)
                @content_caching_log_client_identities = value
            end
            ## 
            ## Gets the contentCachingMaxSizeBytes property value. The maximum number of bytes of disk space that will be used for the content cache. A value of 0 (default) indicates unlimited disk space.
            ## @return a int64
            ## 
            def content_caching_max_size_bytes
                return @content_caching_max_size_bytes
            end
            ## 
            ## Sets the contentCachingMaxSizeBytes property value. The maximum number of bytes of disk space that will be used for the content cache. A value of 0 (default) indicates unlimited disk space.
            ## @param value Value to set for the content_caching_max_size_bytes property.
            ## @return a void
            ## 
            def content_caching_max_size_bytes=(value)
                @content_caching_max_size_bytes = value
            end
            ## 
            ## Gets the contentCachingParentSelectionPolicy property value. Determines how content caches select a parent cache.
            ## @return a mac_o_s_content_caching_parent_selection_policy
            ## 
            def content_caching_parent_selection_policy
                return @content_caching_parent_selection_policy
            end
            ## 
            ## Sets the contentCachingParentSelectionPolicy property value. Determines how content caches select a parent cache.
            ## @param value Value to set for the content_caching_parent_selection_policy property.
            ## @return a void
            ## 
            def content_caching_parent_selection_policy=(value)
                @content_caching_parent_selection_policy = value
            end
            ## 
            ## Gets the contentCachingParents property value. A list of IP addresses representing parent content caches.
            ## @return a string
            ## 
            def content_caching_parents
                return @content_caching_parents
            end
            ## 
            ## Sets the contentCachingParents property value. A list of IP addresses representing parent content caches.
            ## @param value Value to set for the content_caching_parents property.
            ## @return a void
            ## 
            def content_caching_parents=(value)
                @content_caching_parents = value
            end
            ## 
            ## Gets the contentCachingPeerFilterRanges property value. A list of custom IP ranges content caches will use to query for content from peers caches. This collection can contain a maximum of 500 elements.
            ## @return a ip_range
            ## 
            def content_caching_peer_filter_ranges
                return @content_caching_peer_filter_ranges
            end
            ## 
            ## Sets the contentCachingPeerFilterRanges property value. A list of custom IP ranges content caches will use to query for content from peers caches. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the content_caching_peer_filter_ranges property.
            ## @return a void
            ## 
            def content_caching_peer_filter_ranges=(value)
                @content_caching_peer_filter_ranges = value
            end
            ## 
            ## Gets the contentCachingPeerListenRanges property value. A list of custom IP ranges content caches will use to listen for peer caches. This collection can contain a maximum of 500 elements.
            ## @return a ip_range
            ## 
            def content_caching_peer_listen_ranges
                return @content_caching_peer_listen_ranges
            end
            ## 
            ## Sets the contentCachingPeerListenRanges property value. A list of custom IP ranges content caches will use to listen for peer caches. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the content_caching_peer_listen_ranges property.
            ## @return a void
            ## 
            def content_caching_peer_listen_ranges=(value)
                @content_caching_peer_listen_ranges = value
            end
            ## 
            ## Gets the contentCachingPeerPolicy property value. Determines which content caches other content caches will peer with.
            ## @return a mac_o_s_content_caching_peer_policy
            ## 
            def content_caching_peer_policy
                return @content_caching_peer_policy
            end
            ## 
            ## Sets the contentCachingPeerPolicy property value. Determines which content caches other content caches will peer with.
            ## @param value Value to set for the content_caching_peer_policy property.
            ## @return a void
            ## 
            def content_caching_peer_policy=(value)
                @content_caching_peer_policy = value
            end
            ## 
            ## Gets the contentCachingPort property value. Sets the port used for content caching. If the value is 0, a random available port will be selected. Valid values 0 to 65535
            ## @return a integer
            ## 
            def content_caching_port
                return @content_caching_port
            end
            ## 
            ## Sets the contentCachingPort property value. Sets the port used for content caching. If the value is 0, a random available port will be selected. Valid values 0 to 65535
            ## @param value Value to set for the content_caching_port property.
            ## @return a void
            ## 
            def content_caching_port=(value)
                @content_caching_port = value
            end
            ## 
            ## Gets the contentCachingPublicRanges property value. A list of custom IP ranges that Apple's content caching service should use to match clients to content caches. This collection can contain a maximum of 500 elements.
            ## @return a ip_range
            ## 
            def content_caching_public_ranges
                return @content_caching_public_ranges
            end
            ## 
            ## Sets the contentCachingPublicRanges property value. A list of custom IP ranges that Apple's content caching service should use to match clients to content caches. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the content_caching_public_ranges property.
            ## @return a void
            ## 
            def content_caching_public_ranges=(value)
                @content_caching_public_ranges = value
            end
            ## 
            ## Gets the contentCachingShowAlerts property value. Display content caching alerts as system notifications.
            ## @return a boolean
            ## 
            def content_caching_show_alerts
                return @content_caching_show_alerts
            end
            ## 
            ## Sets the contentCachingShowAlerts property value. Display content caching alerts as system notifications.
            ## @param value Value to set for the content_caching_show_alerts property.
            ## @return a void
            ## 
            def content_caching_show_alerts=(value)
                @content_caching_show_alerts = value
            end
            ## 
            ## Gets the contentCachingType property value. Indicates the type of content allowed to be cached by Apple's content caching service.
            ## @return a mac_o_s_content_caching_type
            ## 
            def content_caching_type
                return @content_caching_type
            end
            ## 
            ## Sets the contentCachingType property value. Indicates the type of content allowed to be cached by Apple's content caching service.
            ## @param value Value to set for the content_caching_type property.
            ## @return a void
            ## 
            def content_caching_type=(value)
                @content_caching_type = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_device_features_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSDeviceFeaturesConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "adminShowHostInfo" => lambda {|n| @admin_show_host_info = n.get_boolean_value() },
                    "appAssociatedDomains" => lambda {|n| @app_associated_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSAssociatedDomainsItem.create_from_discriminator_value(pn) }) },
                    "associatedDomains" => lambda {|n| @associated_domains = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::KeyValuePair.create_from_discriminator_value(pn) }) },
                    "authorizedUsersListHidden" => lambda {|n| @authorized_users_list_hidden = n.get_boolean_value() },
                    "authorizedUsersListHideAdminUsers" => lambda {|n| @authorized_users_list_hide_admin_users = n.get_boolean_value() },
                    "authorizedUsersListHideLocalUsers" => lambda {|n| @authorized_users_list_hide_local_users = n.get_boolean_value() },
                    "authorizedUsersListHideMobileAccounts" => lambda {|n| @authorized_users_list_hide_mobile_accounts = n.get_boolean_value() },
                    "authorizedUsersListIncludeNetworkUsers" => lambda {|n| @authorized_users_list_include_network_users = n.get_boolean_value() },
                    "authorizedUsersListShowOtherManagedUsers" => lambda {|n| @authorized_users_list_show_other_managed_users = n.get_boolean_value() },
                    "autoLaunchItems" => lambda {|n| @auto_launch_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSLaunchItem.create_from_discriminator_value(pn) }) },
                    "consoleAccessDisabled" => lambda {|n| @console_access_disabled = n.get_boolean_value() },
                    "contentCachingBlockDeletion" => lambda {|n| @content_caching_block_deletion = n.get_boolean_value() },
                    "contentCachingClientListenRanges" => lambda {|n| @content_caching_client_listen_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpRange.create_from_discriminator_value(pn) }) },
                    "contentCachingClientPolicy" => lambda {|n| @content_caching_client_policy = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSContentCachingClientPolicy) },
                    "contentCachingDataPath" => lambda {|n| @content_caching_data_path = n.get_string_value() },
                    "contentCachingDisableConnectionSharing" => lambda {|n| @content_caching_disable_connection_sharing = n.get_boolean_value() },
                    "contentCachingEnabled" => lambda {|n| @content_caching_enabled = n.get_boolean_value() },
                    "contentCachingForceConnectionSharing" => lambda {|n| @content_caching_force_connection_sharing = n.get_boolean_value() },
                    "contentCachingKeepAwake" => lambda {|n| @content_caching_keep_awake = n.get_boolean_value() },
                    "contentCachingLogClientIdentities" => lambda {|n| @content_caching_log_client_identities = n.get_boolean_value() },
                    "contentCachingMaxSizeBytes" => lambda {|n| @content_caching_max_size_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "contentCachingParentSelectionPolicy" => lambda {|n| @content_caching_parent_selection_policy = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSContentCachingParentSelectionPolicy) },
                    "contentCachingParents" => lambda {|n| @content_caching_parents = n.get_collection_of_primitive_values(String) },
                    "contentCachingPeerFilterRanges" => lambda {|n| @content_caching_peer_filter_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpRange.create_from_discriminator_value(pn) }) },
                    "contentCachingPeerListenRanges" => lambda {|n| @content_caching_peer_listen_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpRange.create_from_discriminator_value(pn) }) },
                    "contentCachingPeerPolicy" => lambda {|n| @content_caching_peer_policy = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSContentCachingPeerPolicy) },
                    "contentCachingPort" => lambda {|n| @content_caching_port = n.get_number_value() },
                    "contentCachingPublicRanges" => lambda {|n| @content_caching_public_ranges = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::IpRange.create_from_discriminator_value(pn) }) },
                    "contentCachingShowAlerts" => lambda {|n| @content_caching_show_alerts = n.get_boolean_value() },
                    "contentCachingType" => lambda {|n| @content_caching_type = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSContentCachingType) },
                    "logOutDisabledWhileLoggedIn" => lambda {|n| @log_out_disabled_while_logged_in = n.get_boolean_value() },
                    "loginWindowText" => lambda {|n| @login_window_text = n.get_string_value() },
                    "macOSSingleSignOnExtension" => lambda {|n| @mac_o_s_single_sign_on_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MacOSSingleSignOnExtension.create_from_discriminator_value(pn) }) },
                    "powerOffDisabledWhileLoggedIn" => lambda {|n| @power_off_disabled_while_logged_in = n.get_boolean_value() },
                    "restartDisabled" => lambda {|n| @restart_disabled = n.get_boolean_value() },
                    "restartDisabledWhileLoggedIn" => lambda {|n| @restart_disabled_while_logged_in = n.get_boolean_value() },
                    "screenLockDisableImmediate" => lambda {|n| @screen_lock_disable_immediate = n.get_boolean_value() },
                    "shutDownDisabled" => lambda {|n| @shut_down_disabled = n.get_boolean_value() },
                    "shutDownDisabledWhileLoggedIn" => lambda {|n| @shut_down_disabled_while_logged_in = n.get_boolean_value() },
                    "singleSignOnExtension" => lambda {|n| @single_sign_on_extension = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SingleSignOnExtension.create_from_discriminator_value(pn) }) },
                    "singleSignOnExtensionPkinitCertificate" => lambda {|n| @single_sign_on_extension_pkinit_certificate = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MacOSCertificateProfileBase.create_from_discriminator_value(pn) }) },
                    "sleepDisabled" => lambda {|n| @sleep_disabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the logOutDisabledWhileLoggedIn property value. Whether the Log Out menu item on the login window will be disabled while the user is logged in.
            ## @return a boolean
            ## 
            def log_out_disabled_while_logged_in
                return @log_out_disabled_while_logged_in
            end
            ## 
            ## Sets the logOutDisabledWhileLoggedIn property value. Whether the Log Out menu item on the login window will be disabled while the user is logged in.
            ## @param value Value to set for the log_out_disabled_while_logged_in property.
            ## @return a void
            ## 
            def log_out_disabled_while_logged_in=(value)
                @log_out_disabled_while_logged_in = value
            end
            ## 
            ## Gets the loginWindowText property value. Custom text to be displayed on the login window.
            ## @return a string
            ## 
            def login_window_text
                return @login_window_text
            end
            ## 
            ## Sets the loginWindowText property value. Custom text to be displayed on the login window.
            ## @param value Value to set for the login_window_text property.
            ## @return a void
            ## 
            def login_window_text=(value)
                @login_window_text = value
            end
            ## 
            ## Gets the macOSSingleSignOnExtension property value. Gets or sets a single sign-on extension profile.
            ## @return a mac_o_s_single_sign_on_extension
            ## 
            def mac_o_s_single_sign_on_extension
                return @mac_o_s_single_sign_on_extension
            end
            ## 
            ## Sets the macOSSingleSignOnExtension property value. Gets or sets a single sign-on extension profile.
            ## @param value Value to set for the mac_o_s_single_sign_on_extension property.
            ## @return a void
            ## 
            def mac_o_s_single_sign_on_extension=(value)
                @mac_o_s_single_sign_on_extension = value
            end
            ## 
            ## Gets the powerOffDisabledWhileLoggedIn property value. Whether the Power Off menu item on the login window will be disabled while the user is logged in.
            ## @return a boolean
            ## 
            def power_off_disabled_while_logged_in
                return @power_off_disabled_while_logged_in
            end
            ## 
            ## Sets the powerOffDisabledWhileLoggedIn property value. Whether the Power Off menu item on the login window will be disabled while the user is logged in.
            ## @param value Value to set for the power_off_disabled_while_logged_in property.
            ## @return a void
            ## 
            def power_off_disabled_while_logged_in=(value)
                @power_off_disabled_while_logged_in = value
            end
            ## 
            ## Gets the restartDisabled property value. Whether to hide the Restart button item on the login window.
            ## @return a boolean
            ## 
            def restart_disabled
                return @restart_disabled
            end
            ## 
            ## Sets the restartDisabled property value. Whether to hide the Restart button item on the login window.
            ## @param value Value to set for the restart_disabled property.
            ## @return a void
            ## 
            def restart_disabled=(value)
                @restart_disabled = value
            end
            ## 
            ## Gets the restartDisabledWhileLoggedIn property value. Whether the Restart menu item on the login window will be disabled while the user is logged in.
            ## @return a boolean
            ## 
            def restart_disabled_while_logged_in
                return @restart_disabled_while_logged_in
            end
            ## 
            ## Sets the restartDisabledWhileLoggedIn property value. Whether the Restart menu item on the login window will be disabled while the user is logged in.
            ## @param value Value to set for the restart_disabled_while_logged_in property.
            ## @return a void
            ## 
            def restart_disabled_while_logged_in=(value)
                @restart_disabled_while_logged_in = value
            end
            ## 
            ## Gets the screenLockDisableImmediate property value. Whether to disable the immediate screen lock functions.
            ## @return a boolean
            ## 
            def screen_lock_disable_immediate
                return @screen_lock_disable_immediate
            end
            ## 
            ## Sets the screenLockDisableImmediate property value. Whether to disable the immediate screen lock functions.
            ## @param value Value to set for the screen_lock_disable_immediate property.
            ## @return a void
            ## 
            def screen_lock_disable_immediate=(value)
                @screen_lock_disable_immediate = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("adminShowHostInfo", @admin_show_host_info)
                writer.write_collection_of_object_values("appAssociatedDomains", @app_associated_domains)
                writer.write_collection_of_object_values("associatedDomains", @associated_domains)
                writer.write_boolean_value("authorizedUsersListHidden", @authorized_users_list_hidden)
                writer.write_boolean_value("authorizedUsersListHideAdminUsers", @authorized_users_list_hide_admin_users)
                writer.write_boolean_value("authorizedUsersListHideLocalUsers", @authorized_users_list_hide_local_users)
                writer.write_boolean_value("authorizedUsersListHideMobileAccounts", @authorized_users_list_hide_mobile_accounts)
                writer.write_boolean_value("authorizedUsersListIncludeNetworkUsers", @authorized_users_list_include_network_users)
                writer.write_boolean_value("authorizedUsersListShowOtherManagedUsers", @authorized_users_list_show_other_managed_users)
                writer.write_collection_of_object_values("autoLaunchItems", @auto_launch_items)
                writer.write_boolean_value("consoleAccessDisabled", @console_access_disabled)
                writer.write_boolean_value("contentCachingBlockDeletion", @content_caching_block_deletion)
                writer.write_collection_of_object_values("contentCachingClientListenRanges", @content_caching_client_listen_ranges)
                writer.write_enum_value("contentCachingClientPolicy", @content_caching_client_policy)
                writer.write_string_value("contentCachingDataPath", @content_caching_data_path)
                writer.write_boolean_value("contentCachingDisableConnectionSharing", @content_caching_disable_connection_sharing)
                writer.write_boolean_value("contentCachingEnabled", @content_caching_enabled)
                writer.write_boolean_value("contentCachingForceConnectionSharing", @content_caching_force_connection_sharing)
                writer.write_boolean_value("contentCachingKeepAwake", @content_caching_keep_awake)
                writer.write_boolean_value("contentCachingLogClientIdentities", @content_caching_log_client_identities)
                writer.write_object_value("contentCachingMaxSizeBytes", @content_caching_max_size_bytes)
                writer.write_enum_value("contentCachingParentSelectionPolicy", @content_caching_parent_selection_policy)
                writer.write_collection_of_primitive_values("contentCachingParents", @content_caching_parents)
                writer.write_collection_of_object_values("contentCachingPeerFilterRanges", @content_caching_peer_filter_ranges)
                writer.write_collection_of_object_values("contentCachingPeerListenRanges", @content_caching_peer_listen_ranges)
                writer.write_enum_value("contentCachingPeerPolicy", @content_caching_peer_policy)
                writer.write_number_value("contentCachingPort", @content_caching_port)
                writer.write_collection_of_object_values("contentCachingPublicRanges", @content_caching_public_ranges)
                writer.write_boolean_value("contentCachingShowAlerts", @content_caching_show_alerts)
                writer.write_enum_value("contentCachingType", @content_caching_type)
                writer.write_boolean_value("logOutDisabledWhileLoggedIn", @log_out_disabled_while_logged_in)
                writer.write_string_value("loginWindowText", @login_window_text)
                writer.write_object_value("macOSSingleSignOnExtension", @mac_o_s_single_sign_on_extension)
                writer.write_boolean_value("powerOffDisabledWhileLoggedIn", @power_off_disabled_while_logged_in)
                writer.write_boolean_value("restartDisabled", @restart_disabled)
                writer.write_boolean_value("restartDisabledWhileLoggedIn", @restart_disabled_while_logged_in)
                writer.write_boolean_value("screenLockDisableImmediate", @screen_lock_disable_immediate)
                writer.write_boolean_value("shutDownDisabled", @shut_down_disabled)
                writer.write_boolean_value("shutDownDisabledWhileLoggedIn", @shut_down_disabled_while_logged_in)
                writer.write_object_value("singleSignOnExtension", @single_sign_on_extension)
                writer.write_object_value("singleSignOnExtensionPkinitCertificate", @single_sign_on_extension_pkinit_certificate)
                writer.write_boolean_value("sleepDisabled", @sleep_disabled)
            end
            ## 
            ## Gets the shutDownDisabled property value. Whether to hide the Shut Down button item on the login window.
            ## @return a boolean
            ## 
            def shut_down_disabled
                return @shut_down_disabled
            end
            ## 
            ## Sets the shutDownDisabled property value. Whether to hide the Shut Down button item on the login window.
            ## @param value Value to set for the shut_down_disabled property.
            ## @return a void
            ## 
            def shut_down_disabled=(value)
                @shut_down_disabled = value
            end
            ## 
            ## Gets the shutDownDisabledWhileLoggedIn property value. Whether the Shut Down menu item on the login window will be disabled while the user is logged in.
            ## @return a boolean
            ## 
            def shut_down_disabled_while_logged_in
                return @shut_down_disabled_while_logged_in
            end
            ## 
            ## Sets the shutDownDisabledWhileLoggedIn property value. Whether the Shut Down menu item on the login window will be disabled while the user is logged in.
            ## @param value Value to set for the shut_down_disabled_while_logged_in property.
            ## @return a void
            ## 
            def shut_down_disabled_while_logged_in=(value)
                @shut_down_disabled_while_logged_in = value
            end
            ## 
            ## Gets the singleSignOnExtension property value. Gets or sets a single sign-on extension profile. Deprecated: use MacOSSingleSignOnExtension instead.
            ## @return a single_sign_on_extension
            ## 
            def single_sign_on_extension
                return @single_sign_on_extension
            end
            ## 
            ## Sets the singleSignOnExtension property value. Gets or sets a single sign-on extension profile. Deprecated: use MacOSSingleSignOnExtension instead.
            ## @param value Value to set for the single_sign_on_extension property.
            ## @return a void
            ## 
            def single_sign_on_extension=(value)
                @single_sign_on_extension = value
            end
            ## 
            ## Gets the singleSignOnExtensionPkinitCertificate property value. PKINIT Certificate for the authentication with single sign-on extensions.
            ## @return a mac_o_s_certificate_profile_base
            ## 
            def single_sign_on_extension_pkinit_certificate
                return @single_sign_on_extension_pkinit_certificate
            end
            ## 
            ## Sets the singleSignOnExtensionPkinitCertificate property value. PKINIT Certificate for the authentication with single sign-on extensions.
            ## @param value Value to set for the single_sign_on_extension_pkinit_certificate property.
            ## @return a void
            ## 
            def single_sign_on_extension_pkinit_certificate=(value)
                @single_sign_on_extension_pkinit_certificate = value
            end
            ## 
            ## Gets the sleepDisabled property value. Whether to hide the Sleep menu item on the login window.
            ## @return a boolean
            ## 
            def sleep_disabled
                return @sleep_disabled
            end
            ## 
            ## Sets the sleepDisabled property value. Whether to hide the Sleep menu item on the login window.
            ## @param value Value to set for the sleep_disabled property.
            ## @return a void
            ## 
            def sleep_disabled=(value)
                @sleep_disabled = value
            end
        end
    end
end
