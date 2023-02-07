require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class TeamworkNetworkConfiguration
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The default gateway is the path used to pass information when the destination is unknown to the device.
        @default_gateway
        ## 
        # The network domain of the device, for example, contoso.com.
        @domain_name
        ## 
        # The device name on a network.
        @host_name
        ## 
        # The IP address is a numerical label that uniquely identifies every device connected to the internet.
        @ip_address
        ## 
        # True if DHCP is enabled.
        @is_dhcp_enabled
        ## 
        # True if the PC port is enabled.
        @is_p_c_port_enabled
        ## 
        # The OdataType property
        @odata_type
        ## 
        # A primary DNS is the first point of contact for a device that translates the hostname into an IP address.
        @primary_dns
        ## 
        # A secondary DNS is used when the primary DNS is not available.
        @secondary_dns
        ## 
        # A subnet mask is a number that distinguishes the network address and the host address within an IP address.
        @subnet_mask
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
        ## Instantiates a new teamworkNetworkConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a teamwork_network_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return TeamworkNetworkConfiguration.new
        end
        ## 
        ## Gets the defaultGateway property value. The default gateway is the path used to pass information when the destination is unknown to the device.
        ## @return a string
        ## 
        def default_gateway
            return @default_gateway
        end
        ## 
        ## Sets the defaultGateway property value. The default gateway is the path used to pass information when the destination is unknown to the device.
        ## @param value Value to set for the default_gateway property.
        ## @return a void
        ## 
        def default_gateway=(value)
            @default_gateway = value
        end
        ## 
        ## Gets the domainName property value. The network domain of the device, for example, contoso.com.
        ## @return a string
        ## 
        def domain_name
            return @domain_name
        end
        ## 
        ## Sets the domainName property value. The network domain of the device, for example, contoso.com.
        ## @param value Value to set for the domain_name property.
        ## @return a void
        ## 
        def domain_name=(value)
            @domain_name = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "defaultGateway" => lambda {|n| @default_gateway = n.get_string_value() },
                "domainName" => lambda {|n| @domain_name = n.get_string_value() },
                "hostName" => lambda {|n| @host_name = n.get_string_value() },
                "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                "isDhcpEnabled" => lambda {|n| @is_dhcp_enabled = n.get_boolean_value() },
                "isPCPortEnabled" => lambda {|n| @is_p_c_port_enabled = n.get_boolean_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "primaryDns" => lambda {|n| @primary_dns = n.get_string_value() },
                "secondaryDns" => lambda {|n| @secondary_dns = n.get_string_value() },
                "subnetMask" => lambda {|n| @subnet_mask = n.get_string_value() },
            }
        end
        ## 
        ## Gets the hostName property value. The device name on a network.
        ## @return a string
        ## 
        def host_name
            return @host_name
        end
        ## 
        ## Sets the hostName property value. The device name on a network.
        ## @param value Value to set for the host_name property.
        ## @return a void
        ## 
        def host_name=(value)
            @host_name = value
        end
        ## 
        ## Gets the ipAddress property value. The IP address is a numerical label that uniquely identifies every device connected to the internet.
        ## @return a string
        ## 
        def ip_address
            return @ip_address
        end
        ## 
        ## Sets the ipAddress property value. The IP address is a numerical label that uniquely identifies every device connected to the internet.
        ## @param value Value to set for the ip_address property.
        ## @return a void
        ## 
        def ip_address=(value)
            @ip_address = value
        end
        ## 
        ## Gets the isDhcpEnabled property value. True if DHCP is enabled.
        ## @return a boolean
        ## 
        def is_dhcp_enabled
            return @is_dhcp_enabled
        end
        ## 
        ## Sets the isDhcpEnabled property value. True if DHCP is enabled.
        ## @param value Value to set for the is_dhcp_enabled property.
        ## @return a void
        ## 
        def is_dhcp_enabled=(value)
            @is_dhcp_enabled = value
        end
        ## 
        ## Gets the isPCPortEnabled property value. True if the PC port is enabled.
        ## @return a boolean
        ## 
        def is_p_c_port_enabled
            return @is_p_c_port_enabled
        end
        ## 
        ## Sets the isPCPortEnabled property value. True if the PC port is enabled.
        ## @param value Value to set for the is_p_c_port_enabled property.
        ## @return a void
        ## 
        def is_p_c_port_enabled=(value)
            @is_p_c_port_enabled = value
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
        ## Gets the primaryDns property value. A primary DNS is the first point of contact for a device that translates the hostname into an IP address.
        ## @return a string
        ## 
        def primary_dns
            return @primary_dns
        end
        ## 
        ## Sets the primaryDns property value. A primary DNS is the first point of contact for a device that translates the hostname into an IP address.
        ## @param value Value to set for the primary_dns property.
        ## @return a void
        ## 
        def primary_dns=(value)
            @primary_dns = value
        end
        ## 
        ## Gets the secondaryDns property value. A secondary DNS is used when the primary DNS is not available.
        ## @return a string
        ## 
        def secondary_dns
            return @secondary_dns
        end
        ## 
        ## Sets the secondaryDns property value. A secondary DNS is used when the primary DNS is not available.
        ## @param value Value to set for the secondary_dns property.
        ## @return a void
        ## 
        def secondary_dns=(value)
            @secondary_dns = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("defaultGateway", @default_gateway)
            writer.write_string_value("domainName", @domain_name)
            writer.write_string_value("hostName", @host_name)
            writer.write_string_value("ipAddress", @ip_address)
            writer.write_boolean_value("isDhcpEnabled", @is_dhcp_enabled)
            writer.write_boolean_value("isPCPortEnabled", @is_p_c_port_enabled)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("primaryDns", @primary_dns)
            writer.write_string_value("secondaryDns", @secondary_dns)
            writer.write_string_value("subnetMask", @subnet_mask)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the subnetMask property value. A subnet mask is a number that distinguishes the network address and the host address within an IP address.
        ## @return a string
        ## 
        def subnet_mask
            return @subnet_mask
        end
        ## 
        ## Sets the subnetMask property value. A subnet mask is a number that distinguishes the network address and the host address within an IP address.
        ## @param value Value to set for the subnet_mask property.
        ## @return a void
        ## 
        def subnet_mask=(value)
            @subnet_mask = value
        end
    end
end
