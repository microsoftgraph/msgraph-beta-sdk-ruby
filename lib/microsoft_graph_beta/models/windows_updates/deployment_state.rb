require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class DeploymentState
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
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
        # The value property
        @value
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
        ## Instantiates a new deploymentState and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a deployment_state
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DeploymentState.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "reasons" => lambda {|n| @reasons = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentStateReason.create_from_discriminator_value(pn) }) },
                "requestedValue" => lambda {|n| @requested_value = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::RequestedDeploymentStateValue) },
                "value" => lambda {|n| @value = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsUpdates::DeploymentStateValue) },
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
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_collection_of_object_values("reasons", @reasons)
            writer.write_enum_value("requestedValue", @requested_value)
            writer.write_enum_value("value", @value)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the value property value. The value property
        ## @return a deployment_state_value
        ## 
        def value
            return @value
        end
        ## 
        ## Sets the value property value. The value property
        ## @param value Value to set for the value property.
        ## @return a void
        ## 
        def value=(value)
            @value = value
        end
    end
end
