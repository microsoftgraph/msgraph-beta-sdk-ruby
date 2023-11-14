require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InsightSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The activeUsers property
            @active_users
            ## 
            # The appId property
            @app_id
            ## 
            # The authenticationCompletions property
            @authentication_completions
            ## 
            # The authenticationRequests property
            @authentication_requests
            ## 
            # The factDate property
            @fact_date
            ## 
            # The os property
            @os
            ## 
            # The securityTextCompletions property
            @security_text_completions
            ## 
            # The securityTextRequests property
            @security_text_requests
            ## 
            # The securityVoiceCompletions property
            @security_voice_completions
            ## 
            # The securityVoiceRequests property
            @security_voice_requests
            ## 
            ## Gets the activeUsers property value. The activeUsers property
            ## @return a int64
            ## 
            def active_users
                return @active_users
            end
            ## 
            ## Sets the activeUsers property value. The activeUsers property
            ## @param value Value to set for the activeUsers property.
            ## @return a void
            ## 
            def active_users=(value)
                @active_users = value
            end
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
            ## Gets the authenticationCompletions property value. The authenticationCompletions property
            ## @return a int64
            ## 
            def authentication_completions
                return @authentication_completions
            end
            ## 
            ## Sets the authenticationCompletions property value. The authenticationCompletions property
            ## @param value Value to set for the authenticationCompletions property.
            ## @return a void
            ## 
            def authentication_completions=(value)
                @authentication_completions = value
            end
            ## 
            ## Gets the authenticationRequests property value. The authenticationRequests property
            ## @return a int64
            ## 
            def authentication_requests
                return @authentication_requests
            end
            ## 
            ## Sets the authenticationRequests property value. The authenticationRequests property
            ## @param value Value to set for the authenticationRequests property.
            ## @return a void
            ## 
            def authentication_requests=(value)
                @authentication_requests = value
            end
            ## 
            ## Instantiates a new insightSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a insight_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InsightSummary.new
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
                    "activeUsers" => lambda {|n| @active_users = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "appId" => lambda {|n| @app_id = n.get_string_value() },
                    "authenticationCompletions" => lambda {|n| @authentication_completions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "authenticationRequests" => lambda {|n| @authentication_requests = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "factDate" => lambda {|n| @fact_date = n.get_date_value() },
                    "os" => lambda {|n| @os = n.get_string_value() },
                    "securityTextCompletions" => lambda {|n| @security_text_completions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "securityTextRequests" => lambda {|n| @security_text_requests = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "securityVoiceCompletions" => lambda {|n| @security_voice_completions = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "securityVoiceRequests" => lambda {|n| @security_voice_requests = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the os property value. The os property
            ## @return a string
            ## 
            def os
                return @os
            end
            ## 
            ## Sets the os property value. The os property
            ## @param value Value to set for the os property.
            ## @return a void
            ## 
            def os=(value)
                @os = value
            end
            ## 
            ## Gets the securityTextCompletions property value. The securityTextCompletions property
            ## @return a int64
            ## 
            def security_text_completions
                return @security_text_completions
            end
            ## 
            ## Sets the securityTextCompletions property value. The securityTextCompletions property
            ## @param value Value to set for the securityTextCompletions property.
            ## @return a void
            ## 
            def security_text_completions=(value)
                @security_text_completions = value
            end
            ## 
            ## Gets the securityTextRequests property value. The securityTextRequests property
            ## @return a int64
            ## 
            def security_text_requests
                return @security_text_requests
            end
            ## 
            ## Sets the securityTextRequests property value. The securityTextRequests property
            ## @param value Value to set for the securityTextRequests property.
            ## @return a void
            ## 
            def security_text_requests=(value)
                @security_text_requests = value
            end
            ## 
            ## Gets the securityVoiceCompletions property value. The securityVoiceCompletions property
            ## @return a int64
            ## 
            def security_voice_completions
                return @security_voice_completions
            end
            ## 
            ## Sets the securityVoiceCompletions property value. The securityVoiceCompletions property
            ## @param value Value to set for the securityVoiceCompletions property.
            ## @return a void
            ## 
            def security_voice_completions=(value)
                @security_voice_completions = value
            end
            ## 
            ## Gets the securityVoiceRequests property value. The securityVoiceRequests property
            ## @return a int64
            ## 
            def security_voice_requests
                return @security_voice_requests
            end
            ## 
            ## Sets the securityVoiceRequests property value. The securityVoiceRequests property
            ## @param value Value to set for the securityVoiceRequests property.
            ## @return a void
            ## 
            def security_voice_requests=(value)
                @security_voice_requests = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("activeUsers", @active_users)
                writer.write_string_value("appId", @app_id)
                writer.write_object_value("authenticationCompletions", @authentication_completions)
                writer.write_object_value("authenticationRequests", @authentication_requests)
                writer.write_date_value("factDate", @fact_date)
                writer.write_string_value("os", @os)
                writer.write_object_value("securityTextCompletions", @security_text_completions)
                writer.write_object_value("securityTextRequests", @security_text_requests)
                writer.write_object_value("securityVoiceCompletions", @security_voice_completions)
                writer.write_object_value("securityVoiceRequests", @security_voice_requests)
            end
        end
    end
end
