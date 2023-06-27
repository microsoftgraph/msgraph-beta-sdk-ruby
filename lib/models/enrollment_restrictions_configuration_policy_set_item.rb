require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class EnrollmentRestrictionsConfigurationPolicySetItem < MicrosoftGraphBeta::Models::PolicySetItem
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Limit of the EnrollmentRestrictionsConfigurationPolicySetItem.
            @limit
            ## 
            # Priority of the EnrollmentRestrictionsConfigurationPolicySetItem.
            @priority
            ## 
            ## Instantiates a new EnrollmentRestrictionsConfigurationPolicySetItem and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
                @odata_type = "#microsoft.graph.enrollmentRestrictionsConfigurationPolicySetItem"
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a enrollment_restrictions_configuration_policy_set_item
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return EnrollmentRestrictionsConfigurationPolicySetItem.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "limit" => lambda {|n| @limit = n.get_number_value() },
                    "priority" => lambda {|n| @priority = n.get_number_value() },
                })
            end
            ## 
            ## Gets the limit property value. Limit of the EnrollmentRestrictionsConfigurationPolicySetItem.
            ## @return a integer
            ## 
            def limit
                return @limit
            end
            ## 
            ## Sets the limit property value. Limit of the EnrollmentRestrictionsConfigurationPolicySetItem.
            ## @param value Value to set for the limit property.
            ## @return a void
            ## 
            def limit=(value)
                @limit = value
            end
            ## 
            ## Gets the priority property value. Priority of the EnrollmentRestrictionsConfigurationPolicySetItem.
            ## @return a integer
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. Priority of the EnrollmentRestrictionsConfigurationPolicySetItem.
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("limit", @limit)
                writer.write_number_value("priority", @priority)
            end
        end
    end
end
