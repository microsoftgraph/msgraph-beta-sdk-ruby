require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class CloudPcTenantEncryptionSetting
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The lastSyncDateTime property
            @last_sync_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The tenantDiskEncryptionType property
            @tenant_disk_encryption_type
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new cloudPcTenantEncryptionSetting and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a cloud_pc_tenant_encryption_setting
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return CloudPcTenantEncryptionSetting.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "lastSyncDateTime" => lambda {|n| @last_sync_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "tenantDiskEncryptionType" => lambda {|n| @tenant_disk_encryption_type = n.get_enum_value(MicrosoftGraphBeta::Models::CloudPcDiskEncryptionType) },
                }
            end
            ## 
            ## Gets the lastSyncDateTime property value. The lastSyncDateTime property
            ## @return a date_time
            ## 
            def last_sync_date_time
                return @last_sync_date_time
            end
            ## 
            ## Sets the lastSyncDateTime property value. The lastSyncDateTime property
            ## @param value Value to set for the lastSyncDateTime property.
            ## @return a void
            ## 
            def last_sync_date_time=(value)
                @last_sync_date_time = value
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
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_date_time_value("lastSyncDateTime", @last_sync_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("tenantDiskEncryptionType", @tenant_disk_encryption_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantDiskEncryptionType property value. The tenantDiskEncryptionType property
            ## @return a cloud_pc_disk_encryption_type
            ## 
            def tenant_disk_encryption_type
                return @tenant_disk_encryption_type
            end
            ## 
            ## Sets the tenantDiskEncryptionType property value. The tenantDiskEncryptionType property
            ## @param value Value to set for the tenantDiskEncryptionType property.
            ## @return a void
            ## 
            def tenant_disk_encryption_type=(value)
                @tenant_disk_encryption_type = value
            end
        end
    end
end
