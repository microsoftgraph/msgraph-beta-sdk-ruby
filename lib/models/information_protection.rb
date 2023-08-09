require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class InformationProtection < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The bitlocker property
            @bitlocker
            ## 
            # The dataLossPreventionPolicies property
            @data_loss_prevention_policies
            ## 
            # The policy property
            @policy
            ## 
            # The sensitivityLabels property
            @sensitivity_labels
            ## 
            # The sensitivityPolicySettings property
            @sensitivity_policy_settings
            ## 
            # The threatAssessmentRequests property
            @threat_assessment_requests
            ## 
            ## Gets the bitlocker property value. The bitlocker property
            ## @return a bitlocker
            ## 
            def bitlocker
                return @bitlocker
            end
            ## 
            ## Sets the bitlocker property value. The bitlocker property
            ## @param value Value to set for the bitlocker property.
            ## @return a void
            ## 
            def bitlocker=(value)
                @bitlocker = value
            end
            ## 
            ## Instantiates a new informationProtection and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a information_protection
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return InformationProtection.new
            end
            ## 
            ## Gets the dataLossPreventionPolicies property value. The dataLossPreventionPolicies property
            ## @return a data_loss_prevention_policy
            ## 
            def data_loss_prevention_policies
                return @data_loss_prevention_policies
            end
            ## 
            ## Sets the dataLossPreventionPolicies property value. The dataLossPreventionPolicies property
            ## @param value Value to set for the dataLossPreventionPolicies property.
            ## @return a void
            ## 
            def data_loss_prevention_policies=(value)
                @data_loss_prevention_policies = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "bitlocker" => lambda {|n| @bitlocker = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::Bitlocker.create_from_discriminator_value(pn) }) },
                    "dataLossPreventionPolicies" => lambda {|n| @data_loss_prevention_policies = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::DataLossPreventionPolicy.create_from_discriminator_value(pn) }) },
                    "policy" => lambda {|n| @policy = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::InformationProtectionPolicy.create_from_discriminator_value(pn) }) },
                    "sensitivityLabels" => lambda {|n| @sensitivity_labels = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::SensitivityLabel.create_from_discriminator_value(pn) }) },
                    "sensitivityPolicySettings" => lambda {|n| @sensitivity_policy_settings = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::SensitivityPolicySettings.create_from_discriminator_value(pn) }) },
                    "threatAssessmentRequests" => lambda {|n| @threat_assessment_requests = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ThreatAssessmentRequest.create_from_discriminator_value(pn) }) },
                })
            end
            ## 
            ## Gets the policy property value. The policy property
            ## @return a information_protection_policy
            ## 
            def policy
                return @policy
            end
            ## 
            ## Sets the policy property value. The policy property
            ## @param value Value to set for the policy property.
            ## @return a void
            ## 
            def policy=(value)
                @policy = value
            end
            ## 
            ## Gets the sensitivityLabels property value. The sensitivityLabels property
            ## @return a sensitivity_label
            ## 
            def sensitivity_labels
                return @sensitivity_labels
            end
            ## 
            ## Sets the sensitivityLabels property value. The sensitivityLabels property
            ## @param value Value to set for the sensitivityLabels property.
            ## @return a void
            ## 
            def sensitivity_labels=(value)
                @sensitivity_labels = value
            end
            ## 
            ## Gets the sensitivityPolicySettings property value. The sensitivityPolicySettings property
            ## @return a sensitivity_policy_settings
            ## 
            def sensitivity_policy_settings
                return @sensitivity_policy_settings
            end
            ## 
            ## Sets the sensitivityPolicySettings property value. The sensitivityPolicySettings property
            ## @param value Value to set for the sensitivityPolicySettings property.
            ## @return a void
            ## 
            def sensitivity_policy_settings=(value)
                @sensitivity_policy_settings = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_object_value("bitlocker", @bitlocker)
                writer.write_collection_of_object_values("dataLossPreventionPolicies", @data_loss_prevention_policies)
                writer.write_object_value("policy", @policy)
                writer.write_collection_of_object_values("sensitivityLabels", @sensitivity_labels)
                writer.write_object_value("sensitivityPolicySettings", @sensitivity_policy_settings)
                writer.write_collection_of_object_values("threatAssessmentRequests", @threat_assessment_requests)
            end
            ## 
            ## Gets the threatAssessmentRequests property value. The threatAssessmentRequests property
            ## @return a threat_assessment_request
            ## 
            def threat_assessment_requests
                return @threat_assessment_requests
            end
            ## 
            ## Sets the threatAssessmentRequests property value. The threatAssessmentRequests property
            ## @param value Value to set for the threatAssessmentRequests property.
            ## @return a void
            ## 
            def threat_assessment_requests=(value)
                @threat_assessment_requests = value
            end
        end
    end
end
