require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ActiveUsersBreakdownMetric < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the Microsoft Entra application.
            @app_id
            ## 
            # Name of the application users authenticated to.
            @app_name
            ## 
            # The total number of users who made at least one authentication request within the specified time period.
            @count
            ## 
            # The date of the insight.
            @fact_date
            ## 
            # The platform for the device that the customers used. Supports $filter (eq).
            @os
            ## 
            ## Gets the appId property value. The ID of the Microsoft Entra application.
            ## @return a string
            ## 
            def app_id
                return @app_id
            end
            ## 
            ## Sets the appId property value. The ID of the Microsoft Entra application.
            ## @param value Value to set for the appId property.
            ## @return a void
            ## 
            def app_id=(value)
                @app_id = value
            end
            ## 
            ## Gets the appName property value. Name of the application users authenticated to.
            ## @return a string
            ## 
            def app_name
                return @app_name
            end
            ## 
            ## Sets the appName property value. Name of the application users authenticated to.
            ## @param value Value to set for the appName property.
            ## @return a void
            ## 
            def app_name=(value)
                @app_name = value
            end
            ## 
            ## Instantiates a new activeUsersBreakdownMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the count property value. The total number of users who made at least one authentication request within the specified time period.
            ## @return a int64
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The total number of users who made at least one authentication request within the specified time period.
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a active_users_breakdown_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ActiveUsersBreakdownMetric.new
            end
            ## 
            ## Gets the factDate property value. The date of the insight.
            ## @return a date
            ## 
            def fact_date
                return @fact_date
            end
            ## 
            ## Sets the factDate property value. The date of the insight.
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
                    "appName" => lambda {|n| @app_name = n.get_string_value() },
                    "count" => lambda {|n| @count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "os" => lambda {|n| @os = n.get_string_value() },
                })
            end
            ## 
            ## Gets the os property value. The platform for the device that the customers used. Supports $filter (eq).
            ## @return a string
            ## 
            def os
                return @os
            end
            ## 
            ## Sets the os property value. The platform for the device that the customers used. Supports $filter (eq).
            ## @param value Value to set for the os property.
            ## @return a void
            ## 
            def os=(value)
                @os = value
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
                writer.write_string_value("appName", @app_name)
                writer.write_object_value("count", @count)
                writer.write_date_value("factDate", @fact_date)
                writer.write_string_value("os", @os)
            end
        end
    end
end
