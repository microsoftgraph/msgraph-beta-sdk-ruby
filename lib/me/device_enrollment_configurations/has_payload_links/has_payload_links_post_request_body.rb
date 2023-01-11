require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../me'
require_relative '../device_enrollment_configurations'
require_relative './has_payload_links'

module MicrosoftGraphBeta::Me::DeviceEnrollmentConfigurations::HasPayloadLinks
    class HasPayloadLinksPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The payloadIds property
        @payload_ids
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
        ## Instantiates a new hasPayloadLinksPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a has_payload_links_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return HasPayloadLinksPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "payloadIds" => lambda {|n| @payload_ids = n.get_collection_of_primitive_values(String) },
            }
        end
        ## 
        ## Gets the payloadIds property value. The payloadIds property
        ## @return a string
        ## 
        def payload_ids
            return @payload_ids
        end
        ## 
        ## Sets the payloadIds property value. The payloadIds property
        ## @param value Value to set for the payloadIds property.
        ## @return a void
        ## 
        def payload_ids=(value)
            @payload_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("payloadIds", @payload_ids)
            writer.write_additional_data(@additional_data)
        end
    end
end
