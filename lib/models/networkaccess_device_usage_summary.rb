require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessDeviceUsageSummary
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The number of distinct device IDs in the time frame between endDateTime and discoveryPivotDateTime.
            @active_device_count
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The number of distinct device IDs havn't seen in the time frame between endDateTime and discoveryPivotDateTime but have seen in the time frame between discoveryPivotDateTime and startDateTime.
            @inactive_device_count
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The number of distinct device IDs in the time frame between startDateTime and endDateTime.
            @total_device_count
            ## 
            ## Gets the activeDeviceCount property value. The number of distinct device IDs in the time frame between endDateTime and discoveryPivotDateTime.
            ## @return a integer
            ## 
            def active_device_count
                return @active_device_count
            end
            ## 
            ## Sets the activeDeviceCount property value. The number of distinct device IDs in the time frame between endDateTime and discoveryPivotDateTime.
            ## @param value Value to set for the activeDeviceCount property.
            ## @return a void
            ## 
            def active_device_count=(value)
                @active_device_count = value
            end
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
            ## Instantiates a new networkaccessDeviceUsageSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_device_usage_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessDeviceUsageSummary.new
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
            ## Gets the inactiveDeviceCount property value. The number of distinct device IDs havn't seen in the time frame between endDateTime and discoveryPivotDateTime but have seen in the time frame between discoveryPivotDateTime and startDateTime.
            ## @return a integer
            ## 
            def inactive_device_count
                return @inactive_device_count
            end
            ## 
            ## Sets the inactiveDeviceCount property value. The number of distinct device IDs havn't seen in the time frame between endDateTime and discoveryPivotDateTime but have seen in the time frame between discoveryPivotDateTime and startDateTime.
            ## @param value Value to set for the inactiveDeviceCount property.
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
                writer.write_number_value("activeDeviceCount", @active_device_count)
                writer.write_number_value("inactiveDeviceCount", @inactive_device_count)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("totalDeviceCount", @total_device_count)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the totalDeviceCount property value. The number of distinct device IDs in the time frame between startDateTime and endDateTime.
            ## @return a integer
            ## 
            def total_device_count
                return @total_device_count
            end
            ## 
            ## Sets the totalDeviceCount property value. The number of distinct device IDs in the time frame between startDateTime and endDateTime.
            ## @param value Value to set for the totalDeviceCount property.
            ## @return a void
            ## 
            def total_device_count=(value)
                @total_device_count = value
            end
        end
    end
end
