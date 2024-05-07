require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DailyInactiveUsersMetric < MicrosoftGraphBeta::Models::InactiveUsersMetricBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The inactive1DayCount property
            @inactive1_day_count
            ## 
            ## Instantiates a new DailyInactiveUsersMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a daily_inactive_users_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DailyInactiveUsersMetric.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inactive1DayCount" => lambda {|n| @inactive1_day_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inactive1DayCount property value. The inactive1DayCount property
            ## @return a int64
            ## 
            def inactive1_day_count
                return @inactive1_day_count
            end
            ## 
            ## Sets the inactive1DayCount property value. The inactive1DayCount property
            ## @param value Value to set for the inactive1DayCount property.
            ## @return a void
            ## 
            def inactive1_day_count=(value)
                @inactive1_day_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("inactive1DayCount", @inactive1_day_count)
            end
        end
    end
end
