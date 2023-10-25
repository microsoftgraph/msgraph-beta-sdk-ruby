require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessDevice
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceId property
            @device_id
            ## 
            # The displayName property
            @display_name
            ## 
            # The isCompliant property
            @is_compliant
            ## 
            # The lastAccessDateTime property
            @last_access_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The operatingSystem property
            @operating_system
            ## 
            # The trafficType property
            @traffic_type
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
            ## Instantiates a new networkaccessDevice and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_device
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessDevice.new
            end
            ## 
            ## Gets the deviceId property value. The deviceId property
            ## @return a string
            ## 
            def device_id
                return @device_id
            end
            ## 
            ## Sets the deviceId property value. The deviceId property
            ## @param value Value to set for the deviceId property.
            ## @return a void
            ## 
            def device_id=(value)
                @device_id = value
            end
            ## 
            ## Gets the displayName property value. The displayName property
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The displayName property
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceId" => lambda {|n| @device_id = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "isCompliant" => lambda {|n| @is_compliant = n.get_boolean_value() },
                    "lastAccessDateTime" => lambda {|n| @last_access_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "operatingSystem" => lambda {|n| @operating_system = n.get_string_value() },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficType) },
                }
            end
            ## 
            ## Gets the isCompliant property value. The isCompliant property
            ## @return a boolean
            ## 
            def is_compliant
                return @is_compliant
            end
            ## 
            ## Sets the isCompliant property value. The isCompliant property
            ## @param value Value to set for the isCompliant property.
            ## @return a void
            ## 
            def is_compliant=(value)
                @is_compliant = value
            end
            ## 
            ## Gets the lastAccessDateTime property value. The lastAccessDateTime property
            ## @return a date_time
            ## 
            def last_access_date_time
                return @last_access_date_time
            end
            ## 
            ## Sets the lastAccessDateTime property value. The lastAccessDateTime property
            ## @param value Value to set for the lastAccessDateTime property.
            ## @return a void
            ## 
            def last_access_date_time=(value)
                @last_access_date_time = value
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
            ## Gets the operatingSystem property value. The operatingSystem property
            ## @return a string
            ## 
            def operating_system
                return @operating_system
            end
            ## 
            ## Sets the operatingSystem property value. The operatingSystem property
            ## @param value Value to set for the operatingSystem property.
            ## @return a void
            ## 
            def operating_system=(value)
                @operating_system = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("deviceId", @device_id)
                writer.write_string_value("displayName", @display_name)
                writer.write_boolean_value("isCompliant", @is_compliant)
                writer.write_date_time_value("lastAccessDateTime", @last_access_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("operatingSystem", @operating_system)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the trafficType property value. The trafficType property
            ## @return a networkaccess_traffic_type
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
        end
    end
end
