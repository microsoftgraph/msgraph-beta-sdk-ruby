require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ProgramControlType < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The controlTypeGroupId property
            @control_type_group_id
            ## 
            # The name of the program control type
            @display_name
            ## 
            ## Instantiates a new programControlType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the controlTypeGroupId property value. The controlTypeGroupId property
            ## @return a string
            ## 
            def control_type_group_id
                return @control_type_group_id
            end
            ## 
            ## Sets the controlTypeGroupId property value. The controlTypeGroupId property
            ## @param value Value to set for the control_type_group_id property.
            ## @return a void
            ## 
            def control_type_group_id=(value)
                @control_type_group_id = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a program_control_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ProgramControlType.new
            end
            ## 
            ## Gets the displayName property value. The name of the program control type
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The name of the program control type
            ## @param value Value to set for the display_name property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "controlTypeGroupId" => lambda {|n| @control_type_group_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
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
                writer.write_string_value("controlTypeGroupId", @control_type_group_id)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
