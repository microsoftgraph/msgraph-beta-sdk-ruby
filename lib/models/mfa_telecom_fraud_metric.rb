require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MfaTelecomFraudMetric < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The captchaFailureCount property
            @captcha_failure_count
            ## 
            # The captchaNotTriggeredUserCount property
            @captcha_not_triggered_user_count
            ## 
            # The captchaShownUserCount property
            @captcha_shown_user_count
            ## 
            # The captchaSuccessCount property
            @captcha_success_count
            ## 
            # The factDate property
            @fact_date
            ## 
            # The telecomBlockedUserCount property
            @telecom_blocked_user_count
            ## 
            ## Gets the captchaFailureCount property value. The captchaFailureCount property
            ## @return a int64
            ## 
            def captcha_failure_count
                return @captcha_failure_count
            end
            ## 
            ## Sets the captchaFailureCount property value. The captchaFailureCount property
            ## @param value Value to set for the captchaFailureCount property.
            ## @return a void
            ## 
            def captcha_failure_count=(value)
                @captcha_failure_count = value
            end
            ## 
            ## Gets the captchaNotTriggeredUserCount property value. The captchaNotTriggeredUserCount property
            ## @return a int64
            ## 
            def captcha_not_triggered_user_count
                return @captcha_not_triggered_user_count
            end
            ## 
            ## Sets the captchaNotTriggeredUserCount property value. The captchaNotTriggeredUserCount property
            ## @param value Value to set for the captchaNotTriggeredUserCount property.
            ## @return a void
            ## 
            def captcha_not_triggered_user_count=(value)
                @captcha_not_triggered_user_count = value
            end
            ## 
            ## Gets the captchaShownUserCount property value. The captchaShownUserCount property
            ## @return a int64
            ## 
            def captcha_shown_user_count
                return @captcha_shown_user_count
            end
            ## 
            ## Sets the captchaShownUserCount property value. The captchaShownUserCount property
            ## @param value Value to set for the captchaShownUserCount property.
            ## @return a void
            ## 
            def captcha_shown_user_count=(value)
                @captcha_shown_user_count = value
            end
            ## 
            ## Gets the captchaSuccessCount property value. The captchaSuccessCount property
            ## @return a int64
            ## 
            def captcha_success_count
                return @captcha_success_count
            end
            ## 
            ## Sets the captchaSuccessCount property value. The captchaSuccessCount property
            ## @param value Value to set for the captchaSuccessCount property.
            ## @return a void
            ## 
            def captcha_success_count=(value)
                @captcha_success_count = value
            end
            ## 
            ## Instantiates a new MfaTelecomFraudMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a mfa_telecom_fraud_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MfaTelecomFraudMetric.new
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
                    "captchaFailureCount" => lambda {|n| @captcha_failure_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "captchaNotTriggeredUserCount" => lambda {|n| @captcha_not_triggered_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "captchaShownUserCount" => lambda {|n| @captcha_shown_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "captchaSuccessCount" => lambda {|n| @captcha_success_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "telecomBlockedUserCount" => lambda {|n| @telecom_blocked_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("captchaFailureCount", @captcha_failure_count)
                writer.write_object_value("captchaNotTriggeredUserCount", @captcha_not_triggered_user_count)
                writer.write_object_value("captchaShownUserCount", @captcha_shown_user_count)
                writer.write_object_value("captchaSuccessCount", @captcha_success_count)
                writer.write_date_value("factDate", @fact_date)
                writer.write_object_value("telecomBlockedUserCount", @telecom_blocked_user_count)
            end
            ## 
            ## Gets the telecomBlockedUserCount property value. The telecomBlockedUserCount property
            ## @return a int64
            ## 
            def telecom_blocked_user_count
                return @telecom_blocked_user_count
            end
            ## 
            ## Sets the telecomBlockedUserCount property value. The telecomBlockedUserCount property
            ## @param value Value to set for the telecomBlockedUserCount property.
            ## @return a void
            ## 
            def telecom_blocked_user_count=(value)
                @telecom_blocked_user_count = value
            end
        end
    end
end
