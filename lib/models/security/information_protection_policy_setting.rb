require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class InformationProtectionPolicySetting < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The defaultLabelId property
                @default_label_id
                ## 
                # Exposes whether justification input is required on label downgrade.
                @is_downgrade_justification_required
                ## 
                # Exposes whether mandatory labeling is enabled.
                @is_mandatory
                ## 
                # Exposes the more information URL that can be configured by the administrator.
                @more_info_url
                ## 
                ## Instantiates a new informationProtectionPolicySetting and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a information_protection_policy_setting
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return InformationProtectionPolicySetting.new
                end
                ## 
                ## Gets the defaultLabelId property value. The defaultLabelId property
                ## @return a string
                ## 
                def default_label_id
                    return @default_label_id
                end
                ## 
                ## Sets the defaultLabelId property value. The defaultLabelId property
                ## @param value Value to set for the default_label_id property.
                ## @return a void
                ## 
                def default_label_id=(value)
                    @default_label_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "defaultLabelId" => lambda {|n| @default_label_id = n.get_string_value() },
                        "isDowngradeJustificationRequired" => lambda {|n| @is_downgrade_justification_required = n.get_boolean_value() },
                        "isMandatory" => lambda {|n| @is_mandatory = n.get_boolean_value() },
                        "moreInfoUrl" => lambda {|n| @more_info_url = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the isDowngradeJustificationRequired property value. Exposes whether justification input is required on label downgrade.
                ## @return a boolean
                ## 
                def is_downgrade_justification_required
                    return @is_downgrade_justification_required
                end
                ## 
                ## Sets the isDowngradeJustificationRequired property value. Exposes whether justification input is required on label downgrade.
                ## @param value Value to set for the is_downgrade_justification_required property.
                ## @return a void
                ## 
                def is_downgrade_justification_required=(value)
                    @is_downgrade_justification_required = value
                end
                ## 
                ## Gets the isMandatory property value. Exposes whether mandatory labeling is enabled.
                ## @return a boolean
                ## 
                def is_mandatory
                    return @is_mandatory
                end
                ## 
                ## Sets the isMandatory property value. Exposes whether mandatory labeling is enabled.
                ## @param value Value to set for the is_mandatory property.
                ## @return a void
                ## 
                def is_mandatory=(value)
                    @is_mandatory = value
                end
                ## 
                ## Gets the moreInfoUrl property value. Exposes the more information URL that can be configured by the administrator.
                ## @return a string
                ## 
                def more_info_url
                    return @more_info_url
                end
                ## 
                ## Sets the moreInfoUrl property value. Exposes the more information URL that can be configured by the administrator.
                ## @param value Value to set for the more_info_url property.
                ## @return a void
                ## 
                def more_info_url=(value)
                    @more_info_url = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("defaultLabelId", @default_label_id)
                    writer.write_boolean_value("isDowngradeJustificationRequired", @is_downgrade_justification_required)
                    writer.write_boolean_value("isMandatory", @is_mandatory)
                    writer.write_string_value("moreInfoUrl", @more_info_url)
                end
            end
        end
    end
end
