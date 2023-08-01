require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta
    module Models
        module WindowsUpdates
            class ScheduleSettings
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Settings for governing how to rollout content to devices. One of: microsoft.graph.windowsUpdates.dateDrivenRolloutSettings, microsoft.graph.windowsUpdates.durationDrivenRolloutSettings, or microsoft.graph.windowsUpdates.rateDrivenRolloutSettings.
                @gradual_rollout
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                @start_date_time
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
                ## Instantiates a new scheduleSettings and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a schedule_settings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ScheduleSettings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gradualRollout" => lambda {|n| @gradual_rollout = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsUpdates::GradualRolloutSettings.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "startDateTime" => lambda {|n| @start_date_time = n.get_date_time_value() },
                    }
                end
                ## 
                ## Gets the gradualRollout property value. Settings for governing how to rollout content to devices. One of: microsoft.graph.windowsUpdates.dateDrivenRolloutSettings, microsoft.graph.windowsUpdates.durationDrivenRolloutSettings, or microsoft.graph.windowsUpdates.rateDrivenRolloutSettings.
                ## @return a gradual_rollout_settings
                ## 
                def gradual_rollout
                    return @gradual_rollout
                end
                ## 
                ## Sets the gradualRollout property value. Settings for governing how to rollout content to devices. One of: microsoft.graph.windowsUpdates.dateDrivenRolloutSettings, microsoft.graph.windowsUpdates.durationDrivenRolloutSettings, or microsoft.graph.windowsUpdates.rateDrivenRolloutSettings.
                ## @param value Value to set for the gradualRollout property.
                ## @return a void
                ## 
                def gradual_rollout=(value)
                    @gradual_rollout = value
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
                    writer.write_object_value("gradualRollout", @gradual_rollout)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_date_time_value("startDateTime", @start_date_time)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the startDateTime property value. The date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @return a date_time
                ## 
                def start_date_time
                    return @start_date_time
                end
                ## 
                ## Sets the startDateTime property value. The date on which devices in the deployment start receiving the update. When not set, the deployment starts as soon as devices are assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
                ## @param value Value to set for the startDateTime property.
                ## @return a void
                ## 
                def start_date_time=(value)
                    @start_date_time = value
                end
            end
        end
    end
end
