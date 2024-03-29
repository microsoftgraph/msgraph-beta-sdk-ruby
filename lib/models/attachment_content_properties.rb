require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AttachmentContentProperties < MicrosoftGraphBeta::Models::ContentProperties
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The currentLabel property
            @current_label
            ## 
            ## Instantiates a new attachmentContentProperties and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.attachmentContentProperties"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a attachment_content_properties
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AttachmentContentProperties.new
            end
            ## 
            ## Gets the currentLabel property value. The currentLabel property
            ## @return a current_label
            ## 
            def current_label
                return @current_label
            end
            ## 
            ## Sets the currentLabel property value. The currentLabel property
            ## @param value Value to set for the currentLabel property.
            ## @return a void
            ## 
            def current_label=(value)
                @current_label = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "currentLabel" => lambda {|n| @current_label = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::CurrentLabel.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("currentLabel", @current_label)
            end
        end
    end
end
