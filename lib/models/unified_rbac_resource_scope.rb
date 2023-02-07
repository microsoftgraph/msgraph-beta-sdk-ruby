require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class UnifiedRbacResourceScope < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The displayName property
        @display_name
        ## 
        # The scope property
        @scope
        ## 
        # The type property
        @type
        ## 
        ## Instantiates a new unifiedRbacResourceScope and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a unified_rbac_resource_scope
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return UnifiedRbacResourceScope.new
        end
        ## 
        ## Gets the displayName property value. The displayName property
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The displayName property
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
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "scope" => lambda {|n| @scope = n.get_string_value() },
                "type" => lambda {|n| @type = n.get_string_value() },
            })
        end
        ## 
        ## Gets the scope property value. The scope property
        ## @return a string
        ## 
        def scope
            return @scope
        end
        ## 
        ## Sets the scope property value. The scope property
        ## @param value Value to set for the scope property.
        ## @return a void
        ## 
        def scope=(value)
            @scope = value
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
            writer.write_string_value("scope", @scope)
            writer.write_string_value("type", @type)
        end
        ## 
        ## Gets the type property value. The type property
        ## @return a string
        ## 
        def type
            return @type
        end
        ## 
        ## Sets the type property value. The type property
        ## @param value Value to set for the type property.
        ## @return a void
        ## 
        def type=(value)
            @type = value
        end
    end
end
