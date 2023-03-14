require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UnifiedRbacResourceNamespace < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Name of the resource namespace. Typically, the same name as the id property, such as microsoft.aad.b2c. Required. Supports $filter (eq, startsWith).
            @name
            ## 
            # Operations that an authorized principal are allowed to perform.
            @resource_actions
            ## 
            ## Instantiates a new unifiedRbacResourceNamespace and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a unified_rbac_resource_namespace
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UnifiedRbacResourceNamespace.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "resourceActions" => lambda {|n| @resource_actions = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::UnifiedRbacResourceAction.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the name property value. Name of the resource namespace. Typically, the same name as the id property, such as microsoft.aad.b2c. Required. Supports $filter (eq, startsWith).
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name of the resource namespace. Typically, the same name as the id property, such as microsoft.aad.b2c. Required. Supports $filter (eq, startsWith).
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the resourceActions property value. Operations that an authorized principal are allowed to perform.
            ## @return a unified_rbac_resource_action
            ## 
            def resource_actions
                return @resource_actions
            end
            ## 
            ## Sets the resourceActions property value. Operations that an authorized principal are allowed to perform.
            ## @param value Value to set for the resource_actions property.
            ## @return a void
            ## 
            def resource_actions=(value)
                @resource_actions = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("name", @name)
                writer.write_collection_of_object_values("resourceActions", @resource_actions)
            end
        end
    end
end
