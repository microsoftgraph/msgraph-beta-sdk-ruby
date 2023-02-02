require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CloudPcRemoteActionCapability
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Indicates the state of the supported action capability to perform a Cloud PC remote action. Possible values are: enabled, disabled. Default value is enabled.
        @action_capability
        ## 
        # The name of the supported Cloud PC remote action. Possible values are: unknown, restart, rename, restore, resize, reprovision, troubleShoot, changeUserAccountType, placeUnderReview. Default value is unknown.
        @action_name
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The OdataType property
        @odata_type
        ## 
        ## Gets the actionCapability property value. Indicates the state of the supported action capability to perform a Cloud PC remote action. Possible values are: enabled, disabled. Default value is enabled.
        ## @return a action_capability
        ## 
        def action_capability
            return @action_capability
        end
        ## 
        ## Sets the actionCapability property value. Indicates the state of the supported action capability to perform a Cloud PC remote action. Possible values are: enabled, disabled. Default value is enabled.
        ## @param value Value to set for the action_capability property.
        ## @return a void
        ## 
        def action_capability=(value)
            @action_capability = value
        end
        ## 
        ## Gets the actionName property value. The name of the supported Cloud PC remote action. Possible values are: unknown, restart, rename, restore, resize, reprovision, troubleShoot, changeUserAccountType, placeUnderReview. Default value is unknown.
        ## @return a cloud_pc_remote_action_name
        ## 
        def action_name
            return @action_name
        end
        ## 
        ## Sets the actionName property value. The name of the supported Cloud PC remote action. Possible values are: unknown, restart, rename, restore, resize, reprovision, troubleShoot, changeUserAccountType, placeUnderReview. Default value is unknown.
        ## @param value Value to set for the action_name property.
        ## @return a void
        ## 
        def action_name=(value)
            @action_name = value
        end
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
        ## Instantiates a new cloudPcRemoteActionCapability and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a cloud_pc_remote_action_capability
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CloudPcRemoteActionCapability.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "actionCapability" => lambda {|n| @action_capability = n.get_enum_value(MicrosoftGraphBeta::Models::ActionCapability) },
                "actionName" => lambda {|n| @action_name = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcRemoteActionName) },
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_enum_value("actionCapability", @action_capability)
            writer.write_enum_value("actionName", @action_name)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_additional_data(@additional_data)
        end
    end
end
