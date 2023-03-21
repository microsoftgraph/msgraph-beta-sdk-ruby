require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerTaskPropertyRule < MicrosoftGraphBeta::Models::PlannerPropertyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Rules and restrictions for applied categories. This value does not currently support overrides. Accepted values for the default rule and individual overrides are allow, block.
            @applied_categories
            ## 
            # Rules and restrictions for assignments. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, addSelf, addOther, remove, removeSelf, removeOther, block.
            @assignments
            ## 
            # Rules and restrictions for checklist. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, update, check, reorder, block.
            @check_lists
            ## 
            # Rules and restrictions for deleting the task. Accepted values are allow and block.
            @delete
            ## 
            # Rules and restrictions for changing the due date of the task. Accepted values are allow and block.
            @due_date
            ## 
            # Rules and restrictions for moving the task between buckets or plans. Accepted values are allow, moveBetweenPlans, moveBetweenBuckets, and block.
            @move
            ## 
            # Rules and restrictions for changing the notes of the task. Accepted values are allow and block.
            @notes
            ## 
            # Rules and restrictions for changing the order of the task. Accepted values are allow and block.
            @order
            ## 
            # Rules and restrictions for changing the completion percentage of the task. Accepted values are allow, setToComplete, setToNotStarted, setToInProgress, and block.
            @percent_complete
            ## 
            # Rules and restrictions for changing the preview type of the task. Accepted values are allow and block.
            @preview_type
            ## 
            # Rules and restrictions for changing the priority of the task. Accepted values are allow and block.
            @priority
            ## 
            # Rules and restrictions for references. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, block.
            @references
            ## 
            # Rules and restrictions for changing the start date of the task. Accepted values are allow and block.
            @start_date
            ## 
            # Rules and restrictions for changing the title of the task. Accepted values are allow and block.
            @title
            ## 
            ## Gets the appliedCategories property value. Rules and restrictions for applied categories. This value does not currently support overrides. Accepted values for the default rule and individual overrides are allow, block.
            ## @return a planner_field_rules
            ## 
            def applied_categories
                return @applied_categories
            end
            ## 
            ## Sets the appliedCategories property value. Rules and restrictions for applied categories. This value does not currently support overrides. Accepted values for the default rule and individual overrides are allow, block.
            ## @param value Value to set for the applied_categories property.
            ## @return a void
            ## 
            def applied_categories=(value)
                @applied_categories = value
            end
            ## 
            ## Gets the assignments property value. Rules and restrictions for assignments. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, addSelf, addOther, remove, removeSelf, removeOther, block.
            ## @return a planner_field_rules
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. Rules and restrictions for assignments. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, addSelf, addOther, remove, removeSelf, removeOther, block.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Gets the checkLists property value. Rules and restrictions for checklist. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, update, check, reorder, block.
            ## @return a planner_field_rules
            ## 
            def check_lists
                return @check_lists
            end
            ## 
            ## Sets the checkLists property value. Rules and restrictions for checklist. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, update, check, reorder, block.
            ## @param value Value to set for the check_lists property.
            ## @return a void
            ## 
            def check_lists=(value)
                @check_lists = value
            end
            ## 
            ## Instantiates a new PlannerTaskPropertyRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.plannerTaskPropertyRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a planner_task_property_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTaskPropertyRule.new
            end
            ## 
            ## Gets the delete property value. Rules and restrictions for deleting the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def delete
                return @delete
            end
            ## 
            ## Sets the delete property value. Rules and restrictions for deleting the task. Accepted values are allow and block.
            ## @param value Value to set for the delete property.
            ## @return a void
            ## 
            def delete=(value)
                @delete = value
            end
            ## 
            ## Gets the dueDate property value. Rules and restrictions for changing the due date of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def due_date
                return @due_date
            end
            ## 
            ## Sets the dueDate property value. Rules and restrictions for changing the due date of the task. Accepted values are allow and block.
            ## @param value Value to set for the due_date property.
            ## @return a void
            ## 
            def due_date=(value)
                @due_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appliedCategories" => lambda {|n| @applied_categories = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
                    "assignments" => lambda {|n| @assignments = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
                    "checkLists" => lambda {|n| @check_lists = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
                    "delete" => lambda {|n| @delete = n.get_collection_of_primitive_values(String) },
                    "dueDate" => lambda {|n| @due_date = n.get_collection_of_primitive_values(String) },
                    "move" => lambda {|n| @move = n.get_collection_of_primitive_values(String) },
                    "notes" => lambda {|n| @notes = n.get_collection_of_primitive_values(String) },
                    "order" => lambda {|n| @order = n.get_collection_of_primitive_values(String) },
                    "percentComplete" => lambda {|n| @percent_complete = n.get_collection_of_primitive_values(String) },
                    "previewType" => lambda {|n| @preview_type = n.get_collection_of_primitive_values(String) },
                    "priority" => lambda {|n| @priority = n.get_collection_of_primitive_values(String) },
                    "references" => lambda {|n| @references = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFieldRules.create_from_discriminator_value(pn) }) },
                    "startDate" => lambda {|n| @start_date = n.get_collection_of_primitive_values(String) },
                    "title" => lambda {|n| @title = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the move property value. Rules and restrictions for moving the task between buckets or plans. Accepted values are allow, moveBetweenPlans, moveBetweenBuckets, and block.
            ## @return a string
            ## 
            def move
                return @move
            end
            ## 
            ## Sets the move property value. Rules and restrictions for moving the task between buckets or plans. Accepted values are allow, moveBetweenPlans, moveBetweenBuckets, and block.
            ## @param value Value to set for the move property.
            ## @return a void
            ## 
            def move=(value)
                @move = value
            end
            ## 
            ## Gets the notes property value. Rules and restrictions for changing the notes of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def notes
                return @notes
            end
            ## 
            ## Sets the notes property value. Rules and restrictions for changing the notes of the task. Accepted values are allow and block.
            ## @param value Value to set for the notes property.
            ## @return a void
            ## 
            def notes=(value)
                @notes = value
            end
            ## 
            ## Gets the order property value. Rules and restrictions for changing the order of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def order
                return @order
            end
            ## 
            ## Sets the order property value. Rules and restrictions for changing the order of the task. Accepted values are allow and block.
            ## @param value Value to set for the order property.
            ## @return a void
            ## 
            def order=(value)
                @order = value
            end
            ## 
            ## Gets the percentComplete property value. Rules and restrictions for changing the completion percentage of the task. Accepted values are allow, setToComplete, setToNotStarted, setToInProgress, and block.
            ## @return a string
            ## 
            def percent_complete
                return @percent_complete
            end
            ## 
            ## Sets the percentComplete property value. Rules and restrictions for changing the completion percentage of the task. Accepted values are allow, setToComplete, setToNotStarted, setToInProgress, and block.
            ## @param value Value to set for the percent_complete property.
            ## @return a void
            ## 
            def percent_complete=(value)
                @percent_complete = value
            end
            ## 
            ## Gets the previewType property value. Rules and restrictions for changing the preview type of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def preview_type
                return @preview_type
            end
            ## 
            ## Sets the previewType property value. Rules and restrictions for changing the preview type of the task. Accepted values are allow and block.
            ## @param value Value to set for the preview_type property.
            ## @return a void
            ## 
            def preview_type=(value)
                @preview_type = value
            end
            ## 
            ## Gets the priority property value. Rules and restrictions for changing the priority of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Rules and restrictions for changing the priority of the task. Accepted values are allow and block.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Gets the references property value. Rules and restrictions for references. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, block.
            ## @return a planner_field_rules
            ## 
            def references
                return @references
            end
            ## 
            ## Sets the references property value. Rules and restrictions for references. Allowed overrides are userCreated and applicationCreated. Accepted values for the default rule and individual overrides are allow, add, remove, block.
            ## @param value Value to set for the references property.
            ## @return a void
            ## 
            def references=(value)
                @references = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("appliedCategories", @applied_categories)
                writer.write_object_value("assignments", @assignments)
                writer.write_object_value("checkLists", @check_lists)
                writer.write_collection_of_primitive_values("delete", @delete)
                writer.write_collection_of_primitive_values("dueDate", @due_date)
                writer.write_collection_of_primitive_values("move", @move)
                writer.write_collection_of_primitive_values("notes", @notes)
                writer.write_collection_of_primitive_values("order", @order)
                writer.write_collection_of_primitive_values("percentComplete", @percent_complete)
                writer.write_collection_of_primitive_values("previewType", @preview_type)
                writer.write_collection_of_primitive_values("priority", @priority)
                writer.write_object_value("references", @references)
                writer.write_collection_of_primitive_values("startDate", @start_date)
                writer.write_collection_of_primitive_values("title", @title)
            end
            ## 
            ## Gets the startDate property value. Rules and restrictions for changing the start date of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def start_date
                return @start_date
            end
            ## 
            ## Sets the startDate property value. Rules and restrictions for changing the start date of the task. Accepted values are allow and block.
            ## @param value Value to set for the start_date property.
            ## @return a void
            ## 
            def start_date=(value)
                @start_date = value
            end
            ## 
            ## Gets the title property value. Rules and restrictions for changing the title of the task. Accepted values are allow and block.
            ## @return a string
            ## 
            def title
                return @title
            end
            ## 
            ## Sets the title property value. Rules and restrictions for changing the title of the task. Accepted values are allow and block.
            ## @param value Value to set for the title property.
            ## @return a void
            ## 
            def title=(value)
                @title = value
            end
        end
    end
end
