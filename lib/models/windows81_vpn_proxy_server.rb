require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows81VpnProxyServer < MicrosoftGraphBeta::Models::VpnProxyServer
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Automatically detect proxy settings.
        @automatically_detect_proxy_settings
        ## 
        # Bypass proxy server for local address.
        @bypass_proxy_server_for_local_address
        ## 
        ## Gets the automaticallyDetectProxySettings property value. Automatically detect proxy settings.
        ## @return a boolean
        ## 
        def automatically_detect_proxy_settings
            return @automatically_detect_proxy_settings
        end
        ## 
        ## Sets the automaticallyDetectProxySettings property value. Automatically detect proxy settings.
        ## @param value Value to set for the automaticallyDetectProxySettings property.
        ## @return a void
        ## 
        def automatically_detect_proxy_settings=(value)
            @automatically_detect_proxy_settings = value
        end
        ## 
        ## Gets the bypassProxyServerForLocalAddress property value. Bypass proxy server for local address.
        ## @return a boolean
        ## 
        def bypass_proxy_server_for_local_address
            return @bypass_proxy_server_for_local_address
        end
        ## 
        ## Sets the bypassProxyServerForLocalAddress property value. Bypass proxy server for local address.
        ## @param value Value to set for the bypassProxyServerForLocalAddress property.
        ## @return a void
        ## 
        def bypass_proxy_server_for_local_address=(value)
            @bypass_proxy_server_for_local_address = value
        end
        ## 
        ## Instantiates a new Windows81VpnProxyServer and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows81VpnProxyServer"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows81_vpn_proxy_server
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows81VpnProxyServer.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "automaticallyDetectProxySettings" => lambda {|n| @automatically_detect_proxy_settings = n.get_boolean_value() },
                "bypassProxyServerForLocalAddress" => lambda {|n| @bypass_proxy_server_for_local_address = n.get_boolean_value() },
            })
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_boolean_value("automaticallyDetectProxySettings", @automatically_detect_proxy_settings)
            writer.write_boolean_value("bypassProxyServerForLocalAddress", @bypass_proxy_server_for_local_address)
        end
    end
end
