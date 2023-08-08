require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExactMatchSession < MicrosoftGraphBeta::Models::ExactMatchSessionBase
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The checksum property
            @checksum
            ## 
            # The dataUploadURI property
            @data_upload_u_r_i
            ## 
            # The fields property
            @fields
            ## 
            # The fileName property
            @file_name
            ## 
            # The rowsPerBlock property
            @rows_per_block
            ## 
            # The salt property
            @salt
            ## 
            # The uploadAgent property
            @upload_agent
            ## 
            # The uploadAgentId property
            @upload_agent_id
            ## 
            ## Gets the checksum property value. The checksum property
            ## @return a string
            ## 
            def checksum
                return @checksum
            end
            ## 
            ## Sets the checksum property value. The checksum property
            ## @param value Value to set for the checksum property.
            ## @return a void
            ## 
            def checksum=(value)
                @checksum = value
            end
            ## 
            ## Instantiates a new exactMatchSession and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a exact_match_session
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExactMatchSession.new
            end
            ## 
            ## Gets the dataUploadURI property value. The dataUploadURI property
            ## @return a string
            ## 
            def data_upload_u_r_i
                return @data_upload_u_r_i
            end
            ## 
            ## Sets the dataUploadURI property value. The dataUploadURI property
            ## @param value Value to set for the dataUploadURI property.
            ## @return a void
            ## 
            def data_upload_u_r_i=(value)
                @data_upload_u_r_i = value
            end
            ## 
            ## Gets the fields property value. The fields property
            ## @return a string
            ## 
            def fields
                return @fields
            end
            ## 
            ## Sets the fields property value. The fields property
            ## @param value Value to set for the fields property.
            ## @return a void
            ## 
            def fields=(value)
                @fields = value
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
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "checksum" => lambda {|n| @checksum = n.get_string_value() },
                    "dataUploadURI" => lambda {|n| @data_upload_u_r_i = n.get_string_value() },
                    "fields" => lambda {|n| @fields = n.get_collection_of_primitive_values(String) },
                    "fileName" => lambda {|n| @file_name = n.get_string_value() },
                    "rowsPerBlock" => lambda {|n| @rows_per_block = n.get_number_value() },
                    "salt" => lambda {|n| @salt = n.get_string_value() },
                    "uploadAgent" => lambda {|n| @upload_agent = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::ExactMatchUploadAgent.create_from_discriminator_value(pn) }) },
                    "uploadAgentId" => lambda {|n| @upload_agent_id = n.get_string_value() },
                })
            end
            ## 
            ## Gets the rowsPerBlock property value. The rowsPerBlock property
            ## @return a integer
            ## 
            def rows_per_block
                return @rows_per_block
            end
            ## 
            ## Sets the rowsPerBlock property value. The rowsPerBlock property
            ## @param value Value to set for the rowsPerBlock property.
            ## @return a void
            ## 
            def rows_per_block=(value)
                @rows_per_block = value
            end
            ## 
            ## Gets the salt property value. The salt property
            ## @return a string
            ## 
            def salt
                return @salt
            end
            ## 
            ## Sets the salt property value. The salt property
            ## @param value Value to set for the salt property.
            ## @return a void
            ## 
            def salt=(value)
                @salt = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("checksum", @checksum)
                writer.write_string_value("dataUploadURI", @data_upload_u_r_i)
                writer.write_collection_of_primitive_values("fields", @fields)
                writer.write_string_value("fileName", @file_name)
                writer.write_number_value("rowsPerBlock", @rows_per_block)
                writer.write_string_value("salt", @salt)
                writer.write_object_value("uploadAgent", @upload_agent)
                writer.write_string_value("uploadAgentId", @upload_agent_id)
            end
            ## 
            ## Gets the uploadAgent property value. The uploadAgent property
            ## @return a exact_match_upload_agent
            ## 
            def upload_agent
                return @upload_agent
            end
            ## 
            ## Sets the uploadAgent property value. The uploadAgent property
            ## @param value Value to set for the uploadAgent property.
            ## @return a void
            ## 
            def upload_agent=(value)
                @upload_agent = value
            end
            ## 
            ## Gets the uploadAgentId property value. The uploadAgentId property
            ## @return a string
            ## 
            def upload_agent_id
                return @upload_agent_id
            end
            ## 
            ## Sets the uploadAgentId property value. The uploadAgentId property
            ## @param value Value to set for the uploadAgentId property.
            ## @return a void
            ## 
            def upload_agent_id=(value)
                @upload_agent_id = value
            end
        end
    end
end
