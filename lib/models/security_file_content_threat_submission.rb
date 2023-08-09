require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityFileContentThreatSubmission < MicrosoftGraphBeta::Models::SecurityFileThreatSubmission
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # It specifies the file content in base 64 format.
            @file_content
            ## 
            ## Instantiates a new fileContentThreatSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.fileContentThreatSubmission"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_file_content_threat_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityFileContentThreatSubmission.new
            end
            ## 
            ## Gets the fileContent property value. It specifies the file content in base 64 format.
            ## @return a string
            ## 
            def file_content
                return @file_content
            end
            ## 
            ## Sets the fileContent property value. It specifies the file content in base 64 format.
            ## @param value Value to set for the fileContent property.
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
