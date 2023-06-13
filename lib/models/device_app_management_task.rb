require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # A device app management task.
        class DeviceAppManagementTask < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name or email of the admin this task is assigned to.
            @assigned_to
            ## 
            # Device app management task category.
            @category
            ## 
            # The created date.
            @created_date_time
            ## 
            # The email address of the creator.
            @creator
            ## 
            # Notes from the creator.
            @creator_notes
            ## 
            # The description.
            @description
            ## 
            # The name.
            @display_name
            ## 
            # The due date.
            @due_date_time
            ## 
            # Device app management task priority.
            @priority
            ## 
            # Device app management task status.
            @status
            ## 
            ## Gets the assignedTo property value. The name or email of the admin this task is assigned to.
            ## @return a string
            ## 
            def assigned_to
                return @assigned_to
            end
            ## 
            ## Sets the assignedTo property value. The name or email of the admin this task is assigned to.
            ## @param value Value to set for the assigned_to property.
            ## @return a void
            ## 
            def assigned_to=(value)
                @assigned_to = value
            end
            ## 
            ## Gets the category property value. Device app management task category.
            ## @return a device_app_management_task_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. Device app management task category.
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new deviceAppManagementTask and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The created date.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The created date.
            ## @param value Value to set for the created_date_time property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_app_management_task
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.appVulnerabilityTask"
                            return AppVulnerabilityTask.new
                        when "#microsoft.graph.securityConfigurationTask"
                            return SecurityConfigurationTask.new
                        when "#microsoft.graph.unmanagedDeviceDiscoveryTask"
                            return UnmanagedDeviceDiscoveryTask.new
                    end
                end
                return DeviceAppManagementTask.new
            end
            ## 
            ## Gets the creator property value. The email address of the creator.
            ## @return a string
            ## 
            def creator
                return @creator
            end
            ## 
            ## Sets the creator property value. The email address of the creator.
            ## @param value Value to set for the creator property.
            ## @return a void
            ## 
            def creator=(value)
                @creator = value
            end
            ## 
            ## Gets the creatorNotes property value. Notes from the creator.
            ## @return a string
            ## 
            def creator_notes
                return @creator_notes
            end
            ## 
            ## Sets the creatorNotes property value. Notes from the creator.
            ## @param value Value to set for the creator_notes property.
            ## @return a void
            ## 
            def creator_notes=(value)
                @creator_notes = value
            end
            ## 
            ## Gets the description property value. The description.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The description.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The name.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name.
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the dueDateTime property value. The due date.
            ## @return a date_time
            ## 
            def due_date_time
                return @due_date_time
            end
            ## 
            ## Sets the dueDateTime property value. The due date.
            ## @param value Value to set for the due_date_time property.
            ## @return a void
            ## 
            def due_date_time=(value)
                @due_date_time = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "assignedTo" => lambda {|n| @assigned_to = n.get_string_value() },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAppManagementTaskCategory) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "creator" => lambda {|n| @creator = n.get_string_value() },
                    "creatorNotes" => lambda {|n| @creator_notes = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "dueDateTime" => lambda {|n| @due_date_time = n.get_date_time_value() },
                    "priority" => lambda {|n| @priority = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAppManagementTaskPriority) },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAppManagementTaskStatus) },
                })
            end
            ## 
            ## Gets the priority property value. Device app management task priority.
            ## @return a device_app_management_task_priority
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Device app management task priority.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("assignedTo", @assigned_to)
                writer.write_enum_value("category", @category)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_string_value("creator", @creator)
                writer.write_string_value("creatorNotes", @creator_notes)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_date_time_value("dueDateTime", @due_date_time)
                writer.write_enum_value("priority", @priority)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. Device app management task status.
            ## @return a device_app_management_task_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. Device app management task status.
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
