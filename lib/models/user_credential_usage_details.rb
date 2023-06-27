require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserCredentialUsageDetails < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authMethod property
            @auth_method
            ## 
            # The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            @event_date_time
            ## 
            # Provides the failure reason for the corresponding reset or registration workflow.
            @failure_reason
            ## 
            # The feature property
            @feature
            ## 
            # Indicates success or failure of the workflow.
            @is_success
            ## 
            # User name of the user performing the reset or registration workflow.
            @user_display_name
            ## 
            # User principal name of the user performing the reset or registration workflow.
            @user_principal_name
            ## 
            ## Gets the authMethod property value. The authMethod property
            ## @return a usage_auth_method
            ## 
            def auth_method
                return @auth_method
            end
            ## 
            ## Sets the authMethod property value. The authMethod property
            ## @param value Value to set for the auth_method property.
            ## @return a void
            ## 
            def auth_method=(value)
                @auth_method = value
            end
            ## 
            ## Instantiates a new userCredentialUsageDetails and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a user_credential_usage_details
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserCredentialUsageDetails.new
            end
            ## 
            ## Gets the eventDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @return a date_time
            ## 
            def event_date_time
                return @event_date_time
            end
            ## 
            ## Sets the eventDateTime property value. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.
            ## @param value Value to set for the event_date_time property.
            ## @return a void
            ## 
            def event_date_time=(value)
                @event_date_time = value
            end
            ## 
            ## Gets the failureReason property value. Provides the failure reason for the corresponding reset or registration workflow.
            ## @return a string
            ## 
            def failure_reason
                return @failure_reason
            end
            ## 
            ## Sets the failureReason property value. Provides the failure reason for the corresponding reset or registration workflow.
            ## @param value Value to set for the failure_reason property.
            ## @return a void
            ## 
            def failure_reason=(value)
                @failure_reason = value
            end
            ## 
            ## Gets the feature property value. The feature property
            ## @return a feature_type
            ## 
            def feature
                return @feature
            end
            ## 
            ## Sets the feature property value. The feature property
            ## @param value Value to set for the feature property.
            ## @return a void
            ## 
            def feature=(value)
                @feature = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "authMethod" => lambda {|n| @auth_method = n.get_enum_value(MicrosoftGraphBeta::Models::UsageAuthMethod) },
                    "eventDateTime" => lambda {|n| @event_date_time = n.get_date_time_value() },
                    "failureReason" => lambda {|n| @failure_reason = n.get_string_value() },
                    "feature" => lambda {|n| @feature = n.get_enum_value(MicrosoftGraphBeta::Models::FeatureType) },
                    "isSuccess" => lambda {|n| @is_success = n.get_boolean_value() },
                    "userDisplayName" => lambda {|n| @user_display_name = n.get_string_value() },
                    "userPrincipalName" => lambda {|n| @user_principal_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isSuccess property value. Indicates success or failure of the workflow.
            ## @return a boolean
            ## 
            def is_success
                return @is_success
            end
            ## 
            ## Sets the isSuccess property value. Indicates success or failure of the workflow.
            ## @param value Value to set for the is_success property.
            ## @return a void
            ## 
            def is_success=(value)
                @is_success = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("authMethod", @auth_method)
                writer.write_date_time_value("eventDateTime", @event_date_time)
                writer.write_string_value("failureReason", @failure_reason)
                writer.write_enum_value("feature", @feature)
                writer.write_boolean_value("isSuccess", @is_success)
                writer.write_string_value("userDisplayName", @user_display_name)
                writer.write_string_value("userPrincipalName", @user_principal_name)
            end
            ## 
            ## Gets the userDisplayName property value. User name of the user performing the reset or registration workflow.
            ## @return a string
            ## 
            def user_display_name
                return @user_display_name
            end
            ## 
            ## Sets the userDisplayName property value. User name of the user performing the reset or registration workflow.
            ## @param value Value to set for the user_display_name property.
            ## @return a void
            ## 
            def user_display_name=(value)
                @user_display_name = value
            end
            ## 
            ## Gets the userPrincipalName property value. User principal name of the user performing the reset or registration workflow.
            ## @return a string
            ## 
            def user_principal_name
                return @user_principal_name
            end
            ## 
            ## Sets the userPrincipalName property value. User principal name of the user performing the reset or registration workflow.
            ## @param value Value to set for the user_principal_name property.
            ## @return a void
            ## 
            def user_principal_name=(value)
                @user_principal_name = value
            end
        end
    end
end
