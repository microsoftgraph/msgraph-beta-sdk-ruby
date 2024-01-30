require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ParentLabelDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The color that the user interface should display for the label, if configured.
            @color
            ## 
            # The admin-defined description for the label.
            @description
            ## 
            # The label ID is a globally unique identifier (GUID).
            @id
            ## 
            # Indicates whether the label is active or not. Active labels should be hidden or disabled in user interfaces.
            @is_active
            ## 
            # The plaintext name of the label.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The parent property
            @parent
            ## 
            # The sensitivity value of the label, where lower is less sensitive.
            @sensitivity
            ## 
            # The tooltip that should be displayed for the label in a user interface.
            @tooltip
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the color property value. The color that the user interface should display for the label, if configured.
            ## @return a string
            ## 
            def color
                return @color
            end
            ## 
            ## Sets the color property value. The color that the user interface should display for the label, if configured.
            ## @param value Value to set for the color property.
            ## @return a void
            ## 
            def color=(value)
                @color = value
            end
            ## 
            ## Instantiates a new parentLabelDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a parent_label_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.labelDetails"
                            return LabelDetails.new
                    end
                end
                return ParentLabelDetails.new
            end
            ## 
            ## Gets the description property value. The admin-defined description for the label.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. The admin-defined description for the label.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "color" => lambda {|n| @color = n.get_string_value() },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ParentLabelDetails.create_from_discriminator_value(pn) }) },
                    "sensitivity" => lambda {|n| @sensitivity = n.get_number_value() },
                    "tooltip" => lambda {|n| @tooltip = n.get_string_value() },
                }
            end
            ## 
            ## Gets the id property value. The label ID is a globally unique identifier (GUID).
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The label ID is a globally unique identifier (GUID).
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in user interfaces.
            ## @return a boolean
            ## 
            def is_active
                return @is_active
            end
            ## 
            ## Sets the isActive property value. Indicates whether the label is active or not. Active labels should be hidden or disabled in user interfaces.
            ## @param value Value to set for the isActive property.
            ## @return a void
            ## 
            def is_active=(value)
                @is_active = value
            end
            ## 
            ## Gets the name property value. The plaintext name of the label.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The plaintext name of the label.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the parent property value. The parent property
            ## @return a parent_label_details
            ## 
            def parent
                return @parent
            end
            ## 
            ## Sets the parent property value. The parent property
            ## @param value Value to set for the parent property.
            ## @return a void
            ## 
            def parent=(value)
                @parent = value
            end
            ## 
            ## Gets the sensitivity property value. The sensitivity value of the label, where lower is less sensitive.
            ## @return a integer
            ## 
            def sensitivity
                return @sensitivity
            end
            ## 
            ## Sets the sensitivity property value. The sensitivity value of the label, where lower is less sensitive.
            ## @param value Value to set for the sensitivity property.
            ## @return a void
            ## 
            def sensitivity=(value)
                @sensitivity = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("color", @color)
                writer.write_string_value("description", @description)
                writer.write_string_value("id", @id)
                writer.write_boolean_value("isActive", @is_active)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("parent", @parent)
                writer.write_number_value("sensitivity", @sensitivity)
                writer.write_string_value("tooltip", @tooltip)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tooltip property value. The tooltip that should be displayed for the label in a user interface.
            ## @return a string
            ## 
            def tooltip
                return @tooltip
            end
            ## 
            ## Sets the tooltip property value. The tooltip that should be displayed for the label in a user interface.
            ## @param value Value to set for the tooltip property.
            ## @return a void
            ## 
            def tooltip=(value)
                @tooltip = value
            end
        end
    end
end
