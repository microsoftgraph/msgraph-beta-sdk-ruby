require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AndroidDeviceOwnerGlobalProxyAutoConfig < MicrosoftGraphBeta::Models::AndroidDeviceOwnerGlobalProxy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The proxy auto-config URL
            @proxy_auto_config_u_r_l
            ## 
            ## Instantiates a new AndroidDeviceOwnerGlobalProxyAutoConfig and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.androidDeviceOwnerGlobalProxyAutoConfig"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a android_device_owner_global_proxy_auto_config
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AndroidDeviceOwnerGlobalProxyAutoConfig.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "proxyAutoConfigURL" => lambda {|n| @proxy_auto_config_u_r_l = n.get_string_value() },
                })
            end
            ## 
            ## Gets the proxyAutoConfigURL property value. The proxy auto-config URL
            ## @return a string
            ## 
            def proxy_auto_config_u_r_l
                return @proxy_auto_config_u_r_l
            end
            ## 
            ## Sets the proxyAutoConfigURL property value. The proxy auto-config URL
            ## @param value Value to set for the proxy_auto_config_u_r_l property.
            ## @return a void
            ## 
            def proxy_auto_config_u_r_l=(value)
                @proxy_auto_config_u_r_l = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("proxyAutoConfigURL", @proxy_auto_config_u_r_l)
            end
        end
    end
end
