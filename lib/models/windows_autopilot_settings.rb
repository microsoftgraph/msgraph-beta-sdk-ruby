require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The windowsAutopilotSettings resource represents a Windows Autopilot Account to sync data with Windows device data sync service.
        class WindowsAutopilotSettings < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Last data sync date time with DDS service.
            @last_manual_sync_trigger_date_time
            ## 
            # Last data sync date time with DDS service.
            @last_sync_date_time
            ## 
            # The syncStatus property
            @sync_status
            ## 
            ## Instantiates a new windowsAutopilotSettings and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a windows_autopilot_settings
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WindowsAutopilotSettings.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "lastManualSyncTriggerDateTime" => lambda {|n| @last_manual_sync_trigger_date_time = n.get_date_time_value() },
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "syncStatus" => lambda {|n| @sync_status = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsAutopilotSyncStatus) },
                })
            end
            ## 
            ## Gets the lastManualSyncTriggerDateTime property value. Last data sync date time with DDS service.
            ## @return a date_time
            ## 
            def last_manual_sync_trigger_date_time
                return @last_manual_sync_trigger_date_time
            end
            ## 
            ## Sets the lastManualSyncTriggerDateTime property value. Last data sync date time with DDS service.
            ## @param value Value to set for the lastManualSyncTriggerDateTime property.
            ## @return a void
            ## 
            def last_manual_sync_trigger_date_time=(value)
                @last_manual_sync_trigger_date_time = value
            end
            ## 
            ## Gets the lastSyncDateTime property value. Last data sync date time with DDS service.
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. Last data sync date time with DDS service.
            ## @param value Value to set for the lastSyncDateTime property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_date_time_value("lastManualSyncTriggerDateTime", @last_manual_sync_trigger_date_time)
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_enum_value("syncStatus", @sync_status)
            end
            ## 
            ## Gets the syncStatus property value. The syncStatus property
            ## @return a windows_autopilot_sync_status
            ## 
            def sync_status
                return @sync_status
            end
            ## 
            ## Sets the syncStatus property value. The syncStatus property
            ## @param value Value to set for the syncStatus property.
            ## @return a void
            ## 
            def sync_status=(value)
                @sync_status = value
            end
        end
    end
end
