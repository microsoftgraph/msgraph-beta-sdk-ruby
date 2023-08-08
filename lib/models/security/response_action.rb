require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class ResponseAction
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
                ## Instantiates a new responseAction and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a response_action
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.security.allowFileResponseAction"
                                return AllowFileResponseAction.new
                            when "#microsoft.graph.security.blockFileResponseAction"
                                return BlockFileResponseAction.new
                            when "#microsoft.graph.security.collectInvestigationPackageResponseAction"
                                return CollectInvestigationPackageResponseAction.new
                            when "#microsoft.graph.security.disableUserResponseAction"
                                return DisableUserResponseAction.new
                            when "#microsoft.graph.security.forceUserPasswordResetResponseAction"
                                return ForceUserPasswordResetResponseAction.new
                            when "#microsoft.graph.security.hardDeleteResponseAction"
                                return HardDeleteResponseAction.new
                            when "#microsoft.graph.security.initiateInvestigationResponseAction"
                                return InitiateInvestigationResponseAction.new
                            when "#microsoft.graph.security.isolateDeviceResponseAction"
                                return IsolateDeviceResponseAction.new
                            when "#microsoft.graph.security.markUserAsCompromisedResponseAction"
                                return MarkUserAsCompromisedResponseAction.new
                            when "#microsoft.graph.security.moveToDeletedItemsResponseAction"
                                return MoveToDeletedItemsResponseAction.new
                            when "#microsoft.graph.security.moveToInboxResponseAction"
                                return MoveToInboxResponseAction.new
                            when "#microsoft.graph.security.moveToJunkResponseAction"
                                return MoveToJunkResponseAction.new
                            when "#microsoft.graph.security.restrictAppExecutionResponseAction"
                                return RestrictAppExecutionResponseAction.new
                            when "#microsoft.graph.security.runAntivirusScanResponseAction"
                                return RunAntivirusScanResponseAction.new
                            when "#microsoft.graph.security.softDeleteResponseAction"
                                return SoftDeleteResponseAction.new
                            when "#microsoft.graph.security.stopAndQuarantineFileResponseAction"
                                return StopAndQuarantineFileResponseAction.new
                        end
                    end
                    return ResponseAction.new
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
end
