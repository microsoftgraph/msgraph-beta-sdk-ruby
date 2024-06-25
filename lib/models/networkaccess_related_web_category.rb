require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedWebCategory < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The webCategoryName property
            @web_category_name
            ## 
            ## Instantiates a new NetworkaccessRelatedWebCategory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedWebCategory"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_web_category
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedWebCategory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "webCategoryName" => lambda {|n| @web_category_name = n.get_string_value() },
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
                writer.write_string_value("webCategoryName", @web_category_name)
            end
            ## 
            ## Gets the webCategoryName property value. The webCategoryName property
            ## @return a string
            ## 
            def web_category_name
                return @web_category_name
            end
            ## 
            ## Sets the webCategoryName property value. The webCategoryName property
            ## @param value Value to set for the webCategoryName property.
            ## @return a void
            ## 
            def web_category_name=(value)
                @web_category_name = value
            end
        end
    end
end
