require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CanvasLayout < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Collection of horizontal sections on the SharePoint page.
            @horizontal_sections
            ## 
            # Vertical section on the SharePoint page.
            @vertical_section
            ## 
            ## Instantiates a new canvasLayout and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a canvas_layout
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CanvasLayout.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "horizontalSections" => lambda {|n| @horizontal_sections = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::HorizontalSection.create_from_discriminator_value(pn) }) },
                    "verticalSection" => lambda {|n| @vertical_section = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VerticalSection.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the horizontalSections property value. Collection of horizontal sections on the SharePoint page.
            ## @return a horizontal_section
            ## 
            def horizontal_sections
                return @horizontal_sections
            end
            ## 
            ## Sets the horizontalSections property value. Collection of horizontal sections on the SharePoint page.
            ## @param value Value to set for the horizontalSections property.
            ## @return a void
            ## 
            def horizontal_sections=(value)
                @horizontal_sections = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("horizontalSections", @horizontal_sections)
                writer.write_object_value("verticalSection", @vertical_section)
            end
            ## 
            ## Gets the verticalSection property value. Vertical section on the SharePoint page.
            ## @return a vertical_section
            ## 
            def vertical_section
                return @vertical_section
            end
            ## 
            ## Sets the verticalSection property value. Vertical section on the SharePoint page.
            ## @param value Value to set for the verticalSection property.
            ## @return a void
            ## 
            def vertical_section=(value)
                @vertical_section = value
            end
        end
    end
end
