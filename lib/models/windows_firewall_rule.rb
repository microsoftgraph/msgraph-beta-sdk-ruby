require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    ## 
    # A rule controlling traffic through the Windows Firewall.
    class WindowsFirewallRule
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # State Management Setting.
        @action
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The description of the rule.
        @description
        ## 
        # The display name of the rule. Does not need to be unique.
        @display_name
        ## 
        # State Management Setting.
        @edge_traversal
        ## 
        # The full file path of an app that's affected by the firewall rule.
        @file_path
        ## 
        # Flags representing firewall rule interface types.
        @interface_types
        ## 
        # List of local addresses covered by the rule. Default is any address. Valid tokens include:'' indicates any local address. If present, this must be the only token included.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        @local_address_ranges
        ## 
        # List of local port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        @local_port_ranges
        ## 
        # Specifies the list of authorized local users for the app container. This is a string in Security Descriptor Definition Language (SDDL) format.
        @local_user_authorizations
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The package family name of a Microsoft Store application that's affected by the firewall rule.
        @package_family_name
        ## 
        # Flags representing which network profile types apply to a firewall rule.
        @profile_types
        ## 
        # 0-255 number representing the IP protocol (TCP = 6, UDP = 17). If not specified, the default is All. Valid values 0 to 255
        @protocol
        ## 
        # List of tokens specifying the remote addresses covered by the rule. Tokens are case insensitive. Default is any address. Valid tokens include:'' indicates any remote address. If present, this must be the only token included.'Defaultgateway''DHCP''DNS''WINS''Intranet' (supported on Windows versions 1809+)'RmtIntranet' (supported on Windows versions 1809+)'Internet' (supported on Windows versions 1809+)'Ply2Renders' (supported on Windows versions 1809+)'LocalSubnet' indicates any local address on the local subnet.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        @remote_address_ranges
        ## 
        # List of remote port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        @remote_port_ranges
        ## 
        # The name used in cases when a service, not an application, is sending or receiving traffic.
        @service_name
        ## 
        # Firewall rule traffic directions.
        @traffic_direction
        ## 
        ## Gets the action property value. State Management Setting.
        ## @return a state_management_setting
        ## 
        def action
            return @action
        end
        ## 
        ## Sets the action property value. State Management Setting.
        ## @param value Value to set for the action property.
        ## @return a void
        ## 
        def action=(value)
            @action = value
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
        ## Instantiates a new windowsFirewallRule and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows_firewall_rule
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return WindowsFirewallRule.new
        end
        ## 
        ## Gets the description property value. The description of the rule.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. The description of the rule.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## Gets the displayName property value. The display name of the rule. Does not need to be unique.
        ## @return a string
        ## 
        def display_name
            return @display_name
        end
        ## 
        ## Sets the displayName property value. The display name of the rule. Does not need to be unique.
        ## @param value Value to set for the display_name property.
        ## @return a void
        ## 
        def display_name=(value)
            @display_name = value
        end
        ## 
        ## Gets the edgeTraversal property value. State Management Setting.
        ## @return a state_management_setting
        ## 
        def edge_traversal
            return @edge_traversal
        end
        ## 
        ## Sets the edgeTraversal property value. State Management Setting.
        ## @param value Value to set for the edge_traversal property.
        ## @return a void
        ## 
        def edge_traversal=(value)
            @edge_traversal = value
        end
        ## 
        ## Gets the filePath property value. The full file path of an app that's affected by the firewall rule.
        ## @return a string
        ## 
        def file_path
            return @file_path
        end
        ## 
        ## Sets the filePath property value. The full file path of an app that's affected by the firewall rule.
        ## @param value Value to set for the file_path property.
        ## @return a void
        ## 
        def file_path=(value)
            @file_path = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                "description" => lambda {|n| @description = n.get_string_value() },
                "displayName" => lambda {|n| @display_name = n.get_string_value() },
                "edgeTraversal" => lambda {|n| @edge_traversal = n.get_enum_value(MicrosoftGraphBeta::Models::StateManagementSetting) },
                "filePath" => lambda {|n| @file_path = n.get_string_value() },
                "interfaceTypes" => lambda {|n| @interface_types = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsFirewallRuleInterfaceTypes) },
                "localAddressRanges" => lambda {|n| @local_address_ranges = n.get_collection_of_primitive_values(String) },
                "localPortRanges" => lambda {|n| @local_port_ranges = n.get_collection_of_primitive_values(String) },
                "localUserAuthorizations" => lambda {|n| @local_user_authorizations = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "packageFamilyName" => lambda {|n| @package_family_name = n.get_string_value() },
                "profileTypes" => lambda {|n| @profile_types = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsFirewallRuleNetworkProfileTypes) },
                "protocol" => lambda {|n| @protocol = n.get_number_value() },
                "remoteAddressRanges" => lambda {|n| @remote_address_ranges = n.get_collection_of_primitive_values(String) },
                "remotePortRanges" => lambda {|n| @remote_port_ranges = n.get_collection_of_primitive_values(String) },
                "serviceName" => lambda {|n| @service_name = n.get_string_value() },
                "trafficDirection" => lambda {|n| @traffic_direction = n.get_enum_value(MicrosoftGraphBeta::Models::WindowsFirewallRuleTrafficDirectionType) },
            }
        end
        ## 
        ## Gets the interfaceTypes property value. Flags representing firewall rule interface types.
        ## @return a windows_firewall_rule_interface_types
        ## 
        def interface_types
            return @interface_types
        end
        ## 
        ## Sets the interfaceTypes property value. Flags representing firewall rule interface types.
        ## @param value Value to set for the interface_types property.
        ## @return a void
        ## 
        def interface_types=(value)
            @interface_types = value
        end
        ## 
        ## Gets the localAddressRanges property value. List of local addresses covered by the rule. Default is any address. Valid tokens include:'' indicates any local address. If present, this must be the only token included.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        ## @return a string
        ## 
        def local_address_ranges
            return @local_address_ranges
        end
        ## 
        ## Sets the localAddressRanges property value. List of local addresses covered by the rule. Default is any address. Valid tokens include:'' indicates any local address. If present, this must be the only token included.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        ## @param value Value to set for the local_address_ranges property.
        ## @return a void
        ## 
        def local_address_ranges=(value)
            @local_address_ranges = value
        end
        ## 
        ## Gets the localPortRanges property value. List of local port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        ## @return a string
        ## 
        def local_port_ranges
            return @local_port_ranges
        end
        ## 
        ## Sets the localPortRanges property value. List of local port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        ## @param value Value to set for the local_port_ranges property.
        ## @return a void
        ## 
        def local_port_ranges=(value)
            @local_port_ranges = value
        end
        ## 
        ## Gets the localUserAuthorizations property value. Specifies the list of authorized local users for the app container. This is a string in Security Descriptor Definition Language (SDDL) format.
        ## @return a string
        ## 
        def local_user_authorizations
            return @local_user_authorizations
        end
        ## 
        ## Sets the localUserAuthorizations property value. Specifies the list of authorized local users for the app container. This is a string in Security Descriptor Definition Language (SDDL) format.
        ## @param value Value to set for the local_user_authorizations property.
        ## @return a void
        ## 
        def local_user_authorizations=(value)
            @local_user_authorizations = value
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
        ## Gets the packageFamilyName property value. The package family name of a Microsoft Store application that's affected by the firewall rule.
        ## @return a string
        ## 
        def package_family_name
            return @package_family_name
        end
        ## 
        ## Sets the packageFamilyName property value. The package family name of a Microsoft Store application that's affected by the firewall rule.
        ## @param value Value to set for the package_family_name property.
        ## @return a void
        ## 
        def package_family_name=(value)
            @package_family_name = value
        end
        ## 
        ## Gets the profileTypes property value. Flags representing which network profile types apply to a firewall rule.
        ## @return a windows_firewall_rule_network_profile_types
        ## 
        def profile_types
            return @profile_types
        end
        ## 
        ## Sets the profileTypes property value. Flags representing which network profile types apply to a firewall rule.
        ## @param value Value to set for the profile_types property.
        ## @return a void
        ## 
        def profile_types=(value)
            @profile_types = value
        end
        ## 
        ## Gets the protocol property value. 0-255 number representing the IP protocol (TCP = 6, UDP = 17). If not specified, the default is All. Valid values 0 to 255
        ## @return a integer
        ## 
        def protocol
            return @protocol
        end
        ## 
        ## Sets the protocol property value. 0-255 number representing the IP protocol (TCP = 6, UDP = 17). If not specified, the default is All. Valid values 0 to 255
        ## @param value Value to set for the protocol property.
        ## @return a void
        ## 
        def protocol=(value)
            @protocol = value
        end
        ## 
        ## Gets the remoteAddressRanges property value. List of tokens specifying the remote addresses covered by the rule. Tokens are case insensitive. Default is any address. Valid tokens include:'' indicates any remote address. If present, this must be the only token included.'Defaultgateway''DHCP''DNS''WINS''Intranet' (supported on Windows versions 1809+)'RmtIntranet' (supported on Windows versions 1809+)'Internet' (supported on Windows versions 1809+)'Ply2Renders' (supported on Windows versions 1809+)'LocalSubnet' indicates any local address on the local subnet.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        ## @return a string
        ## 
        def remote_address_ranges
            return @remote_address_ranges
        end
        ## 
        ## Sets the remoteAddressRanges property value. List of tokens specifying the remote addresses covered by the rule. Tokens are case insensitive. Default is any address. Valid tokens include:'' indicates any remote address. If present, this must be the only token included.'Defaultgateway''DHCP''DNS''WINS''Intranet' (supported on Windows versions 1809+)'RmtIntranet' (supported on Windows versions 1809+)'Internet' (supported on Windows versions 1809+)'Ply2Renders' (supported on Windows versions 1809+)'LocalSubnet' indicates any local address on the local subnet.A subnet can be specified using either the subnet mask or network prefix notation. If neither a subnet mask nor a network prefix is specified, the subnet mask defaults to 255.255.255.255.A valid IPv6 address.An IPv4 address range in the format of 'start address - end address' with no spaces included.An IPv6 address range in the format of 'start address - end address' with no spaces included.
        ## @param value Value to set for the remote_address_ranges property.
        ## @return a void
        ## 
        def remote_address_ranges=(value)
            @remote_address_ranges = value
        end
        ## 
        ## Gets the remotePortRanges property value. List of remote port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        ## @return a string
        ## 
        def remote_port_ranges
            return @remote_port_ranges
        end
        ## 
        ## Sets the remotePortRanges property value. List of remote port ranges. For example, '100-120', '200', '300-320'. If not specified, the default is All.
        ## @param value Value to set for the remote_port_ranges property.
        ## @return a void
        ## 
        def remote_port_ranges=(value)
            @remote_port_ranges = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_enum_value("action", @action)
            writer.write_string_value("description", @description)
            writer.write_string_value("displayName", @display_name)
            writer.write_enum_value("edgeTraversal", @edge_traversal)
            writer.write_string_value("filePath", @file_path)
            writer.write_enum_value("interfaceTypes", @interface_types)
            writer.write_collection_of_primitive_values("localAddressRanges", @local_address_ranges)
            writer.write_collection_of_primitive_values("localPortRanges", @local_port_ranges)
            writer.write_string_value("localUserAuthorizations", @local_user_authorizations)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("packageFamilyName", @package_family_name)
            writer.write_enum_value("profileTypes", @profile_types)
            writer.write_number_value("protocol", @protocol)
            writer.write_collection_of_primitive_values("remoteAddressRanges", @remote_address_ranges)
            writer.write_collection_of_primitive_values("remotePortRanges", @remote_port_ranges)
            writer.write_string_value("serviceName", @service_name)
            writer.write_enum_value("trafficDirection", @traffic_direction)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the serviceName property value. The name used in cases when a service, not an application, is sending or receiving traffic.
        ## @return a string
        ## 
        def service_name
            return @service_name
        end
        ## 
        ## Sets the serviceName property value. The name used in cases when a service, not an application, is sending or receiving traffic.
        ## @param value Value to set for the service_name property.
        ## @return a void
        ## 
        def service_name=(value)
            @service_name = value
        end
        ## 
        ## Gets the trafficDirection property value. Firewall rule traffic directions.
        ## @return a windows_firewall_rule_traffic_direction_type
        ## 
        def traffic_direction
            return @traffic_direction
        end
        ## 
        ## Sets the trafficDirection property value. Firewall rule traffic directions.
        ## @param value Value to set for the traffic_direction property.
        ## @return a void
        ## 
        def traffic_direction=(value)
            @traffic_direction = value
        end
    end
end
