require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MonthlyInactiveUsersByApplicationMetric < MicrosoftGraphBeta::Models::InactiveUsersByApplicationMetricBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The inactiveCalendarMonthCount property
            @inactive_calendar_month_count
            ## 
            ## Instantiates a new MonthlyInactiveUsersByApplicationMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a monthly_inactive_users_by_application_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MonthlyInactiveUsersByApplicationMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inactiveCalendarMonthCount" => lambda {|n| @inactive_calendar_month_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inactiveCalendarMonthCount property value. The inactiveCalendarMonthCount property
            ## @return a int64
            ## 
            def inactive_calendar_month_count
                return @inactive_calendar_month_count
            end
            ## 
            ## Sets the inactiveCalendarMonthCount property value. The inactiveCalendarMonthCount property
            ## @param value Value to set for the inactiveCalendarMonthCount property.
            ## @return a void
            ## 
            def inactive_calendar_month_count=(value)
                @inactive_calendar_month_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("inactiveCalendarMonthCount", @inactive_calendar_month_count)
            end
        end
    end
end
