require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # An assignment of a Windows Autopilot deployment profile to an AAD group.
        class WindowsAutopilotDeploymentProfileAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents source of assignment.
            @source
            ## 
            # Identifier for resource used for deployment to a group
            @source_id
            ## 
            # The assignment target for the Windows Autopilot deployment profile.
            @target
            ## 
            ## Instantiates a new WindowsAutopilotDeploymentProfileAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_autopilot_deployment_profile_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAutopilotDeploymentProfileAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentSource) },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("source", @source)
                writer.write_string_value("sourceId", @source_id)
                writer.write_object_value("target", @target)
            end
            ## 
            ## Gets the source property value. Represents source of assignment.
            ## @return a device_and_app_management_assignment_source
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. Represents source of assignment.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
            ## 
            ## Gets the sourceId property value. Identifier for resource used for deployment to a group
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. Identifier for resource used for deployment to a group
            ## @param value Value to set for the sourceId property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the target property value. The assignment target for the Windows Autopilot deployment profile.
            ## @return a device_and_app_management_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The assignment target for the Windows Autopilot deployment profile.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
