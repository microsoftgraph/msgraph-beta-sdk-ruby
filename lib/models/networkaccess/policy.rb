require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph_beta'
require_relative '../models'
require_relative './networkaccess'

module MicrosoftGraphBeta
    module Models
        module Networkaccess
            class Policy < MicrosoftGraphBeta::Models::Entity
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Description.
                @description
                ## 
                # Policy name.
                @name
                ## 
                # Represents the definition of the policy ruleset that makes up the core definition of a policy.
                @policy_rules
                ## 
                # Version.
                @version
                ## 
                ## Instantiates a new policy and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    super
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a policy
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    mapping_value_node = parse_node.get_child_node("@odata.type")
                    unless mapping_value_node.nil? then
                        mapping_value = mapping_value_node.get_string_value
                        case mapping_value
                            when "#microsoft.graph.networkaccess.forwardingPolicy"
                                return ForwardingPolicy.new
                        end
                    end
                    return Policy.new
                end
                ## 
                ## Gets the description property value. Description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "policyRules" => lambda {|n| @policy_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::Networkaccess::PolicyRule.create_from_discriminator_value(pn) }) },
                        "version" => lambda {|n| @version = n.get_string_value() },
                    })
                end
                ## 
                ## Gets the name property value. Policy name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Policy name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the policyRules property value. Represents the definition of the policy ruleset that makes up the core definition of a policy.
                ## @return a policy_rule
                ## 
                def policy_rules
                    return @policy_rules
                end
                ## 
                ## Sets the policyRules property value. Represents the definition of the policy ruleset that makes up the core definition of a policy.
                ## @param value Value to set for the policy_rules property.
                ## @return a void
                ## 
                def policy_rules=(value)
                    @policy_rules = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("description", @description)
                    writer.write_string_value("name", @name)
                    writer.write_collection_of_object_values("policyRules", @policy_rules)
                    writer.write_string_value("version", @version)
                end
                ## 
                ## Gets the version property value. Version.
                ## @return a string
                ## 
                def version
                    return @version
                end
                ## 
                ## Sets the version property value. Version.
                ## @param value Value to set for the version property.
                ## @return a void
                ## 
                def version=(value)
                    @version = value
                end
            end
        end
    end
end
