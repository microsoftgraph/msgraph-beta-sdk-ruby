require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # ChangeAssignmentsActionResult represents the result of executing the changeAssignments action on tracking the live reporting data for applications or configuration regarding their removal or restoration process
        class ChangeAssignmentsActionResult < MicrosoftGraphBeta::Models::DeviceActionResult
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Indicates the list of applications or configuration to report live results during their changeAssignments action execution process. The result for each individual application or configuration can contain whether it's being removed or restored, what's the current status with potential message or error code, and when any changes happen on it. Read-Only. This collection can contain a maximum of 30 elements.
            @device_assignment_items
            ## 
            ## Instantiates a new ChangeAssignmentsActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a change_assignments_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ChangeAssignmentsActionResult.new
            end
            ## 
            ## Gets the deviceAssignmentItems property value. Indicates the list of applications or configuration to report live results during their changeAssignments action execution process. The result for each individual application or configuration can contain whether it's being removed or restored, what's the current status with potential message or error code, and when any changes happen on it. Read-Only. This collection can contain a maximum of 30 elements.
            ## @return a device_assignment_item
            ## 
            def device_assignment_items
                return @device_assignment_items
            end
            ## 
            ## Sets the deviceAssignmentItems property value. Indicates the list of applications or configuration to report live results during their changeAssignments action execution process. The result for each individual application or configuration can contain whether it's being removed or restored, what's the current status with potential message or error code, and when any changes happen on it. Read-Only. This collection can contain a maximum of 30 elements.
            ## @param value Value to set for the deviceAssignmentItems property.
            ## @return a void
            ## 
            def device_assignment_items=(value)
                @device_assignment_items = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceAssignmentItems" => lambda {|n| @device_assignment_items = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAssignmentItem.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("deviceAssignmentItems", @device_assignment_items)
            end
        end
    end
end
