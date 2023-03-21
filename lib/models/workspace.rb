require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Workspace < MicrosoftGraphBeta::Models::Place
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Specifies the building name or building number that the workspace is in.
            @building
            ## 
            # Specifies the capacity of the workspace.
            @capacity
            ## 
            # Email address of the workspace.
            @email_address
            ## 
            # Specifies a descriptive label for the floor, for example, P.
            @floor_label
            ## 
            # Specifies the floor number that the workspace is on.
            @floor_number
            ## 
            # Specifies whether the workspace is wheelchair accessible.
            @is_wheel_chair_accessible
            ## 
            # Specifies a descriptive label for the workspace, for example, a number or name.
            @label
            ## 
            # Specifies a nickname for the workspace, for example, 'quiet workspace'.
            @nickname
            ## 
            # Specifies additional features of the workspace, for example, details like the type of view or furniture type.
            @tags
            ## 
            ## Gets the building property value. Specifies the building name or building number that the workspace is in.
            ## @return a string
            ## 
            def building
                return @building
            end
            ## 
            ## Sets the building property value. Specifies the building name or building number that the workspace is in.
            ## @param value Value to set for the building property.
            ## @return a void
            ## 
            def building=(value)
                @building = value
            end
            ## 
            ## Gets the capacity property value. Specifies the capacity of the workspace.
            ## @return a integer
            ## 
            def capacity
                return @capacity
            end
            ## 
            ## Sets the capacity property value. Specifies the capacity of the workspace.
            ## @param value Value to set for the capacity property.
            ## @return a void
            ## 
            def capacity=(value)
                @capacity = value
            end
            ## 
            ## Instantiates a new workspace and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.workspace"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a workspace
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Workspace.new
            end
            ## 
            ## Gets the emailAddress property value. Email address of the workspace.
            ## @return a string
            ## 
            def email_address
                return @email_address
            end
            ## 
            ## Sets the emailAddress property value. Email address of the workspace.
            ## @param value Value to set for the email_address property.
            ## @return a void
            ## 
            def email_address=(value)
                @email_address = value
            end
            ## 
            ## Gets the floorLabel property value. Specifies a descriptive label for the floor, for example, P.
            ## @return a string
            ## 
            def floor_label
                return @floor_label
            end
            ## 
            ## Sets the floorLabel property value. Specifies a descriptive label for the floor, for example, P.
            ## @param value Value to set for the floor_label property.
            ## @return a void
            ## 
            def floor_label=(value)
                @floor_label = value
            end
            ## 
            ## Gets the floorNumber property value. Specifies the floor number that the workspace is on.
            ## @return a integer
            ## 
            def floor_number
                return @floor_number
            end
            ## 
            ## Sets the floorNumber property value. Specifies the floor number that the workspace is on.
            ## @param value Value to set for the floor_number property.
            ## @return a void
            ## 
            def floor_number=(value)
                @floor_number = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "building" => lambda {|n| @building = n.get_string_value() },
                    "capacity" => lambda {|n| @capacity = n.get_number_value() },
                    "emailAddress" => lambda {|n| @email_address = n.get_string_value() },
                    "floorLabel" => lambda {|n| @floor_label = n.get_string_value() },
                    "floorNumber" => lambda {|n| @floor_number = n.get_number_value() },
                    "isWheelChairAccessible" => lambda {|n| @is_wheel_chair_accessible = n.get_boolean_value() },
                    "label" => lambda {|n| @label = n.get_string_value() },
                    "nickname" => lambda {|n| @nickname = n.get_string_value() },
                    "tags" => lambda {|n| @tags = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the isWheelChairAccessible property value. Specifies whether the workspace is wheelchair accessible.
            ## @return a boolean
            ## 
            def is_wheel_chair_accessible
                return @is_wheel_chair_accessible
            end
            ## 
            ## Sets the isWheelChairAccessible property value. Specifies whether the workspace is wheelchair accessible.
            ## @param value Value to set for the is_wheel_chair_accessible property.
            ## @return a void
            ## 
            def is_wheel_chair_accessible=(value)
                @is_wheel_chair_accessible = value
            end
            ## 
            ## Gets the label property value. Specifies a descriptive label for the workspace, for example, a number or name.
            ## @return a string
            ## 
            def label
                return @label
            end
            ## 
            ## Sets the label property value. Specifies a descriptive label for the workspace, for example, a number or name.
            ## @param value Value to set for the label property.
            ## @return a void
            ## 
            def label=(value)
                @label = value
            end
            ## 
            ## Gets the nickname property value. Specifies a nickname for the workspace, for example, 'quiet workspace'.
            ## @return a string
            ## 
            def nickname
                return @nickname
            end
            ## 
            ## Sets the nickname property value. Specifies a nickname for the workspace, for example, 'quiet workspace'.
            ## @param value Value to set for the nickname property.
            ## @return a void
            ## 
            def nickname=(value)
                @nickname = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("building", @building)
                writer.write_number_value("capacity", @capacity)
                writer.write_string_value("emailAddress", @email_address)
                writer.write_string_value("floorLabel", @floor_label)
                writer.write_number_value("floorNumber", @floor_number)
                writer.write_boolean_value("isWheelChairAccessible", @is_wheel_chair_accessible)
                writer.write_string_value("label", @label)
                writer.write_string_value("nickname", @nickname)
                writer.write_collection_of_primitive_values("tags", @tags)
            end
            ## 
            ## Gets the tags property value. Specifies additional features of the workspace, for example, details like the type of view or furniture type.
            ## @return a string
            ## 
            def tags
                return @tags
            end
            ## 
            ## Sets the tags property value. Specifies additional features of the workspace, for example, details like the type of view or furniture type.
            ## @param value Value to set for the tags property.
            ## @return a void
            ## 
            def tags=(value)
                @tags = value
            end
        end
    end
end
