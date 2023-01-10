require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ItemActivityOLD < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The action property
        @action
        ## 
        # The actor property
        @actor
        ## 
        # The driveItem property
        @drive_item
        ## 
        # The listItem property
        @list_item
        ## 
        # The times property
        @times
        ## 
        ## Gets the action property value. The action property
        ## @return a item_action_set
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. The action property
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
        end
        ## 
        ## Gets the actor property value. The actor property
        ## @return a identity_set
        ## 
        def actor
            return @actor
        end
        ## 
        ## Sets the actor property value. The actor property
        ## @param value Value to set for the actor property.
        ## @return a void
        ## 
        def actor=(value)
            @actor = value
        end
        ## 
        ## Instantiates a new itemActivityOLD and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a item_activity_o_l_d
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ItemActivityOLD.new
        end
        ## 
        ## Gets the driveItem property value. The driveItem property
        ## @return a drive_item
        ## 
        def drive_item
            return @drive_item
        end
        ## 
        ## Sets the driveItem property value. The driveItem property
        ## @param value Value to set for the driveItem property.
        ## @return a void
        ## 
        def drive_item=(value)
            @drive_item = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "action" => lambda {|n| @action = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemActionSet.create_from_discriminator_value(pn) }) },
                "actor" => lambda {|n| @actor = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                "driveItem" => lambda {|n| @drive_item = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DriveItem.create_from_discriminator_value(pn) }) },
                "listItem" => lambda {|n| @list_item = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ListItem.create_from_discriminator_value(pn) }) },
                "times" => lambda {|n| @times = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ItemActivityTimeSet.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the listItem property value. The listItem property
        ## @return a list_item
        ## 
        def list_item
            return @list_item
        end
        ## 
        ## Sets the listItem property value. The listItem property
        ## @param value Value to set for the listItem property.
        ## @return a void
        ## 
        def list_item=(value)
            @list_item = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("action", @action)
            writer.write_object_value("actor", @actor)
            writer.write_object_value("driveItem", @drive_item)
            writer.write_object_value("listItem", @list_item)
            writer.write_object_value("times", @times)
        end
        ## 
        ## Gets the times property value. The times property
        ## @return a item_activity_time_set
        ## 
        def times
            return @times
        end
        ## 
        ## Sets the times property value. The times property
        ## @param value Value to set for the times property.
        ## @return a void
        ## 
        def times=(value)
            @times = value
        end
    end
end
