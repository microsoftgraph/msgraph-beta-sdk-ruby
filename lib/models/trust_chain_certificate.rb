require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Complex type that represents a certificate in the trust chain of another certificate issued by a certification authority external to Microsoft Cloud PKI. This complex type is only used when calling the uploadExternallySignedCertificationAuthorityCertificate action.
        class TrustChainCertificate
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The trust chain certificate in base 64 encoded form.
            @certificate
            ## 
            # The trust chain certificate display name that provides a user-friendly way to identify a certificate in a trust chain.
            @display_name
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the certificate property value. The trust chain certificate in base 64 encoded form.
            ## @return a string
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. The trust chain certificate in base 64 encoded form.
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Instantiates a new TrustChainCertificate and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a trust_chain_certificate
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return TrustChainCertificate.new
            end
            ## 
            ## Gets the displayName property value. The trust chain certificate display name that provides a user-friendly way to identify a certificate in a trust chain.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The trust chain certificate display name that provides a user-friendly way to identify a certificate in a trust chain.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certificate" => lambda {|n| @certificate = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
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
                writer.write_string_value("certificate", @certificate)
                writer.write_string_value("displayName", @display_name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
