require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ExternallyAccessibleAzureBlobContainerFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessibility property
            @accessibility
            ## 
            # The encryptionManagedBy property
            @encryption_managed_by
            ## 
            # The storageAccount property
            @storage_account
            ## 
            ## Gets the accessibility property value. The accessibility property
            ## @return a azure_access_type
            ## 
            def accessibility
                return @accessibility
            end
            ## 
            ## Sets the accessibility property value. The accessibility property
            ## @param value Value to set for the accessibility property.
            ## @return a void
            ## 
            def accessibility=(value)
                @accessibility = value
            end
            ## 
            ## Instantiates a new ExternallyAccessibleAzureBlobContainerFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a externally_accessible_azure_blob_container_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ExternallyAccessibleAzureBlobContainerFinding.new
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
                    "accessibility" => lambda {|n| @accessibility = n.get_enum_value(MicrosoftGraphBeta::Models::AzureAccessType) },
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
                writer.write_enum_value("accessibility", @accessibility)
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
