require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAppliedCategory < MicrosoftGraphBeta::Models::SecurityFilePlanDescriptorBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.
            @sub_category
            ## 
            ## Instantiates a new SecurityAppliedCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_applied_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAppliedCategory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "subCategory" => lambda {|n| @sub_category = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecuritySubCategory.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("subCategory", @sub_category)
            end
            ## 
            ## Gets the subCategory property value. Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.
            ## @return a security_sub_category
            ## 
            def sub_category
                return @sub_category
            end
            ## 
            ## Sets the subCategory property value. Represents the file plan descriptor for a subcategory under a specific category, which has been assigned to a particular retention label.
            ## @param value Value to set for the subCategory property.
            ## @return a void
            ## 
            def sub_category=(value)
                @sub_category = value
            end
        end
    end
end
