require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class CredentialUserRegistrationCount < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Provides the total user count in the tenant.
        @total_user_count
        ## 
        # A collection of registration count and status information for users in your tenant.
        @user_registration_counts
        ## 
        ## Instantiates a new CredentialUserRegistrationCount and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a credential_user_registration_count
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return CredentialUserRegistrationCount.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "totalUserCount" => lambda {|n| @total_user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "userRegistrationCounts" => lambda {|n| @user_registration_counts = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UserRegistrationCount.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("totalUserCount", @total_user_count)
            writer.write_collection_of_object_values("userRegistrationCounts", @user_registration_counts)
        end
        ## 
        ## Gets the totalUserCount property value. Provides the total user count in the tenant.
        ## @return a int64
        ## 
        def total_user_count
            return @total_user_count
        end
        ## 
        ## Sets the totalUserCount property value. Provides the total user count in the tenant.
        ## @param value Value to set for the totalUserCount property.
        ## @return a void
        ## 
        def total_user_count=(value)
            @total_user_count = value
        end
        ## 
        ## Gets the userRegistrationCounts property value. A collection of registration count and status information for users in your tenant.
        ## @return a user_registration_count
        ## 
        def user_registration_counts
            return @user_registration_counts
        end
        ## 
        ## Sets the userRegistrationCounts property value. A collection of registration count and status information for users in your tenant.
        ## @param value Value to set for the userRegistrationCounts property.
        ## @return a void
        ## 
        def user_registration_counts=(value)
            @user_registration_counts = value
        end
    end
end
