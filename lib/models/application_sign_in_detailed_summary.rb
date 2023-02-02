require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ApplicationSignInDetailedSummary < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        @aggregated_event_date_time
        ## 
        # Name of the application that the user signed in to.
        @app_display_name
        ## 
        # ID of the application that the user signed in to.
        @app_id
        ## 
        # Count of sign-ins made by the application.
        @sign_in_count
        ## 
        # Details of the sign-in status.
        @status
        ## 
        ## Gets the aggregatedEventDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @return a date_time
        ## 
        def aggregated_event_date_time
            return @aggregated_event_date_time
        end
        ## 
        ## Sets the aggregatedEventDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
        ## @param value Value to set for the aggregated_event_date_time property.
        ## @return a void
        ## 
        def aggregated_event_date_time=(value)
            @aggregated_event_date_time = value
        end
        ## 
        ## Gets the appDisplayName property value. Name of the application that the user signed in to.
        ## @return a string
        ## 
        def app_display_name
            return @app_display_name
        end
        ## 
        ## Sets the appDisplayName property value. Name of the application that the user signed in to.
        ## @param value Value to set for the app_display_name property.
        ## @return a void
        ## 
        def app_display_name=(value)
            @app_display_name = value
        end
        ## 
        ## Gets the appId property value. ID of the application that the user signed in to.
        ## @return a string
        ## 
        def app_id
            return @app_id
        end
        ## 
        ## Sets the appId property value. ID of the application that the user signed in to.
        ## @param value Value to set for the app_id property.
        ## @return a void
        ## 
        def app_id=(value)
            @app_id = value
        end
        ## 
        ## Instantiates a new ApplicationSignInDetailedSummary and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a application_sign_in_detailed_summary
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ApplicationSignInDetailedSummary.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "aggregatedEventDateTime" => lambda {|n| @aggregated_event_date_time = n.get_date_time_value() },
                "appDisplayName" => lambda {|n| @app_display_name = n.get_string_value() },
                "appId" => lambda {|n| @app_id = n.get_string_value() },
                "signInCount" => lambda {|n| @sign_in_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SignInStatus.create_from_discriminator_value(pn) }) },
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
            writer.write_date_time_value("aggregatedEventDateTime", @aggregated_event_date_time)
            writer.write_string_value("appDisplayName", @app_display_name)
            writer.write_string_value("appId", @app_id)
            writer.write_object_value("signInCount", @sign_in_count)
            writer.write_object_value("status", @status)
        end
        ## 
        ## Gets the signInCount property value. Count of sign-ins made by the application.
        ## @return a int64
        ## 
        def sign_in_count
            return @sign_in_count
        end
        ## 
        ## Sets the signInCount property value. Count of sign-ins made by the application.
        ## @param value Value to set for the sign_in_count property.
        ## @return a void
        ## 
        def sign_in_count=(value)
            @sign_in_count = value
        end
        ## 
        ## Gets the status property value. Details of the sign-in status.
        ## @return a sign_in_status
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. Details of the sign-in status.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
    end
end
