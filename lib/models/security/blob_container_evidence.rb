require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './security'

module MicrosoftGraphBeta
    module Models
        module Security
            class BlobContainerEvidence < MicrosoftGraphBeta::Models::Security::AlertEvidence
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name property
                @name
                ## 
                # The storageResource property
                @storage_resource
                ## 
                # The url property
                @url
                ## 
                ## Instantiates a new blobContainerEvidence and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                    @odata_type = "#microsoft.graph.security.blobContainerEvidence"
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a blob_container_evidence
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return BlobContainerEvidence.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "storageResource" => lambda {|n| @storage_resource = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Security::AzureResourceEvidence.create_from_discriminator_value(pn) }) },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("name", @name)
                    writer.write_object_value("storageResource", @storage_resource)
                    writer.write_string_value("url", @url)
                end
                ## 
                ## Gets the storageResource property value. The storageResource property
                ## @return a azure_resource_evidence
                ## 
                def storage_resource
                    return @storage_resource
                end
                ## 
                ## Sets the storageResource property value. The storageResource property
                ## @param value Value to set for the storageResource property.
                ## @return a void
                ## 
                def storage_resource=(value)
                    @storage_resource = value
                end
                ## 
                ## Gets the url property value. The url property
                ## @return a string
                ## 
                def url
                    return @url
                end
                ## 
                ## Sets the url property value. The url property
                ## @param value Value to set for the url property.
                ## @return a void
                ## 
                def url=(value)
                    @url = value
                end
            end
        end
    end
end
