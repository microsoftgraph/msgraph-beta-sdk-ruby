require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph_beta'
require_relative '../../device_management'
require_relative '../managed_devices'
require_relative './bulk_reprovision_cloud_pc'

module MicrosoftGraphBeta
    module DeviceManagement
        module ManagedDevices
            module BulkReprovisionCloudPc
                class BulkReprovisionCloudPcPostRequestBody
                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    @additional_data
                    ## 
                    # The managedDeviceIds property
                    @managed_device_ids
                    ## 
                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @return a i_dictionary
                    ## 
                    def additional_data
                        return @additional_data
                    end
                    ## 
                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                    ## @param value Value to set for the additionalData property.
                    ## @return a void
                    ## 
                    def additional_data=(value)
                        @additional_data = value
                    end
                    ## 
                    ## Instantiates a new bulkReprovisionCloudPcPostRequestBody and sets the default values.
                    ## @return a void
                    ## 
                    def initialize()
                        @additional_data = Hash.new
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a bulk_reprovision_cloud_pc_post_request_body
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return BulkReprovisionCloudPcPostRequestBody.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "managedDeviceIds" => lambda {|n| @managed_device_ids = n.get_collection_of_primitive_values(String) },
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
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_collection_of_primitive_values("managedDeviceIds", @managed_device_ids)
                        writer.write_additional_data(@additional_data)
                    end
                end
            end
        end
    end
end
