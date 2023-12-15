require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # VPN DNS Rule definition.
        class VpnDnsRule
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Automatically connect to the VPN when the device connects to this domain: Default False.
            @auto_trigger
            ## 
            # Name.
            @name
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Keep this rule active even when the VPN is not connected: Default False
            @persistent
            ## 
            # Proxy Server Uri.
            @proxy_server_uri
            ## 
            # Servers.
            @servers
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
            ## Gets the autoTrigger property value. Automatically connect to the VPN when the device connects to this domain: Default False.
            ## @return a boolean
            ## 
            def auto_trigger
                return @auto_trigger
            end
            ## 
            ## Sets the autoTrigger property value. Automatically connect to the VPN when the device connects to this domain: Default False.
            ## @param value Value to set for the autoTrigger property.
            ## @return a void
            ## 
            def auto_trigger=(value)
                @auto_trigger = value
            end
            ## 
            ## Instantiates a new vpnDnsRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a vpn_dns_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return VpnDnsRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "autoTrigger" => lambda {|n| @auto_trigger = n.get_boolean_value() },
                    "name" => lambda {|n| @name = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "persistent" => lambda {|n| @persistent = n.get_boolean_value() },
                    "proxyServerUri" => lambda {|n| @proxy_server_uri = n.get_string_value() },
                    "servers" => lambda {|n| @servers = n.get_collection_of_primitive_values(String) },
                }
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
            ## Gets the persistent property value. Keep this rule active even when the VPN is not connected: Default False
            ## @return a boolean
            ## 
            def persistent
                return @persistent
            end
            ## 
            ## Sets the persistent property value. Keep this rule active even when the VPN is not connected: Default False
            ## @param value Value to set for the persistent property.
            ## @return a void
            ## 
            def persistent=(value)
                @persistent = value
            end
            ## 
            ## Gets the proxyServerUri property value. Proxy Server Uri.
            ## @return a string
            ## 
            def proxy_server_uri
                return @proxy_server_uri
            end
            ## 
            ## Sets the proxyServerUri property value. Proxy Server Uri.
            ## @param value Value to set for the proxyServerUri property.
            ## @return a void
            ## 
            def proxy_server_uri=(value)
                @proxy_server_uri = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("autoTrigger", @auto_trigger)
                writer.write_string_value("name", @name)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_boolean_value("persistent", @persistent)
                writer.write_string_value("proxyServerUri", @proxy_server_uri)
                writer.write_collection_of_primitive_values("servers", @servers)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the servers property value. Servers.
            ## @return a string
            ## 
            def servers
                return @servers
            end
            ## 
            ## Sets the servers property value. Servers.
            ## @param value Value to set for the servers property.
            ## @return a void
            ## 
            def servers=(value)
                @servers = value
            end
        end
    end
end
