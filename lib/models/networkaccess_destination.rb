require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessDestination
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The deviceCount property
            @device_count
            ## 
            # The fqdn property
            @fqdn
            ## 
            # The ip property
            @ip
            ## 
            # The lastAccessDateTime property
            @last_access_date_time
            ## 
            # The networkingProtocol property
            @networking_protocol
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The port property
            @port
            ## 
            # The trafficType property
            @traffic_type
            ## 
            # The transactionCount property
            @transaction_count
            ## 
            # The userCount property
            @user_count
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
            ## Instantiates a new networkaccessDestination and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_destination
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessDestination.new
            end
            ## 
            ## Gets the deviceCount property value. The deviceCount property
            ## @return a integer
            ## 
            def device_count
                return @device_count
            end
            ## 
            ## Sets the deviceCount property value. The deviceCount property
            ## @param value Value to set for the deviceCount property.
            ## @return a void
            ## 
            def device_count=(value)
                @device_count = value
            end
            ## 
            ## Gets the fqdn property value. The fqdn property
            ## @return a string
            ## 
            def fqdn
                return @fqdn
            end
            ## 
            ## Sets the fqdn property value. The fqdn property
            ## @param value Value to set for the fqdn property.
            ## @return a void
            ## 
            def fqdn=(value)
                @fqdn = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "deviceCount" => lambda {|n| @device_count = n.get_number_value() },
                    "fqdn" => lambda {|n| @fqdn = n.get_string_value() },
                    "ip" => lambda {|n| @ip = n.get_string_value() },
                    "lastAccessDateTime" => lambda {|n| @last_access_date_time = n.get_date_time_value() },
                    "networkingProtocol" => lambda {|n| @networking_protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "port" => lambda {|n| @port = n.get_number_value() },
                    "trafficType" => lambda {|n| @traffic_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficType) },
                    "transactionCount" => lambda {|n| @transaction_count = n.get_number_value() },
                    "userCount" => lambda {|n| @user_count = n.get_number_value() },
                }
            end
            ## 
            ## Gets the ip property value. The ip property
            ## @return a string
            ## 
            def ip
                return @ip
            end
            ## 
            ## Sets the ip property value. The ip property
            ## @param value Value to set for the ip property.
            ## @return a void
            ## 
            def ip=(value)
                @ip = value
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
            ## Gets the networkingProtocol property value. The networkingProtocol property
            ## @return a networkaccess_networking_protocol
            ## 
            def networking_protocol
                return @networking_protocol
            end
            ## 
            ## Sets the networkingProtocol property value. The networkingProtocol property
            ## @param value Value to set for the networkingProtocol property.
            ## @return a void
            ## 
            def networking_protocol=(value)
                @networking_protocol = value
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
            ## Gets the port property value. The port property
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. The port property
            ## @param value Value to set for the port property.
            ## @return a void
            ## 
            def port=(value)
                @port = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_number_value("deviceCount", @device_count)
                writer.write_string_value("fqdn", @fqdn)
                writer.write_string_value("ip", @ip)
                writer.write_date_time_value("lastAccessDateTime", @last_access_date_time)
                writer.write_enum_value("networkingProtocol", @networking_protocol)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("port", @port)
                writer.write_enum_value("trafficType", @traffic_type)
                writer.write_number_value("transactionCount", @transaction_count)
                writer.write_number_value("userCount", @user_count)
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
            ## 
            ## Gets the transactionCount property value. The transactionCount property
            ## @return a integer
            ## 
            def transaction_count
                return @transaction_count
            end
            ## 
            ## Sets the transactionCount property value. The transactionCount property
            ## @param value Value to set for the transactionCount property.
            ## @return a void
            ## 
            def transaction_count=(value)
                @transaction_count = value
            end
            ## 
            ## Gets the userCount property value. The userCount property
            ## @return a integer
            ## 
            def user_count
                return @user_count
            end
            ## 
            ## Sets the userCount property value. The userCount property
            ## @param value Value to set for the userCount property.
            ## @return a void
            ## 
            def user_count=(value)
                @user_count = value
            end
        end
    end
end
