require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SensitivityPolicySettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The applicableTo property
            @applicable_to
            ## 
            # The downgradeSensitivityRequiresJustification property
            @downgrade_sensitivity_requires_justification
            ## 
            # The helpWebUrl property
            @help_web_url
            ## 
            # The isMandatory property
            @is_mandatory
            ## 
            ## Gets the applicableTo property value. The applicableTo property
            ## @return a sensitivity_policy_settings_applicable_to
            ## 
            def applicable_to
                return @applicable_to
            end
            ## 
            ## Sets the applicableTo property value. The applicableTo property
            ## @param value Value to set for the applicableTo property.
            ## @return a void
            ## 
            def applicable_to=(value)
                @applicable_to = value
            end
            ## 
            ## Instantiates a new sensitivityPolicySettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sensitivity_policy_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SensitivityPolicySettings.new
            end
            ## 
            ## Gets the downgradeSensitivityRequiresJustification property value. The downgradeSensitivityRequiresJustification property
            ## @return a boolean
            ## 
            def downgrade_sensitivity_requires_justification
                return @downgrade_sensitivity_requires_justification
            end
            ## 
            ## Sets the downgradeSensitivityRequiresJustification property value. The downgradeSensitivityRequiresJustification property
            ## @param value Value to set for the downgradeSensitivityRequiresJustification property.
            ## @return a void
            ## 
            def downgrade_sensitivity_requires_justification=(value)
                @downgrade_sensitivity_requires_justification = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicableTo" => lambda {|n| @applicable_to = n.get_enum_value(MicrosoftGraphBeta::Models::SensitivityPolicySettingsApplicableTo) },
                    "downgradeSensitivityRequiresJustification" => lambda {|n| @downgrade_sensitivity_requires_justification = n.get_boolean_value() },
                    "helpWebUrl" => lambda {|n| @help_web_url = n.get_string_value() },
                    "isMandatory" => lambda {|n| @is_mandatory = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the helpWebUrl property value. The helpWebUrl property
            ## @return a string
            ## 
            def help_web_url
                return @help_web_url
            end
            ## 
            ## Sets the helpWebUrl property value. The helpWebUrl property
            ## @param value Value to set for the helpWebUrl property.
            ## @return a void
            ## 
            def help_web_url=(value)
                @help_web_url = value
            end
            ## 
            ## Gets the isMandatory property value. The isMandatory property
            ## @return a boolean
            ## 
            def is_mandatory
                return @is_mandatory
            end
            ## 
            ## Sets the isMandatory property value. The isMandatory property
            ## @param value Value to set for the isMandatory property.
            ## @return a void
            ## 
            def is_mandatory=(value)
                @is_mandatory = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("applicableTo", @applicable_to)
                writer.write_boolean_value("downgradeSensitivityRequiresJustification", @downgrade_sensitivity_requires_justification)
                writer.write_string_value("helpWebUrl", @help_web_url)
                writer.write_boolean_value("isMandatory", @is_mandatory)
            end
        end
    end
end
