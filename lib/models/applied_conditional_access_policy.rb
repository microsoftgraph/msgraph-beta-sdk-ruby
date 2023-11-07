require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class AppliedConditionalAccessPolicy
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The custom authentication strength enforced in a Conditional Access policy.
            @authentication_strength
            ## 
            # Refers to the conditional access policy conditions that aren't satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk . You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            @conditions_not_satisfied
            ## 
            # Refers to the conditional access policy conditions that are satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            @conditions_satisfied
            ## 
            # Name of the conditional access policy.
            @display_name
            ## 
            # Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            @enforced_grant_controls
            ## 
            # Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            @enforced_session_controls
            ## 
            # List of key-value pairs containing each matched exclude condition in the conditional access policy. Example: [{'devicePlatform' : 'DevicePlatform'}] means the policy didn't apply, because the DevicePlatform condition was a match.
            @exclude_rules_satisfied
            ## 
            # Identifier of the conditional access policy.
            @id
            ## 
            # List of key-value pairs containing each matched include condition in the conditional access policy. Example: [{ 'application' : 'AllApps'}, {'users': 'Group'}], meaning Application condition was a match because AllApps are included and Users condition was a match because the user was part of the included Group rule.
            @include_rules_satisfied
            ## 
            # The OdataType property
            @odata_type
            ## 
            # Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions weren't met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue, reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted.
            @result
            ## 
            # Refers to the session controls that a sign-in activity didn't satisfy. (Example: Application enforced Restrictions).
            @session_controls_not_satisfied
            ## 
            ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the AdditionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Gets the authenticationStrength property value. The custom authentication strength enforced in a Conditional Access policy.
            ## @return a authentication_strength
            ## 
            def authentication_strength
                return @authentication_strength
            end
            ## 
            ## Sets the authenticationStrength property value. The custom authentication strength enforced in a Conditional Access policy.
            ## @param value Value to set for the authenticationStrength property.
            ## @return a void
            ## 
            def authentication_strength=(value)
                @authentication_strength = value
            end
            ## 
            ## Gets the conditionsNotSatisfied property value. Refers to the conditional access policy conditions that aren't satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk . You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            ## @return a conditional_access_conditions
            ## 
            def conditions_not_satisfied
                return @conditions_not_satisfied
            end
            ## 
            ## Sets the conditionsNotSatisfied property value. Refers to the conditional access policy conditions that aren't satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk . You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            ## @param value Value to set for the conditionsNotSatisfied property.
            ## @return a void
            ## 
            def conditions_not_satisfied=(value)
                @conditions_not_satisfied = value
            end
            ## 
            ## Gets the conditionsSatisfied property value. Refers to the conditional access policy conditions that are satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            ## @return a conditional_access_conditions
            ## 
            def conditions_satisfied
                return @conditions_satisfied
            end
            ## 
            ## Sets the conditionsSatisfied property value. Refers to the conditional access policy conditions that are satisfied. The possible values are: none, application, users, devicePlatform, location, clientType, signInRisk, userRisk, time, deviceState, client,ipAddressSeenByAzureAD,ipAddressSeenByResourceProvider,unknownFutureValue,servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: servicePrincipals,servicePrincipalRisk, authenticationFlows, insiderRisk. conditionalAccessConditions is a multi-valued enumeration and the property can contain multiple values in a comma-separated list.
            ## @param value Value to set for the conditionsSatisfied property.
            ## @return a void
            ## 
            def conditions_satisfied=(value)
                @conditions_satisfied = value
            end
            ## 
            ## Instantiates a new appliedConditionalAccessPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a applied_conditional_access_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return AppliedConditionalAccessPolicy.new
            end
            ## 
            ## Gets the displayName property value. Name of the conditional access policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Name of the conditional access policy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the enforcedGrantControls property value. Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            ## @return a string
            ## 
            def enforced_grant_controls
                return @enforced_grant_controls
            end
            ## 
            ## Sets the enforcedGrantControls property value. Refers to the grant controls enforced by the conditional access policy (example: 'Require multi-factor authentication').
            ## @param value Value to set for the enforcedGrantControls property.
            ## @return a void
            ## 
            def enforced_grant_controls=(value)
                @enforced_grant_controls = value
            end
            ## 
            ## Gets the enforcedSessionControls property value. Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            ## @return a string
            ## 
            def enforced_session_controls
                return @enforced_session_controls
            end
            ## 
            ## Sets the enforcedSessionControls property value. Refers to the session controls enforced by the conditional access policy (example: 'Require app enforced controls').
            ## @param value Value to set for the enforcedSessionControls property.
            ## @return a void
            ## 
            def enforced_session_controls=(value)
                @enforced_session_controls = value
            end
            ## 
            ## Gets the excludeRulesSatisfied property value. List of key-value pairs containing each matched exclude condition in the conditional access policy. Example: [{'devicePlatform' : 'DevicePlatform'}] means the policy didn't apply, because the DevicePlatform condition was a match.
            ## @return a conditional_access_rule_satisfied
            ## 
            def exclude_rules_satisfied
                return @exclude_rules_satisfied
            end
            ## 
            ## Sets the excludeRulesSatisfied property value. List of key-value pairs containing each matched exclude condition in the conditional access policy. Example: [{'devicePlatform' : 'DevicePlatform'}] means the policy didn't apply, because the DevicePlatform condition was a match.
            ## @param value Value to set for the excludeRulesSatisfied property.
            ## @return a void
            ## 
            def exclude_rules_satisfied=(value)
                @exclude_rules_satisfied = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "authenticationStrength" => lambda {|n| @authentication_strength = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::AuthenticationStrength.create_from_discriminator_value(pn) }) },
                    "conditionsNotSatisfied" => lambda {|n| @conditions_not_satisfied = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessConditions.create_from_discriminator_value(pn) }) },
                    "conditionsSatisfied" => lambda {|n| @conditions_satisfied = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessConditions.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "enforcedGrantControls" => lambda {|n| @enforced_grant_controls = n.get_collection_of_primitive_values(String) },
                    "enforcedSessionControls" => lambda {|n| @enforced_session_controls = n.get_collection_of_primitive_values(String) },
                    "excludeRulesSatisfied" => lambda {|n| @exclude_rules_satisfied = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessRuleSatisfied.create_from_discriminator_value(pn) }) },
                    "id" => lambda {|n| @id = n.get_string_value() },
                    "includeRulesSatisfied" => lambda {|n| @include_rules_satisfied = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ConditionalAccessRuleSatisfied.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "result" => lambda {|n| @result = n.get_enum_value(MicrosoftGraphBeta::Models::AppliedConditionalAccessPolicyResult) },
                    "sessionControlsNotSatisfied" => lambda {|n| @session_controls_not_satisfied = n.get_collection_of_primitive_values(String) },
                }
            end
            ## 
            ## Gets the id property value. Identifier of the conditional access policy.
            ## @return a string
            ## 
            def id
                return @id
            end
            ## 
            ## Sets the id property value. Identifier of the conditional access policy.
            ## @param value Value to set for the id property.
            ## @return a void
            ## 
            def id=(value)
                @id = value
            end
            ## 
            ## Gets the includeRulesSatisfied property value. List of key-value pairs containing each matched include condition in the conditional access policy. Example: [{ 'application' : 'AllApps'}, {'users': 'Group'}], meaning Application condition was a match because AllApps are included and Users condition was a match because the user was part of the included Group rule.
            ## @return a conditional_access_rule_satisfied
            ## 
            def include_rules_satisfied
                return @include_rules_satisfied
            end
            ## 
            ## Sets the includeRulesSatisfied property value. List of key-value pairs containing each matched include condition in the conditional access policy. Example: [{ 'application' : 'AllApps'}, {'users': 'Group'}], meaning Application condition was a match because AllApps are included and Users condition was a match because the user was part of the included Group rule.
            ## @param value Value to set for the includeRulesSatisfied property.
            ## @return a void
            ## 
            def include_rules_satisfied=(value)
                @include_rules_satisfied = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the @odata.type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Gets the result property value. Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions weren't met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue, reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted.
            ## @return a applied_conditional_access_policy_result
            ## 
            def result
                return @result
            end
            ## 
            ## Sets the result property value. Indicates the result of the CA policy that was triggered. Possible values are: success, failure, notApplied (Policy isn't applied because policy conditions weren't met),notEnabled (This is due to the policy in disabled state), unknown, unknownFutureValue, reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted. You must use the Prefer: include-unknown-enum-members request header to get the following values in this evolvable enum: reportOnlySuccess, reportOnlyFailure, reportOnlyNotApplied, reportOnlyInterrupted.
            ## @param value Value to set for the result property.
            ## @return a void
            ## 
            def result=(value)
                @result = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("authenticationStrength", @authentication_strength)
                writer.write_collection_of_object_values("conditionsNotSatisfied", @conditions_not_satisfied)
                writer.write_collection_of_object_values("conditionsSatisfied", @conditions_satisfied)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_primitive_values("enforcedGrantControls", @enforced_grant_controls)
                writer.write_collection_of_primitive_values("enforcedSessionControls", @enforced_session_controls)
                writer.write_collection_of_object_values("excludeRulesSatisfied", @exclude_rules_satisfied)
                writer.write_string_value("id", @id)
                writer.write_collection_of_object_values("includeRulesSatisfied", @include_rules_satisfied)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("result", @result)
                writer.write_collection_of_primitive_values("sessionControlsNotSatisfied", @session_controls_not_satisfied)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the sessionControlsNotSatisfied property value. Refers to the session controls that a sign-in activity didn't satisfy. (Example: Application enforced Restrictions).
            ## @return a string
            ## 
            def session_controls_not_satisfied
                return @session_controls_not_satisfied
            end
            ## 
            ## Sets the sessionControlsNotSatisfied property value. Refers to the session controls that a sign-in activity didn't satisfy. (Example: Application enforced Restrictions).
            ## @param value Value to set for the sessionControlsNotSatisfied property.
            ## @return a void
            ## 
            def session_controls_not_satisfied=(value)
                @session_controls_not_satisfied = value
            end
        end
    end
end
