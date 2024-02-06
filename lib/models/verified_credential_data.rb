require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VerifiedCredentialData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The authority ID for the issuer.
            @authority
            ## 
            # Key-value pair of claims retrieved from the credential that the user presented, and the service verified.
            @claims
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The list of credential types provided by the issuer.
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
            ## Gets the authority property value. The authority ID for the issuer.
            ## @return a string
            ## 
            def authority
                return @authority
            end
            ## 
            ## Sets the authority property value. The authority ID for the issuer.
            ## @param value Value to set for the authority property.
            ## @return a void
            ## 
            def authority=(value)
                @authority = value
            end
            ## 
            ## Gets the claims property value. Key-value pair of claims retrieved from the credential that the user presented, and the service verified.
            ## @return a verified_credential_claims
            ## 
            def claims
                return @claims
            end
            ## 
            ## Sets the claims property value. Key-value pair of claims retrieved from the credential that the user presented, and the service verified.
            ## @param value Value to set for the claims property.
            ## @return a void
            ## 
            def claims=(value)
                @claims = value
            end
            ## 
            ## Instantiates a new verifiedCredentialData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a verified_credential_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerifiedCredentialData.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authority" => lambda {|n| @authority = n.get_string_value() },
                    "claims" => lambda {|n| @claims = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::VerifiedCredentialClaims.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "type" => lambda {|n| @type = n.get_collection_of_primitive_values(String) },
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
                writer.write_string_value("authority", @authority)
                writer.write_object_value("claims", @claims)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("type", @type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the type property value. The list of credential types provided by the issuer.
            ## @return a string
            ## 
            def type
                return @type
            end
            ## 
            ## Sets the type property value. The list of credential types provided by the issuer.
            ## @param value Value to set for the type property.
            ## @return a void
            ## 
            def type=(value)
                @type = value
            end
        end
    end
end
