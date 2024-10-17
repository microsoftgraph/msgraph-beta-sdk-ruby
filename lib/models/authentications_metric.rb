require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AuthenticationsMetric < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the Microsoft Entra application. Supports $filter (eq).
            @appid
            ## 
            # The number of authentication requests made in the specified period. Supports $filter (eq).
            @attempts_count
            ## 
            # The authFlow property
            @auth_flow
            ## 
            # The browser property
            @browser
            ## 
            # The location where the customers authenticated from. Supports $filter (eq).
            @country
            ## 
            # The date of the user insight.
            @fact_date
            ## 
            # The failures property
            @failures
            ## 
            # The identityProvider property
            @identity_provider
            ## 
            # The language property
            @language
            ## 
            # The platform for the device that the customers used. Supports $filter (eq).
            @os
            ## 
            # Number of successful authentication requests. Supports $filter (eq).
            @success_count
            ## 
            ## Gets the appid property value. The ID of the Microsoft Entra application. Supports $filter (eq).
            ## @return a string
            ## 
            def appid
                return @appid
            end
            ## 
            ## Sets the appid property value. The ID of the Microsoft Entra application. Supports $filter (eq).
            ## @param value Value to set for the appid property.
            ## @return a void
            ## 
            def appid=(value)
                @appid = value
            end
            ## 
            ## Gets the attemptsCount property value. The number of authentication requests made in the specified period. Supports $filter (eq).
            ## @return a int64
            ## 
            def attempts_count
                return @attempts_count
            end
            ## 
            ## Sets the attemptsCount property value. The number of authentication requests made in the specified period. Supports $filter (eq).
            ## @param value Value to set for the attemptsCount property.
            ## @return a void
            ## 
            def attempts_count=(value)
                @attempts_count = value
            end
            ## 
            ## Gets the authFlow property value. The authFlow property
            ## @return a string
            ## 
            def auth_flow
                return @auth_flow
            end
            ## 
            ## Sets the authFlow property value. The authFlow property
            ## @param value Value to set for the authFlow property.
            ## @return a void
            ## 
            def auth_flow=(value)
                @auth_flow = value
            end
            ## 
            ## Gets the browser property value. The browser property
            ## @return a string
            ## 
            def browser
                return @browser
            end
            ## 
            ## Sets the browser property value. The browser property
            ## @param value Value to set for the browser property.
            ## @return a void
            ## 
            def browser=(value)
                @browser = value
            end
            ## 
            ## Instantiates a new AuthenticationsMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the country property value. The location where the customers authenticated from. Supports $filter (eq).
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. The location where the customers authenticated from. Supports $filter (eq).
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a authentications_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AuthenticationsMetric.new
            end
            ## 
            ## Gets the factDate property value. The date of the user insight.
            ## @return a date
            ## 
            def fact_date
                return @fact_date
            end
            ## 
            ## Sets the factDate property value. The date of the user insight.
            ## @param value Value to set for the factDate property.
            ## @return a void
            ## 
            def fact_date=(value)
                @fact_date = value
            end
            ## 
            ## Gets the failures property value. The failures property
            ## @return a authentication_failure
            ## 
            def failures
                return @failures
            end
            ## 
            ## Sets the failures property value. The failures property
            ## @param value Value to set for the failures property.
            ## @return a void
            ## 
            def failures=(value)
                @failures = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appid" => lambda {|n| @appid = n.get_string_value() },
                    "attemptsCount" => lambda {|n| @attempts_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "authFlow" => lambda {|n| @auth_flow = n.get_string_value() },
                    "browser" => lambda {|n| @browser = n.get_string_value() },
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "failures" => lambda {|n| @failures = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationFailure.create_from_discriminator_value(pn) }) },
                    "identityProvider" => lambda {|n| @identity_provider = n.get_string_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "os" => lambda {|n| @os = n.get_string_value() },
                    "successCount" => lambda {|n| @success_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the identityProvider property value. The identityProvider property
            ## @return a string
            ## 
            def identity_provider
                return @identity_provider
            end
            ## 
            ## Sets the identityProvider property value. The identityProvider property
            ## @param value Value to set for the identityProvider property.
            ## @return a void
            ## 
            def identity_provider=(value)
                @identity_provider = value
            end
            ## 
            ## Gets the language property value. The language property
            ## @return a string
            ## 
            def language
                return @language
            end
            ## 
            ## Sets the language property value. The language property
            ## @param value Value to set for the language property.
            ## @return a void
            ## 
            def language=(value)
                @language = value
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
                writer.write_string_value("appid", @appid)
                writer.write_object_value("attemptsCount", @attempts_count)
                writer.write_string_value("authFlow", @auth_flow)
                writer.write_string_value("browser", @browser)
                writer.write_string_value("country", @country)
                writer.write_date_value("factDate", @fact_date)
                writer.write_collection_of_object_values("failures", @failures)
                writer.write_string_value("identityProvider", @identity_provider)
                writer.write_string_value("language", @language)
                writer.write_string_value("os", @os)
                writer.write_object_value("successCount", @success_count)
            end
            ## 
            ## Gets the successCount property value. Number of successful authentication requests. Supports $filter (eq).
            ## @return a int64
            ## 
            def success_count
                return @success_count
            end
            ## 
            ## Sets the successCount property value. Number of successful authentication requests. Supports $filter (eq).
            ## @param value Value to set for the successCount property.
            ## @return a void
            ## 
            def success_count=(value)
                @success_count = value
            end
        end
    end
end
