require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class EntitlementManagementSettings < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # If externalUserLifecycleAction is BlockSignInAndDelete, the number of days after an external user is blocked from sign in before their account is deleted.
        @days_until_external_user_deleted_after_blocked
        ## 
        # One of None, BlockSignIn, or BlockSignInAndDelete.
        @external_user_lifecycle_action
        ## 
        ## Instantiates a new entitlementManagementSettings and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a entitlement_management_settings
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return EntitlementManagementSettings.new
        end
        ## 
        ## Gets the daysUntilExternalUserDeletedAfterBlocked property value. If externalUserLifecycleAction is BlockSignInAndDelete, the number of days after an external user is blocked from sign in before their account is deleted.
        ## @return a integer
        ## 
        def days_until_external_user_deleted_after_blocked
            return @days_until_external_user_deleted_after_blocked
        end
        ## 
        ## Sets the daysUntilExternalUserDeletedAfterBlocked property value. If externalUserLifecycleAction is BlockSignInAndDelete, the number of days after an external user is blocked from sign in before their account is deleted.
        ## @param value Value to set for the days_until_external_user_deleted_after_blocked property.
        ## @return a void
        ## 
        def days_until_external_user_deleted_after_blocked=(value)
            @days_until_external_user_deleted_after_blocked = value
        end
        ## 
        ## Gets the externalUserLifecycleAction property value. One of None, BlockSignIn, or BlockSignInAndDelete.
        ## @return a string
        ## 
        def external_user_lifecycle_action
            return @external_user_lifecycle_action
        end
        ## 
        ## Sets the externalUserLifecycleAction property value. One of None, BlockSignIn, or BlockSignInAndDelete.
        ## @param value Value to set for the external_user_lifecycle_action property.
        ## @return a void
        ## 
        def external_user_lifecycle_action=(value)
            @external_user_lifecycle_action = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "daysUntilExternalUserDeletedAfterBlocked" => lambda {|n| @days_until_external_user_deleted_after_blocked = n.get_number_value() },
                "externalUserLifecycleAction" => lambda {|n| @external_user_lifecycle_action = n.get_string_value() },
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
            writer.write_number_value("daysUntilExternalUserDeletedAfterBlocked", @days_until_external_user_deleted_after_blocked)
            writer.write_string_value("externalUserLifecycleAction", @external_user_lifecycle_action)
        end
    end
end
