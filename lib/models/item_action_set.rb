require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ItemActionSet
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # A comment was added to the item.
            @comment
            ## 
            # An item was created.
            @create
            ## 
            # An item was deleted.
            @delete
            ## 
            # An item was edited.
            @edit
            ## 
            # A user was mentioned in the item.
            @mention
            ## 
            # An item was moved.
            @move
            ## 
            # The OdataType property
            @odata_type
            ## 
            # An item was renamed.
            @rename
            ## 
            # An item was restored.
            @restore
            ## 
            # An item was shared.
            @share
            ## 
            # An item was versioned.
            @version
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
            ## Gets the comment property value. A comment was added to the item.
            ## @return a comment_action
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. A comment was added to the item.
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Instantiates a new itemActionSet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Gets the create property value. An item was created.
            ## @return a create_action
            ## 
            def create
                return @create
            end
            ## 
            ## Sets the create property value. An item was created.
            ## @param value Value to set for the create property.
            ## @return a void
            ## 
            def create=(value)
                @create = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a item_action_set
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ItemActionSet.new
            end
            ## 
            ## Gets the delete property value. An item was deleted.
            ## @return a delete_action
            ## 
            def delete
                return @delete
            end
            ## 
            ## Sets the delete property value. An item was deleted.
            ## @param value Value to set for the delete property.
            ## @return a void
            ## 
            def delete=(value)
                @delete = value
            end
            ## 
            ## Gets the edit property value. An item was edited.
            ## @return a edit_action
            ## 
            def edit
                return @edit
            end
            ## 
            ## Sets the edit property value. An item was edited.
            ## @param value Value to set for the edit property.
            ## @return a void
            ## 
            def edit=(value)
                @edit = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "comment" => lambda {|n| @comment = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CommentAction.create_from_discriminator_value(pn) }) },
                    "create" => lambda {|n| @create = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CreateAction.create_from_discriminator_value(pn) }) },
                    "delete" => lambda {|n| @delete = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeleteAction.create_from_discriminator_value(pn) }) },
                    "edit" => lambda {|n| @edit = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EditAction.create_from_discriminator_value(pn) }) },
                    "mention" => lambda {|n| @mention = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MentionAction.create_from_discriminator_value(pn) }) },
                    "move" => lambda {|n| @move = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MoveAction.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "rename" => lambda {|n| @rename = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RenameAction.create_from_discriminator_value(pn) }) },
                    "restore" => lambda {|n| @restore = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::RestoreAction.create_from_discriminator_value(pn) }) },
                    "share" => lambda {|n| @share = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ShareAction.create_from_discriminator_value(pn) }) },
                    "version" => lambda {|n| @version = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VersionAction.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the mention property value. A user was mentioned in the item.
            ## @return a mention_action
            ## 
            def mention
                return @mention
            end
            ## 
            ## Sets the mention property value. A user was mentioned in the item.
            ## @param value Value to set for the mention property.
            ## @return a void
            ## 
            def mention=(value)
                @mention = value
            end
            ## 
            ## Gets the move property value. An item was moved.
            ## @return a move_action
            ## 
            def move
                return @move
            end
            ## 
            ## Sets the move property value. An item was moved.
            ## @param value Value to set for the move property.
            ## @return a void
            ## 
            def move=(value)
                @move = value
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
            ## Gets the rename property value. An item was renamed.
            ## @return a rename_action
            ## 
            def rename
                return @rename
            end
            ## 
            ## Sets the rename property value. An item was renamed.
            ## @param value Value to set for the rename property.
            ## @return a void
            ## 
            def rename=(value)
                @rename = value
            end
            ## 
            ## Gets the restore property value. An item was restored.
            ## @return a restore_action
            ## 
            def restore
                return @restore
            end
            ## 
            ## Sets the restore property value. An item was restored.
            ## @param value Value to set for the restore property.
            ## @return a void
            ## 
            def restore=(value)
                @restore = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("comment", @comment)
                writer.write_object_value("create", @create)
                writer.write_object_value("delete", @delete)
                writer.write_object_value("edit", @edit)
                writer.write_object_value("mention", @mention)
                writer.write_object_value("move", @move)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("rename", @rename)
                writer.write_object_value("restore", @restore)
                writer.write_object_value("share", @share)
                writer.write_object_value("version", @version)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the share property value. An item was shared.
            ## @return a share_action
            ## 
            def share
                return @share
            end
            ## 
            ## Sets the share property value. An item was shared.
            ## @param value Value to set for the share property.
            ## @return a void
            ## 
            def share=(value)
                @share = value
            end
            ## 
            ## Gets the version property value. An item was versioned.
            ## @return a version_action
            ## 
            def version
                return @version
            end
            ## 
            ## Sets the version property value. An item was versioned.
            ## @param value Value to set for the version property.
            ## @return a void
            ## 
            def version=(value)
                @version = value
            end
        end
    end
end
