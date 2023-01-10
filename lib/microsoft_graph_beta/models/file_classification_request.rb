require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class FileClassificationRequest < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The file property
        @file
        ## 
        # The sensitiveTypeIds property
        @sensitive_type_ids
        ## 
        ## Instantiates a new FileClassificationRequest and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a file_classification_request
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return FileClassificationRequest.new
        end
        ## 
        ## Gets the file property value. The file property
        ## @return a binary
        ## 
        def file
            return @file
        end
        ## 
        ## Sets the file property value. The file property
        ## @param value Value to set for the file property.
        ## @return a void
        ## 
        def file=(value)
            @file = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "file" => lambda {|n| @file = n.get_string_value() },
                "sensitiveTypeIds" => lambda {|n| @sensitive_type_ids = n.get_collection_of_primitive_values(String) },
            })
        end
        ## 
        ## Gets the sensitiveTypeIds property value. The sensitiveTypeIds property
        ## @return a string
        ## 
        def sensitive_type_ids
            return @sensitive_type_ids
        end
        ## 
        ## Sets the sensitiveTypeIds property value. The sensitiveTypeIds property
        ## @param value Value to set for the sensitiveTypeIds property.
        ## @return a void
        ## 
        def sensitive_type_ids=(value)
            @sensitive_type_ids = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_object_value("file", @file)
            writer.write_collection_of_primitive_values("sensitiveTypeIds", @sensitive_type_ids)
        end
    end
end
