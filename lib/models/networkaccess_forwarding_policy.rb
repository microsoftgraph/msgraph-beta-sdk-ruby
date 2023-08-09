require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessForwardingPolicy < MicrosoftGraphBeta::Models::NetworkaccessPolicy
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The trafficForwardingType property
            @traffic_forwarding_type
            ## 
            ## Instantiates a new forwardingPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.forwardingPolicy"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_forwarding_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessForwardingPolicy.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "trafficForwardingType" => lambda {|n| @traffic_forwarding_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessTrafficForwardingType) },
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
                writer.write_enum_value("trafficForwardingType", @traffic_forwarding_type)
            end
            ## 
            ## Gets the trafficForwardingType property value. The trafficForwardingType property
            ## @return a networkaccess_traffic_forwarding_type
            ## 
            def traffic_forwarding_type
                return @traffic_forwarding_type
            end
            ## 
            ## Sets the trafficForwardingType property value. The trafficForwardingType property
            ## @param value Value to set for the trafficForwardingType property.
            ## @return a void
            ## 
            def traffic_forwarding_type=(value)
                @traffic_forwarding_type = value
            end
        end
    end
end
