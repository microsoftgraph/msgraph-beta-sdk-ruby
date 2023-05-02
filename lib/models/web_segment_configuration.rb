require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebSegmentConfiguration < MicrosoftGraphBeta::Models::SegmentConfiguration
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The applicationSegments property
            @application_segments
            ## 
            ## Gets the applicationSegments property value. The applicationSegments property
            ## @return a web_application_segment
            ## 
            def application_segments
                return @application_segments
            end
            ## 
            ## Sets the applicationSegments property value. The applicationSegments property
            ## @param value Value to set for the application_segments property.
            ## @return a void
            ## 
            def application_segments=(value)
                @application_segments = value
            end
            ## 
            ## Instantiates a new WebSegmentConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.webSegmentConfiguration"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a web_segment_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebSegmentConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "applicationSegments" => lambda {|n| @application_segments = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::WebApplicationSegment.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("applicationSegments", @application_segments)
            end
        end
    end
end
