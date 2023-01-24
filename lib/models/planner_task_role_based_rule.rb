require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PlannerTaskRoleBasedRule
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # Default rule that applies when a property or action-specific rule is not provided. Possible values are: Allow, Block
        @default_rule
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Rules for specific properties and actions.
        @property_rule
        ## 
        # The role these rules apply to.
        @role
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new plannerTaskRoleBasedRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_task_role_based_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerTaskRoleBasedRule.new
        end
        ## 
        ## Gets the defaultRule property value. Default rule that applies when a property or action-specific rule is not provided. Possible values are: Allow, Block
        ## @return a string
        ## 
        def default_rule
            return @default_rule
        end
        ## 
        ## Sets the defaultRule property value. Default rule that applies when a property or action-specific rule is not provided. Possible values are: Allow, Block
        ## @param value Value to set for the defaultRule property.
        ## @return a void
        ## 
        def default_rule=(value)
            @default_rule = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "defaultRule" => lambda {|n| @default_rule = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "propertyRule" => lambda {|n| @property_rule = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTaskPropertyRule.create_from_discriminator_value(pn) }) },
                "role" => lambda {|n| @role = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::PlannerTaskConfigurationRoleBase.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the propertyRule property value. Rules for specific properties and actions.
        ## @return a planner_task_property_rule
        ## 
        def property_rule
            return @property_rule
        end
        ## 
        ## Sets the propertyRule property value. Rules for specific properties and actions.
        ## @param value Value to set for the propertyRule property.
        ## @return a void
        ## 
        def property_rule=(value)
            @property_rule = value
        end
        ## 
        ## Gets the role property value. The role these rules apply to.
        ## @return a planner_task_configuration_role_base
        ## 
        def role
            return @role
        end
        ## 
        ## Sets the role property value. The role these rules apply to.
        ## @param value Value to set for the role property.
        ## @return a void
        ## 
        def role=(value)
            @role = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("defaultRule", @default_rule)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("propertyRule", @property_rule)
            writer.write_object_value("role", @role)
            writer.write_additional_data(@additional_data)
        end
    end
end
