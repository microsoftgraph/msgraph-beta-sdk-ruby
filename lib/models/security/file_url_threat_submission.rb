require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class FileUrlThreatSubmission < MicrosoftGraphBeta::Models::Security::FileThreatSubmission
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # It specifies the URL of the file which needs to be submitted.
                @file_url
                ## 
                ## Instantiates a new fileUrlThreatSubmission and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.fileUrlThreatSubmission"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a file_url_threat_submission
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return FileUrlThreatSubmission.new
                end
                ## 
                ## Gets the fileUrl property value. It specifies the URL of the file which needs to be submitted.
                ## @return a string
                ## 
                def file_url
                    return @file_url
                end
                ## 
                ## Sets the fileUrl property value. It specifies the URL of the file which needs to be submitted.
                ## @param value Value to set for the file_url property.
                ## @return a void
                ## 
                def file_url=(value)
                    @file_url = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "fileUrl" => lambda {|n| @file_url = n.get_string_value() },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("fileUrl", @file_url)
                end
            end
        end
    end
end
