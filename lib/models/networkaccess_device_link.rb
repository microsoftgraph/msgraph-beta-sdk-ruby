require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessDeviceLink < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Determines the maximum allowed Mbps (megabits per second) bandwidth from a branch site. The possible values are:250,500,750,1000.
            @bandwidth_capacity_in_mbps
            ## 
            # The bgpConfiguration property
            @bgp_configuration
            ## 
            # The deviceVendor property
            @device_vendor
            ## 
            # Specifies the client IPv4 of the link
            @ip_address
            ## 
            # last modified time.
            @last_modified_date_time
            ## 
            # Name.
            @name
            ## 
            # The redundancyConfiguration property
            @redundancy_configuration
            ## 
            # The tunnelConfiguration property
            @tunnel_configuration
            ## 
            ## Gets the bandwidthCapacityInMbps property value. Determines the maximum allowed Mbps (megabits per second) bandwidth from a branch site. The possible values are:250,500,750,1000.
            ## @return a networkaccess_bandwidth_capacity_in_mbps
            ## 
            def bandwidth_capacity_in_mbps
                return @bandwidth_capacity_in_mbps
            end
            ## 
            ## Sets the bandwidthCapacityInMbps property value. Determines the maximum allowed Mbps (megabits per second) bandwidth from a branch site. The possible values are:250,500,750,1000.
            ## @param value Value to set for the bandwidthCapacityInMbps property.
            ## @return a void
            ## 
            def bandwidth_capacity_in_mbps=(value)
                @bandwidth_capacity_in_mbps = value
            end
            ## 
            ## Gets the bgpConfiguration property value. The bgpConfiguration property
            ## @return a networkaccess_bgp_configuration
            ## 
            def bgp_configuration
                return @bgp_configuration
            end
            ## 
            ## Sets the bgpConfiguration property value. The bgpConfiguration property
            ## @param value Value to set for the bgpConfiguration property.
            ## @return a void
            ## 
            def bgp_configuration=(value)
                @bgp_configuration = value
            end
            ## 
            ## Instantiates a new NetworkaccessDeviceLink and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_device_link
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessDeviceLink.new
            end
            ## 
            ## Gets the deviceVendor property value. The deviceVendor property
            ## @return a networkaccess_device_vendor
            ## 
            def device_vendor
                return @device_vendor
            end
            ## 
            ## Sets the deviceVendor property value. The deviceVendor property
            ## @param value Value to set for the deviceVendor property.
            ## @return a void
            ## 
            def device_vendor=(value)
                @device_vendor = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bandwidthCapacityInMbps" => lambda {|n| @bandwidth_capacity_in_mbps = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessBandwidthCapacityInMbps) },
                    "bgpConfiguration" => lambda {|n| @bgp_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessBgpConfiguration.create_from_discriminator_value(pn) }) },
                    "deviceVendor" => lambda {|n| @device_vendor = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessDeviceVendor) },
                    "ipAddress" => lambda {|n| @ip_address = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "redundancyConfiguration" => lambda {|n| @redundancy_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessRedundancyConfiguration.create_from_discriminator_value(pn) }) },
                    "tunnelConfiguration" => lambda {|n| @tunnel_configuration = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessTunnelConfiguration.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the ipAddress property value. Specifies the client IPv4 of the link
            ## @return a string
            ## 
            def ip_address
                return @ip_address
            end
            ## 
            ## Sets the ipAddress property value. Specifies the client IPv4 of the link
            ## @param value Value to set for the ipAddress property.
            ## @return a void
            ## 
            def ip_address=(value)
                @ip_address = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. last modified time.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. last modified time.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the name property value. Name.
            ## @return a string
            ## 
            def name
                return @name
            end
            ## 
            ## Sets the name property value. Name.
            ## @param value Value to set for the name property.
            ## @return a void
            ## 
            def name=(value)
                @name = value
            end
            ## 
            ## Gets the redundancyConfiguration property value. The redundancyConfiguration property
            ## @return a networkaccess_redundancy_configuration
            ## 
            def redundancy_configuration
                return @redundancy_configuration
            end
            ## 
            ## Sets the redundancyConfiguration property value. The redundancyConfiguration property
            ## @param value Value to set for the redundancyConfiguration property.
            ## @return a void
            ## 
            def redundancy_configuration=(value)
                @redundancy_configuration = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("bandwidthCapacityInMbps", @bandwidth_capacity_in_mbps)
                writer.write_object_value("bgpConfiguration", @bgp_configuration)
                writer.write_enum_value("deviceVendor", @device_vendor)
                writer.write_string_value("ipAddress", @ip_address)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_string_value("name", @name)
                writer.write_object_value("redundancyConfiguration", @redundancy_configuration)
                writer.write_object_value("tunnelConfiguration", @tunnel_configuration)
            end
            ## 
            ## Gets the tunnelConfiguration property value. The tunnelConfiguration property
            ## @return a networkaccess_tunnel_configuration
            ## 
            def tunnel_configuration
                return @tunnel_configuration
            end
            ## 
            ## Sets the tunnelConfiguration property value. The tunnelConfiguration property
            ## @param value Value to set for the tunnelConfiguration property.
            ## @return a void
            ## 
            def tunnel_configuration=(value)
                @tunnel_configuration = value
            end
        end
    end
end
