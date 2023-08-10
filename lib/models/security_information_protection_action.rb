require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityInformationProtectionAction
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new securityInformationProtectionAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_information_protection_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.addContentFooterAction"
                            return SecurityAddContentFooterAction.new
                        when "#microsoft.graph.security.addContentHeaderAction"
                            return SecurityAddContentHeaderAction.new
                        when "#microsoft.graph.security.addWatermarkAction"
                            return SecurityAddWatermarkAction.new
                        when "#microsoft.graph.security.applyLabelAction"
                            return SecurityApplyLabelAction.new
                        when "#microsoft.graph.security.customAction"
                            return SecurityCustomAction.new
                        when "#microsoft.graph.security.justifyAction"
                            return SecurityJustifyAction.new
                        when "#microsoft.graph.security.metadataAction"
                            return SecurityMetadataAction.new
                        when "#microsoft.graph.security.protectAdhocAction"
                            return SecurityProtectAdhocAction.new
                        when "#microsoft.graph.security.protectByTemplateAction"
                            return SecurityProtectByTemplateAction.new
                        when "#microsoft.graph.security.protectDoNotForwardAction"
                            return SecurityProtectDoNotForwardAction.new
                        when "#microsoft.graph.security.recommendLabelAction"
                            return SecurityRecommendLabelAction.new
                        when "#microsoft.graph.security.removeContentFooterAction"
                            return SecurityRemoveContentFooterAction.new
                        when "#microsoft.graph.security.removeContentHeaderAction"
                            return SecurityRemoveContentHeaderAction.new
                        when "#microsoft.graph.security.removeProtectionAction"
                            return SecurityRemoveProtectionAction.new
                        when "#microsoft.graph.security.removeWatermarkAction"
                            return SecurityRemoveWatermarkAction.new
                    end
                end
                return SecurityInformationProtectionAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
