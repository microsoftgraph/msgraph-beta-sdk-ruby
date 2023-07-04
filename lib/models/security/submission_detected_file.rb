require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class SubmissionDetectedFile
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The file hash.
                @file_hash
                ## 
                # The file name.
                @file_name
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
                ## Instantiates a new SubmissionDetectedFile and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a submission_detected_file
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SubmissionDetectedFile.new
                end
                ## 
                ## Gets the fileHash property value. The file hash.
                ## @return a string
                ## 
                def file_hash
                    return @file_hash
                end
                ## 
                ## Sets the fileHash property value. The file hash.
                ## @param value Value to set for the file_hash property.
                ## @return a void
                ## 
                def file_hash=(value)
                    @file_hash = value
                end
                ## 
                ## Gets the fileName property value. The file name.
                ## @return a string
                ## 
                def file_name
                    return @file_name
                end
                ## 
                ## Sets the fileName property value. The file name.
                ## @param value Value to set for the file_name property.
                ## @return a void
                ## 
                def file_name=(value)
                    @file_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "fileHash" => lambda {|n| @file_hash = n.get_string_value() },
                        "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
                    writer.write_string_value("fileHash", @file_hash)
                    writer.write_string_value("fileName", @file_name)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
