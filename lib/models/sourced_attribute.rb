require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SourcedAttribute < MicrosoftGraphBeta::Models::CustomClaimAttributeBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The identifier of the attribute on the specified source.
            @id
            ## 
            # A flag that indicates if the name specified is that of an extension attribute.
            @is_extension_attribute
            ## 
            # The source where the claim is going to retrieve its value. Valid sources include user, application, resource, audience and company.
            @source
            ## 
            ## Instantiates a new SourcedAttribute and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.sourcedAttribute"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a sourced_attribute
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SourcedAttribute.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "isExtensionAttribute" => lambda {|n| @is_extension_attribute = n.get_boolean_value() },
                    "source" => lambda {|n| @source = n.get_string_value() },
                })
            end
            ## 
            ## Gets the id property value. The identifier of the attribute on the specified source.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. The identifier of the attribute on the specified source.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the isExtensionAttribute property value. A flag that indicates if the name specified is that of an extension attribute.
            ## @return a boolean
            ## 
            def is_extension_attribute
                return @is_extension_attribute
            end
            ## 
            ## Sets the isExtensionAttribute property value. A flag that indicates if the name specified is that of an extension attribute.
            ## @param value Value to set for the isExtensionAttribute property.
            ## @return a void
            ## 
            def is_extension_attribute=(value)
                @is_extension_attribute = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("id", @id)
                writer.write_boolean_value("isExtensionAttribute", @is_extension_attribute)
                writer.write_string_value("source", @source)
            end
            ## 
            ## Gets the source property value. The source where the claim is going to retrieve its value. Valid sources include user, application, resource, audience and company.
            ## @return a string
            ## 
            def source
                return @source
            end
            ## 
            ## Sets the source property value. The source where the claim is going to retrieve its value. Valid sources include user, application, resource, audience and company.
            ## @param value Value to set for the source property.
            ## @return a void
            ## 
            def source=(value)
                @source = value
            end
        end
    end
end
