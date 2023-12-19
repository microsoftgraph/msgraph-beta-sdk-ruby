require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PlannerTaskCompletionRequirementDetails
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Information about the requirements for completing the checklist.
            @checklist_requirement
            ## 
            # The formsRequirement property
            @forms_requirement
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the checklistRequirement property value. Information about the requirements for completing the checklist.
            ## @return a planner_checklist_requirement
            ## 
            def checklist_requirement
                return @checklist_requirement
            end
            ## 
            ## Sets the checklistRequirement property value. Information about the requirements for completing the checklist.
            ## @param value Value to set for the checklistRequirement property.
            ## @return a void
            ## 
            def checklist_requirement=(value)
                @checklist_requirement = value
            end
            ## 
            ## Instantiates a new plannerTaskCompletionRequirementDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a planner_task_completion_requirement_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PlannerTaskCompletionRequirementDetails.new
            end
            ## 
            ## Gets the formsRequirement property value. The formsRequirement property
            ## @return a planner_forms_requirement
            ## 
            def forms_requirement
                return @forms_requirement
            end
            ## 
            ## Sets the formsRequirement property value. The formsRequirement property
            ## @param value Value to set for the formsRequirement property.
            ## @return a void
            ## 
            def forms_requirement=(value)
                @forms_requirement = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "checklistRequirement" => lambda {|n| @checklist_requirement = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerChecklistRequirement.create_from_discriminator_value(pn) }) },
                    "formsRequirement" => lambda {|n| @forms_requirement = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerFormsRequirement.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_object_value("checklistRequirement", @checklist_requirement)
                writer.write_object_value("formsRequirement", @forms_requirement)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
