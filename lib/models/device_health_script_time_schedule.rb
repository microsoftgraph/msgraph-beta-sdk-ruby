require 'microsoft_kiota_abstractions'
require 'time'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Base type of Device health script time schedule.
        class DeviceHealthScriptTimeSchedule < MicrosoftGraphBeta::Models::DeviceHealthScriptRunSchedule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # At what time the script is scheduled to run. This collection can contain a maximum of 20 elements.
            @time
            ## 
            # Indicate if the time is Utc or client local time.
            @use_utc
            ## 
            ## Instantiates a new deviceHealthScriptTimeSchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceHealthScriptTimeSchedule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_time_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.deviceHealthScriptDailySchedule"
                            return DeviceHealthScriptDailySchedule.new
                        when "#microsoft.graph.deviceHealthScriptRunOnceSchedule"
                            return DeviceHealthScriptRunOnceSchedule.new
                    end
                end
                return DeviceHealthScriptTimeSchedule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "time" => lambda {|n| @time = n.get_time_value() },
                    "useUtc" => lambda {|n| @use_utc = n.get_boolean_value() },
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
                writer.write_time_value("time", @time)
                writer.write_boolean_value("useUtc", @use_utc)
            end
            ## 
            ## Gets the time property value. At what time the script is scheduled to run. This collection can contain a maximum of 20 elements.
            ## @return a time
            ## 
            def time
                return @time
            end
            ## 
            ## Sets the time property value. At what time the script is scheduled to run. This collection can contain a maximum of 20 elements.
            ## @param value Value to set for the time property.
            ## @return a void
            ## 
            def time=(value)
                @time = value
            end
            ## 
            ## Gets the useUtc property value. Indicate if the time is Utc or client local time.
            ## @return a boolean
            ## 
            def use_utc
                return @use_utc
            end
            ## 
            ## Sets the useUtc property value. Indicate if the time is Utc or client local time.
            ## @param value Value to set for the use_utc property.
            ## @return a void
            ## 
            def use_utc=(value)
                @use_utc = value
            end
        end
    end
end
