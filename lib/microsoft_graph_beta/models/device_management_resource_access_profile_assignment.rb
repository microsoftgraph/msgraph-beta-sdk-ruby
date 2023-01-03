require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Entity that describes tenant level settings for derived credentials
    class DeviceManagementResourceAccessProfileAssignment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The administrator intent for the assignment of the profile.
        @intent
        ## 
        # The identifier of the source of the assignment.
        @source_id
        ## 
        # Base type for assignment targets.
        @target
        ## 
        ## Instantiates a new deviceManagementResourceAccessProfileAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_management_resource_access_profile_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceManagementResourceAccessProfileAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "intent" => lambda {|n| @intent = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceManagementResourceAccessProfileIntent) },
                "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the intent property value. The administrator intent for the assignment of the profile.
        ## @return a device_management_resource_access_profile_intent
        ## 
        def intent
            return @intent
        end
        ## 
        ## Sets the intent property value. The administrator intent for the assignment of the profile.
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
            writer.write_string_value("sourceId", @source_id)
            writer.write_object_value("target", @target)
        end
        ## 
        ## Gets the sourceId property value. The identifier of the source of the assignment.
        ## @return a string
        ## 
        def source_id
            return @source_id
        end
        ## 
        ## Sets the sourceId property value. The identifier of the source of the assignment.
        ## @param value Value to set for the sourceId property.
        ## @return a void
        ## 
        def source_id=(value)
            @source_id = value
        end
        ## 
        ## Gets the target property value. Base type for assignment targets.
        ## @return a device_and_app_management_assignment_target
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. Base type for assignment targets.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
