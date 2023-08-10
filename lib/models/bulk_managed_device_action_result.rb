require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class BulkManagedDeviceActionResult
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Failed devices
            @failed_device_ids
            ## 
            # Not found devices
            @not_found_device_ids
            ## 
            # Not supported devices
            @not_supported_device_ids
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Successful devices
            @successful_device_ids
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
            ## Instantiates a new bulkManagedDeviceActionResult and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a bulk_managed_device_action_result
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BulkManagedDeviceActionResult.new
            end
            ## 
            ## Gets the failedDeviceIds property value. Failed devices
            ## @return a string
            ## 
            def failed_device_ids
                return @failed_device_ids
            end
            ## 
            ## Sets the failedDeviceIds property value. Failed devices
            ## @param value Value to set for the failedDeviceIds property.
            ## @return a void
            ## 
            def failed_device_ids=(value)
                @failed_device_ids = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "failedDeviceIds" => lambda {|n| @failed_device_ids = n.get_collection_of_primitive_values(String) },
                    "notFoundDeviceIds" => lambda {|n| @not_found_device_ids = n.get_collection_of_primitive_values(String) },
                    "notSupportedDeviceIds" => lambda {|n| @not_supported_device_ids = n.get_collection_of_primitive_values(String) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "successfulDeviceIds" => lambda {|n| @successful_device_ids = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the notFoundDeviceIds property value. Not found devices
            ## @return a string
            ## 
            def not_found_device_ids
                return @not_found_device_ids
            end
            ## 
            ## Sets the notFoundDeviceIds property value. Not found devices
            ## @param value Value to set for the notFoundDeviceIds property.
            ## @return a void
            ## 
            def not_found_device_ids=(value)
                @not_found_device_ids = value
            end
            ## 
            ## Gets the notSupportedDeviceIds property value. Not supported devices
            ## @return a string
            ## 
            def not_supported_device_ids
                return @not_supported_device_ids
            end
            ## 
            ## Sets the notSupportedDeviceIds property value. Not supported devices
            ## @param value Value to set for the notSupportedDeviceIds property.
            ## @return a void
            ## 
            def not_supported_device_ids=(value)
                @not_supported_device_ids = value
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
                writer.write_collection_of_primitive_values("failedDeviceIds", @failed_device_ids)
                writer.write_collection_of_primitive_values("notFoundDeviceIds", @not_found_device_ids)
                writer.write_collection_of_primitive_values("notSupportedDeviceIds", @not_supported_device_ids)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_collection_of_primitive_values("successfulDeviceIds", @successful_device_ids)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the successfulDeviceIds property value. Successful devices
            ## @return a string
            ## 
            def successful_device_ids
                return @successful_device_ids
            end
            ## 
            ## Sets the successfulDeviceIds property value. Successful devices
            ## @param value Value to set for the successfulDeviceIds property.
            ## @return a void
            ## 
            def successful_device_ids=(value)
                @successful_device_ids = value
            end
        end
    end
end
