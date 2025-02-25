require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MailboxFolder < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of immediate child folders in the current folder.
            @child_folder_count
            ## 
            # The collection of child folders in this folder.
            @child_folders
            ## 
            # The display name of the folder.
            @display_name
            ## 
            # The collection of items in this folder.
            @items
            ## 
            # The collection of multi-value extended properties defined for the mailboxFolder.
            @multi_value_extended_properties
            ## 
            # The unique identifier for the parent folder of this folder.
            @parent_folder_id
            ## 
            # The routing link to the actual underlying mailbox where the folder physically resides. The folder can be accessed using GET {parentMailboxUrl}/folders/{id}, which treats the entire URL as an opaque string.  This method is especially important when auto-expanding archiving is enabled for a user's in-place archive mailbox. The user's archive content can span across multiple mailboxes in such scenarios.
            @parent_mailbox_url
            ## 
            # The collection of single-value extended properties defined for the mailboxFolder.
            @single_value_extended_properties
            ## 
            # The number of items in the folder.
            @total_item_count
            ## 
            # Describes the folder class type.
            @type
            ## 
            ## Gets the childFolderCount property value. The number of immediate child folders in the current folder.
            ## @return a integer
            ## 
            def child_folder_count
                return @child_folder_count
            end
            ## 
            ## Sets the childFolderCount property value. The number of immediate child folders in the current folder.
            ## @param value Value to set for the childFolderCount property.
            ## @return a void
            ## 
            def child_folder_count=(value)
                @child_folder_count = value
            end
            ## 
            ## Gets the childFolders property value. The collection of child folders in this folder.
            ## @return a mailbox_folder
            ## 
            def child_folders
                return @child_folders
            end
            ## 
            ## Sets the childFolders property value. The collection of child folders in this folder.
            ## @param value Value to set for the childFolders property.
            ## @return a void
            ## 
            def child_folders=(value)
                @child_folders = value
            end
            ## 
            ## Instantiates a new MailboxFolder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mailbox_folder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MailboxFolder.new
            end
            ## 
            ## Gets the displayName property value. The display name of the folder.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display name of the folder.
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
                    "childFolderCount" => lambda {|n| @child_folder_count = n.get_number_value() },
                    "childFolders" => lambda {|n| @child_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MailboxFolder.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "items" => lambda {|n| @items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MailboxItem.create_from_discriminator_value(pn) }) },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "parentFolderId" => lambda {|n| @parent_folder_id = n.get_string_value() },
                    "parentMailboxUrl" => lambda {|n| @parent_mailbox_url = n.get_string_value() },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "totalItemCount" => lambda {|n| @total_item_count = n.get_number_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
                })
            end
            ## 
            ## Gets the items property value. The collection of items in this folder.
            ## @return a mailbox_item
            ## 
            def items
                return @items
            end
            ## 
            ## Sets the items property value. The collection of items in this folder.
            ## @param value Value to set for the items property.
            ## @return a void
            ## 
            def items=(value)
                @items = value
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the mailboxFolder.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the mailboxFolder.
            ## @param value Value to set for the multiValueExtendedProperties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the parentFolderId property value. The unique identifier for the parent folder of this folder.
            ## @return a string
            ## 
            def parent_folder_id
                return @parent_folder_id
            end
            ## 
            ## Sets the parentFolderId property value. The unique identifier for the parent folder of this folder.
            ## @param value Value to set for the parentFolderId property.
            ## @return a void
            ## 
            def parent_folder_id=(value)
                @parent_folder_id = value
            end
            ## 
            ## Gets the parentMailboxUrl property value. The routing link to the actual underlying mailbox where the folder physically resides. The folder can be accessed using GET {parentMailboxUrl}/folders/{id}, which treats the entire URL as an opaque string.  This method is especially important when auto-expanding archiving is enabled for a user's in-place archive mailbox. The user's archive content can span across multiple mailboxes in such scenarios.
            ## @return a string
            ## 
            def parent_mailbox_url
                return @parent_mailbox_url
            end
            ## 
            ## Sets the parentMailboxUrl property value. The routing link to the actual underlying mailbox where the folder physically resides. The folder can be accessed using GET {parentMailboxUrl}/folders/{id}, which treats the entire URL as an opaque string.  This method is especially important when auto-expanding archiving is enabled for a user's in-place archive mailbox. The user's archive content can span across multiple mailboxes in such scenarios.
            ## @param value Value to set for the parentMailboxUrl property.
            ## @return a void
            ## 
            def parent_mailbox_url=(value)
                @parent_mailbox_url = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("childFolderCount", @child_folder_count)
                writer.write_collection_of_object_values("childFolders", @child_folders)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("items", @items)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("parentFolderId", @parent_folder_id)
                writer.write_string_value("parentMailboxUrl", @parent_mailbox_url)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_number_value("totalItemCount", @total_item_count)
                writer.write_string_value("type", @type)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the mailboxFolder.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the mailboxFolder.
            ## @param value Value to set for the singleValueExtendedProperties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the totalItemCount property value. The number of items in the folder.
            ## @return a integer
            ## 
            def total_item_count
                return @total_item_count
            end
            ## 
            ## Sets the totalItemCount property value. The number of items in the folder.
            ## @param value Value to set for the totalItemCount property.
            ## @return a void
            ## 
            def total_item_count=(value)
                @total_item_count = value
            end
            ## 
            ## Gets the type property value. Describes the folder class type.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Describes the folder class type.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
