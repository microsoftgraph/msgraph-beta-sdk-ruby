require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class DeploymentState
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The effectiveValue property
                @effective_value
                ## 
                # The OdataType property
                @odata_type
                ## 
                # Specifies the reasons the deployment has its state value. Read-only.
                @reasons
                ## 
                # The requestedValue property
                @requested_value
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
                ## Instantiates a new deploymentState and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a deployment_state
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DeploymentState.new
                end
                ## 
                ## Gets the effectiveValue property value. The effectiveValue property
                ## @return a deployment_state_value
                ## 
                def effective_value
                    return @effective_value
                end
                ## 
                ## Sets the effectiveValue property value. The effectiveValue property
                ## @param value Value to set for the effectiveValue property.
                ## @return a void
                ## 
                def effective_value=(value)
                    @effective_value = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "effectiveValue" => lambda {|n| @effective_value = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentStateValue) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "reasons" => lambda {|n| @reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentStateReason.create_from_discriminator_value(pn) }) },
                        "requestedValue" => lambda {|n| @requested_value = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::RequestedDeploymentStateValue) },
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
                ## Gets the reasons property value. Specifies the reasons the deployment has its state value. Read-only.
                ## @return a deployment_state_reason
                ## 
                def reasons
                    return @reasons
                end
                ## 
                ## Sets the reasons property value. Specifies the reasons the deployment has its state value. Read-only.
                ## @param value Value to set for the reasons property.
                ## @return a void
                ## 
                def reasons=(value)
                    @reasons = value
                end
                ## 
                ## Gets the requestedValue property value. The requestedValue property
                ## @return a requested_deployment_state_value
                ## 
                def requested_value
                    return @requested_value
                end
                ## 
                ## Sets the requestedValue property value. The requestedValue property
                ## @param value Value to set for the requestedValue property.
                ## @return a void
                ## 
                def requested_value=(value)
                    @requested_value = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("effectiveValue", @effective_value)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_collection_of_object_values("reasons", @reasons)
                    writer.write_enum_value("requestedValue", @requested_value)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
