require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class DeviceRestrictionAction < MicrosoftGraphBeta::Models::DlpActionInfo
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The message property
        @message
        ## 
        # The restrictionAction property
        @restriction_action
        ## 
        # The triggers property
        @triggers
        ## 
        ## Instantiates a new DeviceRestrictionAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a device_restriction_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeviceRestrictionAction.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "message" => lambda {|n| @message = n.get_string_value() },
                "restrictionAction" => lambda {|n| @restriction_action = n.get_enum_value(MicrosoftGraphBeta::Models::RestrictionAction) },
                "triggers" => lambda {|n| @triggers = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RestrictionTrigger.create_from_discriminator_value(pn) }) },
            })
        end
        ## 
        ## Gets the message property value. The message property
        ## @return a string
        ## 
        def message
            return @message
        end
        ## 
        ## Sets the message property value. The message property
        ## @param value Value to set for the message property.
        ## @return a void
        ## 
        def message=(value)
            @message = value
        end
        ## 
        ## Gets the restrictionAction property value. The restrictionAction property
        ## @return a restriction_action
        ## 
        def restriction_action
            return @restriction_action
        end
        ## 
        ## Sets the restrictionAction property value. The restrictionAction property
        ## @param value Value to set for the restriction_action property.
        ## @return a void
        ## 
        def restriction_action=(value)
            @restriction_action = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("message", @message)
            writer.write_enum_value("restrictionAction", @restriction_action)
            writer.write_collection_of_object_values("triggers", @triggers)
        end
        ## 
        ## Gets the triggers property value. The triggers property
        ## @return a restriction_trigger
        ## 
        def triggers
            return @triggers
        end
        ## 
        ## Sets the triggers property value. The triggers property
        ## @param value Value to set for the triggers property.
        ## @return a void
        ## 
        def triggers=(value)
            @triggers = value
        end
    end
end
