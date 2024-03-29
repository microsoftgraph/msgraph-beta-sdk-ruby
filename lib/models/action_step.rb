require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ActionStep
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # A link to the documentation or Azure portal page that is associated with the action step.
            @action_url
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the position for this action in the order of the collection of actions to be taken.
            @step_number
            ## 
            # Friendly description of the action to take.
            @text
            ## 
            ## Gets the actionUrl property value. A link to the documentation or Azure portal page that is associated with the action step.
            ## @return a action_url
            ## 
            def action_url
                return @action_url
            end
            ## 
            ## Sets the actionUrl property value. A link to the documentation or Azure portal page that is associated with the action step.
            ## @param value Value to set for the actionUrl property.
            ## @return a void
            ## 
            def action_url=(value)
                @action_url = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new actionStep and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a action_step
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActionStep.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionUrl" => lambda {|n| @action_url = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ActionUrl.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "stepNumber" => lambda {|n| @step_number = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "text" => lambda {|n| @text = n.get_string_value() },
                }
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("actionUrl", @action_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("stepNumber", @step_number)
                writer.write_string_value("text", @text)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the stepNumber property value. Indicates the position for this action in the order of the collection of actions to be taken.
            ## @return a int64
            ## 
            def step_number
                return @step_number
            end
            ## 
            ## Sets the stepNumber property value. Indicates the position for this action in the order of the collection of actions to be taken.
            ## @param value Value to set for the stepNumber property.
            ## @return a void
            ## 
            def step_number=(value)
                @step_number = value
            end
            ## 
            ## Gets the text property value. Friendly description of the action to take.
            ## @return a string
            ## 
            def text
                return @text
            end
            ## 
            ## Sets the text property value. Friendly description of the action to take.
            ## @param value Value to set for the text property.
            ## @return a void
            ## 
            def text=(value)
                @text = value
            end
        end
    end
end
