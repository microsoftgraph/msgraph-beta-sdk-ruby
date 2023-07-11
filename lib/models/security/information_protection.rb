require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class InformationProtection < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Read the Microsoft Purview Information Protection policy settings for the user or organization.
                @label_policy_settings
                ## 
                # Read the Microsoft Purview Information Protection labels for the user or organization.
                @sensitivity_labels
                ## 
                ## Instantiates a new informationProtection and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a information_protection
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return InformationProtection.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "labelPolicySettings" => lambda {|n| @label_policy_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::InformationProtectionPolicySetting.create_from_discriminator_value(pn) }) },
                        "sensitivityLabels" => lambda {|n| @sensitivity_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Security::SensitivityLabel.create_from_discriminator_value(pn) }) },
                    })
                end
                ## 
                ## Gets the labelPolicySettings property value. Read the Microsoft Purview Information Protection policy settings for the user or organization.
                ## @return a information_protection_policy_setting
                ## 
                def label_policy_settings
                    return @label_policy_settings
                end
                ## 
                ## Sets the labelPolicySettings property value. Read the Microsoft Purview Information Protection policy settings for the user or organization.
                ## @param value Value to set for the label_policy_settings property.
                ## @return a void
                ## 
                def label_policy_settings=(value)
                    @label_policy_settings = value
                end
                ## 
                ## Gets the sensitivityLabels property value. Read the Microsoft Purview Information Protection labels for the user or organization.
                ## @return a sensitivity_label
                ## 
                def sensitivity_labels
                    return @sensitivity_labels
                end
                ## 
                ## Sets the sensitivityLabels property value. Read the Microsoft Purview Information Protection labels for the user or organization.
                ## @param value Value to set for the sensitivity_labels property.
                ## @return a void
                ## 
                def sensitivity_labels=(value)
                    @sensitivity_labels = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_object_value("labelPolicySettings", @label_policy_settings)
                    writer.write_collection_of_object_values("sensitivityLabels", @sensitivity_labels)
                end
            end
        end
    end
end
