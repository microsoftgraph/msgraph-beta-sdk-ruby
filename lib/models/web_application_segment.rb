require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class WebApplicationSegment < MicrosoftGraphBeta::Models::ApplicationSegment
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The alternateUrl property
        @alternate_url
        ## 
        # The corsConfigurations property
        @cors_configurations
        ## 
        # The externalUrl property
        @external_url
        ## 
        # The internalUrl property
        @internal_url
        ## 
        ## Gets the alternateUrl property value. The alternateUrl property
        ## @return a string
        ## 
        def alternate_url
            return @alternate_url
        end
        ## 
        ## Sets the alternateUrl property value. The alternateUrl property
        ## @param value Value to set for the alternateUrl property.
        ## @return a void
        ## 
        def alternate_url=(value)
            @alternate_url = value
        end
        ## 
        ## Instantiates a new WebApplicationSegment and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.webApplicationSegment"
        end
        ## 
        ## Gets the corsConfigurations property value. The corsConfigurations property
        ## @return a cors_configuration_v2
        ## 
        def cors_configurations
            return @cors_configurations
        end
        ## 
        ## Sets the corsConfigurations property value. The corsConfigurations property
        ## @param value Value to set for the corsConfigurations property.
        ## @return a void
        ## 
        def cors_configurations=(value)
            @cors_configurations = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a web_application_segment
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WebApplicationSegment.new
        end
        ## 
        ## Gets the externalUrl property value. The externalUrl property
        ## @return a string
        ## 
        def external_url
            return @external_url
        end
        ## 
        ## Sets the externalUrl property value. The externalUrl property
        ## @param value Value to set for the externalUrl property.
        ## @return a void
        ## 
        def external_url=(value)
            @external_url = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "alternateUrl" => lambda {|n| @alternate_url = n.get_string_value() },
                "corsConfigurations" => lambda {|n| @cors_configurations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::CorsConfiguration_v2.create_from_discriminator_value(pn) }) },
                "externalUrl" => lambda {|n| @external_url = n.get_string_value() },
                "internalUrl" => lambda {|n| @internal_url = n.get_string_value() },
            })
        end
        ## 
        ## Gets the internalUrl property value. The internalUrl property
        ## @return a string
        ## 
        def internal_url
            return @internal_url
        end
        ## 
        ## Sets the internalUrl property value. The internalUrl property
        ## @param value Value to set for the internalUrl property.
        ## @return a void
        ## 
        def internal_url=(value)
            @internal_url = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("alternateUrl", @alternate_url)
            writer.write_collection_of_object_values("corsConfigurations", @cors_configurations)
            writer.write_string_value("externalUrl", @external_url)
            writer.write_string_value("internalUrl", @internal_url)
        end
    end
end
