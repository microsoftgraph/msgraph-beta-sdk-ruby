require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Role Scope Tag
        class RoleScopeTag < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The list of assignments for this Role Scope Tag.
            @assignments
            ## 
            # Description of the Role Scope Tag.
            @description
            ## 
            # The display or friendly name of the Role Scope Tag.
            @display_name
            ## 
            # Description of the Role Scope Tag. This property is read-only.
            @is_built_in
            ## 
            ## Gets the assignments property value. The list of assignments for this Role Scope Tag.
            ## @return a role_scope_tag_auto_assignment
            ## 
            def assignments
                return @assignments
            end
            ## 
            ## Sets the assignments property value. The list of assignments for this Role Scope Tag.
            ## @param value Value to set for the assignments property.
            ## @return a void
            ## 
            def assignments=(value)
                @assignments = value
            end
            ## 
            ## Instantiates a new roleScopeTag and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a role_scope_tag
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return RoleScopeTag.new
            end
            ## 
            ## Gets the description property value. Description of the Role Scope Tag.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Description of the Role Scope Tag.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. The display or friendly name of the Role Scope Tag.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The display or friendly name of the Role Scope Tag.
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
                    "assignments" => lambda {|n| @assignments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RoleScopeTagAutoAssignment.create_from_discriminator_value(pn) }) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isBuiltIn" => lambda {|n| @is_built_in = n.get_boolean_value() },
                })
            end
            ## 
            ## Gets the isBuiltIn property value. Description of the Role Scope Tag. This property is read-only.
            ## @return a boolean
            ## 
            def is_built_in
                return @is_built_in
            end
            ## 
            ## Sets the isBuiltIn property value. Description of the Role Scope Tag. This property is read-only.
            ## @param value Value to set for the is_built_in property.
            ## @return a void
            ## 
            def is_built_in=(value)
                @is_built_in = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("assignments", @assignments)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
            end
        end
    end
end
