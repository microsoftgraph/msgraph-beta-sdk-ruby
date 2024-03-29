require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SigningResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The OdataType property
            @odata_type
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
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new signingResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a signing_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SigningResult.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "signature" => lambda {|n| @signature = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
                    "signingKeyId" => lambda {|n| @signing_key_id = n.get_string_value() },
                }
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_object_value("signature", @signature)
                writer.write_string_value("signingKeyId", @signing_key_id)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the signature property value. The signature property
            ## @return a base64url
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
            ## @param value Value to set for the signingKeyId property.
            ## @return a void
            ## 
            def signing_key_id=(value)
                @signing_key_id = value
            end
        end
    end
end
