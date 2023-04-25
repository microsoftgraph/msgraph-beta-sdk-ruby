require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppHostedMediaConfig < MicrosoftGraphBeta::Models::MediaConfig
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The media configuration blob generated by smart media agent.
            @blob
            ## 
            ## Gets the blob property value. The media configuration blob generated by smart media agent.
            ## @return a string
            ## 
            def blob
                return @blob
            end
            ## 
            ## Sets the blob property value. The media configuration blob generated by smart media agent.
            ## @param value Value to set for the blob property.
            ## @return a void
            ## 
            def blob=(value)
                @blob = value
            end
            ## 
            ## Instantiates a new AppHostedMediaConfig and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.appHostedMediaConfig"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a app_hosted_media_config
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppHostedMediaConfig.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "blob" => lambda {|n| @blob = n.get_string_value() },
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
                writer.write_string_value("blob", @blob)
            end
        end
    end
end
