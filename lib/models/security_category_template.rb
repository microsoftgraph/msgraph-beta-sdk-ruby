require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityCategoryTemplate < MicrosoftGraphBeta::Models::SecurityFilePlanDescriptorTemplate
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents all subcategories under a particular category.
            @sub_categories
            ## 
            ## Instantiates a new SecurityCategoryTemplate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_category_template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityCategoryTemplate.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subCategories" => lambda {|n| @sub_categories = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySubCategoryTemplate.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("subCategories", @sub_categories)
            end
            ## 
            ## Gets the subCategories property value. Represents all subcategories under a particular category.
            ## @return a security_sub_category_template
            ## 
            def sub_categories
                return @sub_categories
            end
            ## 
            ## Sets the subCategories property value. Represents all subcategories under a particular category.
            ## @param value Value to set for the subCategories property.
            ## @return a void
            ## 
            def sub_categories=(value)
                @sub_categories = value
            end
        end
    end
end
