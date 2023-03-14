require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class MediaPrompt < MicrosoftGraphBeta::Models::Prompt
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The loop property
            @loop
            ## 
            # The mediaInfo property
            @media_info
            ## 
            ## Instantiates a new MediaPrompt and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.mediaPrompt"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a media_prompt
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return MediaPrompt.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "loop" => lambda {|n| @loop = n.get_number_value() },
                    "mediaInfo" => lambda {|n| @media_info = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::MediaInfo.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the loop property value. The loop property
            ## @return a integer
            ## 
            def loop
                return @loop
            end
            ## 
            ## Sets the loop property value. The loop property
            ## @param value Value to set for the loop property.
            ## @return a void
            ## 
            def loop=(value)
                @loop = value
            end
            ## 
            ## Gets the mediaInfo property value. The mediaInfo property
            ## @return a media_info
            ## 
            def media_info
                return @media_info
            end
            ## 
            ## Sets the mediaInfo property value. The mediaInfo property
            ## @param value Value to set for the media_info property.
            ## @return a void
            ## 
            def media_info=(value)
                @media_info = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("loop", @loop)
                writer.write_object_value("mediaInfo", @media_info)
            end
        end
    end
end
