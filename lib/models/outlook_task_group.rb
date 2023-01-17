require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OutlookTaskGroup < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The version of the task group.
        @change_key
        ## 
        # The unique GUID identifier for the task group.
        @group_key
        ## 
        # True if the task group is the default task group.
        @is_default_group
        ## 
        # The name of the task group.
        @name
        ## 
        # The collection of task folders in the task group. Read-only. Nullable.
        @task_folders
        ## 
        ## Gets the changeKey property value. The version of the task group.
        ## @return a string
        ## 
        def change_key
            return @change_key
        end
        ## 
        ## Sets the changeKey property value. The version of the task group.
        ## @param value Value to set for the changeKey property.
        ## @return a void
        ## 
        def change_key=(value)
            @change_key = value
        end
        ## 
        ## Instantiates a new outlookTaskGroup and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a outlook_task_group
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OutlookTaskGroup.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                "groupKey" => lambda {|n| @group_key = n.get_guid_value() },
                "isDefaultGroup" => lambda {|n| @is_default_group = n.get_boolean_value() },
                "name" => lambda {|n| @name = n.get_string_value() },
                "taskFolders" => lambda {|n| @task_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookTaskFolder.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the groupKey property value. The unique GUID identifier for the task group.
        ## @return a guid
        ## 
        def group_key
            return @group_key
        end
        ## 
        ## Sets the groupKey property value. The unique GUID identifier for the task group.
        ## @param value Value to set for the groupKey property.
        ## @return a void
        ## 
        def group_key=(value)
            @group_key = value
        end
        ## 
        ## Gets the isDefaultGroup property value. True if the task group is the default task group.
        ## @return a boolean
        ## 
        def is_default_group
            return @is_default_group
        end
        ## 
        ## Sets the isDefaultGroup property value. True if the task group is the default task group.
        ## @param value Value to set for the isDefaultGroup property.
        ## @return a void
        ## 
        def is_default_group=(value)
            @is_default_group = value
        end
        ## 
        ## Gets the name property value. The name of the task group.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name of the task group.
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("changeKey", @change_key)
            writer.write_guid_value("groupKey", @group_key)
            writer.write_boolean_value("isDefaultGroup", @is_default_group)
            writer.write_string_value("name", @name)
            writer.write_collection_of_object_values("taskFolders", @task_folders)
        end
        ## 
        ## Gets the taskFolders property value. The collection of task folders in the task group. Read-only. Nullable.
        ## @return a outlook_task_folder
        ## 
        def task_folders
            return @task_folders
        end
        ## 
        ## Sets the taskFolders property value. The collection of task folders in the task group. Read-only. Nullable.
        ## @param value Value to set for the taskFolders property.
        ## @return a void
        ## 
        def task_folders=(value)
            @task_folders = value
        end
    end
end
