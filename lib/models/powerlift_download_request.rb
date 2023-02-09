require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # Request used to download app diagnostic files.
        class PowerliftDownloadRequest
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The list of files to download
            @files
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The unique id for the request
            @powerlift_id
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
            ## Instantiates a new powerliftDownloadRequest and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a powerlift_download_request
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return PowerliftDownloadRequest.new
            end
            ## 
            ## Gets the files property value. The list of files to download
            ## @return a string
            ## 
            def files
                return @files
            end
            ## 
            ## Sets the files property value. The list of files to download
            ## @param value Value to set for the files property.
            ## @return a void
            ## 
            def files=(value)
                @files = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "files" => lambda {|n| @files = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "powerliftId" => lambda {|n| @powerlift_id = n.get_guid_value() },
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
            ## Gets the powerliftId property value. The unique id for the request
            ## @return a guid
            ## 
            def powerlift_id
                return @powerlift_id
            end
            ## 
            ## Sets the powerliftId property value. The unique id for the request
            ## @param value Value to set for the powerlift_id property.
            ## @return a void
            ## 
            def powerlift_id=(value)
                @powerlift_id = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_collection_of_primitive_values("files", @files)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_guid_value("powerliftId", @powerlift_id)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
