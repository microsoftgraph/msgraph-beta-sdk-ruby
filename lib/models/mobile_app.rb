require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # An abstract class containing the base properties for Intune mobile apps. Note: Listing mobile apps with `$expand=assignments` has been deprecated. Instead get the list of apps without the `$expand` query on `assignments`. Then, perform the expansion on individual applications.
        class MobileApp < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of group assignments for this mobile app.
            @assignments
            ## 
            # The list of categories for this app.
            @categories
            ## 
            # The date and time the app was created.
            @created_date_time
            ## 
            # The total number of dependencies the child app has.
            @dependent_app_count
            ## 
            # The description of the app.
            @description
            ## 
            # The developer of the app.
            @developer
            ## 
            # The admin provided or imported title of the app.
            @display_name
            ## 
            # The more information Url.
            @information_url
            ## 
            # The value indicating whether the app is assigned to at least one group.
            @is_assigned
            ## 
            # The value indicating whether the app is marked as featured by the admin.
            @is_featured
            ## 
            # The large icon, to be displayed in the app details and used for upload of the icon.
            @large_icon
            ## 
            # The date and time the app was last modified.
            @last_modified_date_time
            ## 
            # Notes for the app.
            @notes
            ## 
            # The owner of the app.
            @owner
            ## 
            # The privacy statement Url.
            @privacy_information_url
            ## 
            # The publisher of the app.
            @publisher
            ## 
            # Indicates the publishing state of an app.
            @publishing_state
            ## 
            # List of relationships for this mobile app.
            @relationships
            ## 
            # List of scope tag ids for this mobile app.
            @role_scope_tag_ids
            ## 
            # The total number of apps this app is directly or indirectly superseded by.
            @superseded_app_count
            ## 
            # The total number of apps this app directly or indirectly supersedes.
            @superseding_app_count
            ## 
            # The upload state.
            @upload_state
            ## 
            ## Gets the assignments property value. The list of group assignments for this mobile app.
            ## @return a mobile_app_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of group assignments for this mobile app.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the categories property value. The list of categories for this app.
            ## @return a mobile_app_category
            ## 
            def categories
                return @categories
            end
            ## 
            ## Sets the categories property value. The list of categories for this app.
            ## @param value Value to set for the categories property.
            ## @return a void
            ## 
            def categories=(value)
                @categories = value
            end
            ## 
            ## Instantiates a new mobileApp and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time the app was created.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time the app was created.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mobile_app
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.androidForWorkApp"
                            return AndroidForWorkApp.new
                        when "#microsoft.graph.androidLobApp"
                            return AndroidLobApp.new
                        when "#microsoft.graph.androidManagedStoreApp"
                            return AndroidManagedStoreApp.new
                        when "#microsoft.graph.androidManagedStoreWebApp"
                            return AndroidManagedStoreWebApp.new
                        when "#microsoft.graph.androidStoreApp"
                            return AndroidStoreApp.new
                        when "#microsoft.graph.iosiPadOSWebClip"
                            return IosiPadOSWebClip.new
                        when "#microsoft.graph.iosLobApp"
                            return IosLobApp.new
                        when "#microsoft.graph.iosStoreApp"
                            return IosStoreApp.new
                        when "#microsoft.graph.iosVppApp"
                            return IosVppApp.new
                        when "#microsoft.graph.macOSDmgApp"
                            return MacOSDmgApp.new
                        when "#microsoft.graph.macOSLobApp"
                            return MacOSLobApp.new
                        when "#microsoft.graph.macOSMicrosoftDefenderApp"
                            return MacOSMicrosoftDefenderApp.new
                        when "#microsoft.graph.macOSMicrosoftEdgeApp"
                            return MacOSMicrosoftEdgeApp.new
                        when "#microsoft.graph.macOSOfficeSuiteApp"
                            return MacOSOfficeSuiteApp.new
                        when "#microsoft.graph.macOSPkgApp"
                            return MacOSPkgApp.new
                        when "#microsoft.graph.macOsVppApp"
                            return MacOsVppApp.new
                        when "#microsoft.graph.macOSWebClip"
                            return MacOSWebClip.new
                        when "#microsoft.graph.managedAndroidLobApp"
                            return ManagedAndroidLobApp.new
                        when "#microsoft.graph.managedAndroidStoreApp"
                            return ManagedAndroidStoreApp.new
                        when "#microsoft.graph.managedApp"
                            return ManagedApp.new
                        when "#microsoft.graph.managedIOSLobApp"
                            return ManagedIOSLobApp.new
                        when "#microsoft.graph.managedIOSStoreApp"
                            return ManagedIOSStoreApp.new
                        when "#microsoft.graph.managedMobileLobApp"
                            return ManagedMobileLobApp.new
                        when "#microsoft.graph.microsoftStoreForBusinessApp"
                            return MicrosoftStoreForBusinessApp.new
                        when "#microsoft.graph.mobileLobApp"
                            return MobileLobApp.new
                        when "#microsoft.graph.officeSuiteApp"
                            return OfficeSuiteApp.new
                        when "#microsoft.graph.webApp"
                            return WebApp.new
                        when "#microsoft.graph.win32LobApp"
                            return Win32LobApp.new
                        when "#microsoft.graph.windowsAppX"
                            return WindowsAppX.new
                        when "#microsoft.graph.windowsMicrosoftEdgeApp"
                            return WindowsMicrosoftEdgeApp.new
                        when "#microsoft.graph.windowsMobileMSI"
                            return WindowsMobileMSI.new
                        when "#microsoft.graph.windowsPhone81AppX"
                            return WindowsPhone81AppX.new
                        when "#microsoft.graph.windowsPhone81AppXBundle"
                            return WindowsPhone81AppXBundle.new
                        when "#microsoft.graph.windowsPhone81StoreApp"
                            return WindowsPhone81StoreApp.new
                        when "#microsoft.graph.windowsPhoneXAP"
                            return WindowsPhoneXAP.new
                        when "#microsoft.graph.windowsStoreApp"
                            return WindowsStoreApp.new
                        when "#microsoft.graph.windowsUniversalAppX"
                            return WindowsUniversalAppX.new
                        when "#microsoft.graph.windowsWebApp"
                            return WindowsWebApp.new
                        when "#microsoft.graph.winGetApp"
                            return WinGetApp.new
                    end
                end
                return MobileApp.new
            end
            ## 
            ## Gets the dependentAppCount property value. The total number of dependencies the child app has.
            ## @return a integer
            ## 
            def dependent_app_count
                return @dependent_app_count
            end
            ## 
            ## Sets the dependentAppCount property value. The total number of dependencies the child app has.
            ## @param value Value to set for the dependentAppCount property.
            ## @return a void
            ## 
            def dependent_app_count=(value)
                @dependent_app_count = value
            end
            ## 
            ## Gets the description property value. The description of the app.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description of the app.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the developer property value. The developer of the app.
            ## @return a string
            ## 
            def developer
                return @developer
            end
            ## 
            ## Sets the developer property value. The developer of the app.
            ## @param value Value to set for the developer property.
            ## @return a void
            ## 
            def developer=(value)
                @developer = value
            end
            ## 
            ## Gets the displayName property value. The admin provided or imported title of the app.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The admin provided or imported title of the app.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppAssignment.create_from_discriminator_value(pn) }) },
                    "categories" => lambda {|n| @categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppCategory.create_from_discriminator_value(pn) }) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "dependentAppCount" => lambda {|n| @dependent_app_count = n.get_number_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "developer" => lambda {|n| @developer = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "informationUrl" => lambda {|n| @information_url = n.get_string_value() },
                    "isAssigned" => lambda {|n| @is_assigned = n.get_boolean_value() },
                    "isFeatured" => lambda {|n| @is_featured = n.get_boolean_value() },
                    "largeIcon" => lambda {|n| @large_icon = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MimeContent.create_from_discriminator_value(pn) }) },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "notes" => lambda {|n| @notes = n.get_string_value() },
                    "owner" => lambda {|n| @owner = n.get_string_value() },
                    "privacyInformationUrl" => lambda {|n| @privacy_information_url = n.get_string_value() },
                    "publisher" => lambda {|n| @publisher = n.get_string_value() },
                    "publishingState" => lambda {|n| @publishing_state = n.get_enum_value(MicrosoftGraphBeta::Models::MobileAppPublishingState) },
                    "relationships" => lambda {|n| @relationships = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppRelationship.create_from_discriminator_value(pn) }) },
                    "roleScopeTagIds" => lambda {|n| @role_scope_tag_ids = n.get_collection_of_primitive_values(String) },
                    "supersededAppCount" => lambda {|n| @superseded_app_count = n.get_number_value() },
                    "supersedingAppCount" => lambda {|n| @superseding_app_count = n.get_number_value() },
                    "uploadState" => lambda {|n| @upload_state = n.get_number_value() },
                })
            end
            ## 
            ## Gets the informationUrl property value. The more information Url.
            ## @return a string
            ## 
            def information_url
                return @information_url
            end
            ## 
            ## Sets the informationUrl property value. The more information Url.
            ## @param value Value to set for the informationUrl property.
            ## @return a void
            ## 
            def information_url=(value)
                @information_url = value
            end
            ## 
            ## Gets the isAssigned property value. The value indicating whether the app is assigned to at least one group.
            ## @return a boolean
            ## 
            def is_assigned
                return @is_assigned
            end
            ## 
            ## Sets the isAssigned property value. The value indicating whether the app is assigned to at least one group.
            ## @param value Value to set for the isAssigned property.
            ## @return a void
            ## 
            def is_assigned=(value)
                @is_assigned = value
            end
            ## 
            ## Gets the isFeatured property value. The value indicating whether the app is marked as featured by the admin.
            ## @return a boolean
            ## 
            def is_featured
                return @is_featured
            end
            ## 
            ## Sets the isFeatured property value. The value indicating whether the app is marked as featured by the admin.
            ## @param value Value to set for the isFeatured property.
            ## @return a void
            ## 
            def is_featured=(value)
                @is_featured = value
            end
            ## 
            ## Gets the largeIcon property value. The large icon, to be displayed in the app details and used for upload of the icon.
            ## @return a mime_content
            ## 
            def large_icon
                return @large_icon
            end
            ## 
            ## Sets the largeIcon property value. The large icon, to be displayed in the app details and used for upload of the icon.
            ## @param value Value to set for the largeIcon property.
            ## @return a void
            ## 
            def large_icon=(value)
                @large_icon = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the app was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the app was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the notes property value. Notes for the app.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Notes for the app.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the owner property value. The owner of the app.
            ## @return a string
            ## 
            def owner
                return @owner
            end
            ## 
            ## Sets the owner property value. The owner of the app.
            ## @param value Value to set for the owner property.
            ## @return a void
            ## 
            def owner=(value)
                @owner = value
            end
            ## 
            ## Gets the privacyInformationUrl property value. The privacy statement Url.
            ## @return a string
            ## 
            def privacy_information_url
                return @privacy_information_url
            end
            ## 
            ## Sets the privacyInformationUrl property value. The privacy statement Url.
            ## @param value Value to set for the privacyInformationUrl property.
            ## @return a void
            ## 
            def privacy_information_url=(value)
                @privacy_information_url = value
            end
            ## 
            ## Gets the publisher property value. The publisher of the app.
            ## @return a string
            ## 
            def publisher
                return @publisher
            end
            ## 
            ## Sets the publisher property value. The publisher of the app.
            ## @param value Value to set for the publisher property.
            ## @return a void
            ## 
            def publisher=(value)
                @publisher = value
            end
            ## 
            ## Gets the publishingState property value. Indicates the publishing state of an app.
            ## @return a mobile_app_publishing_state
            ## 
            def publishing_state
                return @publishing_state
            end
            ## 
            ## Sets the publishingState property value. Indicates the publishing state of an app.
            ## @param value Value to set for the publishingState property.
            ## @return a void
            ## 
            def publishing_state=(value)
                @publishing_state = value
            end
            ## 
            ## Gets the relationships property value. List of relationships for this mobile app.
            ## @return a mobile_app_relationship
            ## 
            def relationships
                return @relationships
            end
            ## 
            ## Sets the relationships property value. List of relationships for this mobile app.
            ## @param value Value to set for the relationships property.
            ## @return a void
            ## 
            def relationships=(value)
                @relationships = value
            end
            ## 
            ## Gets the roleScopeTagIds property value. List of scope tag ids for this mobile app.
            ## @return a string
            ## 
            def role_scope_tag_ids
                return @role_scope_tag_ids
            end
            ## 
            ## Sets the roleScopeTagIds property value. List of scope tag ids for this mobile app.
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
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_collection_of_object_values("categories", @categories)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_number_value("dependentAppCount", @dependent_app_count)
                writer.write_string_value("description", @description)
                writer.write_string_value("developer", @developer)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("informationUrl", @information_url)
                writer.write_boolean_value("isAssigned", @is_assigned)
                writer.write_boolean_value("isFeatured", @is_featured)
                writer.write_object_value("largeIcon", @large_icon)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("notes", @notes)
                writer.write_string_value("owner", @owner)
                writer.write_string_value("privacyInformationUrl", @privacy_information_url)
                writer.write_string_value("publisher", @publisher)
                writer.write_enum_value("publishingState", @publishing_state)
                writer.write_collection_of_object_values("relationships", @relationships)
                writer.write_collection_of_primitive_values("roleScopeTagIds", @role_scope_tag_ids)
                writer.write_number_value("supersededAppCount", @superseded_app_count)
                writer.write_number_value("supersedingAppCount", @superseding_app_count)
                writer.write_number_value("uploadState", @upload_state)
            end
            ## 
            ## Gets the supersededAppCount property value. The total number of apps this app is directly or indirectly superseded by.
            ## @return a integer
            ## 
            def superseded_app_count
                return @superseded_app_count
            end
            ## 
            ## Sets the supersededAppCount property value. The total number of apps this app is directly or indirectly superseded by.
            ## @param value Value to set for the supersededAppCount property.
            ## @return a void
            ## 
            def superseded_app_count=(value)
                @superseded_app_count = value
            end
            ## 
            ## Gets the supersedingAppCount property value. The total number of apps this app directly or indirectly supersedes.
            ## @return a integer
            ## 
            def superseding_app_count
                return @superseding_app_count
            end
            ## 
            ## Sets the supersedingAppCount property value. The total number of apps this app directly or indirectly supersedes.
            ## @param value Value to set for the supersedingAppCount property.
            ## @return a void
            ## 
            def superseding_app_count=(value)
                @superseding_app_count = value
            end
            ## 
            ## Gets the uploadState property value. The upload state.
            ## @return a integer
            ## 
            def upload_state
                return @upload_state
            end
            ## 
            ## Sets the uploadState property value. The upload state.
            ## @param value Value to set for the uploadState property.
            ## @return a void
            ## 
            def upload_state=(value)
                @upload_state = value
            end
        end
    end
end
