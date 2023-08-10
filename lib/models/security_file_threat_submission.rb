require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityFileThreatSubmission < MicrosoftGraphBeta::Models::SecurityThreatSubmission
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # It specifies the file name to be submitted.
            @file_name
            ## 
            ## Instantiates a new securityFileThreatSubmission and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.fileThreatSubmission"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_file_threat_submission
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.security.fileContentThreatSubmission"
                            return SecurityFileContentThreatSubmission.new
                        when "#microsoft.graph.security.fileUrlThreatSubmission"
                            return SecurityFileUrlThreatSubmission.new
                    end
                end
                return SecurityFileThreatSubmission.new
            end
            ## 
            ## Gets the fileName property value. It specifies the file name to be submitted.
            ## @return a string
            ## 
            def file_name
                return @file_name
            end
            ## 
            ## Sets the fileName property value. It specifies the file name to be submitted.
            ## @param value Value to set for the fileName property.
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
                return super.merge({
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
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
                writer.write_string_value("fileName", @file_name)
            end
        end
    end
end
