require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ContactFolder < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The collection of child folders in the folder. Navigation property. Read-only. Nullable.
            @child_folders
            ## 
            # The contacts in the folder. Navigation property. Read-only. Nullable.
            @contacts
            ## 
            # The folder's display name.
            @display_name
            ## 
            # The collection of multi-value extended properties defined for the contactFolder. Read-only. Nullable.
            @multi_value_extended_properties
            ## 
            # The ID of the folder's parent folder.
            @parent_folder_id
            ## 
            # The collection of single-value extended properties defined for the contactFolder. Read-only. Nullable.
            @single_value_extended_properties
            ## 
            # The name of the folder if the folder is a recognized folder. Currently contacts is the only recognized contacts folder.
            @well_known_name
            ## 
            ## Gets the childFolders property value. The collection of child folders in the folder. Navigation property. Read-only. Nullable.
            ## @return a contact_folder
            ## 
            def child_folders
                return @child_folders
            end
            ## 
            ## Sets the childFolders property value. The collection of child folders in the folder. Navigation property. Read-only. Nullable.
            ## @param value Value to set for the childFolders property.
            ## @return a void
            ## 
            def child_folders=(value)
                @child_folders = value
            end
            ## 
            ## Instantiates a new contactFolder and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the contacts property value. The contacts in the folder. Navigation property. Read-only. Nullable.
            ## @return a contact
            ## 
            def contacts
                return @contacts
            end
            ## 
            ## Sets the contacts property value. The contacts in the folder. Navigation property. Read-only. Nullable.
            ## @param value Value to set for the contacts property.
            ## @return a void
            ## 
            def contacts=(value)
                @contacts = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a contact_folder
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ContactFolder.new
            end
            ## 
            ## Gets the displayName property value. The folder's display name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The folder's display name.
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
                    "childFolders" => lambda {|n| @child_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ContactFolder.create_from_discriminator_value(pn) }) },
                    "contacts" => lambda {|n| @contacts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Contact.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "parentFolderId" => lambda {|n| @parent_folder_id = n.get_string_value() },
                    "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                    "wellKnownName" => lambda {|n| @well_known_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the contactFolder. Read-only. Nullable.
            ## @return a multi_value_legacy_extended_property
            ## 
            def multi_value_extended_properties
                return @multi_value_extended_properties
            end
            ## 
            ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the contactFolder. Read-only. Nullable.
            ## @param value Value to set for the multiValueExtendedProperties property.
            ## @return a void
            ## 
            def multi_value_extended_properties=(value)
                @multi_value_extended_properties = value
            end
            ## 
            ## Gets the parentFolderId property value. The ID of the folder's parent folder.
            ## @return a string
            ## 
            def parent_folder_id
                return @parent_folder_id
            end
            ## 
            ## Sets the parentFolderId property value. The ID of the folder's parent folder.
            ## @param value Value to set for the parentFolderId property.
            ## @return a void
            ## 
            def parent_folder_id=(value)
                @parent_folder_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("childFolders", @child_folders)
                writer.write_collection_of_object_values("contacts", @contacts)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
                writer.write_string_value("parentFolderId", @parent_folder_id)
                writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
                writer.write_string_value("wellKnownName", @well_known_name)
            end
            ## 
            ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the contactFolder. Read-only. Nullable.
            ## @return a single_value_legacy_extended_property
            ## 
            def single_value_extended_properties
                return @single_value_extended_properties
            end
            ## 
            ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the contactFolder. Read-only. Nullable.
            ## @param value Value to set for the singleValueExtendedProperties property.
            ## @return a void
            ## 
            def single_value_extended_properties=(value)
                @single_value_extended_properties = value
            end
            ## 
            ## Gets the wellKnownName property value. The name of the folder if the folder is a recognized folder. Currently contacts is the only recognized contacts folder.
            ## @return a string
            ## 
            def well_known_name
                return @well_known_name
            end
            ## 
            ## Sets the wellKnownName property value. The name of the folder if the folder is a recognized folder. Currently contacts is the only recognized contacts folder.
            ## @param value Value to set for the wellKnownName property.
            ## @return a void
            ## 
            def well_known_name=(value)
                @well_known_name = value
            end
        end
    end
end
