require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class TeamsAppIcon < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The contents of the app icon if the icon is hosted within the Teams infrastructure.
            @hosted_content
            ## 
            # The web URL that can be used for downloading the image.
            @web_url
            ## 
            ## Instantiates a new TeamsAppIcon and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a teams_app_icon
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TeamsAppIcon.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "hostedContent" => lambda {|n| @hosted_content = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::TeamworkHostedContent.create_from_discriminator_value(pn) }) },
                    "webUrl" => lambda {|n| @web_url = n.get_string_value() },
                })
            end
            ## 
            ## Gets the hostedContent property value. The contents of the app icon if the icon is hosted within the Teams infrastructure.
            ## @return a teamwork_hosted_content
            ## 
            def hosted_content
                return @hosted_content
            end
            ## 
            ## Sets the hostedContent property value. The contents of the app icon if the icon is hosted within the Teams infrastructure.
            ## @param value Value to set for the hostedContent property.
            ## @return a void
            ## 
            def hosted_content=(value)
                @hosted_content = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("hostedContent", @hosted_content)
                writer.write_string_value("webUrl", @web_url)
            end
            ## 
            ## Gets the webUrl property value. The web URL that can be used for downloading the image.
            ## @return a string
            ## 
            def web_url
                return @web_url
            end
            ## 
            ## Sets the webUrl property value. The web URL that can be used for downloading the image.
            ## @param value Value to set for the webUrl property.
            ## @return a void
            ## 
            def web_url=(value)
                @web_url = value
            end
        end
    end
end
