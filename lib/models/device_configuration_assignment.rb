require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The device configuration assignment entity assigns an AAD group to a specific device configuration.
        class DeviceConfigurationAssignment < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The admin intent to apply or remove the profile. Possible values are: apply, remove.
            @intent
            ## 
            # Represents source of assignment.
            @source
            ## 
            # The identifier of the source of the assignment. This property is read-only.
            @source_id
            ## 
            # The assignment target for the device configuration.
            @target
            ## 
            ## Instantiates a new deviceConfigurationAssignment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a device_configuration_assignment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceConfigurationAssignment.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "intent" => lambda {|n| @intent = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceConfigAssignmentIntent) },
                    "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentSource) },
                    "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                    "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the intent property value. The admin intent to apply or remove the profile. Possible values are: apply, remove.
            ## @return a device_config_assignment_intent
            ## 
            def intent
                return @intent
            end
            ## 
            ## Sets the intent property value. The admin intent to apply or remove the profile. Possible values are: apply, remove.
            ## @param value Value to set for the intent property.
            ## @return a void
            ## 
            def intent=(value)
                @intent = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("intent", @intent)
                writer.write_enum_value("source", @source)
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
            ## Gets the sourceId property value. The identifier of the source of the assignment. This property is read-only.
            ## @return a string
            ## 
            def source_id
                return @source_id
            end
            ## 
            ## Sets the sourceId property value. The identifier of the source of the assignment. This property is read-only.
            ## @param value Value to set for the source_id property.
            ## @return a void
            ## 
            def source_id=(value)
                @source_id = value
            end
            ## 
            ## Gets the target property value. The assignment target for the device configuration.
            ## @return a device_and_app_management_assignment_target
            ## 
            def target
                return @target
            end
            ## 
            ## Sets the target property value. The assignment target for the device configuration.
            ## @param value Value to set for the target property.
            ## @return a void
            ## 
            def target=(value)
                @target = value
            end
        end
    end
end
