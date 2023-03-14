require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Represents per-process privacy preferences.
        class MacOSPrivacyAccessControlItem
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible values of a property
            @accessibility
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Possible values of a property
            @address_book
            ## 
            # Allow or deny the app or process to send a restricted Apple event to another app or process. You will need to know the identifier, identifier type, and code requirement of the receiving app or process. This collection can contain a maximum of 500 elements.
            @apple_events_allowed_receivers
            ## 
            # Block access to camera app.
            @block_camera
            ## 
            # Block the app or process from listening to events from input devices such as mouse, keyboard, and trackpad.Requires macOS 10.15 or later.
            @block_listen_event
            ## 
            # Block access to microphone.
            @block_microphone
            ## 
            # Block app from capturing contents of system display. Requires macOS 10.15 or later.
            @block_screen_capture
            ## 
            # Possible values of a property
            @calendar
            ## 
            # Enter the code requirement, which can be obtained with the command 'codesign –display -r –' in the Terminal app. Include everything after '=>'.
            @code_requirement
            ## 
            # The display name of the app, process, or executable.
            @display_name
            ## 
            # Possible values of a property
            @file_provider_presence
            ## 
            # The bundle ID or path of the app, process, or executable.
            @identifier
            ## 
            # Process identifier types for MacOS Privacy Preferences
            @identifier_type
            ## 
            # Possible values of a property
            @media_library
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Possible values of a property
            @photos
            ## 
            # Possible values of a property
            @post_event
            ## 
            # Possible values of a property
            @reminders
            ## 
            # Possible values of a property
            @speech_recognition
            ## 
            # Statically validates the code requirement. Use this setting if the process invalidates its dynamic code signature.
            @static_code_validation
            ## 
            # Possible values of a property
            @system_policy_all_files
            ## 
            # Possible values of a property
            @system_policy_desktop_folder
            ## 
            # Possible values of a property
            @system_policy_documents_folder
            ## 
            # Possible values of a property
            @system_policy_downloads_folder
            ## 
            # Possible values of a property
            @system_policy_network_volumes
            ## 
            # Possible values of a property
            @system_policy_removable_volumes
            ## 
            # Possible values of a property
            @system_policy_system_admin_files
            ## 
            ## Gets the accessibility property value. Possible values of a property
            ## @return a enablement
            ## 
            def accessibility
                return @accessibility
            end
            ## 
            ## Sets the accessibility property value. Possible values of a property
            ## @param value Value to set for the accessibility property.
            ## @return a void
            ## 
            def accessibility=(value)
                @accessibility = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the addressBook property value. Possible values of a property
            ## @return a enablement
            ## 
            def address_book
                return @address_book
            end
            ## 
            ## Sets the addressBook property value. Possible values of a property
            ## @param value Value to set for the address_book property.
            ## @return a void
            ## 
            def address_book=(value)
                @address_book = value
            end
            ## 
            ## Gets the appleEventsAllowedReceivers property value. Allow or deny the app or process to send a restricted Apple event to another app or process. You will need to know the identifier, identifier type, and code requirement of the receiving app or process. This collection can contain a maximum of 500 elements.
            ## @return a mac_o_s_apple_event_receiver
            ## 
            def apple_events_allowed_receivers
                return @apple_events_allowed_receivers
            end
            ## 
            ## Sets the appleEventsAllowedReceivers property value. Allow or deny the app or process to send a restricted Apple event to another app or process. You will need to know the identifier, identifier type, and code requirement of the receiving app or process. This collection can contain a maximum of 500 elements.
            ## @param value Value to set for the apple_events_allowed_receivers property.
            ## @return a void
            ## 
            def apple_events_allowed_receivers=(value)
                @apple_events_allowed_receivers = value
            end
            ## 
            ## Gets the blockCamera property value. Block access to camera app.
            ## @return a boolean
            ## 
            def block_camera
                return @block_camera
            end
            ## 
            ## Sets the blockCamera property value. Block access to camera app.
            ## @param value Value to set for the block_camera property.
            ## @return a void
            ## 
            def block_camera=(value)
                @block_camera = value
            end
            ## 
            ## Gets the blockListenEvent property value. Block the app or process from listening to events from input devices such as mouse, keyboard, and trackpad.Requires macOS 10.15 or later.
            ## @return a boolean
            ## 
            def block_listen_event
                return @block_listen_event
            end
            ## 
            ## Sets the blockListenEvent property value. Block the app or process from listening to events from input devices such as mouse, keyboard, and trackpad.Requires macOS 10.15 or later.
            ## @param value Value to set for the block_listen_event property.
            ## @return a void
            ## 
            def block_listen_event=(value)
                @block_listen_event = value
            end
            ## 
            ## Gets the blockMicrophone property value. Block access to microphone.
            ## @return a boolean
            ## 
            def block_microphone
                return @block_microphone
            end
            ## 
            ## Sets the blockMicrophone property value. Block access to microphone.
            ## @param value Value to set for the block_microphone property.
            ## @return a void
            ## 
            def block_microphone=(value)
                @block_microphone = value
            end
            ## 
            ## Gets the blockScreenCapture property value. Block app from capturing contents of system display. Requires macOS 10.15 or later.
            ## @return a boolean
            ## 
            def block_screen_capture
                return @block_screen_capture
            end
            ## 
            ## Sets the blockScreenCapture property value. Block app from capturing contents of system display. Requires macOS 10.15 or later.
            ## @param value Value to set for the block_screen_capture property.
            ## @return a void
            ## 
            def block_screen_capture=(value)
                @block_screen_capture = value
            end
            ## 
            ## Gets the calendar property value. Possible values of a property
            ## @return a enablement
            ## 
            def calendar
                return @calendar
            end
            ## 
            ## Sets the calendar property value. Possible values of a property
            ## @param value Value to set for the calendar property.
            ## @return a void
            ## 
            def calendar=(value)
                @calendar = value
            end
            ## 
            ## Gets the codeRequirement property value. Enter the code requirement, which can be obtained with the command 'codesign –display -r –' in the Terminal app. Include everything after '=>'.
            ## @return a string
            ## 
            def code_requirement
                return @code_requirement
            end
            ## 
            ## Sets the codeRequirement property value. Enter the code requirement, which can be obtained with the command 'codesign –display -r –' in the Terminal app. Include everything after '=>'.
            ## @param value Value to set for the code_requirement property.
            ## @return a void
            ## 
            def code_requirement=(value)
                @code_requirement = value
            end
            ## 
            ## Instantiates a new macOSPrivacyAccessControlItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a mac_o_s_privacy_access_control_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MacOSPrivacyAccessControlItem.new
            end
            ## 
            ## Gets the displayName property value. The display name of the app, process, or executable.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the app, process, or executable.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the fileProviderPresence property value. Possible values of a property
            ## @return a enablement
            ## 
            def file_provider_presence
                return @file_provider_presence
            end
            ## 
            ## Sets the fileProviderPresence property value. Possible values of a property
            ## @param value Value to set for the file_provider_presence property.
            ## @return a void
            ## 
            def file_provider_presence=(value)
                @file_provider_presence = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "accessibility" => lambda {|n| @accessibility = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "addressBook" => lambda {|n| @address_book = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "appleEventsAllowedReceivers" => lambda {|n| @apple_events_allowed_receivers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MacOSAppleEventReceiver.create_from_discriminator_value(pn) }) },
                    "blockCamera" => lambda {|n| @block_camera = n.get_boolean_value() },
                    "blockListenEvent" => lambda {|n| @block_listen_event = n.get_boolean_value() },
                    "blockMicrophone" => lambda {|n| @block_microphone = n.get_boolean_value() },
                    "blockScreenCapture" => lambda {|n| @block_screen_capture = n.get_boolean_value() },
                    "calendar" => lambda {|n| @calendar = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "codeRequirement" => lambda {|n| @code_requirement = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "fileProviderPresence" => lambda {|n| @file_provider_presence = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "identifier" => lambda {|n| @identifier = n.get_string_value() },
                    "identifierType" => lambda {|n| @identifier_type = n.get_enum_value(MicrosoftGraphBeta::Models::MacOSProcessIdentifierType) },
                    "mediaLibrary" => lambda {|n| @media_library = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "photos" => lambda {|n| @photos = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "postEvent" => lambda {|n| @post_event = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "reminders" => lambda {|n| @reminders = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "speechRecognition" => lambda {|n| @speech_recognition = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "staticCodeValidation" => lambda {|n| @static_code_validation = n.get_boolean_value() },
                    "systemPolicyAllFiles" => lambda {|n| @system_policy_all_files = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicyDesktopFolder" => lambda {|n| @system_policy_desktop_folder = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicyDocumentsFolder" => lambda {|n| @system_policy_documents_folder = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicyDownloadsFolder" => lambda {|n| @system_policy_downloads_folder = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicyNetworkVolumes" => lambda {|n| @system_policy_network_volumes = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicyRemovableVolumes" => lambda {|n| @system_policy_removable_volumes = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                    "systemPolicySystemAdminFiles" => lambda {|n| @system_policy_system_admin_files = n.get_enum_value(MicrosoftGraphBeta::Models::Enablement) },
                }
            end
            ## 
            ## Gets the identifier property value. The bundle ID or path of the app, process, or executable.
            ## @return a string
            ## 
            def identifier
                return @identifier
            end
            ## 
            ## Sets the identifier property value. The bundle ID or path of the app, process, or executable.
            ## @param value Value to set for the identifier property.
            ## @return a void
            ## 
            def identifier=(value)
                @identifier = value
            end
            ## 
            ## Gets the identifierType property value. Process identifier types for MacOS Privacy Preferences
            ## @return a mac_o_s_process_identifier_type
            ## 
            def identifier_type
                return @identifier_type
            end
            ## 
            ## Sets the identifierType property value. Process identifier types for MacOS Privacy Preferences
            ## @param value Value to set for the identifier_type property.
            ## @return a void
            ## 
            def identifier_type=(value)
                @identifier_type = value
            end
            ## 
            ## Gets the mediaLibrary property value. Possible values of a property
            ## @return a enablement
            ## 
            def media_library
                return @media_library
            end
            ## 
            ## Sets the mediaLibrary property value. Possible values of a property
            ## @param value Value to set for the media_library property.
            ## @return a void
            ## 
            def media_library=(value)
                @media_library = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the photos property value. Possible values of a property
            ## @return a enablement
            ## 
            def photos
                return @photos
            end
            ## 
            ## Sets the photos property value. Possible values of a property
            ## @param value Value to set for the photos property.
            ## @return a void
            ## 
            def photos=(value)
                @photos = value
            end
            ## 
            ## Gets the postEvent property value. Possible values of a property
            ## @return a enablement
            ## 
            def post_event
                return @post_event
            end
            ## 
            ## Sets the postEvent property value. Possible values of a property
            ## @param value Value to set for the post_event property.
            ## @return a void
            ## 
            def post_event=(value)
                @post_event = value
            end
            ## 
            ## Gets the reminders property value. Possible values of a property
            ## @return a enablement
            ## 
            def reminders
                return @reminders
            end
            ## 
            ## Sets the reminders property value. Possible values of a property
            ## @param value Value to set for the reminders property.
            ## @return a void
            ## 
            def reminders=(value)
                @reminders = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("accessibility", @accessibility)
                writer.write_enum_value("addressBook", @address_book)
                writer.write_collection_of_object_values("appleEventsAllowedReceivers", @apple_events_allowed_receivers)
                writer.write_boolean_value("blockCamera", @block_camera)
                writer.write_boolean_value("blockListenEvent", @block_listen_event)
                writer.write_boolean_value("blockMicrophone", @block_microphone)
                writer.write_boolean_value("blockScreenCapture", @block_screen_capture)
                writer.write_enum_value("calendar", @calendar)
                writer.write_string_value("codeRequirement", @code_requirement)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("fileProviderPresence", @file_provider_presence)
                writer.write_string_value("identifier", @identifier)
                writer.write_enum_value("identifierType", @identifier_type)
                writer.write_enum_value("mediaLibrary", @media_library)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("photos", @photos)
                writer.write_enum_value("postEvent", @post_event)
                writer.write_enum_value("reminders", @reminders)
                writer.write_enum_value("speechRecognition", @speech_recognition)
                writer.write_boolean_value("staticCodeValidation", @static_code_validation)
                writer.write_enum_value("systemPolicyAllFiles", @system_policy_all_files)
                writer.write_enum_value("systemPolicyDesktopFolder", @system_policy_desktop_folder)
                writer.write_enum_value("systemPolicyDocumentsFolder", @system_policy_documents_folder)
                writer.write_enum_value("systemPolicyDownloadsFolder", @system_policy_downloads_folder)
                writer.write_enum_value("systemPolicyNetworkVolumes", @system_policy_network_volumes)
                writer.write_enum_value("systemPolicyRemovableVolumes", @system_policy_removable_volumes)
                writer.write_enum_value("systemPolicySystemAdminFiles", @system_policy_system_admin_files)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the speechRecognition property value. Possible values of a property
            ## @return a enablement
            ## 
            def speech_recognition
                return @speech_recognition
            end
            ## 
            ## Sets the speechRecognition property value. Possible values of a property
            ## @param value Value to set for the speech_recognition property.
            ## @return a void
            ## 
            def speech_recognition=(value)
                @speech_recognition = value
            end
            ## 
            ## Gets the staticCodeValidation property value. Statically validates the code requirement. Use this setting if the process invalidates its dynamic code signature.
            ## @return a boolean
            ## 
            def static_code_validation
                return @static_code_validation
            end
            ## 
            ## Sets the staticCodeValidation property value. Statically validates the code requirement. Use this setting if the process invalidates its dynamic code signature.
            ## @param value Value to set for the static_code_validation property.
            ## @return a void
            ## 
            def static_code_validation=(value)
                @static_code_validation = value
            end
            ## 
            ## Gets the systemPolicyAllFiles property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_all_files
                return @system_policy_all_files
            end
            ## 
            ## Sets the systemPolicyAllFiles property value. Possible values of a property
            ## @param value Value to set for the system_policy_all_files property.
            ## @return a void
            ## 
            def system_policy_all_files=(value)
                @system_policy_all_files = value
            end
            ## 
            ## Gets the systemPolicyDesktopFolder property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_desktop_folder
                return @system_policy_desktop_folder
            end
            ## 
            ## Sets the systemPolicyDesktopFolder property value. Possible values of a property
            ## @param value Value to set for the system_policy_desktop_folder property.
            ## @return a void
            ## 
            def system_policy_desktop_folder=(value)
                @system_policy_desktop_folder = value
            end
            ## 
            ## Gets the systemPolicyDocumentsFolder property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_documents_folder
                return @system_policy_documents_folder
            end
            ## 
            ## Sets the systemPolicyDocumentsFolder property value. Possible values of a property
            ## @param value Value to set for the system_policy_documents_folder property.
            ## @return a void
            ## 
            def system_policy_documents_folder=(value)
                @system_policy_documents_folder = value
            end
            ## 
            ## Gets the systemPolicyDownloadsFolder property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_downloads_folder
                return @system_policy_downloads_folder
            end
            ## 
            ## Sets the systemPolicyDownloadsFolder property value. Possible values of a property
            ## @param value Value to set for the system_policy_downloads_folder property.
            ## @return a void
            ## 
            def system_policy_downloads_folder=(value)
                @system_policy_downloads_folder = value
            end
            ## 
            ## Gets the systemPolicyNetworkVolumes property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_network_volumes
                return @system_policy_network_volumes
            end
            ## 
            ## Sets the systemPolicyNetworkVolumes property value. Possible values of a property
            ## @param value Value to set for the system_policy_network_volumes property.
            ## @return a void
            ## 
            def system_policy_network_volumes=(value)
                @system_policy_network_volumes = value
            end
            ## 
            ## Gets the systemPolicyRemovableVolumes property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_removable_volumes
                return @system_policy_removable_volumes
            end
            ## 
            ## Sets the systemPolicyRemovableVolumes property value. Possible values of a property
            ## @param value Value to set for the system_policy_removable_volumes property.
            ## @return a void
            ## 
            def system_policy_removable_volumes=(value)
                @system_policy_removable_volumes = value
            end
            ## 
            ## Gets the systemPolicySystemAdminFiles property value. Possible values of a property
            ## @return a enablement
            ## 
            def system_policy_system_admin_files
                return @system_policy_system_admin_files
            end
            ## 
            ## Sets the systemPolicySystemAdminFiles property value. Possible values of a property
            ## @param value Value to set for the system_policy_system_admin_files property.
            ## @return a void
            ## 
            def system_policy_system_admin_files=(value)
                @system_policy_system_admin_files = value
            end
        end
    end
end
