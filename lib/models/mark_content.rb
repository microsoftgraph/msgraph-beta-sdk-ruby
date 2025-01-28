require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MarkContent < MicrosoftGraphBeta::Models::LabelActionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The fontColor property
            @font_color
            ## 
            # The fontSize property
            @font_size
            ## 
            # The text property
            @text
            ## 
            ## Instantiates a new MarkContent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.markContent"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mark_content
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.addFooter"
                            return AddFooter.new
                        when "#microsoft.graph.addHeader"
                            return AddHeader.new
                        when "#microsoft.graph.addWatermark"
                            return AddWatermark.new
                    end
                end
                return MarkContent.new
            end
            ## 
            ## Gets the fontColor property value. The fontColor property
            ## @return a string
            ## 
            def font_color
                return @font_color
            end
            ## 
            ## Sets the fontColor property value. The fontColor property
            ## @param value Value to set for the fontColor property.
            ## @return a void
            ## 
            def font_color=(value)
                @font_color = value
            end
            ## 
            ## Gets the fontSize property value. The fontSize property
            ## @return a int64
            ## 
            def font_size
                return @font_size
            end
            ## 
            ## Sets the fontSize property value. The fontSize property
            ## @param value Value to set for the fontSize property.
            ## @return a void
            ## 
            def font_size=(value)
                @font_size = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "fontColor" => lambda {|n| @font_color = n.get_string_value() },
                    "fontSize" => lambda {|n| @font_size = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_string_value() },
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
                writer.write_string_value("fontColor", @font_color)
                writer.write_object_value("fontSize", @font_size)
                writer.write_string_value("text", @text)
            end
            ## 
            ## Gets the text property value. The text property
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. The text property
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
