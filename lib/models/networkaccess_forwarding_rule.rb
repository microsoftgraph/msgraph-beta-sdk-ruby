require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessForwardingRule < MicrosoftGraphBeta::Models::NetworkaccessPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The action property
            @action
            ## 
            # Destinations maintain a list of potential destinations and destination types that the user may access within the context of a network filtering policy. This includes IP addresses and fully qualified domain names (FQDNs)/URLs.
            @destinations
            ## 
            # The ruleType property
            @rule_type
            ## 
            ## Gets the action property value. The action property
            ## @return a networkaccess_forwarding_rule_action
            ## 
            def action
                return @action
            end
            ## 
            ## Sets the action property value. The action property
            ## @param value Value to set for the action property.
            ## @return a void
            ## 
            def action=(value)
                @action = value
            end
            ## 
            ## Instantiates a new forwardingRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.forwardingRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_forwarding_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.networkaccess.m365ForwardingRule"
                            return NetworkaccessM365ForwardingRule.new
                        when "#microsoft.graph.networkaccess.privateAccessForwardingRule"
                            return NetworkaccessPrivateAccessForwardingRule.new
                    end
                end
                return NetworkaccessForwardingRule.new
            end
            ## 
            ## Gets the destinations property value. Destinations maintain a list of potential destinations and destination types that the user may access within the context of a network filtering policy. This includes IP addresses and fully qualified domain names (FQDNs)/URLs.
            ## @return a networkaccess_rule_destination
            ## 
            def destinations
                return @destinations
            end
            ## 
            ## Sets the destinations property value. Destinations maintain a list of potential destinations and destination types that the user may access within the context of a network filtering policy. This includes IP addresses and fully qualified domain names (FQDNs)/URLs.
            ## @param value Value to set for the destinations property.
            ## @return a void
            ## 
            def destinations=(value)
                @destinations = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "action" => lambda {|n| @action = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessForwardingRuleAction) },
                    "destinations" => lambda {|n| @destinations = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::NetworkaccessRuleDestination.create_from_discriminator_value(pn) }) },
                    "ruleType" => lambda {|n| @rule_type = n.get_enum_value(MicrosoftGraphBeta::Models::NetworkaccessNetworkDestinationType) },
                })
            end
            ## 
            ## Gets the ruleType property value. The ruleType property
            ## @return a networkaccess_network_destination_type
            ## 
            def rule_type
                return @rule_type
            end
            ## 
            ## Sets the ruleType property value. The ruleType property
            ## @param value Value to set for the ruleType property.
            ## @return a void
            ## 
            def rule_type=(value)
                @rule_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_enum_value("action", @action)
                writer.write_collection_of_object_values("destinations", @destinations)
                writer.write_enum_value("ruleType", @rule_type)
            end
        end
    end
end
