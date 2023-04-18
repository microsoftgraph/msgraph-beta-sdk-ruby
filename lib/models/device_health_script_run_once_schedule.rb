require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DeviceHealthScriptRunOnceSchedule < MicrosoftGraphBeta::Models::DeviceHealthScriptTimeSchedule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The date the script is scheduled to run. This collection can contain a maximum of 20 elements.
            @date
            ## 
            ## Instantiates a new DeviceHealthScriptRunOnceSchedule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.deviceHealthScriptRunOnceSchedule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_health_script_run_once_schedule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceHealthScriptRunOnceSchedule.new
            end
            ## 
            ## Gets the date property value. The date the script is scheduled to run. This collection can contain a maximum of 20 elements.
            ## @return a date
            ## 
            def date
                return @date
            end
            ## 
            ## Sets the date property value. The date the script is scheduled to run. This collection can contain a maximum of 20 elements.
            ## @param value Value to set for the date property.
            ## @return a void
            ## 
            def date=(value)
                @date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "date" => lambda {|n| @date = n.get_date_value() },
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
                writer.write_date_value("date", @date)
            end
        end
    end
end
