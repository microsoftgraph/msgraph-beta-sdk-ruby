require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class SecurityRulesRoot < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The detectionRules property
            @detection_rules
            ## 
            ## Instantiates a new SecurityRulesRoot and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a security_rules_root
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return SecurityRulesRoot.new
            end
            ## 
            ## Gets the detectionRules property value. The detectionRules property
            ## @return a security_detection_rule
            ## 
            def detection_rules
                return @detection_rules
            end
            ## 
            ## Sets the detectionRules property value. The detectionRules property
            ## @param value Value to set for the detectionRules property.
            ## @return a void
            ## 
            def detection_rules=(value)
                @detection_rules = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "detectionRules" => lambda {|n| @detection_rules = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SecurityDetectionRule.create_from_discriminator_value(pn) }) },
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
                writer.write_collection_of_object_values("detectionRules", @detection_rules)
            end
        end
    end
end
