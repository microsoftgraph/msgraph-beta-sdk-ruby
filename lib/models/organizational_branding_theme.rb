require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OrganizationalBrandingTheme < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The isDefaultTheme property
            @is_default_theme
            ## 
            # The name property
            @name
            ## 
            ## Instantiates a new OrganizationalBrandingTheme and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a organizational_branding_theme
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OrganizationalBrandingTheme.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "isDefaultTheme" => lambda {|n| @is_default_theme = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the isDefaultTheme property value. The isDefaultTheme property
            ## @return a boolean
            ## 
            def is_default_theme
                return @is_default_theme
            end
            ## 
            ## Sets the isDefaultTheme property value. The isDefaultTheme property
            ## @param value Value to set for the isDefaultTheme property.
            ## @return a void
            ## 
            def is_default_theme=(value)
                @is_default_theme = value
            end
            ## 
            ## Gets the name property value. The name property
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. The name property
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_boolean_value("isDefaultTheme", @is_default_theme)
                writer.write_string_value("name", @name)
            end
        end
    end
end
