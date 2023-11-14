require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AgreementFileData
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Data that represents the terms of use PDF document. Read-only. Note: You can use the .NET Convert.ToBase64String method to convert your file to binary data for uploading using the Create agreements API. A sample syntax using this method in PowerShell is [convert]::ToBase64String((Get-Content -path 'yourfilepath' -Encoding byte)).
            @data
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
            ## Instantiates a new agreementFileData and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a agreement_file_data
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AgreementFileData.new
            end
            ## 
            ## Gets the data property value. Data that represents the terms of use PDF document. Read-only. Note: You can use the .NET Convert.ToBase64String method to convert your file to binary data for uploading using the Create agreements API. A sample syntax using this method in PowerShell is [convert]::ToBase64String((Get-Content -path 'yourfilepath' -Encoding byte)).
            ## @return a base64url
            ## 
            def data
                return @data
            end
            ## 
            ## Sets the data property value. Data that represents the terms of use PDF document. Read-only. Note: You can use the .NET Convert.ToBase64String method to convert your file to binary data for uploading using the Create agreements API. A sample syntax using this method in PowerShell is [convert]::ToBase64String((Get-Content -path 'yourfilepath' -Encoding byte)).
            ## @param value Value to set for the data property.
            ## @return a void
            ## 
            def data=(value)
                @data = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "data" => lambda {|n| @data = n.get_object_value(lambda {|pn| Base64url.create_from_discriminator_value(pn) }) },
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
                writer.write_object_value("data", @data)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
