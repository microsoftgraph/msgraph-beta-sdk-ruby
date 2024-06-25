require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserSignUpMetric < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The appId property
            @app_id
            ## 
            # The total number of users who signed up in the specified period. Supports $filter (eq).
            @count
            ## 
            # The country property
            @country
            ## 
            # The date of the user insight.
            @fact_date
            ## 
            # The identityProvider property
            @identity_provider
            ## 
            # The language property
            @language
            ## 
            # The device plaform that the customers used. Supports $filter (eq).
            @os
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
            ## Instantiates a new UserSignUpMetric and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the count property value. The total number of users who signed up in the specified period. Supports $filter (eq).
            ## @return a int64
            ## 
            def count
                return @count
            end
            ## 
            ## Sets the count property value. The total number of users who signed up in the specified period. Supports $filter (eq).
            ## @param value Value to set for the count property.
            ## @return a void
            ## 
            def count=(value)
                @count = value
            end
            ## 
            ## Gets the country property value. The country property
            ## @return a string
            ## 
            def country
                return @country
            end
            ## 
            ## Sets the country property value. The country property
            ## @param value Value to set for the country property.
            ## @return a void
            ## 
            def country=(value)
                @country = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_sign_up_metric
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserSignUpMetric.new
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "count" => lambda {|n| @count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "country" => lambda {|n| @country = n.get_string_value() },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "identityProvider" => lambda {|n| @identity_provider = n.get_string_value() },
                    "language" => lambda {|n| @language = n.get_string_value() },
                    "os" => lambda {|n| @os = n.get_string_value() },
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
            ## Gets the os property value. The device plaform that the customers used. Supports $filter (eq).
            ## @return a string
            ## 
            def os
                return @os
            end
            ## 
            ## Sets the os property value. The device plaform that the customers used. Supports $filter (eq).
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
                writer.write_object_value("count", @count)
                writer.write_string_value("country", @country)
                writer.write_date_value("factDate", @fact_date)
                writer.write_string_value("identityProvider", @identity_provider)
                writer.write_string_value("language", @language)
                writer.write_string_value("os", @os)
            end
        end
    end
end
