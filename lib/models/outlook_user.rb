require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OutlookUser < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # A list of categories defined for the user.
        @master_categories
        ## 
        # The taskFolders property
        @task_folders
        ## 
        # The taskGroups property
        @task_groups
        ## 
        # The tasks property
        @tasks
        ## 
        ## Instantiates a new outlookUser and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a outlook_user
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OutlookUser.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "masterCategories" => lambda {|n| @master_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookCategory.create_from_discriminator_value(pn) }) },
                "taskFolders" => lambda {|n| @task_folders = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookTaskFolder.create_from_discriminator_value(pn) }) },
                "taskGroups" => lambda {|n| @task_groups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookTaskGroup.create_from_discriminator_value(pn) }) },
                "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookTask.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the masterCategories property value. A list of categories defined for the user.
        ## @return a outlook_category
        ## 
        def master_categories
            return @master_categories
        end
        ## 
        ## Sets the masterCategories property value. A list of categories defined for the user.
        ## @param value Value to set for the master_categories property.
        ## @return a void
        ## 
        def master_categories=(value)
            @master_categories = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_collection_of_object_values("masterCategories", @master_categories)
            writer.write_collection_of_object_values("taskFolders", @task_folders)
            writer.write_collection_of_object_values("taskGroups", @task_groups)
            writer.write_collection_of_object_values("tasks", @tasks)
        end
        ## 
        ## Gets the taskFolders property value. The taskFolders property
        ## @return a outlook_task_folder
        ## 
        def task_folders
            return @task_folders
        end
        ## 
        ## Sets the taskFolders property value. The taskFolders property
        ## @param value Value to set for the task_folders property.
        ## @return a void
        ## 
        def task_folders=(value)
            @task_folders = value
        end
        ## 
        ## Gets the taskGroups property value. The taskGroups property
        ## @return a outlook_task_group
        ## 
        def task_groups
            return @task_groups
        end
        ## 
        ## Sets the taskGroups property value. The taskGroups property
        ## @param value Value to set for the task_groups property.
        ## @return a void
        ## 
        def task_groups=(value)
            @task_groups = value
        end
        ## 
        ## Gets the tasks property value. The tasks property
        ## @return a outlook_task
        ## 
        def tasks
            return @tasks
        end
        ## 
        ## Sets the tasks property value. The tasks property
        ## @param value Value to set for the tasks property.
        ## @return a void
        ## 
        def tasks=(value)
            @tasks = value
        end
    end
end
