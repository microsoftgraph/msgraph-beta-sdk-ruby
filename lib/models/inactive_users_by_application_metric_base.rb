require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InactiveUsersByApplicationMetricBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appId property
            @app_id
            ## 
            # The factDate property
            @fact_date
            ## 
            # The inactive30DayCount property
            @inactive30_day_count
            ## 
            # The inactive60DayCount property
            @inactive60_day_count
            ## 
            # The inactive90DayCount property
            @inactive90_day_count
            ## 
            ## Gets the appId property value. The appId property
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The appId property
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Instantiates a new inactiveUsersByApplicationMetricBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a inactive_users_by_application_metric_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.dailyInactiveUsersByApplicationMetric"
                            return DailyInactiveUsersByApplicationMetric.new
                        when "#microsoft.graph.monthlyInactiveUsersByApplicationMetric"
                            return MonthlyInactiveUsersByApplicationMetric.new
                    end
                end
                return InactiveUsersByApplicationMetricBase.new
            end
            ## 
            ## Gets the factDate property value. The factDate property
            ## @return a date
            ## 
            def fact_date
                return @fact_date
            end
            ## 
            ## Sets the factDate property value. The factDate property
            ## @param value Value to set for the factDate property.
            ## @return a void
            ## 
            def fact_date=(value)
                @fact_date = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "inactive30DayCount" => lambda {|n| @inactive30_day_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "inactive60DayCount" => lambda {|n| @inactive60_day_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "inactive90DayCount" => lambda {|n| @inactive90_day_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inactive30DayCount property value. The inactive30DayCount property
            ## @return a int64
            ## 
            def inactive30_day_count
                return @inactive30_day_count
            end
            ## 
            ## Sets the inactive30DayCount property value. The inactive30DayCount property
            ## @param value Value to set for the inactive30DayCount property.
            ## @return a void
            ## 
            def inactive30_day_count=(value)
                @inactive30_day_count = value
            end
            ## 
            ## Gets the inactive60DayCount property value. The inactive60DayCount property
            ## @return a int64
            ## 
            def inactive60_day_count
                return @inactive60_day_count
            end
            ## 
            ## Sets the inactive60DayCount property value. The inactive60DayCount property
            ## @param value Value to set for the inactive60DayCount property.
            ## @return a void
            ## 
            def inactive60_day_count=(value)
                @inactive60_day_count = value
            end
            ## 
            ## Gets the inactive90DayCount property value. The inactive90DayCount property
            ## @return a int64
            ## 
            def inactive90_day_count
                return @inactive90_day_count
            end
            ## 
            ## Sets the inactive90DayCount property value. The inactive90DayCount property
            ## @param value Value to set for the inactive90DayCount property.
            ## @return a void
            ## 
            def inactive90_day_count=(value)
                @inactive90_day_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("appId", @app_id)
                writer.write_date_value("factDate", @fact_date)
                writer.write_object_value("inactive30DayCount", @inactive30_day_count)
                writer.write_object_value("inactive60DayCount", @inactive60_day_count)
                writer.write_object_value("inactive90DayCount", @inactive90_day_count)
            end
        end
    end
end
