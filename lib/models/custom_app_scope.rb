require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CustomAppScope < MicrosoftGraphBeta::Models::AppScope
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The customAttributes property
            @custom_attributes
            ## 
            ## Instantiates a new CustomAppScope and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.customAppScope"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a custom_app_scope
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CustomAppScope.new
            end
            ## 
            ## Gets the customAttributes property value. The customAttributes property
            ## @return a custom_app_scope_attributes_dictionary
            ## 
            def custom_attributes
                return @custom_attributes
            end
            ## 
            ## Sets the customAttributes property value. The customAttributes property
            ## @param value Value to set for the customAttributes property.
            ## @return a void
            ## 
            def custom_attributes=(value)
                @custom_attributes = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "customAttributes" => lambda {|n| @custom_attributes = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CustomAppScopeAttributesDictionary.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("customAttributes", @custom_attributes)
            end
        end
    end
end
