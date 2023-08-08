require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class EntitiesSummary
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Count of unique devices that were seen.
                @device_count
                ## 
                # The OdataType property
                @odata_type
                ## 
                # The trafficType property
                @traffic_type
                ## 
                # Count of unique Azure Active Directoy users that were seen.
                @user_count
                ## 
                # Count of unique target workloads or hosts that were seen.
                @workload_count
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
                ## Instantiates a new entitiesSummary and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a entities_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return EntitiesSummary.new
                end
                ## 
                ## Gets the deviceCount property value. Count of unique devices that were seen.
                ## @return a int64
                ## 
                def device_count
                    return @device_count
                end
                ## 
                ## Sets the deviceCount property value. Count of unique devices that were seen.
                ## @param value Value to set for the deviceCount property.
                ## @return a void
                ## 
                def device_count=(value)
                    @device_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "deviceCount" => lambda {|n| @device_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                        "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::Networkaccess::TrafficType) },
                        "userCount" => lambda {|n| @user_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                        "workloadCount" => lambda {|n| @workload_count = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                    }
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
                    writer.write_object_value("deviceCount", @device_count)
                    writer.write_string_value("@odata.type", @odata_type)
                    writer.write_enum_value("trafficType", @traffic_type)
                    writer.write_object_value("userCount", @user_count)
                    writer.write_object_value("workloadCount", @workload_count)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the trafficType property value. The trafficType property
                ## @return a traffic_type
                ## 
                def traffic_type
                    return @traffic_type
                end
                ## 
                ## Sets the trafficType property value. The trafficType property
                ## @param value Value to set for the trafficType property.
                ## @return a void
                ## 
                def traffic_type=(value)
                    @traffic_type = value
                end
                ## 
                ## Gets the userCount property value. Count of unique Azure Active Directoy users that were seen.
                ## @return a int64
                ## 
                def user_count
                    return @user_count
                end
                ## 
                ## Sets the userCount property value. Count of unique Azure Active Directoy users that were seen.
                ## @param value Value to set for the userCount property.
                ## @return a void
                ## 
                def user_count=(value)
                    @user_count = value
                end
                ## 
                ## Gets the workloadCount property value. Count of unique target workloads or hosts that were seen.
                ## @return a int64
                ## 
                def workload_count
                    return @workload_count
                end
                ## 
                ## Sets the workloadCount property value. Count of unique target workloads or hosts that were seen.
                ## @param value Value to set for the workloadCount property.
                ## @return a void
                ## 
                def workload_count=(value)
                    @workload_count = value
                end
            end
        end
    end
end
