require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../me'
require_relative '../information_protection'
require_relative './encrypt_buffer'

module MicrosoftGraphBeta
    module Me
        module InformationProtection
            module EncryptBuffer
                class EncryptBufferPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The buffer property
                    @buffer
                    ## 
                    # The labelId property
                    @label_id
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
                    ## Gets the buffer property value. The buffer property
                    ## @return a base64url
                    ## 
                    def buffer
                        return @buffer
                    end
                    ## 
                    ## Sets the buffer property value. The buffer property
                    ## @param value Value to set for the buffer property.
                    ## @return a void
                    ## 
                    def buffer=(value)
                        @buffer = value
                    end
                    ## 
                    ## Instantiates a new encryptBufferPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a encrypt_buffer_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return EncryptBufferPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "buffer" => lambda {|n| @buffer = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                            "labelId" => lambda {|n| @label_id = n.get_guid_value() },
                        }
                    end
                    ## 
                    ## Gets the labelId property value. The labelId property
                    ## @return a guid
                    ## 
                    def label_id
                        return @label_id
                    end
                    ## 
                    ## Sets the labelId property value. The labelId property
                    ## @param value Value to set for the label_id property.
                    ## @return a void
                    ## 
                    def label_id=(value)
                        @label_id = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("buffer", @buffer)
                        writer.write_guid_value("labelId", @label_id)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
