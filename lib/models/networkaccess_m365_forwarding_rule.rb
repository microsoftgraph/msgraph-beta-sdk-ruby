require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessM365ForwardingRule < MicrosoftGraphBeta::Models::NetworkaccessForwardingRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The category property
            @category
            ## 
            # The port(s) used by a forwarding rule for M365 traffic are specified to determine the specific network port(s) through which the Microsoft 365 traffic is directed and forwarded.
            @ports
            ## 
            # The protocol property
            @protocol
            ## 
            ## Gets the category property value. The category property
            ## @return a networkaccess_forwarding_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new m365ForwardingRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.m365ForwardingRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_m365_forwarding_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessM365ForwardingRule.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessForwardingCategory) },
                    "ports" => lambda {|n| @ports = n.get_collection_of_primitive_values(String) },
                    "protocol" => lambda {|n| @protocol = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkingProtocol) },
                })
            end
            ## 
            ## Gets the ports property value. The port(s) used by a forwarding rule for M365 traffic are specified to determine the specific network port(s) through which the Microsoft 365 traffic is directed and forwarded.
            ## @return a string
            ## 
            def ports
                return @ports
            end
            ## 
            ## Sets the ports property value. The port(s) used by a forwarding rule for M365 traffic are specified to determine the specific network port(s) through which the Microsoft 365 traffic is directed and forwarded.
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
                writer.write_enum_value("category", @category)
                writer.write_collection_of_primitive_values("ports", @ports)
                writer.write_enum_value("protocol", @protocol)
            end
        end
    end
end
