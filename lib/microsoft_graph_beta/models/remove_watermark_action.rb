require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class RemoveWatermarkAction < MicrosoftGraphBeta::Models::InformationProtectionAction
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The name of the UI element of footer to be removed.
        @ui_element_names
        ## 
        ## Instantiates a new RemoveWatermarkAction and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.removeWatermarkAction"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a remove_watermark_action
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return RemoveWatermarkAction.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "uiElementNames" => lambda {|n| @ui_element_names = n.get_collection_of_primitive_values(String) },
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
            writer.write_collection_of_primitive_values("uiElementNames", @ui_element_names)
        end
        ## 
        ## Gets the uiElementNames property value. The name of the UI element of footer to be removed.
        ## @return a string
        ## 
        def ui_element_names
            return @ui_element_names
        end
        ## 
        ## Sets the uiElementNames property value. The name of the UI element of footer to be removed.
        ## @param value Value to set for the uiElementNames property.
        ## @return a void
        ## 
        def ui_element_names=(value)
            @ui_element_names = value
        end
    end
end
