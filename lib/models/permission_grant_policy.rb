require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class PermissionGrantPolicy < MicrosoftGraphBeta::Models::PolicyBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Condition sets that are excluded in this permission grant policy. Automatically expanded on GET.
            @excludes
            ## 
            # Condition sets that are included in this permission grant policy. Automatically expanded on GET.
            @includes
            ## 
            # The resource type the pre-approval policy applies to. Possible values: group for groups and teams, chat for chats, tenant for all supported resources in the tenant. Required.
            @resource_scope_type
            ## 
            ## Instantiates a new PermissionGrantPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.permissionGrantPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a permission_grant_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PermissionGrantPolicy.new
            end
            ## 
            ## Gets the excludes property value. Condition sets that are excluded in this permission grant policy. Automatically expanded on GET.
            ## @return a permission_grant_condition_set
            ## 
            def excludes
                return @excludes
            end
            ## 
            ## Sets the excludes property value. Condition sets that are excluded in this permission grant policy. Automatically expanded on GET.
            ## @param value Value to set for the excludes property.
            ## @return a void
            ## 
            def excludes=(value)
                @excludes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "excludes" => lambda {|n| @excludes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionGrantConditionSet.create_from_discriminator_value(pn) }) },
                    "includes" => lambda {|n| @includes = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::PermissionGrantConditionSet.create_from_discriminator_value(pn) }) },
                    "resourceScopeType" => lambda {|n| @resource_scope_type = n.get_enum_value(MicrosoftGraphBeta::Models::ResourceScopeType) },
                })
            end
            ## 
            ## Gets the includes property value. Condition sets that are included in this permission grant policy. Automatically expanded on GET.
            ## @return a permission_grant_condition_set
            ## 
            def includes
                return @includes
            end
            ## 
            ## Sets the includes property value. Condition sets that are included in this permission grant policy. Automatically expanded on GET.
            ## @param value Value to set for the includes property.
            ## @return a void
            ## 
            def includes=(value)
                @includes = value
            end
            ## 
            ## Gets the resourceScopeType property value. The resource type the pre-approval policy applies to. Possible values: group for groups and teams, chat for chats, tenant for all supported resources in the tenant. Required.
            ## @return a resource_scope_type
            ## 
            def resource_scope_type
                return @resource_scope_type
            end
            ## 
            ## Sets the resourceScopeType property value. The resource type the pre-approval policy applies to. Possible values: group for groups and teams, chat for chats, tenant for all supported resources in the tenant. Required.
            ## @param value Value to set for the resourceScopeType property.
            ## @return a void
            ## 
            def resource_scope_type=(value)
                @resource_scope_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("excludes", @excludes)
                writer.write_collection_of_object_values("includes", @includes)
                writer.write_enum_value("resourceScopeType", @resource_scope_type)
            end
        end
    end
end
