require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class BufferEncryptionResult
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The encryptedBuffer property
        @encrypted_buffer
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The publishingLicense property
        @publishing_license
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
        ## Instantiates a new bufferEncryptionResult and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a buffer_encryption_result
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BufferEncryptionResult.new
        end
        ## 
        ## Gets the encryptedBuffer property value. The encryptedBuffer property
        ## @return a binary
        ## 
        def encrypted_buffer
            return @encrypted_buffer
        end
        ## 
        ## Sets the encryptedBuffer property value. The encryptedBuffer property
        ## @param value Value to set for the encrypted_buffer property.
        ## @return a void
        ## 
        def encrypted_buffer=(value)
            @encrypted_buffer = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "encryptedBuffer" => lambda {|n| @encrypted_buffer = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "publishingLicense" => lambda {|n| @publishing_license = n.get_string_value() },
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
        ## Gets the publishingLicense property value. The publishingLicense property
        ## @return a binary
        ## 
        def publishing_license
            return @publishing_license
        end
        ## 
        ## Sets the publishingLicense property value. The publishingLicense property
        ## @param value Value to set for the publishing_license property.
        ## @return a void
        ## 
        def publishing_license=(value)
            @publishing_license = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_object_value("encryptedBuffer", @encrypted_buffer)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_object_value("publishingLicense", @publishing_license)
            writer.write_additional_data(@additional_data)
        end
    end
end
