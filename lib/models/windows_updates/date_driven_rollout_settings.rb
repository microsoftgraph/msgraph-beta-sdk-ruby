require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './windows_updates'

module MicrosoftGraphBeta::Models::WindowsUpdates
    class DateDrivenRolloutSettings < MicrosoftGraphBeta::Models::WindowsUpdates::GradualRolloutSettings
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The endDateTime property
        @end_date_time
        ## 
        ## Instantiates a new DateDrivenRolloutSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windowsUpdates.dateDrivenRolloutSettings"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a date_driven_rollout_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return DateDrivenRolloutSettings.new
        end
        ## 
        ## Gets the endDateTime property value. The endDateTime property
        ## @return a date_time
        ## 
        def end_date_time
            return @end_date_time
        end
        ## 
        ## Sets the endDateTime property value. The endDateTime property
        ## @param value Value to set for the end_date_time property.
        ## @return a void
        ## 
        def end_date_time=(value)
            @end_date_time = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "endDateTime" => lambda {|n| @end_date_time = n.get_date_time_value() },
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
            writer.write_date_time_value("endDateTime", @end_date_time)
        end
    end
end
