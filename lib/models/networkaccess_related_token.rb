require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedToken < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The uniqueTokenIdentifier property
            @unique_token_identifier
            ## 
            ## Instantiates a new NetworkaccessRelatedToken and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedToken"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_token
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedToken.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "uniqueTokenIdentifier" => lambda {|n| @unique_token_identifier = n.get_string_value() },
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
                writer.write_string_value("uniqueTokenIdentifier", @unique_token_identifier)
            end
            ## 
            ## Gets the uniqueTokenIdentifier property value. The uniqueTokenIdentifier property
            ## @return a string
            ## 
            def unique_token_identifier
                return @unique_token_identifier
            end
            ## 
            ## Sets the uniqueTokenIdentifier property value. The uniqueTokenIdentifier property
            ## @param value Value to set for the uniqueTokenIdentifier property.
            ## @return a void
            ## 
            def unique_token_identifier=(value)
                @unique_token_identifier = value
            end
        end
    end
end
