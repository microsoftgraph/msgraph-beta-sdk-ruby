require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class PlannerFieldRules
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The default rules that apply if no override matches to the current data.
        @default_rules
        ## 
        # The OdataType property
        @odata_type
        ## 
        # Overrides that specify different rules for specific data associated with the field.
        @overrides
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
        ## Instantiates a new plannerFieldRules and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a planner_field_rules
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PlannerFieldRules.new
        end
        ## 
        ## Gets the defaultRules property value. The default rules that apply if no override matches to the current data.
        ## @return a string
        ## 
        def default_rules
            return @default_rules
        end
        ## 
        ## Sets the defaultRules property value. The default rules that apply if no override matches to the current data.
        ## @param value Value to set for the default_rules property.
        ## @return a void
        ## 
        def default_rules=(value)
            @default_rules = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "defaultRules" => lambda {|n| @default_rules = n.get_collection_of_primitive_values(String) },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "overrides" => lambda {|n| @overrides = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PlannerRuleOverride.create_from_discriminator_value(pn) }) },
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
        ## @param value Value to set for the odata_type property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Gets the overrides property value. Overrides that specify different rules for specific data associated with the field.
        ## @return a planner_rule_override
        ## 
        def overrides
            return @overrides
        end
        ## 
        ## Sets the overrides property value. Overrides that specify different rules for specific data associated with the field.
        ## @param value Value to set for the overrides property.
        ## @return a void
        ## 
        def overrides=(value)
            @overrides = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("defaultRules", @default_rules)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("overrides", @overrides)
            writer.write_additional_data(@additional_data)
        end
    end
end
