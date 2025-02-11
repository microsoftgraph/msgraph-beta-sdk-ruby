require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcForensicStorageAccount < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The access tier of the storage account. Possible values are hot, cool, premium, cold, and unknownFutureValue. Default value is hot. Read-only.
            @access_tier
            ## 
            # Indicates whether immutability policies are configured for the storage account. When true, the storage account only accepts hot as the snapshot access tier. When false, the storage account accepts all valid access tiers. Read-Only.
            @immutable_storage
            ## 
            # The ID of the storage account. Read-only.
            @storage_account_id
            ## 
            # The name of the storage account. Read-only.
            @storage_account_name
            ## 
            ## Gets the accessTier property value. The access tier of the storage account. Possible values are hot, cool, premium, cold, and unknownFutureValue. Default value is hot. Read-only.
            ## @return a cloud_pc_storage_account_access_tier
            ## 
            def access_tier
                return @access_tier
            end
            ## 
            ## Sets the accessTier property value. The access tier of the storage account. Possible values are hot, cool, premium, cold, and unknownFutureValue. Default value is hot. Read-only.
            ## @param value Value to set for the accessTier property.
            ## @return a void
            ## 
            def access_tier=(value)
                @access_tier = value
            end
            ## 
            ## Instantiates a new CloudPcForensicStorageAccount and sets the default values.
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
                    "accessTier" => lambda {|n| @access_tier = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcStorageAccountAccessTier) },
                    "immutableStorage" => lambda {|n| @immutable_storage = n.get_boolean_value() },
                    "storageAccountId" => lambda {|n| @storage_account_id = n.get_string_value() },
                    "storageAccountName" => lambda {|n| @storage_account_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the immutableStorage property value. Indicates whether immutability policies are configured for the storage account. When true, the storage account only accepts hot as the snapshot access tier. When false, the storage account accepts all valid access tiers. Read-Only.
            ## @return a boolean
            ## 
            def immutable_storage
                return @immutable_storage
            end
            ## 
            ## Sets the immutableStorage property value. Indicates whether immutability policies are configured for the storage account. When true, the storage account only accepts hot as the snapshot access tier. When false, the storage account accepts all valid access tiers. Read-Only.
            ## @param value Value to set for the immutableStorage property.
            ## @return a void
            ## 
            def immutable_storage=(value)
                @immutable_storage = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("accessTier", @access_tier)
                writer.write_boolean_value("immutableStorage", @immutable_storage)
                writer.write_string_value("storageAccountId", @storage_account_id)
                writer.write_string_value("storageAccountName", @storage_account_name)
            end
            ## 
            ## Gets the storageAccountId property value. The ID of the storage account. Read-only.
            ## @return a string
            ## 
            def storage_account_id
                return @storage_account_id
            end
            ## 
            ## Sets the storageAccountId property value. The ID of the storage account. Read-only.
            ## @param value Value to set for the storageAccountId property.
            ## @return a void
            ## 
            def storage_account_id=(value)
                @storage_account_id = value
            end
            ## 
            ## Gets the storageAccountName property value. The name of the storage account. Read-only.
            ## @return a string
            ## 
            def storage_account_name
                return @storage_account_name
            end
            ## 
            ## Sets the storageAccountName property value. The name of the storage account. Read-only.
            ## @param value Value to set for the storageAccountName property.
            ## @return a void
            ## 
            def storage_account_name=(value)
                @storage_account_name = value
            end
        end
    end
end
