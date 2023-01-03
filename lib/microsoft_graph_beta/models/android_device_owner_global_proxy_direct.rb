require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class AndroidDeviceOwnerGlobalProxyDirect < MicrosoftGraphBeta::Models::AndroidDeviceOwnerGlobalProxy
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # The excluded hosts
        @excluded_hosts
        ## 
        # The host name
        @host
        ## 
        # The port
        @port
        ## 
        ## Instantiates a new AndroidDeviceOwnerGlobalProxyDirect and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.androidDeviceOwnerGlobalProxyDirect"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a android_device_owner_global_proxy_direct
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AndroidDeviceOwnerGlobalProxyDirect.new
        end
        ## 
        ## Gets the excludedHosts property value. The excluded hosts
        ## @return a string
        ## 
        def excluded_hosts
            return @excluded_hosts
        end
        ## 
        ## Sets the excludedHosts property value. The excluded hosts
        ## @param value Value to set for the excludedHosts property.
        ## @return a void
        ## 
        def excluded_hosts=(value)
            @excluded_hosts = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "excludedHosts" => lambda {|n| @excluded_hosts = n.get_collection_of_primitive_values(String) },
                "host" => lambda {|n| @host = n.get_string_value() },
                "port" => lambda {|n| @port = n.get_number_value() },
            })
        end
        ## 
        ## Gets the host property value. The host name
        ## @return a string
        ## 
        def host
            return @host
        end
        ## 
        ## Sets the host property value. The host name
        ## @param value Value to set for the host property.
        ## @return a void
        ## 
        def host=(value)
            @host = value
        end
        ## 
        ## Gets the port property value. The port
        ## @return a integer
        ## 
        def port
            return @port
        end
        ## 
        ## Sets the port property value. The port
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
            super
            writer.write_collection_of_primitive_values("excludedHosts", @excluded_hosts)
            writer.write_string_value("host", @host)
            writer.write_number_value("port", @port)
        end
    end
end
