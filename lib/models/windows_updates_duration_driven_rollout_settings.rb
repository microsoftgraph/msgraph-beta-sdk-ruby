require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './windows_updates/windows_updates'

module MicrosoftGraphBeta
    module Models
        class WindowsUpdatesDurationDrivenRolloutSettings < MicrosoftGraphBeta::Models::WindowsUpdatesGradualRolloutSettings
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The target duration of the rollout. Given durationBetweenOffers and durationUntilDeploymentEnd, the system will automatically calculate how many devices are in each offering.
            @duration_until_deployment_end
            ## 
            ## Instantiates a new durationDrivenRolloutSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.windowsUpdates.durationDrivenRolloutSettings"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_updates_duration_driven_rollout_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsUpdatesDurationDrivenRolloutSettings.new
            end
            ## 
            ## Gets the durationUntilDeploymentEnd property value. The target duration of the rollout. Given durationBetweenOffers and durationUntilDeploymentEnd, the system will automatically calculate how many devices are in each offering.
            ## @return a microsoft_kiota_abstractions::_i_s_o_duration
            ## 
            def duration_until_deployment_end
                return @duration_until_deployment_end
            end
            ## 
            ## Sets the durationUntilDeploymentEnd property value. The target duration of the rollout. Given durationBetweenOffers and durationUntilDeploymentEnd, the system will automatically calculate how many devices are in each offering.
            ## @param value Value to set for the durationUntilDeploymentEnd property.
            ## @return a void
            ## 
            def duration_until_deployment_end=(value)
                @duration_until_deployment_end = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "durationUntilDeploymentEnd" => lambda {|n| @duration_until_deployment_end = n.get_duration_value() },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_duration_value("durationUntilDeploymentEnd", @duration_until_deployment_end)
            end
        end
    end
end
