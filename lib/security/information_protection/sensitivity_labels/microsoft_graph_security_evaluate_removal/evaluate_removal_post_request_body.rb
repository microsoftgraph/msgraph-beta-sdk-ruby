require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../../models/security_content_info'
require_relative '../../../../models/security_downgrade_justification'
require_relative '../../../security'
require_relative '../../information_protection'
require_relative '../sensitivity_labels'
require_relative './microsoft_graph_security_evaluate_removal'

module MicrosoftGraphBeta
    module Security
        module InformationProtection
            module SensitivityLabels
                module MicrosoftGraphSecurityEvaluateRemoval
                    class EvaluateRemovalPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The contentInfo property
                        @content_info
                        ## 
                        # The downgradeJustification property
                        @downgrade_justification
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
                        ## Instantiates a new evaluateRemovalPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Gets the contentInfo property value. The contentInfo property
                        ## @return a security_content_info
                        ## 
                        def content_info
                            return @content_info
                        end
                        ## 
                        ## Sets the contentInfo property value. The contentInfo property
                        ## @param value Value to set for the contentInfo property.
                        ## @return a void
                        ## 
                        def content_info=(value)
                            @content_info = value
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a evaluate_removal_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return EvaluateRemovalPostRequestBody.new
                        end
                        ## 
                        ## Gets the downgradeJustification property value. The downgradeJustification property
                        ## @return a security_downgrade_justification
                        ## 
                        def downgrade_justification
                            return @downgrade_justification
                        end
                        ## 
                        ## Sets the downgradeJustification property value. The downgradeJustification property
                        ## @param value Value to set for the downgradeJustification property.
                        ## @return a void
                        ## 
                        def downgrade_justification=(value)
                            @downgrade_justification = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "contentInfo" => lambda {|n| @content_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityContentInfo.create_from_discriminator_value(pn) }) },
                                "downgradeJustification" => lambda {|n| @downgrade_justification = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDowngradeJustification.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("contentInfo", @content_info)
                            writer.write_object_value("downgradeJustification", @downgrade_justification)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
