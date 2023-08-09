require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'
require_relative './networkaccess/networkaccess'

module MicrosoftGraphBeta
    module Models
        class NetworkaccessIpSubnet < MicrosoftGraphBeta::Models::NetworkaccessRuleDestination
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Defines the IP address of the subset used in a destination for a rule.
            @value
            ## 
            ## Instantiates a new ipSubnet and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.networkaccess.ipSubnet"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a networkaccess_ip_subnet
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return NetworkaccessIpSubnet.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "value" => lambda {|n| @value = n.get_string_value() },
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
                writer.write_string_value("value", @value)
            end
            ## 
            ## Gets the value property value. Defines the IP address of the subset used in a destination for a rule.
            ## @return a string
            ## 
            def value
                return @value
            end
            ## 
            ## Sets the value property value. Defines the IP address of the subset used in a destination for a rule.
            ## @param value Value to set for the value property.
            ## @return a void
            ## 
            def value=(value)
                @value = value
            end
        end
    end
end
