require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessFilteringRule < MicrosoftGraphBeta::Models::NetworkaccessPolicyRule
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Possible destinations and types of destinations accessed by the user in accordance with the network filtering policy, such as IP addresses and FQDNs/URLs.
            @destinations
            ## 
            # The ruleType property
            @rule_type
            ## 
            ## Instantiates a new networkaccessFilteringRule and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.filteringRule"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_filtering_rule
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.networkaccess.fqdnFilteringRule"
                            return NetworkaccessFqdnFilteringRule.new
                        when "#microsoft.graph.networkaccess.webCategoryFilteringRule"
                            return NetworkaccessWebCategoryFilteringRule.new
                    end
                end
                return NetworkaccessFilteringRule.new
            end
            ## 
            ## Gets the destinations property value. Possible destinations and types of destinations accessed by the user in accordance with the network filtering policy, such as IP addresses and FQDNs/URLs.
            ## @return a networkaccess_rule_destination
            ## 
            def destinations
                return @destinations
            end
            ## 
            ## Sets the destinations property value. Possible destinations and types of destinations accessed by the user in accordance with the network filtering policy, such as IP addresses and FQDNs/URLs.
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
                writer.write_collection_of_object_values("destinations", @destinations)
                writer.write_enum_value("ruleType", @rule_type)
            end
        end
    end
end
