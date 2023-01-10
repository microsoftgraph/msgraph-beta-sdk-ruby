require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class ContinuousAccessEvaluationPolicy < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Continuous access evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes. Read-only.
        @description
        ## 
        # The value is always Continuous Access Evaluation. Read-only.
        @display_name
        ## 
        # The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty. Read-only.
        @groups
        ## 
        # true to indicate whether continuous access evaluation should be performed; otherwise false. Read-only.
        @is_enabled
        ## 
        # true to indicate that the continuous access evaluation policy settings should be or has been migrated to the conditional access policy.
        @migrate
        ## 
        # The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty. Read-only.
        @users
        ## 
        ## Instantiates a new ContinuousAccessEvaluationPolicy and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a continuous_access_evaluation_policy
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ContinuousAccessEvaluationPolicy.new
        end
        ## 
        ## Gets the description property value. Continuous access evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes. Read-only.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Continuous access evaluation automatically blocks access to resources and applications in near real time when a user's access is removed or a client IP address changes. Read-only.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The value is always Continuous Access Evaluation. Read-only.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The value is always Continuous Access Evaluation. Read-only.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "groups" => lambda {|n| @groups = n.get_collection_of_primitive_values(String) },
                "isEnabled" => lambda {|n| @is_enabled = n.get_boolean_value() },
                "migrate" => lambda {|n| @migrate = n.get_boolean_value() },
                "users" => lambda {|n| @users = n.get_collection_of_primitive_values(String) },
            })
        end
        ## 
        ## Gets the groups property value. The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty. Read-only.
        ## @return a string
        ## 
        def groups
            return @groups
        end
        ## 
        ## Sets the groups property value. The collection of group identifiers in scope for evaluation. All groups are in scope when the collection is empty. Read-only.
        ## @param value Value to set for the groups property.
        ## @return a void
        ## 
        def groups=(value)
            @groups = value
        end
        ## 
        ## Gets the isEnabled property value. true to indicate whether continuous access evaluation should be performed; otherwise false. Read-only.
        ## @return a boolean
        ## 
        def is_enabled
            return @is_enabled
        end
        ## 
        ## Sets the isEnabled property value. true to indicate whether continuous access evaluation should be performed; otherwise false. Read-only.
        ## @param value Value to set for the isEnabled property.
        ## @return a void
        ## 
        def is_enabled=(value)
            @is_enabled = value
        end
        ## 
        ## Gets the migrate property value. true to indicate that the continuous access evaluation policy settings should be or has been migrated to the conditional access policy.
        ## @return a boolean
        ## 
        def migrate
            return @migrate
        end
        ## 
        ## Sets the migrate property value. true to indicate that the continuous access evaluation policy settings should be or has been migrated to the conditional access policy.
        ## @param value Value to set for the migrate property.
        ## @return a void
        ## 
        def migrate=(value)
            @migrate = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_collection_of_primitive_values("groups", @groups)
            writer.write_boolean_value("isEnabled", @is_enabled)
            writer.write_boolean_value("migrate", @migrate)
            writer.write_collection_of_primitive_values("users", @users)
        end
        ## 
        ## Gets the users property value. The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty. Read-only.
        ## @return a string
        ## 
        def users
            return @users
        end
        ## 
        ## Sets the users property value. The collection of user identifiers in scope for evaluation. All users are in scope when the collection is empty. Read-only.
        ## @param value Value to set for the users property.
        ## @return a void
        ## 
        def users=(value)
            @users = value
        end
    end
end
