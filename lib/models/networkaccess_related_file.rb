require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessRelatedFile < MicrosoftGraphBeta::Models::NetworkaccessRelatedResource
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The directory property
            @directory
            ## 
            # The name property
            @name
            ## 
            # The sizeInBytes property
            @size_in_bytes
            ## 
            ## Instantiates a new NetworkaccessRelatedFile and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.relatedFile"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_related_file
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessRelatedFile.new
            end
            ## 
            ## Gets the directory property value. The directory property
            ## @return a string
            ## 
            def directory
                return @directory
            end
            ## 
            ## Sets the directory property value. The directory property
            ## @param value Value to set for the directory property.
            ## @return a void
            ## 
            def directory=(value)
                @directory = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "directory" => lambda {|n| @directory = n.get_string_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "sizeInBytes" => lambda {|n| @size_in_bytes = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
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
                writer.write_string_value("directory", @directory)
                writer.write_string_value("name", @name)
                writer.write_object_value("sizeInBytes", @size_in_bytes)
            end
            ## 
            ## Gets the sizeInBytes property value. The sizeInBytes property
            ## @return a int64
            ## 
            def size_in_bytes
                return @size_in_bytes
            end
            ## 
            ## Sets the sizeInBytes property value. The sizeInBytes property
            ## @param value Value to set for the sizeInBytes property.
            ## @return a void
            ## 
            def size_in_bytes=(value)
                @size_in_bytes = value
            end
        end
    end
end
