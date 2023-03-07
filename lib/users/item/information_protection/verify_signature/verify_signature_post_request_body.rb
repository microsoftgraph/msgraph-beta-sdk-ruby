require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../users'
require_relative '../../item'
require_relative '../information_protection'
require_relative './verify_signature'

module MicrosoftGraphBeta
    module Users
        module Item
            module InformationProtection
                module VerifySignature
                    class VerifySignaturePostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The digest property
                        @digest
                        ## 
                        # The signature property
                        @signature
                        ## 
                        # The signingKeyId property
                        @signing_key_id
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
                        ## Instantiates a new verifySignaturePostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parseNode The parse node to use to read the discriminator value and create the object
                        ## @return a verify_signature_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return VerifySignaturePostRequestBody.new
                        end
                        ## 
                        ## Gets the digest property value. The digest property
                        ## @return a binary
                        ## 
                        def digest
                            return @digest
                        end
                        ## 
                        ## Sets the digest property value. The digest property
                        ## @param value Value to set for the digest property.
                        ## @return a void
                        ## 
                        def digest=(value)
                            @digest = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "digest" => lambda {|n| @digest = n.get_string_value() },
                                "signature" => lambda {|n| @signature = n.get_string_value() },
                                "signingKeyId" => lambda {|n| @signing_key_id = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("digest", @digest)
                            writer.write_object_value("signature", @signature)
                            writer.write_string_value("signingKeyId", @signing_key_id)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the signature property value. The signature property
                        ## @return a binary
                        ## 
                        def signature
                            return @signature
                        end
                        ## 
                        ## Sets the signature property value. The signature property
                        ## @param value Value to set for the signature property.
                        ## @return a void
                        ## 
                        def signature=(value)
                            @signature = value
                        end
                        ## 
                        ## Gets the signingKeyId property value. The signingKeyId property
                        ## @return a string
                        ## 
                        def signing_key_id
                            return @signing_key_id
                        end
                        ## 
                        ## Sets the signingKeyId property value. The signingKeyId property
                        ## @param value Value to set for the signing_key_id property.
                        ## @return a void
                        ## 
                        def signing_key_id=(value)
                            @signing_key_id = value
                        end
                    end
                end
            end
        end
    end
end
