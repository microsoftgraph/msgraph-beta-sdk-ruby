require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class DailyUserInsightMetricsRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Insights for active users on apps registered in the tenant for a specified period.
            @active_users
            ## 
            # Insights for the breakdown of users who were active on apps registered in the tenant for a specified period.
            @active_users_breakdown
            ## 
            # Insights for authentications on apps registered in the tenant for a specified period.
            @authentications
            ## 
            # The inactiveUsers property
            @inactive_users
            ## 
            # The inactiveUsersByApplication property
            @inactive_users_by_application
            ## 
            # Insights for MFA usage on apps registered in the tenant for a specified period.
            @mfa_completions
            ## 
            # Total sign-ups on apps registered in the tenant for a specified period.
            @sign_ups
            ## 
            # Summary of all usage insights on apps registered in the tenant for a specified period.
            @summary
            ## 
            # Insights for total users on apps registered in the tenant for a specified period.
            @user_count
            ## 
            ## Gets the activeUsers property value. Insights for active users on apps registered in the tenant for a specified period.
            ## @return a active_users_metric
            ## 
            def active_users
                return @active_users
            end
            ## 
            ## Sets the activeUsers property value. Insights for active users on apps registered in the tenant for a specified period.
            ## @param value Value to set for the activeUsers property.
            ## @return a void
            ## 
            def active_users=(value)
                @active_users = value
            end
            ## 
            ## Gets the activeUsersBreakdown property value. Insights for the breakdown of users who were active on apps registered in the tenant for a specified period.
            ## @return a active_users_breakdown_metric
            ## 
            def active_users_breakdown
                return @active_users_breakdown
            end
            ## 
            ## Sets the activeUsersBreakdown property value. Insights for the breakdown of users who were active on apps registered in the tenant for a specified period.
            ## @param value Value to set for the activeUsersBreakdown property.
            ## @return a void
            ## 
            def active_users_breakdown=(value)
                @active_users_breakdown = value
            end
            ## 
            ## Gets the authentications property value. Insights for authentications on apps registered in the tenant for a specified period.
            ## @return a authentications_metric
            ## 
            def authentications
                return @authentications
            end
            ## 
            ## Sets the authentications property value. Insights for authentications on apps registered in the tenant for a specified period.
            ## @param value Value to set for the authentications property.
            ## @return a void
            ## 
            def authentications=(value)
                @authentications = value
            end
            ## 
            ## Instantiates a new DailyUserInsightMetricsRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a daily_user_insight_metrics_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DailyUserInsightMetricsRoot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "activeUsers" => lambda {|n| @active_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActiveUsersMetric.create_from_discriminator_value(pn) }) },
                    "activeUsersBreakdown" => lambda {|n| @active_users_breakdown = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActiveUsersBreakdownMetric.create_from_discriminator_value(pn) }) },
                    "authentications" => lambda {|n| @authentications = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationsMetric.create_from_discriminator_value(pn) }) },
                    "inactiveUsers" => lambda {|n| @inactive_users = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DailyInactiveUsersMetric.create_from_discriminator_value(pn) }) },
                    "inactiveUsersByApplication" => lambda {|n| @inactive_users_by_application = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DailyInactiveUsersByApplicationMetric.create_from_discriminator_value(pn) }) },
                    "mfaCompletions" => lambda {|n| @mfa_completions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::MfaCompletionMetric.create_from_discriminator_value(pn) }) },
                    "signUps" => lambda {|n| @sign_ups = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserSignUpMetric.create_from_discriminator_value(pn) }) },
                    "summary" => lambda {|n| @summary = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::InsightSummary.create_from_discriminator_value(pn) }) },
                    "userCount" => lambda {|n| @user_count = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserCountMetric.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inactiveUsers property value. The inactiveUsers property
            ## @return a daily_inactive_users_metric
            ## 
            def inactive_users
                return @inactive_users
            end
            ## 
            ## Sets the inactiveUsers property value. The inactiveUsers property
            ## @param value Value to set for the inactiveUsers property.
            ## @return a void
            ## 
            def inactive_users=(value)
                @inactive_users = value
            end
            ## 
            ## Gets the inactiveUsersByApplication property value. The inactiveUsersByApplication property
            ## @return a daily_inactive_users_by_application_metric
            ## 
            def inactive_users_by_application
                return @inactive_users_by_application
            end
            ## 
            ## Sets the inactiveUsersByApplication property value. The inactiveUsersByApplication property
            ## @param value Value to set for the inactiveUsersByApplication property.
            ## @return a void
            ## 
            def inactive_users_by_application=(value)
                @inactive_users_by_application = value
            end
            ## 
            ## Gets the mfaCompletions property value. Insights for MFA usage on apps registered in the tenant for a specified period.
            ## @return a mfa_completion_metric
            ## 
            def mfa_completions
                return @mfa_completions
            end
            ## 
            ## Sets the mfaCompletions property value. Insights for MFA usage on apps registered in the tenant for a specified period.
            ## @param value Value to set for the mfaCompletions property.
            ## @return a void
            ## 
            def mfa_completions=(value)
                @mfa_completions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("activeUsers", @active_users)
                writer.write_collection_of_object_values("activeUsersBreakdown", @active_users_breakdown)
                writer.write_collection_of_object_values("authentications", @authentications)
                writer.write_collection_of_object_values("inactiveUsers", @inactive_users)
                writer.write_collection_of_object_values("inactiveUsersByApplication", @inactive_users_by_application)
                writer.write_collection_of_object_values("mfaCompletions", @mfa_completions)
                writer.write_collection_of_object_values("signUps", @sign_ups)
                writer.write_collection_of_object_values("summary", @summary)
                writer.write_collection_of_object_values("userCount", @user_count)
            end
            ## 
            ## Gets the signUps property value. Total sign-ups on apps registered in the tenant for a specified period.
            ## @return a user_sign_up_metric
            ## 
            def sign_ups
                return @sign_ups
            end
            ## 
            ## Sets the signUps property value. Total sign-ups on apps registered in the tenant for a specified period.
            ## @param value Value to set for the signUps property.
            ## @return a void
            ## 
            def sign_ups=(value)
                @sign_ups = value
            end
            ## 
            ## Gets the summary property value. Summary of all usage insights on apps registered in the tenant for a specified period.
            ## @return a insight_summary
            ## 
            def summary
                return @summary
            end
            ## 
            ## Sets the summary property value. Summary of all usage insights on apps registered in the tenant for a specified period.
            ## @param value Value to set for the summary property.
            ## @return a void
            ## 
            def summary=(value)
                @summary = value
            end
            ## 
            ## Gets the userCount property value. Insights for total users on apps registered in the tenant for a specified period.
            ## @return a user_count_metric
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. Insights for total users on apps registered in the tenant for a specified period.
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
        end
    end
end
