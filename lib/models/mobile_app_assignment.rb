require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A class containing the properties used for Group Assignment of a Mobile App.
    class MobileAppAssignment < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Possible values for the install intent chosen by the admin.
        @intent
        ## 
        # The settings for target assignment defined by the admin.
        @settings
        ## 
        # Represents source of assignment.
        @source
        ## 
        # The identifier of the source of the assignment.
        @source_id
        ## 
        # The target group assignment defined by the admin.
        @target
        ## 
        ## Instantiates a new mobileAppAssignment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a mobile_app_assignment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return MobileAppAssignment.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "intent" => lambda {|n| @intent = n.get_enum_value(MicrosoftGraphBeta::Models::InstallIntent) },
                "settings" => lambda {|n| @settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MobileAppAssignmentSettings.create_from_discriminator_value(pn) }) },
                "source" => lambda {|n| @source = n.get_enum_value(MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentSource) },
                "sourceId" => lambda {|n| @source_id = n.get_string_value() },
                "target" => lambda {|n| @target = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DeviceAndAppManagementAssignmentTarget.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the intent property value. Possible values for the install intent chosen by the admin.
        ## @return a install_intent
        ## 
        def intent
            return @intent
        end
        ## 
        ## Sets the intent property value. Possible values for the install intent chosen by the admin.
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
            writer.write_object_value("settings", @settings)
            writer.write_enum_value("source", @source)
            writer.write_string_value("sourceId", @source_id)
            writer.write_object_value("target", @target)
        end
        ## 
        ## Gets the settings property value. The settings for target assignment defined by the admin.
        ## @return a mobile_app_assignment_settings
        ## 
        def settings
            return @settings
        end
        ## 
        ## Sets the settings property value. The settings for target assignment defined by the admin.
        ## @param value Value to set for the settings property.
        ## @return a void
        ## 
        def settings=(value)
            @settings = value
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
        ## Gets the sourceId property value. The identifier of the source of the assignment.
        ## @return a string
        ## 
        def source_id
            return @source_id
        end
        ## 
        ## Sets the sourceId property value. The identifier of the source of the assignment.
        ## @param value Value to set for the source_id property.
        ## @return a void
        ## 
        def source_id=(value)
            @source_id = value
        end
        ## 
        ## Gets the target property value. The target group assignment defined by the admin.
        ## @return a device_and_app_management_assignment_target
        ## 
        def target
            return @target
        end
        ## 
        ## Sets the target property value. The target group assignment defined by the admin.
        ## @param value Value to set for the target property.
        ## @return a void
        ## 
        def target=(value)
            @target = value
        end
    end
end
