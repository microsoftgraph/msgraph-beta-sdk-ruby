require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessInternetAccessForwardingRule < MicrosoftGraphBeta::Models::NetworkaccessForwardingRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The ports property
            @ports
            ## 
            # The protocol property
            @protocol
            ## 
            ## Instantiates a new NetworkaccessInternetAccessForwardingRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.internetAccessForwardingRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_internet_access_forwarding_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessInternetAccessForwardingRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "ports" => lambda {|n| @ports = n.get_collection_of_primitive_values(String) },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                })
            end
            ## 
            ## Gets the ports property value. The ports property
            ## @return a string
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. The ports property
            ## @param value Value to set for the ports property.
            ## @return a void
            ## 
            def ports=(value)
                @ports = value
            end
            ## 
            ## Gets the protocol property value. The protocol property
            ## @return a networkaccess_networking_protocol
            ## 
            def protocol
                return @protocol
            end
            ## 
            ## Sets the protocol property value. The protocol property
            ## @param value Value to set for the protocol property.
            ## @return a void
            ## 
            def protocol=(value)
                @protocol = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("ports", @ports)
                writer.write_enum_value("protocol", @protocol)
            end
        end
    end
end
