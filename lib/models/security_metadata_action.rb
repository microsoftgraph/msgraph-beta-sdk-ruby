require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './security/security'

module MicrosoftGraphBeta
    module Models
        class SecurityMetadataAction < MicrosoftGraphBeta::Models::SecurityInformationProtectionAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # A collection of key-value pairs that should be added to the file.
            @metadata_to_add
            ## 
            # A collection of strings that indicate which keys to remove from the file metadata.
            @metadata_to_remove
            ## 
            ## Instantiates a new metadataAction and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.security.metadataAction"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_metadata_action
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityMetadataAction.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "metadataToAdd" => lambda {|n| @metadata_to_add = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityKeyValuePair.create_from_discriminator_value(pn) }) },
                    "metadataToRemove" => lambda {|n| @metadata_to_remove = n.get_collection_of_primitive_values(String) },
                })
            end
            ## 
            ## Gets the metadataToAdd property value. A collection of key-value pairs that should be added to the file.
            ## @return a security_key_value_pair
            ## 
            def metadata_to_add
                return @metadata_to_add
            end
            ## 
            ## Sets the metadataToAdd property value. A collection of key-value pairs that should be added to the file.
            ## @param value Value to set for the metadataToAdd property.
            ## @return a void
            ## 
            def metadata_to_add=(value)
                @metadata_to_add = value
            end
            ## 
            ## Gets the metadataToRemove property value. A collection of strings that indicate which keys to remove from the file metadata.
            ## @return a string
            ## 
            def metadata_to_remove
                return @metadata_to_remove
            end
            ## 
            ## Sets the metadataToRemove property value. A collection of strings that indicate which keys to remove from the file metadata.
            ## @param value Value to set for the metadataToRemove property.
            ## @return a void
            ## 
            def metadata_to_remove=(value)
                @metadata_to_remove = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("metadataToAdd", @metadata_to_add)
                writer.write_collection_of_primitive_values("metadataToRemove", @metadata_to_remove)
            end
        end
    end
end
