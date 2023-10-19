require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../users'
require_relative '../../item'
require_relative '../information_protection'
require_relative './decrypt_buffer'

module MicrosoftGraphBeta
    module Users
        module Item
            module InformationProtection
                module DecryptBuffer
                    class DecryptBufferPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The encryptedBuffer property
                        @encrypted_buffer
                        ## 
                        # The publishingLicense property
                        @publishing_license
                        ## 
                        ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @return a i_dictionary
                        ## 
                        def additional_data
                            return @additional_data
                        end
                        ## 
                        ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        ## @param value Value to set for the AdditionalData property.
                        ## @return a void
                        ## 
                        def additional_data=(value)
                            @additional_data = value
                        end
                        ## 
                        ## Instantiates a new decryptBufferPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a decrypt_buffer_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return DecryptBufferPostRequestBody.new
                        end
                        ## 
                        ## Gets the encryptedBuffer property value. The encryptedBuffer property
                        ## @return a base64url
                        ## 
                        def encrypted_buffer
                            return @encrypted_buffer
                        end
                        ## 
                        ## Sets the encryptedBuffer property value. The encryptedBuffer property
                        ## @param value Value to set for the encryptedBuffer property.
                        ## @return a void
                        ## 
                        def encrypted_buffer=(value)
                            @encrypted_buffer = value
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "encryptedBuffer" => lambda {|n| @encrypted_buffer = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                                "publishingLicense" => lambda {|n| @publishing_license = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                            }
                        end
                        ## 
                        ## Gets the publishingLicense property value. The publishingLicense property
                        ## @return a base64url
                        ## 
                        def publishing_license
                            return @publishing_license
                        end
                        ## 
                        ## Sets the publishingLicense property value. The publishingLicense property
                        ## @param value Value to set for the publishingLicense property.
                        ## @return a void
                        ## 
                        def publishing_license=(value)
                            @publishing_license = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_object_value("encryptedBuffer", @encrypted_buffer)
                            writer.write_object_value("publishingLicense", @publishing_license)
                            writer.write_additional_data(@additional_data)
                        end
                    end
                end
            end
        end
    end
end
