require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Event representing an Apple Vpp Token Troubleshooting Event.
        class AppleVppTokenTroubleshootingEvent < MicrosoftGraphBeta::Models::DeviceManagementTroubleshootingEvent
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Apple Volume Purchase Program Token Identifier.
            @token_id
            ## 
            ## Instantiates a new appleVppTokenTroubleshootingEvent and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a apple_vpp_token_troubleshooting_event
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppleVppTokenTroubleshootingEvent.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "tokenId" => lambda {|n| @token_id = n.get_string_value() },
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
                writer.write_string_value("tokenId", @token_id)
            end
            ## 
            ## Gets the tokenId property value. Apple Volume Purchase Program Token Identifier.
            ## @return a string
            ## 
            def token_id
                return @token_id
            end
            ## 
            ## Sets the tokenId property value. Apple Volume Purchase Program Token Identifier.
            ## @param value Value to set for the tokenId property.
            ## @return a void
            ## 
            def token_id=(value)
                @token_id = value
            end
        end
    end
end
