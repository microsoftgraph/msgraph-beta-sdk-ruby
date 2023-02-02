require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class OutlookTaskFolder < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The version of the task folder.
        @change_key
        ## 
        # True if the folder is the default task folder.
        @is_default_folder
        ## 
        # The collection of multi-value extended properties defined for the task folder. Read-only. Nullable.
        @multi_value_extended_properties
        ## 
        # The name of the task folder.
        @name
        ## 
        # The unique GUID identifier for the task folder's parent group.
        @parent_group_key
        ## 
        # The collection of single-value extended properties defined for the task folder. Read-only. Nullable.
        @single_value_extended_properties
        ## 
        # The tasks in this task folder. Read-only. Nullable.
        @tasks
        ## 
        ## Gets the changeKey property value. The version of the task folder.
        ## @return a string
        ## 
        def change_key
            return @change_key
        end
        ## 
        ## Sets the changeKey property value. The version of the task folder.
        ## @param value Value to set for the change_key property.
        ## @return a void
        ## 
        def change_key=(value)
            @change_key = value
        end
        ## 
        ## Instantiates a new outlookTaskFolder and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a outlook_task_folder
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return OutlookTaskFolder.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "changeKey" => lambda {|n| @change_key = n.get_string_value() },
                "isDefaultFolder" => lambda {|n| @is_default_folder = n.get_boolean_value() },
                "multiValueExtendedProperties" => lambda {|n| @multi_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MultiValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                "name" => lambda {|n| @name = n.get_string_value() },
                "parentGroupKey" => lambda {|n| @parent_group_key = n.get_guid_value() },
                "singleValueExtendedProperties" => lambda {|n| @single_value_extended_properties = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SingleValueLegacyExtendedProperty.create_from_discriminator_value(pn) }) },
                "tasks" => lambda {|n| @tasks = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::OutlookTask.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the isDefaultFolder property value. True if the folder is the default task folder.
        ## @return a boolean
        ## 
        def is_default_folder
            return @is_default_folder
        end
        ## 
        ## Sets the isDefaultFolder property value. True if the folder is the default task folder.
        ## @param value Value to set for the is_default_folder property.
        ## @return a void
        ## 
        def is_default_folder=(value)
            @is_default_folder = value
        end
        ## 
        ## Gets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the task folder. Read-only. Nullable.
        ## @return a multi_value_legacy_extended_property
        ## 
        def multi_value_extended_properties
            return @multi_value_extended_properties
        end
        ## 
        ## Sets the multiValueExtendedProperties property value. The collection of multi-value extended properties defined for the task folder. Read-only. Nullable.
        ## @param value Value to set for the multi_value_extended_properties property.
        ## @return a void
        ## 
        def multi_value_extended_properties=(value)
            @multi_value_extended_properties = value
        end
        ## 
        ## Gets the name property value. The name of the task folder.
        ## @return a string
        ## 
        def name
            return @name
        end
        ## 
        ## Sets the name property value. The name of the task folder.
        ## @param value Value to set for the name property.
        ## @return a void
        ## 
        def name=(value)
            @name = value
        end
        ## 
        ## Gets the parentGroupKey property value. The unique GUID identifier for the task folder's parent group.
        ## @return a guid
        ## 
        def parent_group_key
            return @parent_group_key
        end
        ## 
        ## Sets the parentGroupKey property value. The unique GUID identifier for the task folder's parent group.
        ## @param value Value to set for the parent_group_key property.
        ## @return a void
        ## 
        def parent_group_key=(value)
            @parent_group_key = value
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
            writer.write_boolean_value("isDefaultFolder", @is_default_folder)
            writer.write_collection_of_object_values("multiValueExtendedProperties", @multi_value_extended_properties)
            writer.write_string_value("name", @name)
            writer.write_guid_value("parentGroupKey", @parent_group_key)
            writer.write_collection_of_object_values("singleValueExtendedProperties", @single_value_extended_properties)
            writer.write_collection_of_object_values("tasks", @tasks)
        end
        ## 
        ## Gets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the task folder. Read-only. Nullable.
        ## @return a single_value_legacy_extended_property
        ## 
        def single_value_extended_properties
            return @single_value_extended_properties
        end
        ## 
        ## Sets the singleValueExtendedProperties property value. The collection of single-value extended properties defined for the task folder. Read-only. Nullable.
        ## @param value Value to set for the single_value_extended_properties property.
        ## @return a void
        ## 
        def single_value_extended_properties=(value)
            @single_value_extended_properties = value
        end
        ## 
        ## Gets the tasks property value. The tasks in this task folder. Read-only. Nullable.
        ## @return a outlook_task
        ## 
        def tasks
            return @tasks
        end
        ## 
        ## Sets the tasks property value. The tasks in this task folder. Read-only. Nullable.
        ## @param value Value to set for the tasks property.
        ## @return a void
        ## 
        def tasks=(value)
            @tasks = value
        end
    end
end
