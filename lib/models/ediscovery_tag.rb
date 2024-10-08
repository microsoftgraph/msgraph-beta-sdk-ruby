require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EdiscoveryTag < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
            @child_selectability
            ## 
            # Returns the tags that are a child of a tag.
            @child_tags
            ## 
            # The user who created the tag.
            @created_by
            ## 
            # The description for the tag.
            @description
            ## 
            # Display name of the tag.
            @display_name
            ## 
            # The date and time the tag was last modified.
            @last_modified_date_time
            ## 
            # Returns the parent tag of the specified tag.
            @parent
            ## 
            ## Gets the childSelectability property value. Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
            ## @return a ediscovery_child_selectability
            ## 
            def child_selectability
                return @child_selectability
            end
            ## 
            ## Sets the childSelectability property value. Indicates whether a single or multiple child tags can be associated with a document. Possible values are: One, Many.  This value controls whether the UX presents the tags as checkboxes or a radio button group.
            ## @param value Value to set for the childSelectability property.
            ## @return a void
            ## 
            def child_selectability=(value)
                @child_selectability = value
            end
            ## 
            ## Gets the childTags property value. Returns the tags that are a child of a tag.
            ## @return a ediscovery_tag
            ## 
            def child_tags
                return @child_tags
            end
            ## 
            ## Sets the childTags property value. Returns the tags that are a child of a tag.
            ## @param value Value to set for the childTags property.
            ## @return a void
            ## 
            def child_tags=(value)
                @child_tags = value
            end
            ## 
            ## Instantiates a new EdiscoveryTag and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdBy property value. The user who created the tag.
            ## @return a identity_set
            ## 
            def created_by
                return @created_by
            end
            ## 
            ## Sets the createdBy property value. The user who created the tag.
            ## @param value Value to set for the createdBy property.
            ## @return a void
            ## 
            def created_by=(value)
                @created_by = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a ediscovery_tag
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EdiscoveryTag.new
            end
            ## 
            ## Gets the description property value. The description for the tag.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description for the tag.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name of the tag.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name of the tag.
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
                    "childSelectability" => lambda {|n| @child_selectability = n.get_enum_value(MicrosoftGraphBeta::Models::EdiscoveryChildSelectability) },
                    "childTags" => lambda {|n| @child_tags = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryTag.create_from_discriminator_value(pn) }) },
                    "createdBy" => lambda {|n| @created_by = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::EdiscoveryTag.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the tag was last modified.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the tag was last modified.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the parent property value. Returns the parent tag of the specified tag.
            ## @return a ediscovery_tag
            ## 
            def parent
                return @parent
            end
            ## 
            ## Sets the parent property value. Returns the parent tag of the specified tag.
            ## @param value Value to set for the parent property.
            ## @return a void
            ## 
            def parent=(value)
                @parent = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("childSelectability", @child_selectability)
                writer.write_collection_of_object_values("childTags", @child_tags)
                writer.write_object_value("createdBy", @created_by)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("parent", @parent)
            end
        end
    end
end
