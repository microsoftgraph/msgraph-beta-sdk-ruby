require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NoTrainingNotificationSetting < MicrosoftGraphBeta::Models::EndUserNotificationSetting
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The simulationNotification property
            @simulation_notification
            ## 
            ## Instantiates a new noTrainingNotificationSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.noTrainingNotificationSetting"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a no_training_notification_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NoTrainingNotificationSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "simulationNotification" => lambda {|n| @simulation_notification = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SimulationNotification.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("simulationNotification", @simulation_notification)
            end
            ## 
            ## Gets the simulationNotification property value. The simulationNotification property
            ## @return a simulation_notification
            ## 
            def simulation_notification
                return @simulation_notification
            end
            ## 
            ## Sets the simulationNotification property value. The simulationNotification property
            ## @param value Value to set for the simulationNotification property.
            ## @return a void
            ## 
            def simulation_notification=(value)
                @simulation_notification = value
            end
        end
    end
end
