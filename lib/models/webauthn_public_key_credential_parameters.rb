require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class WebauthnPublicKeyCredentialParameters
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Specifies the cryptographic signature algorithm used for the new credential. The algorithm identifiers should be values registered in the IANA COSE algorithms registry. For more information, see IANA-COSE-ALGS-REG.
            @alg
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Specifies the type of credential to be created. The only supported value is public-key.
            @type
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
            ## Gets the alg property value. Specifies the cryptographic signature algorithm used for the new credential. The algorithm identifiers should be values registered in the IANA COSE algorithms registry. For more information, see IANA-COSE-ALGS-REG.
            ## @return a integer
            ## 
            def alg
                return @alg
            end
            ## 
            ## Sets the alg property value. Specifies the cryptographic signature algorithm used for the new credential. The algorithm identifiers should be values registered in the IANA COSE algorithms registry. For more information, see IANA-COSE-ALGS-REG.
            ## @param value Value to set for the alg property.
            ## @return a void
            ## 
            def alg=(value)
                @alg = value
            end
            ## 
            ## Instantiates a new WebauthnPublicKeyCredentialParameters and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a webauthn_public_key_credential_parameters
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return WebauthnPublicKeyCredentialParameters.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "alg" => lambda {|n| @alg = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_string_value() },
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
                writer.write_number_value("alg", @alg)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. Specifies the type of credential to be created. The only supported value is public-key.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. Specifies the type of credential to be created. The only supported value is public-key.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
