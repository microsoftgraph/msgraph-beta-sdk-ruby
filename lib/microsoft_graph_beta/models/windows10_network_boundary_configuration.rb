require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraphBeta::Models
    class Windows10NetworkBoundaryConfiguration < MicrosoftGraphBeta::Models::DeviceConfiguration
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Windows Network Isolation Policy
        @windows_network_isolation_policy
        ## 
        ## Instantiates a new Windows10NetworkBoundaryConfiguration and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
            @odata_type = "#microsoft.graph.windows10NetworkBoundaryConfiguration"
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a windows10_network_boundary_configuration
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return Windows10NetworkBoundaryConfiguration.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "windowsNetworkIsolationPolicy" => lambda {|n| @windows_network_isolation_policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::WindowsNetworkIsolationPolicy.create_from_discriminator_value(pn) }) },
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
            writer.write_object_value("windowsNetworkIsolationPolicy", @windows_network_isolation_policy)
        end
        ## 
        ## Gets the windowsNetworkIsolationPolicy property value. Windows Network Isolation Policy
        ## @return a windows_network_isolation_policy
        ## 
        def windows_network_isolation_policy
            return @windows_network_isolation_policy
        end
        ## 
        ## Sets the windowsNetworkIsolationPolicy property value. Windows Network Isolation Policy
        ## @param value Value to set for the windowsNetworkIsolationPolicy property.
        ## @return a void
        ## 
        def windows_network_isolation_policy=(value)
            @windows_network_isolation_policy = value
        end
    end
end
