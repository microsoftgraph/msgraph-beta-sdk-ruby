require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class EmailContentThreatSubmission < MicrosoftGraphBeta::Models::Security::EmailThreatSubmission
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Base64 encoded file content.
                @file_content
                ## 
                ## Instantiates a new emailContentThreatSubmission and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.emailContentThreatSubmission"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a email_content_threat_submission
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EmailContentThreatSubmission.new
                end
                ## 
                ## Gets the fileContent property value. Base64 encoded file content.
                ## @return a string
                ## 
                def file_content
                    return @file_content
                end
                ## 
                ## Sets the fileContent property value. Base64 encoded file content.
                ## @param value Value to set for the file_content property.
                ## @return a void
                ## 
                def file_content=(value)
                    @file_content = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "fileContent" => lambda {|n| @file_content = n.get_string_value() },
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
                    writer.write_string_value("fileContent", @file_content)
                end
            end
        end
    end
end
