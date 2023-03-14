require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # VPN Proxy Server.
        class VpnProxyServer
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Address.
            @address
            ## 
            # Proxy's automatic configuration script url.
            @automatic_configuration_script_url
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Port. Valid values 0 to 65535
            @port
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
            ## Gets the address property value. Address.
            ## @return a string
            ## 
            def address
                return @address
            end
            ## 
            ## Sets the address property value. Address.
            ## @param value Value to set for the address property.
            ## @return a void
            ## 
            def address=(value)
                @address = value
            end
            ## 
            ## Gets the automaticConfigurationScriptUrl property value. Proxy's automatic configuration script url.
            ## @return a string
            ## 
            def automatic_configuration_script_url
                return @automatic_configuration_script_url
            end
            ## 
            ## Sets the automaticConfigurationScriptUrl property value. Proxy's automatic configuration script url.
            ## @param value Value to set for the automatic_configuration_script_url property.
            ## @return a void
            ## 
            def automatic_configuration_script_url=(value)
                @automatic_configuration_script_url = value
            end
            ## 
            ## Instantiates a new vpnProxyServer and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parseNode The parse node to use to read the discriminator value and create the object
            ## @return a vpn_proxy_server
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.windows10VpnProxyServer"
                            return Windows10VpnProxyServer.new
                        when "#microsoft.graph.windows81VpnProxyServer"
                            return Windows81VpnProxyServer.new
                    end
                end
                return VpnProxyServer.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "address" => lambda {|n| @address = n.get_string_value() },
                    "automaticConfigurationScriptUrl" => lambda {|n| @automatic_configuration_script_url = n.get_string_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "port" => lambda {|n| @port = n.get_number_value() },
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
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the port property value. Port. Valid values 0 to 65535
            ## @return a integer
            ## 
            def port
                return @port
            end
            ## 
            ## Sets the port property value. Port. Valid values 0 to 65535
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
                writer.write_string_value("address", @address)
                writer.write_string_value("automaticConfigurationScriptUrl", @automatic_configuration_script_url)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_number_value("port", @port)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end
