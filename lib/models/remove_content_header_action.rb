require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RemoveContentHeaderAction < MicrosoftGraphBeta::Models::InformationProtectionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The name of the UI element of the header to be removed.
            @ui_element_names
            ## 
            ## Instantiates a new RemoveContentHeaderAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.removeContentHeaderAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a remove_content_header_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RemoveContentHeaderAction.new
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
            ## Gets the uiElementNames property value. The name of the UI element of the header to be removed.
            ## @return a string
            ## 
            def ui_element_names
                return @ui_element_names
            end
            ## 
            ## Sets the uiElementNames property value. The name of the UI element of the header to be removed.
            ## @param value Value to set for the ui_element_names property.
            ## @return a void
            ## 
            def ui_element_names=(value)
                @ui_element_names = value
            end
        end
    end
end
