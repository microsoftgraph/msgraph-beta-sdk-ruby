require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityAnalyzedEmailAttachment
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The detonationDetails property
            @detonation_details
            ## 
            # The fileName property
            @file_name
            ## 
            # The fileType property
            @file_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The sha256 property
            @sha256
            ## 
            # The threatName property
            @threat_name
            ## 
            # The threatType property
            @threat_type
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
            ## Instantiates a new SecurityAnalyzedEmailAttachment and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_analyzed_email_attachment
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityAnalyzedEmailAttachment.new
            end
            ## 
            ## Gets the detonationDetails property value. The detonationDetails property
            ## @return a security_detonation_details
            ## 
            def detonation_details
                return @detonation_details
            end
            ## 
            ## Sets the detonationDetails property value. The detonationDetails property
            ## @param value Value to set for the detonationDetails property.
            ## @return a void
            ## 
            def detonation_details=(value)
                @detonation_details = value
            end
            ## 
            ## Gets the fileName property value. The fileName property
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. The fileName property
            ## @param value Value to set for the fileName property.
            ## @return a void
            ## 
            def file_name=(value)
                @file_name = value
            end
            ## 
            ## Gets the fileType property value. The fileType property
            ## @return a string
            ## 
            def file_type
                return @file_type
            end
            ## 
            ## Sets the fileType property value. The fileType property
            ## @param value Value to set for the fileType property.
            ## @return a void
            ## 
            def file_type=(value)
                @file_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "detonationDetails" => lambda {|n| @detonation_details = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDetonationDetails.create_from_discriminator_value(pn) }) },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "fileType" => lambda {|n| @file_type = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "sha256" => lambda {|n| @sha256 = n.get_string_value() },
                    "threatName" => lambda {|n| @threat_name = n.get_string_value() },
                    "threatType" => lambda {|n| @threat_type = n.get_enum_value(MicrosoftGraphBeta::Models::SecurityThreatType) },
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
                writer.write_object_value("detonationDetails", @detonation_details)
                writer.write_string_value("fileName", @file_name)
                writer.write_string_value("fileType", @file_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("sha256", @sha256)
                writer.write_string_value("threatName", @threat_name)
                writer.write_enum_value("threatType", @threat_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sha256 property value. The sha256 property
            ## @return a string
            ## 
            def sha256
                return @sha256
            end
            ## 
            ## Sets the sha256 property value. The sha256 property
            ## @param value Value to set for the sha256 property.
            ## @return a void
            ## 
            def sha256=(value)
                @sha256 = value
            end
            ## 
            ## Gets the threatName property value. The threatName property
            ## @return a string
            ## 
            def threat_name
                return @threat_name
            end
            ## 
            ## Sets the threatName property value. The threatName property
            ## @param value Value to set for the threatName property.
            ## @return a void
            ## 
            def threat_name=(value)
                @threat_name = value
            end
            ## 
            ## Gets the threatType property value. The threatType property
            ## @return a security_threat_type
            ## 
            def threat_type
                return @threat_type
            end
            ## 
            ## Sets the threatType property value. The threatType property
            ## @param value Value to set for the threatType property.
            ## @return a void
            ## 
            def threat_type=(value)
                @threat_type = value
            end
        end
    end
end
