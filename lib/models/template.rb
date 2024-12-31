require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class Template < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The deviceTemplates property
            @device_templates
            ## 
            ## Instantiates a new Template and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a template
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return Template.new
            end
            ## 
            ## Gets the deviceTemplates property value. The deviceTemplates property
            ## @return a device_template
            ## 
            def device_templates
                return @device_templates
            end
            ## 
            ## Sets the deviceTemplates property value. The deviceTemplates property
            ## @param value Value to set for the deviceTemplates property.
            ## @return a void
            ## 
            def device_templates=(value)
                @device_templates = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "deviceTemplates" => lambda {|n| @device_templates = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DeviceTemplate.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("deviceTemplates", @device_templates)
            end
        end
    end
end
