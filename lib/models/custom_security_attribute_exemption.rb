require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomSecurityAttributeExemption < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The operator property
            @operator
            ## 
            ## Instantiates a new CustomSecurityAttributeExemption and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_security_attribute_exemption
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.customSecurityAttributeStringValueExemption"
                            return CustomSecurityAttributeStringValueExemption.new
                    end
                end
                return CustomSecurityAttributeExemption.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "operator" => lambda {|n| @operator = n.get_enum_value(MicrosoftGraphBeta::Models::CustomSecurityAttributeComparisonOperator) },
                })
            end
            ## 
            ## Gets the operator property value. The operator property
            ## @return a custom_security_attribute_comparison_operator
            ## 
            def operator
                return @operator
            end
            ## 
            ## Sets the operator property value. The operator property
            ## @param value Value to set for the operator property.
            ## @return a void
            ## 
            def operator=(value)
                @operator = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("operator", @operator)
            end
        end
    end
end
