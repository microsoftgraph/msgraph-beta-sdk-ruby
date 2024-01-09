require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserInsightsRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            @daily
            ## 
            # Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            @monthly
            ## 
            ## Instantiates a new userInsightsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_insights_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserInsightsRoot.new
            end
            ## 
            ## Gets the daily property value. Summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            ## @return a daily_user_insight_metrics_root
            ## 
            def daily
                return @daily
            end
            ## 
            ## Sets the daily property value. Summaries of daily user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            ## @param value Value to set for the daily property.
            ## @return a void
            ## 
            def daily=(value)
                @daily = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "daily" => lambda {|n| @daily = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::DailyUserInsightMetricsRoot.create_from_discriminator_value(pn) }) },
                    "monthly" => lambda {|n| @monthly = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MonthlyUserInsightMetricsRoot.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the monthly property value. Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            ## @return a monthly_user_insight_metrics_root
            ## 
            def monthly
                return @monthly
            end
            ## 
            ## Sets the monthly property value. Summaries of monthly user activities on apps registered in your tenant that is configured for Microsoft Entra External ID for customers.
            ## @param value Value to set for the monthly property.
            ## @return a void
            ## 
            def monthly=(value)
                @monthly = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("daily", @daily)
                writer.write_object_value("monthly", @monthly)
            end
        end
    end
end
