require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CredentialUsageSummary < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The authMethod property
            @auth_method
            ## 
            # Provides the count of failed resets or registration data.
            @failure_activity_count
            ## 
            # The feature property
            @feature
            ## 
            # Provides the count of successful registrations or resets.
            @successful_activity_count
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
            ## Instantiates a new credentialUsageSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a credential_usage_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CredentialUsageSummary.new
            end
            ## 
            ## Gets the failureActivityCount property value. Provides the count of failed resets or registration data.
            ## @return a int64
            ## 
            def failure_activity_count
                return @failure_activity_count
            end
            ## 
            ## Sets the failureActivityCount property value. Provides the count of failed resets or registration data.
            ## @param value Value to set for the failure_activity_count property.
            ## @return a void
            ## 
            def failure_activity_count=(value)
                @failure_activity_count = value
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
                    "failureActivityCount" => lambda {|n| @failure_activity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    "feature" => lambda {|n| @feature = n.get_enum_value(MicrosoftGraphBeta::Models::FeatureType) },
                    "successfulActivityCount" => lambda {|n| @successful_activity_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("authMethod", @auth_method)
                writer.write_object_value("failureActivityCount", @failure_activity_count)
                writer.write_enum_value("feature", @feature)
                writer.write_object_value("successfulActivityCount", @successful_activity_count)
            end
            ## 
            ## Gets the successfulActivityCount property value. Provides the count of successful registrations or resets.
            ## @return a int64
            ## 
            def successful_activity_count
                return @successful_activity_count
            end
            ## 
            ## Sets the successfulActivityCount property value. Provides the count of successful registrations or resets.
            ## @param value Value to set for the successful_activity_count property.
            ## @return a void
            ## 
            def successful_activity_count=(value)
                @successful_activity_count = value
            end
        end
    end
end
