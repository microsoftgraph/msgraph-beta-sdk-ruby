require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcForensicStorageAccount < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ID of the storage account.
            @storage_account_id
            ## 
            # The name of the storage account.
            @storage_account_name
            ## 
            ## Instantiates a new cloudPcForensicStorageAccount and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_forensic_storage_account
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcForensicStorageAccount.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "storageAccountId" => lambda {|n| @storage_account_id = n.get_string_value() },
                    "storageAccountName" => lambda {|n| @storage_account_name = n.get_string_value() },
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
                writer.write_string_value("storageAccountId", @storage_account_id)
                writer.write_string_value("storageAccountName", @storage_account_name)
            end
            ## 
            ## Gets the storageAccountId property value. The ID of the storage account.
            ## @return a string
            ## 
            def storage_account_id
                return @storage_account_id
            end
            ## 
            ## Sets the storageAccountId property value. The ID of the storage account.
            ## @param value Value to set for the storageAccountId property.
            ## @return a void
            ## 
            def storage_account_id=(value)
                @storage_account_id = value
            end
            ## 
            ## Gets the storageAccountName property value. The name of the storage account.
            ## @return a string
            ## 
            def storage_account_name
                return @storage_account_name
            end
            ## 
            ## Sets the storageAccountName property value. The name of the storage account.
            ## @param value Value to set for the storageAccountName property.
            ## @return a void
            ## 
            def storage_account_name=(value)
                @storage_account_name = value
            end
        end
    end
end
