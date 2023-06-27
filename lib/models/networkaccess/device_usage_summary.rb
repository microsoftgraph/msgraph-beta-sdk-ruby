require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class DeviceUsageSummary
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # The activeDeviceCount property
                @active_device_count
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The inactiveDeviceCount property
                @inactive_device_count
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The totalDeviceCount property
                @total_device_count
                ## 
                ## Gets the activeDeviceCount property value. The activeDeviceCount property
                ## @return a integer
                ## 
                def active_device_count
                    return @active_device_count
                end
                ## 
                ## Sets the activeDeviceCount property value. The activeDeviceCount property
                ## @param value Value to set for the active_device_count property.
                ## @return a void
                ## 
                def active_device_count=(value)
                    @active_device_count = value
                end
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
                ## Instantiates a new deviceUsageSummary and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a device_usage_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DeviceUsageSummary.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activeDeviceCount" => lambda {|n| @active_device_count = n.get_number_value() },
                        "inactiveDeviceCount" => lambda {|n| @inactive_device_count = n.get_number_value() },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "totalDeviceCount" => lambda {|n| @total_device_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the inactiveDeviceCount property value. The inactiveDeviceCount property
                ## @return a integer
                ## 
                def inactive_device_count
                    return @inactive_device_count
                end
                ## 
                ## Sets the inactiveDeviceCount property value. The inactiveDeviceCount property
                ## @param value Value to set for the inactive_device_count property.
                ## @return a void
                ## 
                def inactive_device_count=(value)
                    @inactive_device_count = value
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
                ## @param value Value to set for the odata_type property.
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
                    writer.write_number_value("activeDeviceCount", @active_device_count)
                    writer.write_number_value("inactiveDeviceCount", @inactive_device_count)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_number_value("totalDeviceCount", @total_device_count)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the totalDeviceCount property value. The totalDeviceCount property
                ## @return a integer
                ## 
                def total_device_count
                    return @total_device_count
                end
                ## 
                ## Sets the totalDeviceCount property value. The totalDeviceCount property
                ## @param value Value to set for the total_device_count property.
                ## @return a void
                ## 
                def total_device_count=(value)
                    @total_device_count = value
                end
            end
        end
    end
end
