require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class GovernanceResource < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The display name of the resource.
        @display_name
        ## 
        # The external id of the resource, representing its original id in the external system. For example, a subscription resource's external id can be '/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737ac'.
        @external_id
        ## 
        # Read-only. The parent resource. for pimforazurerbac scenario, it can represent the subscription the resource belongs to.
        @parent
        ## 
        # Represents the date time when the resource is registered in PIM.
        @registered_date_time
        ## 
        # The externalId of the resource's root scope that is registered in PIM. The root scope can be the parent, grandparent, or higher ancestor resources.
        @registered_root
        ## 
        # The collection of role assignment requests for the resource.
        @role_assignment_requests
        ## 
        # The collection of role assignments for the resource.
        @role_assignments
        ## 
        # The collection of role defintions for the resource.
        @role_definitions
        ## 
        # The collection of role settings for the resource.
        @role_settings
        ## 
        # The status of a given resource. For example, it could represent whether the resource is locked or not (values: Active/Locked). Note: This property may be extended in the future to support more scenarios.
        @status
        ## 
        # Required. Resource type. For example, for Azure resources, the type could be 'Subscription', 'ResourceGroup', 'Microsoft.Sql/server', etc.
        @type
        ## 
        ## Instantiates a new governanceResource and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a governance_resource
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return GovernanceResource.new
        end
        ## 
        ## Gets the displayName property value. The display name of the resource.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the resource.
        ## @param value Value to set for the displayName property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the externalId property value. The external id of the resource, representing its original id in the external system. For example, a subscription resource's external id can be '/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737ac'.
        ## @return a string
        ## 
        def external_id
            return @external_id
        end
        ## 
        ## Sets the externalId property value. The external id of the resource, representing its original id in the external system. For example, a subscription resource's external id can be '/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737ac'.
        ## @param value Value to set for the externalId property.
        ## @return a void
        ## 
        def external_id=(value)
            @external_id = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "externalId" => lambda {|n| @external_id = n.get_string_value() },
                "parent" => lambda {|n| @parent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceResource.create_from_discriminator_value(pn) }) },
                "registeredDateTime" => lambda {|n| @registered_date_time = n.get_date_time_value() },
                "registeredRoot" => lambda {|n| @registered_root = n.get_string_value() },
                "roleAssignmentRequests" => lambda {|n| @role_assignment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignmentRequest.create_from_discriminator_value(pn) }) },
                "roleAssignments" => lambda {|n| @role_assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleAssignment.create_from_discriminator_value(pn) }) },
                "roleDefinitions" => lambda {|n| @role_definitions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleDefinition.create_from_discriminator_value(pn) }) },
                "roleSettings" => lambda {|n| @role_settings = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::GovernanceRoleSetting.create_from_discriminator_value(pn) }) },
                "status" => lambda {|n| @status = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
            })
        end
        ## 
        ## Gets the parent property value. Read-only. The parent resource. for pimforazurerbac scenario, it can represent the subscription the resource belongs to.
        ## @return a governance_resource
        ## 
        def parent
            return @parent
        end
        ## 
        ## Sets the parent property value. Read-only. The parent resource. for pimforazurerbac scenario, it can represent the subscription the resource belongs to.
        ## @param value Value to set for the parent property.
        ## @return a void
        ## 
        def parent=(value)
            @parent = value
        end
        ## 
        ## Gets the registeredDateTime property value. Represents the date time when the resource is registered in PIM.
        ## @return a date_time
        ## 
        def registered_date_time
            return @registered_date_time
        end
        ## 
        ## Sets the registeredDateTime property value. Represents the date time when the resource is registered in PIM.
        ## @param value Value to set for the registeredDateTime property.
        ## @return a void
        ## 
        def registered_date_time=(value)
            @registered_date_time = value
        end
        ## 
        ## Gets the registeredRoot property value. The externalId of the resource's root scope that is registered in PIM. The root scope can be the parent, grandparent, or higher ancestor resources.
        ## @return a string
        ## 
        def registered_root
            return @registered_root
        end
        ## 
        ## Sets the registeredRoot property value. The externalId of the resource's root scope that is registered in PIM. The root scope can be the parent, grandparent, or higher ancestor resources.
        ## @param value Value to set for the registeredRoot property.
        ## @return a void
        ## 
        def registered_root=(value)
            @registered_root = value
        end
        ## 
        ## Gets the roleAssignmentRequests property value. The collection of role assignment requests for the resource.
        ## @return a governance_role_assignment_request
        ## 
        def role_assignment_requests
            return @role_assignment_requests
        end
        ## 
        ## Sets the roleAssignmentRequests property value. The collection of role assignment requests for the resource.
        ## @param value Value to set for the roleAssignmentRequests property.
        ## @return a void
        ## 
        def role_assignment_requests=(value)
            @role_assignment_requests = value
        end
        ## 
        ## Gets the roleAssignments property value. The collection of role assignments for the resource.
        ## @return a governance_role_assignment
        ## 
        def role_assignments
            return @role_assignments
        end
        ## 
        ## Sets the roleAssignments property value. The collection of role assignments for the resource.
        ## @param value Value to set for the roleAssignments property.
        ## @return a void
        ## 
        def role_assignments=(value)
            @role_assignments = value
        end
        ## 
        ## Gets the roleDefinitions property value. The collection of role defintions for the resource.
        ## @return a governance_role_definition
        ## 
        def role_definitions
            return @role_definitions
        end
        ## 
        ## Sets the roleDefinitions property value. The collection of role defintions for the resource.
        ## @param value Value to set for the roleDefinitions property.
        ## @return a void
        ## 
        def role_definitions=(value)
            @role_definitions = value
        end
        ## 
        ## Gets the roleSettings property value. The collection of role settings for the resource.
        ## @return a governance_role_setting
        ## 
        def role_settings
            return @role_settings
        end
        ## 
        ## Sets the roleSettings property value. The collection of role settings for the resource.
        ## @param value Value to set for the roleSettings property.
        ## @return a void
        ## 
        def role_settings=(value)
            @role_settings = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("displayName", @display_name)
            writer.write_string_value("externalId", @external_id)
            writer.write_object_value("parent", @parent)
            writer.write_date_time_value("registeredDateTime", @registered_date_time)
            writer.write_string_value("registeredRoot", @registered_root)
            writer.write_collection_of_object_values("roleAssignmentRequests", @role_assignment_requests)
            writer.write_collection_of_object_values("roleAssignments", @role_assignments)
            writer.write_collection_of_object_values("roleDefinitions", @role_definitions)
            writer.write_collection_of_object_values("roleSettings", @role_settings)
            writer.write_string_value("status", @status)
            writer.write_string_value("type", @type)
        end
        ## 
        ## Gets the status property value. The status of a given resource. For example, it could represent whether the resource is locked or not (values: Active/Locked). Note: This property may be extended in the future to support more scenarios.
        ## @return a string
        ## 
        def status
            return @status
        end
        ## 
        ## Sets the status property value. The status of a given resource. For example, it could represent whether the resource is locked or not (values: Active/Locked). Note: This property may be extended in the future to support more scenarios.
        ## @param value Value to set for the status property.
        ## @return a void
        ## 
        def status=(value)
            @status = value
        end
        ## 
        ## Gets the type property value. Required. Resource type. For example, for Azure resources, the type could be 'Subscription', 'ResourceGroup', 'Microsoft.Sql/server', etc.
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. Required. Resource type. For example, for Azure resources, the type could be 'Subscription', 'ResourceGroup', 'Microsoft.Sql/server', etc.
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
