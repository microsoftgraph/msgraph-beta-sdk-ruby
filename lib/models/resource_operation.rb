require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # Describes the resourceOperation resource (entity) of the Microsoft Graph API (REST), which supports Intune workflows related to role-based access control (RBAC).
    class ResourceOperation < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.
        @action_name
        ## 
        # Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.
        @description
        ## 
        # Determines whether the Permission is validated for Scopes defined per Role Assignment. This property is read-only.
        @enabled_for_scope_validation
        ## 
        # Resource category to which this Operation belongs. This property is read-only.
        @resource
        ## 
        # Name of the Resource this operation is performed on.
        @resource_name
        ## 
        ## Gets the actionName property value. Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.
        ## @return a string
        ## 
        def action_name
            return @action_name
        end
        ## 
        ## Sets the actionName property value. Type of action this operation is going to perform. The actionName should be concise and limited to as few words as possible.
        ## @param value Value to set for the action_name property.
        ## @return a void
        ## 
        def action_name=(value)
            @action_name = value
        end
        ## 
        ## Instantiates a new resourceOperation and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a resource_operation
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ResourceOperation.new
        end
        ## 
        ## Gets the description property value. Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. Description of the resource operation. The description is used in mouse-over text for the operation when shown in the Azure Portal.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the enabledForScopeValidation property value. Determines whether the Permission is validated for Scopes defined per Role Assignment. This property is read-only.
        ## @return a boolean
        ## 
        def enabled_for_scope_validation
            return @enabled_for_scope_validation
        end
        ## 
        ## Sets the enabledForScopeValidation property value. Determines whether the Permission is validated for Scopes defined per Role Assignment. This property is read-only.
        ## @param value Value to set for the enabled_for_scope_validation property.
        ## @return a void
        ## 
        def enabled_for_scope_validation=(value)
            @enabled_for_scope_validation = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "actionName" => lambda {|n| @action_name = n.get_string_value() },
                "description" => lambda {|n| @description = n.get_string_value() },
                "enabledForScopeValidation" => lambda {|n| @enabled_for_scope_validation = n.get_boolean_value() },
                "resource" => lambda {|n| @resource = n.get_string_value() },
                "resourceName" => lambda {|n| @resource_name = n.get_string_value() },
            })
        end
        ## 
        ## Gets the resource property value. Resource category to which this Operation belongs. This property is read-only.
        ## @return a string
        ## 
        def resource
            return @resource
        end
        ## 
        ## Sets the resource property value. Resource category to which this Operation belongs. This property is read-only.
        ## @param value Value to set for the resource property.
        ## @return a void
        ## 
        def resource=(value)
            @resource = value
        end
        ## 
        ## Gets the resourceName property value. Name of the Resource this operation is performed on.
        ## @return a string
        ## 
        def resource_name
            return @resource_name
        end
        ## 
        ## Sets the resourceName property value. Name of the Resource this operation is performed on.
        ## @param value Value to set for the resource_name property.
        ## @return a void
        ## 
        def resource_name=(value)
            @resource_name = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("actionName", @action_name)
            writer.write_string_value("description", @description)
            writer.write_string_value("resourceName", @resource_name)
        end
    end
end
