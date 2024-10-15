require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcNotificationSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
            ## 
            # If true, doesn't prompt the user to restart the Cloud PC. If false, prompts the user to restart Cloud PC. The default value is false.
            @restart_prompts_disabled
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
            ## Instantiates a new CloudPcNotificationSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_notification_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcNotificationSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "restartPromptsDisabled" => lambda {|n| @restart_prompts_disabled = n.get_boolean_value() },
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
            ## Gets the restartPromptsDisabled property value. If true, doesn't prompt the user to restart the Cloud PC. If false, prompts the user to restart Cloud PC. The default value is false.
            ## @return a boolean
            ## 
            def restart_prompts_disabled
                return @restart_prompts_disabled
            end
            ## 
            ## Sets the restartPromptsDisabled property value. If true, doesn't prompt the user to restart the Cloud PC. If false, prompts the user to restart Cloud PC. The default value is false.
            ## @param value Value to set for the restartPromptsDisabled property.
            ## @return a void
            ## 
            def restart_prompts_disabled=(value)
                @restart_prompts_disabled = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("restartPromptsDisabled", @restart_prompts_disabled)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
