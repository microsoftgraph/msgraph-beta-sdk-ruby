require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcBulkModifyDiskEncryptionType < MicrosoftGraphBeta::Models::CloudPcBulkAction
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The diskEncryptionType property
            @disk_encryption_type
            ## 
            ## Instantiates a new cloudPcBulkModifyDiskEncryptionType and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.cloudPcBulkModifyDiskEncryptionType"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_bulk_modify_disk_encryption_type
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcBulkModifyDiskEncryptionType.new
            end
            ## 
            ## Gets the diskEncryptionType property value. The diskEncryptionType property
            ## @return a cloud_pc_disk_encryption_type
            ## 
            def disk_encryption_type
                return @disk_encryption_type
            end
            ## 
            ## Sets the diskEncryptionType property value. The diskEncryptionType property
            ## @param value Value to set for the diskEncryptionType property.
            ## @return a void
            ## 
            def disk_encryption_type=(value)
                @disk_encryption_type = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "diskEncryptionType" => lambda {|n| @disk_encryption_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDiskEncryptionType) },
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
                writer.write_enum_value("diskEncryptionType", @disk_encryption_type)
            end
        end
    end
end
