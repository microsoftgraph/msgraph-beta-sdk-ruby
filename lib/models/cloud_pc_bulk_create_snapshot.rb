require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkCreateSnapshot < MicrosoftGraphBeta::Models::CloudPcBulkAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The accessTier property
            @access_tier
            ## 
            # The storageAccountId property
            @storage_account_id
            ## 
            ## Gets the accessTier property value. The accessTier property
            ## @return a cloud_pc_blob_access_tier
            ## 
            def access_tier
                return @access_tier
            end
            ## 
            ## Sets the accessTier property value. The accessTier property
            ## @param value Value to set for the accessTier property.
            ## @return a void
            ## 
            def access_tier=(value)
                @access_tier = value
            end
            ## 
            ## Instantiates a new CloudPcBulkCreateSnapshot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcBulkCreateSnapshot"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_create_snapshot
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcBulkCreateSnapshot.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "accessTier" => lambda {|n| @access_tier = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcBlobAccessTier) },
                    "storageAccountId" => lambda {|n| @storage_account_id = n.get_string_value() },
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
                writer.write_enum_value("accessTier", @access_tier)
                writer.write_string_value("storageAccountId", @storage_account_id)
            end
            ## 
            ## Gets the storageAccountId property value. The storageAccountId property
            ## @return a string
            ## 
            def storage_account_id
                return @storage_account_id
            end
            ## 
            ## Sets the storageAccountId property value. The storageAccountId property
            ## @param value Value to set for the storageAccountId property.
            ## @return a void
            ## 
            def storage_account_id=(value)
                @storage_account_id = value
            end
        end
    end
end
