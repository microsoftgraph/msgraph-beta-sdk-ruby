require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class VerifiableCredentialType
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The type of credential issued, for example, BusinessCardCredential.
            @credential_type
            ## 
            # List of the accepted issuers authority as identified by the Microsoft Entra Verified ID service, for example, did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W/<SNIP/>....
            @issuers
            ## 
            # The OdataType property
            @odata_type
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
            ## Instantiates a new verifiableCredentialType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a verifiable_credential_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VerifiableCredentialType.new
            end
            ## 
            ## Gets the credentialType property value. The type of credential issued, for example, BusinessCardCredential.
            ## @return a string
            ## 
            def credential_type
                return @credential_type
            end
            ## 
            ## Sets the credentialType property value. The type of credential issued, for example, BusinessCardCredential.
            ## @param value Value to set for the credential_type property.
            ## @return a void
            ## 
            def credential_type=(value)
                @credential_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "credentialType" => lambda {|n| @credential_type = n.get_string_value() },
                    "issuers" => lambda {|n| @issuers = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the issuers property value. List of the accepted issuers authority as identified by the Microsoft Entra Verified ID service, for example, did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W/<SNIP/>....
            ## @return a string
            ## 
            def issuers
                return @issuers
            end
            ## 
            ## Sets the issuers property value. List of the accepted issuers authority as identified by the Microsoft Entra Verified ID service, for example, did:ion:EiAlrenrtD3Lsw0GlbzS1O2YFdy3Xtu8yo35W/<SNIP/>....
            ## @param value Value to set for the issuers property.
            ## @return a void
            ## 
            def issuers=(value)
                @issuers = value
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
            ## @param value Value to set for the odata_type property.
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
                writer.write_string_value("credentialType", @credential_type)
                writer.write_collection_of_primitive_values("issuers", @issuers)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
