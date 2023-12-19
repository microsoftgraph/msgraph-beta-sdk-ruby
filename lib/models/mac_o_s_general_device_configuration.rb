require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # This topic provides descriptions of the declared methods, properties and relationships exposed by the macOSGeneralDeviceConfiguration resource.
        class MacOSGeneralDeviceConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # When TRUE, activation lock is allowed when the devices is in the supervised mode. When FALSE, activation lock is not allowed. Default is false.
            @activation_lock_when_supervised_allowed
            ## 
            # Yes prevents users from adding friends to Game Center. Available for devices running macOS versions 10.13 and later.
            @adding_game_center_friends_blocked
            ## 
            # Indicates whether or not to allow AirDrop.
            @air_drop_blocked
            ## 
            # Indicates whether or to block users from unlocking their Mac with Apple Watch.
            @apple_watch_block_auto_unlock
            ## 
            # Indicates whether or not to block the user from accessing the camera of the device.
            @camera_blocked
            ## 
            # Indicates whether or not to allow remote screen observation by Classroom app. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            @classroom_app_block_remote_screen_observation
            ## 
            # Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            @classroom_app_force_unprompted_screen_observation
            ## 
            # Indicates whether or not to automatically give permission to the teacher's requests, without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            @classroom_force_automatically_join_classes
            ## 
            # Indicates whether a student enrolled in an unmanaged course via Classroom will be required to request permission from the teacher when attempting to leave the course. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            @classroom_force_request_permission_to_leave_classes
            ## 
            # Indicates whether or not to allow the teacher to lock apps or the device without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            @classroom_force_unprompted_app_and_device_lock
            ## 
            # Possible values of the compliance app list.
            @compliant_app_list_type
            ## 
            # List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            @compliant_apps_list
            ## 
            # Indicates whether or not to allow content caching.
            @content_caching_blocked
            ## 
            # Indicates whether or not to block definition lookup.
            @definition_lookup_blocked
            ## 
            # An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            @email_in_domain_suffixes
            ## 
            # TRUE disables the reset option on supervised devices. FALSE enables the reset option on supervised devices. Available for devices running macOS versions 12.0 and later.
            @erase_content_and_settings_blocked
            ## 
            # Yes disables Game Center, and the Game Center icon is removed from the Home screen. Available for devices running macOS versions 10.13 and later.
            @game_center_blocked
            ## 
            # Indicates whether or not to block the user from continuing work that they started on a MacOS device on another iOS or MacOS device (MacOS 10.15 or later).
            @i_cloud_block_activity_continuation
            ## 
            # Indicates whether or not to block iCloud from syncing contacts.
            @i_cloud_block_address_book
            ## 
            # Indicates whether or not to block iCloud from syncing bookmarks.
            @i_cloud_block_bookmarks
            ## 
            # Indicates whether or not to block iCloud from syncing calendars.
            @i_cloud_block_calendar
            ## 
            # Indicates whether or not to block iCloud document sync.
            @i_cloud_block_document_sync
            ## 
            # Indicates whether or not to block iCloud from syncing mail.
            @i_cloud_block_mail
            ## 
            # Indicates whether or not to block iCloud from syncing notes.
            @i_cloud_block_notes
            ## 
            # Indicates whether or not to block iCloud Photo Library.
            @i_cloud_block_photo_library
            ## 
            # Indicates whether or not to block iCloud from syncing reminders.
            @i_cloud_block_reminders
            ## 
            # When TRUE the synchronization of cloud desktop and documents is blocked. When FALSE, synchronization of the cloud desktop and documents are allowed. Available for devices running macOS 10.12.4 and later.
            @i_cloud_desktop_and_documents_blocked
            ## 
            # iCloud private relay is an iCloud+ service that prevents networks and servers from monitoring a person's activity across the internet. By blocking iCloud private relay, Apple will not encrypt the traffic leaving the device. Available for devices running macOS 12 and later.
            @i_cloud_private_relay_blocked
            ## 
            # Indicates whether or not to block files from being transferred using iTunes.
            @i_tunes_block_file_sharing
            ## 
            # Indicates whether or not to block Music service and revert Music app to classic mode.
            @i_tunes_block_music_service
            ## 
            # Indicates whether or not to block the user from using dictation input.
            @keyboard_block_dictation
            ## 
            # Indicates whether or not iCloud keychain synchronization is blocked (macOS 10.12 and later).
            @keychain_block_cloud_sync
            ## 
            # TRUE prevents multiplayer gaming when using Game Center. FALSE allows multiplayer gaming when using Game Center. Available for devices running macOS versions 10.13 and later.
            @multiplayer_gaming_blocked
            ## 
            # Indicates whether or not to block sharing passwords with the AirDrop passwords feature.
            @password_block_air_drop_sharing
            ## 
            # Indicates whether or not to block the AutoFill Passwords feature.
            @password_block_auto_fill
            ## 
            # Indicates whether or not to block fingerprint unlock.
            @password_block_fingerprint_unlock
            ## 
            # Indicates whether or not to allow passcode modification.
            @password_block_modification
            ## 
            # Indicates whether or not to block requesting passwords from nearby devices.
            @password_block_proximity_requests
            ## 
            # Block simple passwords.
            @password_block_simple
            ## 
            # Number of days before the password expires.
            @password_expiration_days
            ## 
            # The number of allowed failed attempts to enter the passcode at the device's lock screen. Valid values 2 to 11
            @password_maximum_attempt_count
            ## 
            # Number of character sets a password must contain. Valid values 0 to 4
            @password_minimum_character_set_count
            ## 
            # Minimum length of passwords.
            @password_minimum_length
            ## 
            # Minutes of inactivity required before a password is required.
            @password_minutes_of_inactivity_before_lock
            ## 
            # Minutes of inactivity required before the screen times out.
            @password_minutes_of_inactivity_before_screen_timeout
            ## 
            # The number of minutes before the login is reset after the maximum number of unsuccessful login attempts is reached.
            @password_minutes_until_failed_login_reset
            ## 
            # Number of previous passwords to block.
            @password_previous_password_block_count
            ## 
            # Whether or not to require a password.
            @password_required
            ## 
            # Possible values of required passwords.
            @password_required_type
            ## 
            # List of privacy preference policy controls. This collection can contain a maximum of 10000 elements.
            @privacy_access_controls
            ## 
            # Indicates whether or not to block the user from using Auto fill in Safari.
            @safari_block_autofill
            ## 
            # Indicates whether or not to block the user from taking Screenshots.
            @screen_capture_blocked
            ## 
            # Specify the number of days (1-90) to delay visibility of major OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            @software_update_major_o_s_deferred_install_delay_in_days
            ## 
            # Specify the number of days (1-90) to delay visibility of minor OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            @software_update_minor_o_s_deferred_install_delay_in_days
            ## 
            # Specify the number of days (1-90) to delay visibility of non-OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            @software_update_non_o_s_deferred_install_delay_in_days
            ## 
            # Sets how many days a software update will be delyed for a supervised device. Valid values 0 to 90
            @software_updates_enforced_delay_in_days
            ## 
            # Indicates whether or not to block Spotlight from returning any results from an Internet search.
            @spotlight_block_internet_results
            ## 
            # Maximum hours after which the user must enter their password to unlock the device instead of using Touch ID. Available for devices running macOS 12 and later. Valid values 0 to 2147483647
            @touch_id_timeout_in_hours
            ## 
            # Determines whether to delay OS and/or app updates for macOS. Possible values are: none, delayOSUpdateVisibility, delayAppUpdateVisibility, unknownFutureValue, delayMajorOsUpdateVisibility.
            @update_delay_policy
            ## 
            # TRUE prevents the wallpaper from being changed. FALSE allows the wallpaper to be changed. Available for devices running macOS versions 10.13 and later.
            @wallpaper_modification_blocked
            ## 
            ## Gets the activationLockWhenSupervisedAllowed property value. When TRUE, activation lock is allowed when the devices is in the supervised mode. When FALSE, activation lock is not allowed. Default is false.
            ## @return a boolean
            ## 
            def activation_lock_when_supervised_allowed
                return @activation_lock_when_supervised_allowed
            end
            ## 
            ## Sets the activationLockWhenSupervisedAllowed property value. When TRUE, activation lock is allowed when the devices is in the supervised mode. When FALSE, activation lock is not allowed. Default is false.
            ## @param value Value to set for the activationLockWhenSupervisedAllowed property.
            ## @return a void
            ## 
            def activation_lock_when_supervised_allowed=(value)
                @activation_lock_when_supervised_allowed = value
            end
            ## 
            ## Gets the addingGameCenterFriendsBlocked property value. Yes prevents users from adding friends to Game Center. Available for devices running macOS versions 10.13 and later.
            ## @return a boolean
            ## 
            def adding_game_center_friends_blocked
                return @adding_game_center_friends_blocked
            end
            ## 
            ## Sets the addingGameCenterFriendsBlocked property value. Yes prevents users from adding friends to Game Center. Available for devices running macOS versions 10.13 and later.
            ## @param value Value to set for the addingGameCenterFriendsBlocked property.
            ## @return a void
            ## 
            def adding_game_center_friends_blocked=(value)
                @adding_game_center_friends_blocked = value
            end
            ## 
            ## Gets the airDropBlocked property value. Indicates whether or not to allow AirDrop.
            ## @return a boolean
            ## 
            def air_drop_blocked
                return @air_drop_blocked
            end
            ## 
            ## Sets the airDropBlocked property value. Indicates whether or not to allow AirDrop.
            ## @param value Value to set for the airDropBlocked property.
            ## @return a void
            ## 
            def air_drop_blocked=(value)
                @air_drop_blocked = value
            end
            ## 
            ## Gets the appleWatchBlockAutoUnlock property value. Indicates whether or to block users from unlocking their Mac with Apple Watch.
            ## @return a boolean
            ## 
            def apple_watch_block_auto_unlock
                return @apple_watch_block_auto_unlock
            end
            ## 
            ## Sets the appleWatchBlockAutoUnlock property value. Indicates whether or to block users from unlocking their Mac with Apple Watch.
            ## @param value Value to set for the appleWatchBlockAutoUnlock property.
            ## @return a void
            ## 
            def apple_watch_block_auto_unlock=(value)
                @apple_watch_block_auto_unlock = value
            end
            ## 
            ## Gets the cameraBlocked property value. Indicates whether or not to block the user from accessing the camera of the device.
            ## @return a boolean
            ## 
            def camera_blocked
                return @camera_blocked
            end
            ## 
            ## Sets the cameraBlocked property value. Indicates whether or not to block the user from accessing the camera of the device.
            ## @param value Value to set for the cameraBlocked property.
            ## @return a void
            ## 
            def camera_blocked=(value)
                @camera_blocked = value
            end
            ## 
            ## Gets the classroomAppBlockRemoteScreenObservation property value. Indicates whether or not to allow remote screen observation by Classroom app. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @return a boolean
            ## 
            def classroom_app_block_remote_screen_observation
                return @classroom_app_block_remote_screen_observation
            end
            ## 
            ## Sets the classroomAppBlockRemoteScreenObservation property value. Indicates whether or not to allow remote screen observation by Classroom app. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @param value Value to set for the classroomAppBlockRemoteScreenObservation property.
            ## @return a void
            ## 
            def classroom_app_block_remote_screen_observation=(value)
                @classroom_app_block_remote_screen_observation = value
            end
            ## 
            ## Gets the classroomAppForceUnpromptedScreenObservation property value. Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @return a boolean
            ## 
            def classroom_app_force_unprompted_screen_observation
                return @classroom_app_force_unprompted_screen_observation
            end
            ## 
            ## Sets the classroomAppForceUnpromptedScreenObservation property value. Indicates whether or not to automatically give permission to the teacher of a managed course on the Classroom app to view a student's screen without prompting. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @param value Value to set for the classroomAppForceUnpromptedScreenObservation property.
            ## @return a void
            ## 
            def classroom_app_force_unprompted_screen_observation=(value)
                @classroom_app_force_unprompted_screen_observation = value
            end
            ## 
            ## Gets the classroomForceAutomaticallyJoinClasses property value. Indicates whether or not to automatically give permission to the teacher's requests, without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @return a boolean
            ## 
            def classroom_force_automatically_join_classes
                return @classroom_force_automatically_join_classes
            end
            ## 
            ## Sets the classroomForceAutomaticallyJoinClasses property value. Indicates whether or not to automatically give permission to the teacher's requests, without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @param value Value to set for the classroomForceAutomaticallyJoinClasses property.
            ## @return a void
            ## 
            def classroom_force_automatically_join_classes=(value)
                @classroom_force_automatically_join_classes = value
            end
            ## 
            ## Gets the classroomForceRequestPermissionToLeaveClasses property value. Indicates whether a student enrolled in an unmanaged course via Classroom will be required to request permission from the teacher when attempting to leave the course. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @return a boolean
            ## 
            def classroom_force_request_permission_to_leave_classes
                return @classroom_force_request_permission_to_leave_classes
            end
            ## 
            ## Sets the classroomForceRequestPermissionToLeaveClasses property value. Indicates whether a student enrolled in an unmanaged course via Classroom will be required to request permission from the teacher when attempting to leave the course. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @param value Value to set for the classroomForceRequestPermissionToLeaveClasses property.
            ## @return a void
            ## 
            def classroom_force_request_permission_to_leave_classes=(value)
                @classroom_force_request_permission_to_leave_classes = value
            end
            ## 
            ## Gets the classroomForceUnpromptedAppAndDeviceLock property value. Indicates whether or not to allow the teacher to lock apps or the device without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @return a boolean
            ## 
            def classroom_force_unprompted_app_and_device_lock
                return @classroom_force_unprompted_app_and_device_lock
            end
            ## 
            ## Sets the classroomForceUnpromptedAppAndDeviceLock property value. Indicates whether or not to allow the teacher to lock apps or the device without prompting the student. Requires MDM enrollment via Apple School Manager or Apple Business Manager.
            ## @param value Value to set for the classroomForceUnpromptedAppAndDeviceLock property.
            ## @return a void
            ## 
            def classroom_force_unprompted_app_and_device_lock=(value)
                @classroom_force_unprompted_app_and_device_lock = value
            end
            ## 
            ## Gets the compliantAppListType property value. Possible values of the compliance app list.
            ## @return a app_list_type
            ## 
            def compliant_app_list_type
                return @compliant_app_list_type
            end
            ## 
            ## Sets the compliantAppListType property value. Possible values of the compliance app list.
            ## @param value Value to set for the compliantAppListType property.
            ## @return a void
            ## 
            def compliant_app_list_type=(value)
                @compliant_app_list_type = value
            end
            ## 
            ## Gets the compliantAppsList property value. List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            ## @return a app_list_item
            ## 
            def compliant_apps_list
                return @compliant_apps_list
            end
            ## 
            ## Sets the compliantAppsList property value. List of apps in the compliance (either allow list or block list, controlled by CompliantAppListType). This collection can contain a maximum of 10000 elements.
            ## @param value Value to set for the compliantAppsList property.
            ## @return a void
            ## 
            def compliant_apps_list=(value)
                @compliant_apps_list = value
            end
            ## 
            ## Instantiates a new macOSGeneralDeviceConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.macOSGeneralDeviceConfiguration"
            end
            ## 
            ## Gets the contentCachingBlocked property value. Indicates whether or not to allow content caching.
            ## @return a boolean
            ## 
            def content_caching_blocked
                return @content_caching_blocked
            end
            ## 
            ## Sets the contentCachingBlocked property value. Indicates whether or not to allow content caching.
            ## @param value Value to set for the contentCachingBlocked property.
            ## @return a void
            ## 
            def content_caching_blocked=(value)
                @content_caching_blocked = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_general_device_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSGeneralDeviceConfiguration.new
            end
            ## 
            ## Gets the definitionLookupBlocked property value. Indicates whether or not to block definition lookup.
            ## @return a boolean
            ## 
            def definition_lookup_blocked
                return @definition_lookup_blocked
            end
            ## 
            ## Sets the definitionLookupBlocked property value. Indicates whether or not to block definition lookup.
            ## @param value Value to set for the definitionLookupBlocked property.
            ## @return a void
            ## 
            def definition_lookup_blocked=(value)
                @definition_lookup_blocked = value
            end
            ## 
            ## Gets the emailInDomainSuffixes property value. An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            ## @return a string
            ## 
            def email_in_domain_suffixes
                return @email_in_domain_suffixes
            end
            ## 
            ## Sets the emailInDomainSuffixes property value. An email address lacking a suffix that matches any of these strings will be considered out-of-domain.
            ## @param value Value to set for the emailInDomainSuffixes property.
            ## @return a void
            ## 
            def email_in_domain_suffixes=(value)
                @email_in_domain_suffixes = value
            end
            ## 
            ## Gets the eraseContentAndSettingsBlocked property value. TRUE disables the reset option on supervised devices. FALSE enables the reset option on supervised devices. Available for devices running macOS versions 12.0 and later.
            ## @return a boolean
            ## 
            def erase_content_and_settings_blocked
                return @erase_content_and_settings_blocked
            end
            ## 
            ## Sets the eraseContentAndSettingsBlocked property value. TRUE disables the reset option on supervised devices. FALSE enables the reset option on supervised devices. Available for devices running macOS versions 12.0 and later.
            ## @param value Value to set for the eraseContentAndSettingsBlocked property.
            ## @return a void
            ## 
            def erase_content_and_settings_blocked=(value)
                @erase_content_and_settings_blocked = value
            end
            ## 
            ## Gets the gameCenterBlocked property value. Yes disables Game Center, and the Game Center icon is removed from the Home screen. Available for devices running macOS versions 10.13 and later.
            ## @return a boolean
            ## 
            def game_center_blocked
                return @game_center_blocked
            end
            ## 
            ## Sets the gameCenterBlocked property value. Yes disables Game Center, and the Game Center icon is removed from the Home screen. Available for devices running macOS versions 10.13 and later.
            ## @param value Value to set for the gameCenterBlocked property.
            ## @return a void
            ## 
            def game_center_blocked=(value)
                @game_center_blocked = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activationLockWhenSupervisedAllowed" => lambda {|n| @activation_lock_when_supervised_allowed = n.get_boolean_value() },
                    "addingGameCenterFriendsBlocked" => lambda {|n| @adding_game_center_friends_blocked = n.get_boolean_value() },
                    "airDropBlocked" => lambda {|n| @air_drop_blocked = n.get_boolean_value() },
                    "appleWatchBlockAutoUnlock" => lambda {|n| @apple_watch_block_auto_unlock = n.get_boolean_value() },
                    "cameraBlocked" => lambda {|n| @camera_blocked = n.get_boolean_value() },
                    "classroomAppBlockRemoteScreenObservation" => lambda {|n| @classroom_app_block_remote_screen_observation = n.get_boolean_value() },
                    "classroomAppForceUnpromptedScreenObservation" => lambda {|n| @classroom_app_force_unprompted_screen_observation = n.get_boolean_value() },
                    "classroomForceAutomaticallyJoinClasses" => lambda {|n| @classroom_force_automatically_join_classes = n.get_boolean_value() },
                    "classroomForceRequestPermissionToLeaveClasses" => lambda {|n| @classroom_force_request_permission_to_leave_classes = n.get_boolean_value() },
                    "classroomForceUnpromptedAppAndDeviceLock" => lambda {|n| @classroom_force_unprompted_app_and_device_lock = n.get_boolean_value() },
                    "compliantAppListType" => lambda {|n| @compliant_app_list_type = n.get_enum_value(MicrosoftGraphBeta::Models::AppListType) },
                    "compliantAppsList" => lambda {|n| @compliant_apps_list = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AppListItem.create_from_discriminator_value(pn) }) },
                    "contentCachingBlocked" => lambda {|n| @content_caching_blocked = n.get_boolean_value() },
                    "definitionLookupBlocked" => lambda {|n| @definition_lookup_blocked = n.get_boolean_value() },
                    "emailInDomainSuffixes" => lambda {|n| @email_in_domain_suffixes = n.get_collection_of_primitive_values(String) },
                    "eraseContentAndSettingsBlocked" => lambda {|n| @erase_content_and_settings_blocked = n.get_boolean_value() },
                    "gameCenterBlocked" => lambda {|n| @game_center_blocked = n.get_boolean_value() },
                    "iCloudBlockActivityContinuation" => lambda {|n| @i_cloud_block_activity_continuation = n.get_boolean_value() },
                    "iCloudBlockAddressBook" => lambda {|n| @i_cloud_block_address_book = n.get_boolean_value() },
                    "iCloudBlockBookmarks" => lambda {|n| @i_cloud_block_bookmarks = n.get_boolean_value() },
                    "iCloudBlockCalendar" => lambda {|n| @i_cloud_block_calendar = n.get_boolean_value() },
                    "iCloudBlockDocumentSync" => lambda {|n| @i_cloud_block_document_sync = n.get_boolean_value() },
                    "iCloudBlockMail" => lambda {|n| @i_cloud_block_mail = n.get_boolean_value() },
                    "iCloudBlockNotes" => lambda {|n| @i_cloud_block_notes = n.get_boolean_value() },
                    "iCloudBlockPhotoLibrary" => lambda {|n| @i_cloud_block_photo_library = n.get_boolean_value() },
                    "iCloudBlockReminders" => lambda {|n| @i_cloud_block_reminders = n.get_boolean_value() },
                    "iCloudDesktopAndDocumentsBlocked" => lambda {|n| @i_cloud_desktop_and_documents_blocked = n.get_boolean_value() },
                    "iCloudPrivateRelayBlocked" => lambda {|n| @i_cloud_private_relay_blocked = n.get_boolean_value() },
                    "iTunesBlockFileSharing" => lambda {|n| @i_tunes_block_file_sharing = n.get_boolean_value() },
                    "iTunesBlockMusicService" => lambda {|n| @i_tunes_block_music_service = n.get_boolean_value() },
                    "keyboardBlockDictation" => lambda {|n| @keyboard_block_dictation = n.get_boolean_value() },
                    "keychainBlockCloudSync" => lambda {|n| @keychain_block_cloud_sync = n.get_boolean_value() },
                    "multiplayerGamingBlocked" => lambda {|n| @multiplayer_gaming_blocked = n.get_boolean_value() },
                    "passwordBlockAirDropSharing" => lambda {|n| @password_block_air_drop_sharing = n.get_boolean_value() },
                    "passwordBlockAutoFill" => lambda {|n| @password_block_auto_fill = n.get_boolean_value() },
                    "passwordBlockFingerprintUnlock" => lambda {|n| @password_block_fingerprint_unlock = n.get_boolean_value() },
                    "passwordBlockModification" => lambda {|n| @password_block_modification = n.get_boolean_value() },
                    "passwordBlockProximityRequests" => lambda {|n| @password_block_proximity_requests = n.get_boolean_value() },
                    "passwordBlockSimple" => lambda {|n| @password_block_simple = n.get_boolean_value() },
                    "passwordExpirationDays" => lambda {|n| @password_expiration_days = n.get_number_value() },
                    "passwordMaximumAttemptCount" => lambda {|n| @password_maximum_attempt_count = n.get_number_value() },
                    "passwordMinimumCharacterSetCount" => lambda {|n| @password_minimum_character_set_count = n.get_number_value() },
                    "passwordMinimumLength" => lambda {|n| @password_minimum_length = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeLock" => lambda {|n| @password_minutes_of_inactivity_before_lock = n.get_number_value() },
                    "passwordMinutesOfInactivityBeforeScreenTimeout" => lambda {|n| @password_minutes_of_inactivity_before_screen_timeout = n.get_number_value() },
                    "passwordMinutesUntilFailedLoginReset" => lambda {|n| @password_minutes_until_failed_login_reset = n.get_number_value() },
                    "passwordPreviousPasswordBlockCount" => lambda {|n| @password_previous_password_block_count = n.get_number_value() },
                    "passwordRequired" => lambda {|n| @password_required = n.get_boolean_value() },
                    "passwordRequiredType" => lambda {|n| @password_required_type = n.get_enum_value(MicrosoftGraphBeta::Models::RequiredPasswordType) },
                    "privacyAccessControls" => lambda {|n| @privacy_access_controls = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSPrivacyAccessControlItem.create_from_discriminator_value(pn) }) },
                    "safariBlockAutofill" => lambda {|n| @safari_block_autofill = n.get_boolean_value() },
                    "screenCaptureBlocked" => lambda {|n| @screen_capture_blocked = n.get_boolean_value() },
                    "softwareUpdateMajorOSDeferredInstallDelayInDays" => lambda {|n| @software_update_major_o_s_deferred_install_delay_in_days = n.get_number_value() },
                    "softwareUpdateMinorOSDeferredInstallDelayInDays" => lambda {|n| @software_update_minor_o_s_deferred_install_delay_in_days = n.get_number_value() },
                    "softwareUpdateNonOSDeferredInstallDelayInDays" => lambda {|n| @software_update_non_o_s_deferred_install_delay_in_days = n.get_number_value() },
                    "softwareUpdatesEnforcedDelayInDays" => lambda {|n| @software_updates_enforced_delay_in_days = n.get_number_value() },
                    "spotlightBlockInternetResults" => lambda {|n| @spotlight_block_internet_results = n.get_boolean_value() },
                    "touchIdTimeoutInHours" => lambda {|n| @touch_id_timeout_in_hours = n.get_number_value() },
                    "updateDelayPolicy" => lambda {|n| @update_delay_policy = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSGeneralDeviceConfigurationUpdateDelayPolicy) },
                    "wallpaperModificationBlocked" => lambda {|n| @wallpaper_modification_blocked = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the iCloudBlockActivityContinuation property value. Indicates whether or not to block the user from continuing work that they started on a MacOS device on another iOS or MacOS device (MacOS 10.15 or later).
            ## @return a boolean
            ## 
            def i_cloud_block_activity_continuation
                return @i_cloud_block_activity_continuation
            end
            ## 
            ## Sets the iCloudBlockActivityContinuation property value. Indicates whether or not to block the user from continuing work that they started on a MacOS device on another iOS or MacOS device (MacOS 10.15 or later).
            ## @param value Value to set for the iCloudBlockActivityContinuation property.
            ## @return a void
            ## 
            def i_cloud_block_activity_continuation=(value)
                @i_cloud_block_activity_continuation = value
            end
            ## 
            ## Gets the iCloudBlockAddressBook property value. Indicates whether or not to block iCloud from syncing contacts.
            ## @return a boolean
            ## 
            def i_cloud_block_address_book
                return @i_cloud_block_address_book
            end
            ## 
            ## Sets the iCloudBlockAddressBook property value. Indicates whether or not to block iCloud from syncing contacts.
            ## @param value Value to set for the iCloudBlockAddressBook property.
            ## @return a void
            ## 
            def i_cloud_block_address_book=(value)
                @i_cloud_block_address_book = value
            end
            ## 
            ## Gets the iCloudBlockBookmarks property value. Indicates whether or not to block iCloud from syncing bookmarks.
            ## @return a boolean
            ## 
            def i_cloud_block_bookmarks
                return @i_cloud_block_bookmarks
            end
            ## 
            ## Sets the iCloudBlockBookmarks property value. Indicates whether or not to block iCloud from syncing bookmarks.
            ## @param value Value to set for the iCloudBlockBookmarks property.
            ## @return a void
            ## 
            def i_cloud_block_bookmarks=(value)
                @i_cloud_block_bookmarks = value
            end
            ## 
            ## Gets the iCloudBlockCalendar property value. Indicates whether or not to block iCloud from syncing calendars.
            ## @return a boolean
            ## 
            def i_cloud_block_calendar
                return @i_cloud_block_calendar
            end
            ## 
            ## Sets the iCloudBlockCalendar property value. Indicates whether or not to block iCloud from syncing calendars.
            ## @param value Value to set for the iCloudBlockCalendar property.
            ## @return a void
            ## 
            def i_cloud_block_calendar=(value)
                @i_cloud_block_calendar = value
            end
            ## 
            ## Gets the iCloudBlockDocumentSync property value. Indicates whether or not to block iCloud document sync.
            ## @return a boolean
            ## 
            def i_cloud_block_document_sync
                return @i_cloud_block_document_sync
            end
            ## 
            ## Sets the iCloudBlockDocumentSync property value. Indicates whether or not to block iCloud document sync.
            ## @param value Value to set for the iCloudBlockDocumentSync property.
            ## @return a void
            ## 
            def i_cloud_block_document_sync=(value)
                @i_cloud_block_document_sync = value
            end
            ## 
            ## Gets the iCloudBlockMail property value. Indicates whether or not to block iCloud from syncing mail.
            ## @return a boolean
            ## 
            def i_cloud_block_mail
                return @i_cloud_block_mail
            end
            ## 
            ## Sets the iCloudBlockMail property value. Indicates whether or not to block iCloud from syncing mail.
            ## @param value Value to set for the iCloudBlockMail property.
            ## @return a void
            ## 
            def i_cloud_block_mail=(value)
                @i_cloud_block_mail = value
            end
            ## 
            ## Gets the iCloudBlockNotes property value. Indicates whether or not to block iCloud from syncing notes.
            ## @return a boolean
            ## 
            def i_cloud_block_notes
                return @i_cloud_block_notes
            end
            ## 
            ## Sets the iCloudBlockNotes property value. Indicates whether or not to block iCloud from syncing notes.
            ## @param value Value to set for the iCloudBlockNotes property.
            ## @return a void
            ## 
            def i_cloud_block_notes=(value)
                @i_cloud_block_notes = value
            end
            ## 
            ## Gets the iCloudBlockPhotoLibrary property value. Indicates whether or not to block iCloud Photo Library.
            ## @return a boolean
            ## 
            def i_cloud_block_photo_library
                return @i_cloud_block_photo_library
            end
            ## 
            ## Sets the iCloudBlockPhotoLibrary property value. Indicates whether or not to block iCloud Photo Library.
            ## @param value Value to set for the iCloudBlockPhotoLibrary property.
            ## @return a void
            ## 
            def i_cloud_block_photo_library=(value)
                @i_cloud_block_photo_library = value
            end
            ## 
            ## Gets the iCloudBlockReminders property value. Indicates whether or not to block iCloud from syncing reminders.
            ## @return a boolean
            ## 
            def i_cloud_block_reminders
                return @i_cloud_block_reminders
            end
            ## 
            ## Sets the iCloudBlockReminders property value. Indicates whether or not to block iCloud from syncing reminders.
            ## @param value Value to set for the iCloudBlockReminders property.
            ## @return a void
            ## 
            def i_cloud_block_reminders=(value)
                @i_cloud_block_reminders = value
            end
            ## 
            ## Gets the iCloudDesktopAndDocumentsBlocked property value. When TRUE the synchronization of cloud desktop and documents is blocked. When FALSE, synchronization of the cloud desktop and documents are allowed. Available for devices running macOS 10.12.4 and later.
            ## @return a boolean
            ## 
            def i_cloud_desktop_and_documents_blocked
                return @i_cloud_desktop_and_documents_blocked
            end
            ## 
            ## Sets the iCloudDesktopAndDocumentsBlocked property value. When TRUE the synchronization of cloud desktop and documents is blocked. When FALSE, synchronization of the cloud desktop and documents are allowed. Available for devices running macOS 10.12.4 and later.
            ## @param value Value to set for the iCloudDesktopAndDocumentsBlocked property.
            ## @return a void
            ## 
            def i_cloud_desktop_and_documents_blocked=(value)
                @i_cloud_desktop_and_documents_blocked = value
            end
            ## 
            ## Gets the iCloudPrivateRelayBlocked property value. iCloud private relay is an iCloud+ service that prevents networks and servers from monitoring a person's activity across the internet. By blocking iCloud private relay, Apple will not encrypt the traffic leaving the device. Available for devices running macOS 12 and later.
            ## @return a boolean
            ## 
            def i_cloud_private_relay_blocked
                return @i_cloud_private_relay_blocked
            end
            ## 
            ## Sets the iCloudPrivateRelayBlocked property value. iCloud private relay is an iCloud+ service that prevents networks and servers from monitoring a person's activity across the internet. By blocking iCloud private relay, Apple will not encrypt the traffic leaving the device. Available for devices running macOS 12 and later.
            ## @param value Value to set for the iCloudPrivateRelayBlocked property.
            ## @return a void
            ## 
            def i_cloud_private_relay_blocked=(value)
                @i_cloud_private_relay_blocked = value
            end
            ## 
            ## Gets the iTunesBlockFileSharing property value. Indicates whether or not to block files from being transferred using iTunes.
            ## @return a boolean
            ## 
            def i_tunes_block_file_sharing
                return @i_tunes_block_file_sharing
            end
            ## 
            ## Sets the iTunesBlockFileSharing property value. Indicates whether or not to block files from being transferred using iTunes.
            ## @param value Value to set for the iTunesBlockFileSharing property.
            ## @return a void
            ## 
            def i_tunes_block_file_sharing=(value)
                @i_tunes_block_file_sharing = value
            end
            ## 
            ## Gets the iTunesBlockMusicService property value. Indicates whether or not to block Music service and revert Music app to classic mode.
            ## @return a boolean
            ## 
            def i_tunes_block_music_service
                return @i_tunes_block_music_service
            end
            ## 
            ## Sets the iTunesBlockMusicService property value. Indicates whether or not to block Music service and revert Music app to classic mode.
            ## @param value Value to set for the iTunesBlockMusicService property.
            ## @return a void
            ## 
            def i_tunes_block_music_service=(value)
                @i_tunes_block_music_service = value
            end
            ## 
            ## Gets the keyboardBlockDictation property value. Indicates whether or not to block the user from using dictation input.
            ## @return a boolean
            ## 
            def keyboard_block_dictation
                return @keyboard_block_dictation
            end
            ## 
            ## Sets the keyboardBlockDictation property value. Indicates whether or not to block the user from using dictation input.
            ## @param value Value to set for the keyboardBlockDictation property.
            ## @return a void
            ## 
            def keyboard_block_dictation=(value)
                @keyboard_block_dictation = value
            end
            ## 
            ## Gets the keychainBlockCloudSync property value. Indicates whether or not iCloud keychain synchronization is blocked (macOS 10.12 and later).
            ## @return a boolean
            ## 
            def keychain_block_cloud_sync
                return @keychain_block_cloud_sync
            end
            ## 
            ## Sets the keychainBlockCloudSync property value. Indicates whether or not iCloud keychain synchronization is blocked (macOS 10.12 and later).
            ## @param value Value to set for the keychainBlockCloudSync property.
            ## @return a void
            ## 
            def keychain_block_cloud_sync=(value)
                @keychain_block_cloud_sync = value
            end
            ## 
            ## Gets the multiplayerGamingBlocked property value. TRUE prevents multiplayer gaming when using Game Center. FALSE allows multiplayer gaming when using Game Center. Available for devices running macOS versions 10.13 and later.
            ## @return a boolean
            ## 
            def multiplayer_gaming_blocked
                return @multiplayer_gaming_blocked
            end
            ## 
            ## Sets the multiplayerGamingBlocked property value. TRUE prevents multiplayer gaming when using Game Center. FALSE allows multiplayer gaming when using Game Center. Available for devices running macOS versions 10.13 and later.
            ## @param value Value to set for the multiplayerGamingBlocked property.
            ## @return a void
            ## 
            def multiplayer_gaming_blocked=(value)
                @multiplayer_gaming_blocked = value
            end
            ## 
            ## Gets the passwordBlockAirDropSharing property value. Indicates whether or not to block sharing passwords with the AirDrop passwords feature.
            ## @return a boolean
            ## 
            def password_block_air_drop_sharing
                return @password_block_air_drop_sharing
            end
            ## 
            ## Sets the passwordBlockAirDropSharing property value. Indicates whether or not to block sharing passwords with the AirDrop passwords feature.
            ## @param value Value to set for the passwordBlockAirDropSharing property.
            ## @return a void
            ## 
            def password_block_air_drop_sharing=(value)
                @password_block_air_drop_sharing = value
            end
            ## 
            ## Gets the passwordBlockAutoFill property value. Indicates whether or not to block the AutoFill Passwords feature.
            ## @return a boolean
            ## 
            def password_block_auto_fill
                return @password_block_auto_fill
            end
            ## 
            ## Sets the passwordBlockAutoFill property value. Indicates whether or not to block the AutoFill Passwords feature.
            ## @param value Value to set for the passwordBlockAutoFill property.
            ## @return a void
            ## 
            def password_block_auto_fill=(value)
                @password_block_auto_fill = value
            end
            ## 
            ## Gets the passwordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @return a boolean
            ## 
            def password_block_fingerprint_unlock
                return @password_block_fingerprint_unlock
            end
            ## 
            ## Sets the passwordBlockFingerprintUnlock property value. Indicates whether or not to block fingerprint unlock.
            ## @param value Value to set for the passwordBlockFingerprintUnlock property.
            ## @return a void
            ## 
            def password_block_fingerprint_unlock=(value)
                @password_block_fingerprint_unlock = value
            end
            ## 
            ## Gets the passwordBlockModification property value. Indicates whether or not to allow passcode modification.
            ## @return a boolean
            ## 
            def password_block_modification
                return @password_block_modification
            end
            ## 
            ## Sets the passwordBlockModification property value. Indicates whether or not to allow passcode modification.
            ## @param value Value to set for the passwordBlockModification property.
            ## @return a void
            ## 
            def password_block_modification=(value)
                @password_block_modification = value
            end
            ## 
            ## Gets the passwordBlockProximityRequests property value. Indicates whether or not to block requesting passwords from nearby devices.
            ## @return a boolean
            ## 
            def password_block_proximity_requests
                return @password_block_proximity_requests
            end
            ## 
            ## Sets the passwordBlockProximityRequests property value. Indicates whether or not to block requesting passwords from nearby devices.
            ## @param value Value to set for the passwordBlockProximityRequests property.
            ## @return a void
            ## 
            def password_block_proximity_requests=(value)
                @password_block_proximity_requests = value
            end
            ## 
            ## Gets the passwordBlockSimple property value. Block simple passwords.
            ## @return a boolean
            ## 
            def password_block_simple
                return @password_block_simple
            end
            ## 
            ## Sets the passwordBlockSimple property value. Block simple passwords.
            ## @param value Value to set for the passwordBlockSimple property.
            ## @return a void
            ## 
            def password_block_simple=(value)
                @password_block_simple = value
            end
            ## 
            ## Gets the passwordExpirationDays property value. Number of days before the password expires.
            ## @return a integer
            ## 
            def password_expiration_days
                return @password_expiration_days
            end
            ## 
            ## Sets the passwordExpirationDays property value. Number of days before the password expires.
            ## @param value Value to set for the passwordExpirationDays property.
            ## @return a void
            ## 
            def password_expiration_days=(value)
                @password_expiration_days = value
            end
            ## 
            ## Gets the passwordMaximumAttemptCount property value. The number of allowed failed attempts to enter the passcode at the device's lock screen. Valid values 2 to 11
            ## @return a integer
            ## 
            def password_maximum_attempt_count
                return @password_maximum_attempt_count
            end
            ## 
            ## Sets the passwordMaximumAttemptCount property value. The number of allowed failed attempts to enter the passcode at the device's lock screen. Valid values 2 to 11
            ## @param value Value to set for the passwordMaximumAttemptCount property.
            ## @return a void
            ## 
            def password_maximum_attempt_count=(value)
                @password_maximum_attempt_count = value
            end
            ## 
            ## Gets the passwordMinimumCharacterSetCount property value. Number of character sets a password must contain. Valid values 0 to 4
            ## @return a integer
            ## 
            def password_minimum_character_set_count
                return @password_minimum_character_set_count
            end
            ## 
            ## Sets the passwordMinimumCharacterSetCount property value. Number of character sets a password must contain. Valid values 0 to 4
            ## @param value Value to set for the passwordMinimumCharacterSetCount property.
            ## @return a void
            ## 
            def password_minimum_character_set_count=(value)
                @password_minimum_character_set_count = value
            end
            ## 
            ## Gets the passwordMinimumLength property value. Minimum length of passwords.
            ## @return a integer
            ## 
            def password_minimum_length
                return @password_minimum_length
            end
            ## 
            ## Sets the passwordMinimumLength property value. Minimum length of passwords.
            ## @param value Value to set for the passwordMinimumLength property.
            ## @return a void
            ## 
            def password_minimum_length=(value)
                @password_minimum_length = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity required before a password is required.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_lock
                return @password_minutes_of_inactivity_before_lock
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeLock property value. Minutes of inactivity required before a password is required.
            ## @param value Value to set for the passwordMinutesOfInactivityBeforeLock property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_lock=(value)
                @password_minutes_of_inactivity_before_lock = value
            end
            ## 
            ## Gets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity required before the screen times out.
            ## @return a integer
            ## 
            def password_minutes_of_inactivity_before_screen_timeout
                return @password_minutes_of_inactivity_before_screen_timeout
            end
            ## 
            ## Sets the passwordMinutesOfInactivityBeforeScreenTimeout property value. Minutes of inactivity required before the screen times out.
            ## @param value Value to set for the passwordMinutesOfInactivityBeforeScreenTimeout property.
            ## @return a void
            ## 
            def password_minutes_of_inactivity_before_screen_timeout=(value)
                @password_minutes_of_inactivity_before_screen_timeout = value
            end
            ## 
            ## Gets the passwordMinutesUntilFailedLoginReset property value. The number of minutes before the login is reset after the maximum number of unsuccessful login attempts is reached.
            ## @return a integer
            ## 
            def password_minutes_until_failed_login_reset
                return @password_minutes_until_failed_login_reset
            end
            ## 
            ## Sets the passwordMinutesUntilFailedLoginReset property value. The number of minutes before the login is reset after the maximum number of unsuccessful login attempts is reached.
            ## @param value Value to set for the passwordMinutesUntilFailedLoginReset property.
            ## @return a void
            ## 
            def password_minutes_until_failed_login_reset=(value)
                @password_minutes_until_failed_login_reset = value
            end
            ## 
            ## Gets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block.
            ## @return a integer
            ## 
            def password_previous_password_block_count
                return @password_previous_password_block_count
            end
            ## 
            ## Sets the passwordPreviousPasswordBlockCount property value. Number of previous passwords to block.
            ## @param value Value to set for the passwordPreviousPasswordBlockCount property.
            ## @return a void
            ## 
            def password_previous_password_block_count=(value)
                @password_previous_password_block_count = value
            end
            ## 
            ## Gets the passwordRequired property value. Whether or not to require a password.
            ## @return a boolean
            ## 
            def password_required
                return @password_required
            end
            ## 
            ## Sets the passwordRequired property value. Whether or not to require a password.
            ## @param value Value to set for the passwordRequired property.
            ## @return a void
            ## 
            def password_required=(value)
                @password_required = value
            end
            ## 
            ## Gets the passwordRequiredType property value. Possible values of required passwords.
            ## @return a required_password_type
            ## 
            def password_required_type
                return @password_required_type
            end
            ## 
            ## Sets the passwordRequiredType property value. Possible values of required passwords.
            ## @param value Value to set for the passwordRequiredType property.
            ## @return a void
            ## 
            def password_required_type=(value)
                @password_required_type = value
            end
            ## 
            ## Gets the privacyAccessControls property value. List of privacy preference policy controls. This collection can contain a maximum of 10000 elements.
            ## @return a mac_o_s_privacy_access_control_item
            ## 
            def privacy_access_controls
                return @privacy_access_controls
            end
            ## 
            ## Sets the privacyAccessControls property value. List of privacy preference policy controls. This collection can contain a maximum of 10000 elements.
            ## @param value Value to set for the privacyAccessControls property.
            ## @return a void
            ## 
            def privacy_access_controls=(value)
                @privacy_access_controls = value
            end
            ## 
            ## Gets the safariBlockAutofill property value. Indicates whether or not to block the user from using Auto fill in Safari.
            ## @return a boolean
            ## 
            def safari_block_autofill
                return @safari_block_autofill
            end
            ## 
            ## Sets the safariBlockAutofill property value. Indicates whether or not to block the user from using Auto fill in Safari.
            ## @param value Value to set for the safariBlockAutofill property.
            ## @return a void
            ## 
            def safari_block_autofill=(value)
                @safari_block_autofill = value
            end
            ## 
            ## Gets the screenCaptureBlocked property value. Indicates whether or not to block the user from taking Screenshots.
            ## @return a boolean
            ## 
            def screen_capture_blocked
                return @screen_capture_blocked
            end
            ## 
            ## Sets the screenCaptureBlocked property value. Indicates whether or not to block the user from taking Screenshots.
            ## @param value Value to set for the screenCaptureBlocked property.
            ## @return a void
            ## 
            def screen_capture_blocked=(value)
                @screen_capture_blocked = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("activationLockWhenSupervisedAllowed", @activation_lock_when_supervised_allowed)
                writer.write_boolean_value("addingGameCenterFriendsBlocked", @adding_game_center_friends_blocked)
                writer.write_boolean_value("airDropBlocked", @air_drop_blocked)
                writer.write_boolean_value("appleWatchBlockAutoUnlock", @apple_watch_block_auto_unlock)
                writer.write_boolean_value("cameraBlocked", @camera_blocked)
                writer.write_boolean_value("classroomAppBlockRemoteScreenObservation", @classroom_app_block_remote_screen_observation)
                writer.write_boolean_value("classroomAppForceUnpromptedScreenObservation", @classroom_app_force_unprompted_screen_observation)
                writer.write_boolean_value("classroomForceAutomaticallyJoinClasses", @classroom_force_automatically_join_classes)
                writer.write_boolean_value("classroomForceRequestPermissionToLeaveClasses", @classroom_force_request_permission_to_leave_classes)
                writer.write_boolean_value("classroomForceUnpromptedAppAndDeviceLock", @classroom_force_unprompted_app_and_device_lock)
                writer.write_enum_value("compliantAppListType", @compliant_app_list_type)
                writer.write_collection_of_object_values("compliantAppsList", @compliant_apps_list)
                writer.write_boolean_value("contentCachingBlocked", @content_caching_blocked)
                writer.write_boolean_value("definitionLookupBlocked", @definition_lookup_blocked)
                writer.write_collection_of_primitive_values("emailInDomainSuffixes", @email_in_domain_suffixes)
                writer.write_boolean_value("eraseContentAndSettingsBlocked", @erase_content_and_settings_blocked)
                writer.write_boolean_value("gameCenterBlocked", @game_center_blocked)
                writer.write_boolean_value("iCloudBlockActivityContinuation", @i_cloud_block_activity_continuation)
                writer.write_boolean_value("iCloudBlockAddressBook", @i_cloud_block_address_book)
                writer.write_boolean_value("iCloudBlockBookmarks", @i_cloud_block_bookmarks)
                writer.write_boolean_value("iCloudBlockCalendar", @i_cloud_block_calendar)
                writer.write_boolean_value("iCloudBlockDocumentSync", @i_cloud_block_document_sync)
                writer.write_boolean_value("iCloudBlockMail", @i_cloud_block_mail)
                writer.write_boolean_value("iCloudBlockNotes", @i_cloud_block_notes)
                writer.write_boolean_value("iCloudBlockPhotoLibrary", @i_cloud_block_photo_library)
                writer.write_boolean_value("iCloudBlockReminders", @i_cloud_block_reminders)
                writer.write_boolean_value("iCloudDesktopAndDocumentsBlocked", @i_cloud_desktop_and_documents_blocked)
                writer.write_boolean_value("iCloudPrivateRelayBlocked", @i_cloud_private_relay_blocked)
                writer.write_boolean_value("iTunesBlockFileSharing", @i_tunes_block_file_sharing)
                writer.write_boolean_value("iTunesBlockMusicService", @i_tunes_block_music_service)
                writer.write_boolean_value("keyboardBlockDictation", @keyboard_block_dictation)
                writer.write_boolean_value("keychainBlockCloudSync", @keychain_block_cloud_sync)
                writer.write_boolean_value("multiplayerGamingBlocked", @multiplayer_gaming_blocked)
                writer.write_boolean_value("passwordBlockAirDropSharing", @password_block_air_drop_sharing)
                writer.write_boolean_value("passwordBlockAutoFill", @password_block_auto_fill)
                writer.write_boolean_value("passwordBlockFingerprintUnlock", @password_block_fingerprint_unlock)
                writer.write_boolean_value("passwordBlockModification", @password_block_modification)
                writer.write_boolean_value("passwordBlockProximityRequests", @password_block_proximity_requests)
                writer.write_boolean_value("passwordBlockSimple", @password_block_simple)
                writer.write_number_value("passwordExpirationDays", @password_expiration_days)
                writer.write_number_value("passwordMaximumAttemptCount", @password_maximum_attempt_count)
                writer.write_number_value("passwordMinimumCharacterSetCount", @password_minimum_character_set_count)
                writer.write_number_value("passwordMinimumLength", @password_minimum_length)
                writer.write_number_value("passwordMinutesOfInactivityBeforeLock", @password_minutes_of_inactivity_before_lock)
                writer.write_number_value("passwordMinutesOfInactivityBeforeScreenTimeout", @password_minutes_of_inactivity_before_screen_timeout)
                writer.write_number_value("passwordMinutesUntilFailedLoginReset", @password_minutes_until_failed_login_reset)
                writer.write_number_value("passwordPreviousPasswordBlockCount", @password_previous_password_block_count)
                writer.write_boolean_value("passwordRequired", @password_required)
                writer.write_enum_value("passwordRequiredType", @password_required_type)
                writer.write_collection_of_object_values("privacyAccessControls", @privacy_access_controls)
                writer.write_boolean_value("safariBlockAutofill", @safari_block_autofill)
                writer.write_boolean_value("screenCaptureBlocked", @screen_capture_blocked)
                writer.write_number_value("softwareUpdateMajorOSDeferredInstallDelayInDays", @software_update_major_o_s_deferred_install_delay_in_days)
                writer.write_number_value("softwareUpdateMinorOSDeferredInstallDelayInDays", @software_update_minor_o_s_deferred_install_delay_in_days)
                writer.write_number_value("softwareUpdateNonOSDeferredInstallDelayInDays", @software_update_non_o_s_deferred_install_delay_in_days)
                writer.write_number_value("softwareUpdatesEnforcedDelayInDays", @software_updates_enforced_delay_in_days)
                writer.write_boolean_value("spotlightBlockInternetResults", @spotlight_block_internet_results)
                writer.write_number_value("touchIdTimeoutInHours", @touch_id_timeout_in_hours)
                writer.write_enum_value("updateDelayPolicy", @update_delay_policy)
                writer.write_boolean_value("wallpaperModificationBlocked", @wallpaper_modification_blocked)
            end
            ## 
            ## Gets the softwareUpdateMajorOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of major OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @return a integer
            ## 
            def software_update_major_o_s_deferred_install_delay_in_days
                return @software_update_major_o_s_deferred_install_delay_in_days
            end
            ## 
            ## Sets the softwareUpdateMajorOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of major OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @param value Value to set for the softwareUpdateMajorOSDeferredInstallDelayInDays property.
            ## @return a void
            ## 
            def software_update_major_o_s_deferred_install_delay_in_days=(value)
                @software_update_major_o_s_deferred_install_delay_in_days = value
            end
            ## 
            ## Gets the softwareUpdateMinorOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of minor OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @return a integer
            ## 
            def software_update_minor_o_s_deferred_install_delay_in_days
                return @software_update_minor_o_s_deferred_install_delay_in_days
            end
            ## 
            ## Sets the softwareUpdateMinorOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of minor OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @param value Value to set for the softwareUpdateMinorOSDeferredInstallDelayInDays property.
            ## @return a void
            ## 
            def software_update_minor_o_s_deferred_install_delay_in_days=(value)
                @software_update_minor_o_s_deferred_install_delay_in_days = value
            end
            ## 
            ## Gets the softwareUpdateNonOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of non-OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @return a integer
            ## 
            def software_update_non_o_s_deferred_install_delay_in_days
                return @software_update_non_o_s_deferred_install_delay_in_days
            end
            ## 
            ## Sets the softwareUpdateNonOSDeferredInstallDelayInDays property value. Specify the number of days (1-90) to delay visibility of non-OS software updates. Available for devices running macOS versions 11.3 and later. Valid values 0 to 90
            ## @param value Value to set for the softwareUpdateNonOSDeferredInstallDelayInDays property.
            ## @return a void
            ## 
            def software_update_non_o_s_deferred_install_delay_in_days=(value)
                @software_update_non_o_s_deferred_install_delay_in_days = value
            end
            ## 
            ## Gets the softwareUpdatesEnforcedDelayInDays property value. Sets how many days a software update will be delyed for a supervised device. Valid values 0 to 90
            ## @return a integer
            ## 
            def software_updates_enforced_delay_in_days
                return @software_updates_enforced_delay_in_days
            end
            ## 
            ## Sets the softwareUpdatesEnforcedDelayInDays property value. Sets how many days a software update will be delyed for a supervised device. Valid values 0 to 90
            ## @param value Value to set for the softwareUpdatesEnforcedDelayInDays property.
            ## @return a void
            ## 
            def software_updates_enforced_delay_in_days=(value)
                @software_updates_enforced_delay_in_days = value
            end
            ## 
            ## Gets the spotlightBlockInternetResults property value. Indicates whether or not to block Spotlight from returning any results from an Internet search.
            ## @return a boolean
            ## 
            def spotlight_block_internet_results
                return @spotlight_block_internet_results
            end
            ## 
            ## Sets the spotlightBlockInternetResults property value. Indicates whether or not to block Spotlight from returning any results from an Internet search.
            ## @param value Value to set for the spotlightBlockInternetResults property.
            ## @return a void
            ## 
            def spotlight_block_internet_results=(value)
                @spotlight_block_internet_results = value
            end
            ## 
            ## Gets the touchIdTimeoutInHours property value. Maximum hours after which the user must enter their password to unlock the device instead of using Touch ID. Available for devices running macOS 12 and later. Valid values 0 to 2147483647
            ## @return a integer
            ## 
            def touch_id_timeout_in_hours
                return @touch_id_timeout_in_hours
            end
            ## 
            ## Sets the touchIdTimeoutInHours property value. Maximum hours after which the user must enter their password to unlock the device instead of using Touch ID. Available for devices running macOS 12 and later. Valid values 0 to 2147483647
            ## @param value Value to set for the touchIdTimeoutInHours property.
            ## @return a void
            ## 
            def touch_id_timeout_in_hours=(value)
                @touch_id_timeout_in_hours = value
            end
            ## 
            ## Gets the updateDelayPolicy property value. Determines whether to delay OS and/or app updates for macOS. Possible values are: none, delayOSUpdateVisibility, delayAppUpdateVisibility, unknownFutureValue, delayMajorOsUpdateVisibility.
            ## @return a mac_o_s_general_device_configuration_update_delay_policy
            ## 
            def update_delay_policy
                return @update_delay_policy
            end
            ## 
            ## Sets the updateDelayPolicy property value. Determines whether to delay OS and/or app updates for macOS. Possible values are: none, delayOSUpdateVisibility, delayAppUpdateVisibility, unknownFutureValue, delayMajorOsUpdateVisibility.
            ## @param value Value to set for the updateDelayPolicy property.
            ## @return a void
            ## 
            def update_delay_policy=(value)
                @update_delay_policy = value
            end
            ## 
            ## Gets the wallpaperModificationBlocked property value. TRUE prevents the wallpaper from being changed. FALSE allows the wallpaper to be changed. Available for devices running macOS versions 10.13 and later.
            ## @return a boolean
            ## 
            def wallpaper_modification_blocked
                return @wallpaper_modification_blocked
            end
            ## 
            ## Sets the wallpaperModificationBlocked property value. TRUE prevents the wallpaper from being changed. FALSE allows the wallpaper to be changed. Available for devices running macOS versions 10.13 and later.
            ## @param value Value to set for the wallpaperModificationBlocked property.
            ## @return a void
            ## 
            def wallpaper_modification_blocked=(value)
                @wallpaper_modification_blocked = value
            end
        end
    end
end
