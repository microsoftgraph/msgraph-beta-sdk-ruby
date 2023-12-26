require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EncryptedAzureStorageAccountFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The encryptionManagedBy property
            @encryption_managed_by
            ## 
            # The storageAccount property
            @storage_account
            ## 
            ## Instantiates a new encryptedAzureStorageAccountFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a encrypted_azure_storage_account_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EncryptedAzureStorageAccountFinding.new
            end
            ## 
            ## Gets the encryptionManagedBy property value. The encryptionManagedBy property
            ## @return a azure_encryption
            ## 
            def encryption_managed_by
                return @encryption_managed_by
            end
            ## 
            ## Sets the encryptionManagedBy property value. The encryptionManagedBy property
            ## @param value Value to set for the encryptionManagedBy property.
            ## @return a void
            ## 
            def encryption_managed_by=(value)
                @encryption_managed_by = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "encryptionManagedBy" => lambda {|n| @encryption_managed_by = n.get_enum_value(MicrosoftGraphBeta::Models::AzureEncryption) },
                    "storageAccount" => lambda {|n| @storage_account = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
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
                writer.write_enum_value("encryptionManagedBy", @encryption_managed_by)
                writer.write_object_value("storageAccount", @storage_account)
            end
            ## 
            ## Gets the storageAccount property value. The storageAccount property
            ## @return a authorization_system_resource
            ## 
            def storage_account
                return @storage_account
            end
            ## 
            ## Sets the storageAccount property value. The storageAccount property
            ## @param value Value to set for the storageAccount property.
            ## @return a void
            ## 
            def storage_account=(value)
                @storage_account = value
            end
        end
    end
end
