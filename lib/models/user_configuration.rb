require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class UserConfiguration < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The binaryData property
            @binary_data
            ## 
            ## Gets the binaryData property value. The binaryData property
            ## @return a base64url
            ## 
            def binary_data
                return @binary_data
            end
            ## 
            ## Sets the binaryData property value. The binaryData property
            ## @param value Value to set for the binary_data property.
            ## @return a void
            ## 
            def binary_data=(value)
                @binary_data = value
            end
            ## 
            ## Instantiates a new userConfiguration and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a user_configuration
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return UserConfiguration.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "binaryData" => lambda {|n| @binary_data = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("binaryData", @binary_data)
            end
        end
    end
end
