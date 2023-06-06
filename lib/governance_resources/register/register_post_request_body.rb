require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../governance_resources'
require_relative './register'

module MicrosoftGraphBeta
    module GovernanceResources
        module Register
            class RegisterPostRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The externalId property
                @external_id
                ## 
                ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new registerPostRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a register_post_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return RegisterPostRequestBody.new
                end
                ## 
                ## Gets the externalId property value. The externalId property
                ## @return a string
                ## 
                def external_id
                    return @external_id
                end
                ## 
                ## Sets the externalId property value. The externalId property
                ## @param value Value to set for the external_id property.
                ## @return a void
                ## 
                def external_id=(value)
                    @external_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "externalId" => lambda {|n| @external_id = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("externalId", @external_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
