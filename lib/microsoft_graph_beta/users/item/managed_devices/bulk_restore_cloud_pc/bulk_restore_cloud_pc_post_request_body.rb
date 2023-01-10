require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../../../../models/restore_time_range'
require_relative '../../../users'
require_relative '../../item'
require_relative '../managed_devices'
require_relative './bulk_restore_cloud_pc'

module MicrosoftGraphBeta::Users::Item::ManagedDevices::BulkRestoreCloudPc
    class BulkRestoreCloudPcPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The managedDeviceIds property
        @managed_device_ids
        ## 
        # The restorePointDateTime property
        @restore_point_date_time
        ## 
        # The timeRange property
        @time_range
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
        ## Instantiates a new bulkRestoreCloudPcPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a bulk_restore_cloud_pc_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return BulkRestoreCloudPcPostRequestBody.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "managedDeviceIds" => lambda {|n| @managed_device_ids = n.get_collection_of_primitive_values(String) },
                "restorePointDateTime" => lambda {|n| @restore_point_date_time = n.get_date_time_value() },
                "timeRange" => lambda {|n| @time_range = n.get_enum_value(MicrosoftGraphBeta::Models::RestoreTimeRange) },
            }
        end
        ## 
        ## Gets the managedDeviceIds property value. The managedDeviceIds property
        ## @return a string
        ## 
        def managed_device_ids
            return @managed_device_ids
        end
        ## 
        ## Sets the managedDeviceIds property value. The managedDeviceIds property
        ## @param value Value to set for the managedDeviceIds property.
        ## @return a void
        ## 
        def managed_device_ids=(value)
            @managed_device_ids = value
        end
        ## 
        ## Gets the restorePointDateTime property value. The restorePointDateTime property
        ## @return a date_time
        ## 
        def restore_point_date_time
            return @restore_point_date_time
        end
        ## 
        ## Sets the restorePointDateTime property value. The restorePointDateTime property
        ## @param value Value to set for the restorePointDateTime property.
        ## @return a void
        ## 
        def restore_point_date_time=(value)
            @restore_point_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("managedDeviceIds", @managed_device_ids)
            writer.write_date_time_value("restorePointDateTime", @restore_point_date_time)
            writer.write_enum_value("timeRange", @time_range)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the timeRange property value. The timeRange property
        ## @return a restore_time_range
        ## 
        def time_range
            return @time_range
        end
        ## 
        ## Sets the timeRange property value. The timeRange property
        ## @param value Value to set for the timeRange property.
        ## @return a void
        ## 
        def time_range=(value)
            @time_range = value
        end
    end
end
