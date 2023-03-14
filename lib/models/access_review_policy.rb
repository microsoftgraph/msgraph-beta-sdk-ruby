require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AccessReviewPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Description for this policy. Read-only.
            @description
            ## 
            # Display name for this policy. Read-only.
            @display_name
            ## 
            # If true, group owners can create and manage access reviews on groups they own.
            @is_group_owner_management_enabled
            ## 
            ## Instantiates a new accessReviewPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a access_review_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AccessReviewPolicy.new
            end
            ## 
            ## Gets the description property value. Description for this policy. Read-only.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description for this policy. Read-only.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Display name for this policy. Read-only.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Display name for this policy. Read-only.
            ## @param value Value to set for the display_name property.
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
                    "isGroupOwnerManagementEnabled" => lambda {|n| @is_group_owner_management_enabled = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isGroupOwnerManagementEnabled property value. If true, group owners can create and manage access reviews on groups they own.
            ## @return a boolean
            ## 
            def is_group_owner_management_enabled
                return @is_group_owner_management_enabled
            end
            ## 
            ## Sets the isGroupOwnerManagementEnabled property value. If true, group owners can create and manage access reviews on groups they own.
            ## @param value Value to set for the is_group_owner_management_enabled property.
            ## @return a void
            ## 
            def is_group_owner_management_enabled=(value)
                @is_group_owner_management_enabled = value
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
                writer.write_boolean_value("isGroupOwnerManagementEnabled", @is_group_owner_management_enabled)
            end
        end
    end
end
