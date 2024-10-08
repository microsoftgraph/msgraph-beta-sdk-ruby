require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagementCertificateWithThumbprint
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The Base 64 encoded management certificate
            @certificate
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The thumbprint of the management certificate
            @thumbprint
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
            ## Gets the certificate property value. The Base 64 encoded management certificate
            ## @return a string
            ## 
            def certificate
                return @certificate
            end
            ## 
            ## Sets the certificate property value. The Base 64 encoded management certificate
            ## @param value Value to set for the certificate property.
            ## @return a void
            ## 
            def certificate=(value)
                @certificate = value
            end
            ## 
            ## Instantiates a new ManagementCertificateWithThumbprint and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a management_certificate_with_thumbprint
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagementCertificateWithThumbprint.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "certificate" => lambda {|n| @certificate = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "thumbprint" => lambda {|n| @thumbprint = n.get_string_value() },
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
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("thumbprint", @thumbprint)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the thumbprint property value. The thumbprint of the management certificate
            ## @return a string
            ## 
            def thumbprint
                return @thumbprint
            end
            ## 
            ## Sets the thumbprint property value. The thumbprint of the management certificate
            ## @param value Value to set for the thumbprint property.
            ## @return a void
            ## 
            def thumbprint=(value)
                @thumbprint = value
            end
        end
    end
end
