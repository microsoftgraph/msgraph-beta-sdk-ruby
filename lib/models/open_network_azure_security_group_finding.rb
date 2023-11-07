require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class OpenNetworkAzureSecurityGroupFinding < MicrosoftGraphBeta::Models::Finding
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The inboundPorts property
            @inbound_ports
            ## 
            # The securityGroup property
            @security_group
            ## 
            # The virtualMachines property
            @virtual_machines
            ## 
            ## Instantiates a new openNetworkAzureSecurityGroupFinding and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a open_network_azure_security_group_finding
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OpenNetworkAzureSecurityGroupFinding.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "inboundPorts" => lambda {|n| @inbound_ports = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InboundPorts.create_from_discriminator_value(pn) }) },
                    "securityGroup" => lambda {|n| @security_group = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                    "virtualMachines" => lambda {|n| @virtual_machines = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::AuthorizationSystemResource.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the inboundPorts property value. The inboundPorts property
            ## @return a inbound_ports
            ## 
            def inbound_ports
                return @inbound_ports
            end
            ## 
            ## Sets the inboundPorts property value. The inboundPorts property
            ## @param value Value to set for the inboundPorts property.
            ## @return a void
            ## 
            def inbound_ports=(value)
                @inbound_ports = value
            end
            ## 
            ## Gets the securityGroup property value. The securityGroup property
            ## @return a authorization_system_resource
            ## 
            def security_group
                return @security_group
            end
            ## 
            ## Sets the securityGroup property value. The securityGroup property
            ## @param value Value to set for the securityGroup property.
            ## @return a void
            ## 
            def security_group=(value)
                @security_group = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("inboundPorts", @inbound_ports)
                writer.write_object_value("securityGroup", @security_group)
                writer.write_collection_of_object_values("virtualMachines", @virtual_machines)
            end
            ## 
            ## Gets the virtualMachines property value. The virtualMachines property
            ## @return a authorization_system_resource
            ## 
            def virtual_machines
                return @virtual_machines
            end
            ## 
            ## Sets the virtualMachines property value. The virtualMachines property
            ## @param value Value to set for the virtualMachines property.
            ## @return a void
            ## 
            def virtual_machines=(value)
                @virtual_machines = value
            end
        end
    end
end
