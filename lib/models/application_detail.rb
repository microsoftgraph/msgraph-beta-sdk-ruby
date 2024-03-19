require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The details of the application which the user has requested to elevate
        class ApplicationDetail
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            @file_description
            ## 
            # The SHA256 hash of the file in the request for elevation, for example, '18ee24150dcb1d96752a4d6dd0f20dfd8ba8c38527e40aa8509b7adecf78f9c6'
            @file_hash
            ## 
            # The name of the file in the request for elevation, for example, git.exe
            @file_name
            ## 
            # The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            @file_path
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The internal name of the application for which elevation request has been made. For example, 'git'
            @product_internal_name
            ## 
            # The product name of the application for which elevation request has been made. For example, 'Git'
            @product_name
            ## 
            # The product version of the application for which elevation request has been made. For example, '2.40.1.0'
            @product_version
            ## 
            # The list of base64 encoded certificate for each signer, for example, string[encodedleafcert1, encodedleafcert2....]
            @publisher_cert
            ## 
            # The certificate issuer name of the certificate used to sign the application, for example, 'Sectigo Public Code Signing CA R36'
            @publisher_name
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
            ## Instantiates a new ApplicationDetail and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a application_detail
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ApplicationDetail.new
            end
            ## 
            ## Gets the fileDescription property value. The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            ## @return a string
            ## 
            def file_description
                return @file_description
            end
            ## 
            ## Sets the fileDescription property value. The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            ## @param value Value to set for the fileDescription property.
            ## @return a void
            ## 
            def file_description=(value)
                @file_description = value
            end
            ## 
            ## Gets the fileHash property value. The SHA256 hash of the file in the request for elevation, for example, '18ee24150dcb1d96752a4d6dd0f20dfd8ba8c38527e40aa8509b7adecf78f9c6'
            ## @return a string
            ## 
            def file_hash
                return @file_hash
            end
            ## 
            ## Sets the fileHash property value. The SHA256 hash of the file in the request for elevation, for example, '18ee24150dcb1d96752a4d6dd0f20dfd8ba8c38527e40aa8509b7adecf78f9c6'
            ## @param value Value to set for the fileHash property.
            ## @return a void
            ## 
            def file_hash=(value)
                @file_hash = value
            end
            ## 
            ## Gets the fileName property value. The name of the file in the request for elevation, for example, git.exe
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The name of the file in the request for elevation, for example, git.exe
            ## @param value Value to set for the fileName property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## Gets the filePath property value. The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            ## @return a string
            ## 
            def file_path
                return @file_path
            end
            ## 
            ## Sets the filePath property value. The path of the file in the request for elevation, for example, %programfiles%/git/cmd
            ## @param value Value to set for the filePath property.
            ## @return a void
            ## 
            def file_path=(value)
                @file_path = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "fileDescription" => lambda {|n| @file_description = n.get_string_value() },
                    "fileHash" => lambda {|n| @file_hash = n.get_string_value() },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "filePath" => lambda {|n| @file_path = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "productInternalName" => lambda {|n| @product_internal_name = n.get_string_value() },
                    "productName" => lambda {|n| @product_name = n.get_string_value() },
                    "productVersion" => lambda {|n| @product_version = n.get_string_value() },
                    "publisherCert" => lambda {|n| @publisher_cert = n.get_string_value() },
                    "publisherName" => lambda {|n| @publisher_name = n.get_string_value() },
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
            ## Gets the productInternalName property value. The internal name of the application for which elevation request has been made. For example, 'git'
            ## @return a string
            ## 
            def product_internal_name
                return @product_internal_name
            end
            ## 
            ## Sets the productInternalName property value. The internal name of the application for which elevation request has been made. For example, 'git'
            ## @param value Value to set for the productInternalName property.
            ## @return a void
            ## 
            def product_internal_name=(value)
                @product_internal_name = value
            end
            ## 
            ## Gets the productName property value. The product name of the application for which elevation request has been made. For example, 'Git'
            ## @return a string
            ## 
            def product_name
                return @product_name
            end
            ## 
            ## Sets the productName property value. The product name of the application for which elevation request has been made. For example, 'Git'
            ## @param value Value to set for the productName property.
            ## @return a void
            ## 
            def product_name=(value)
                @product_name = value
            end
            ## 
            ## Gets the productVersion property value. The product version of the application for which elevation request has been made. For example, '2.40.1.0'
            ## @return a string
            ## 
            def product_version
                return @product_version
            end
            ## 
            ## Sets the productVersion property value. The product version of the application for which elevation request has been made. For example, '2.40.1.0'
            ## @param value Value to set for the productVersion property.
            ## @return a void
            ## 
            def product_version=(value)
                @product_version = value
            end
            ## 
            ## Gets the publisherCert property value. The list of base64 encoded certificate for each signer, for example, string[encodedleafcert1, encodedleafcert2....]
            ## @return a string
            ## 
            def publisher_cert
                return @publisher_cert
            end
            ## 
            ## Sets the publisherCert property value. The list of base64 encoded certificate for each signer, for example, string[encodedleafcert1, encodedleafcert2....]
            ## @param value Value to set for the publisherCert property.
            ## @return a void
            ## 
            def publisher_cert=(value)
                @publisher_cert = value
            end
            ## 
            ## Gets the publisherName property value. The certificate issuer name of the certificate used to sign the application, for example, 'Sectigo Public Code Signing CA R36'
            ## @return a string
            ## 
            def publisher_name
                return @publisher_name
            end
            ## 
            ## Sets the publisherName property value. The certificate issuer name of the certificate used to sign the application, for example, 'Sectigo Public Code Signing CA R36'
            ## @param value Value to set for the publisherName property.
            ## @return a void
            ## 
            def publisher_name=(value)
                @publisher_name = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("fileDescription", @file_description)
                writer.write_string_value("fileHash", @file_hash)
                writer.write_string_value("fileName", @file_name)
                writer.write_string_value("filePath", @file_path)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("productInternalName", @product_internal_name)
                writer.write_string_value("productName", @product_name)
                writer.write_string_value("productVersion", @product_version)
                writer.write_string_value("publisherCert", @publisher_cert)
                writer.write_string_value("publisherName", @publisher_name)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
