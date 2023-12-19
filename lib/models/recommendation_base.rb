require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class RecommendationBase < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # List of actions to take to complete a recommendation.
            @action_steps
            ## 
            # An explanation of why completing the recommendation will benefit you. Corresponds to the Value section of a recommendation shown in the Microsoft Entra admin center.
            @benefits
            ## 
            # The category property
            @category
            ## 
            # The date and time when the recommendation was detected as applicable to your directory.
            @created_date_time
            ## 
            # The number of points the tenant has attained. Only applies to recommendations with category set to identitySecureScore.
            @current_score
            ## 
            # The title of the recommendation.
            @display_name
            ## 
            # The directory feature that the recommendation is related to.
            @feature_areas
            ## 
            # The future date and time when a recommendation should be completed.
            @impact_start_date_time
            ## 
            # Indicates the scope of impact of a recommendation. Tenant level indicates that the recommendation impacts the whole tenant. Other possible values include users, applications.
            @impact_type
            ## 
            # The list of directory objects associated with the recommendation.
            @impacted_resources
            ## 
            # Describes why a recommendation uniquely applies to your directory. Corresponds to the Description section of a recommendation shown in the Microsoft Entra admin center.
            @insights
            ## 
            # The most recent date and time a recommendation was deemed applicable to your directory.
            @last_checked_date_time
            ## 
            # Name of the user who last updated the status of the recommendation.
            @last_modified_by
            ## 
            # The date and time the status of a recommendation was last updated.
            @last_modified_date_time
            ## 
            # The maximum number of points attainable. Only applies to recommendations with category set to identitySecureScore.
            @max_score
            ## 
            # The future date and time when the status of a postponed recommendation will be active again.
            @postpone_until_date_time
            ## 
            # The priority property
            @priority
            ## 
            # Friendly shortname to identify the recommendation. The possible values are: adfsAppsMigration, enableDesktopSSO, enablePHS, enableProvisioning, switchFromPerUserMFA, tenantMFA, thirdPartyApps, turnOffPerUserMFA, useAuthenticatorApp, useMyApps, staleApps, staleAppCreds, applicationCredentialExpiry, servicePrincipalKeyExpiry, adminMFAV2, blockLegacyAuthentication, integratedApps, mfaRegistrationV2, pwagePolicyNew, passwordHashSync, oneAdmin, roleOverlap, selfServicePasswordReset, signinRiskPolicy, userRiskPolicy, verifyAppPublisher, privateLinkForAAD, appRoleAssignmentsGroups, appRoleAssignmentsUsers, managedIdentity, overprivilegedApps, unknownFutureValue, longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests.
            @recommendation_type
            ## 
            # The current release type of the recommendation. The possible values are: preview, generallyAvailable, unknownFutureValue.
            @release_type
            ## 
            # Description of the impact on users of the remediation. Only applies to recommendations with category set to identitySecureScore.
            @remediation_impact
            ## 
            # The status property
            @status
            ## 
            ## Gets the actionSteps property value. List of actions to take to complete a recommendation.
            ## @return a action_step
            ## 
            def action_steps
                return @action_steps
            end
            ## 
            ## Sets the actionSteps property value. List of actions to take to complete a recommendation.
            ## @param value Value to set for the actionSteps property.
            ## @return a void
            ## 
            def action_steps=(value)
                @action_steps = value
            end
            ## 
            ## Gets the benefits property value. An explanation of why completing the recommendation will benefit you. Corresponds to the Value section of a recommendation shown in the Microsoft Entra admin center.
            ## @return a string
            ## 
            def benefits
                return @benefits
            end
            ## 
            ## Sets the benefits property value. An explanation of why completing the recommendation will benefit you. Corresponds to the Value section of a recommendation shown in the Microsoft Entra admin center.
            ## @param value Value to set for the benefits property.
            ## @return a void
            ## 
            def benefits=(value)
                @benefits = value
            end
            ## 
            ## Gets the category property value. The category property
            ## @return a recommendation_category
            ## 
            def category
                return @category
            end
            ## 
            ## Sets the category property value. The category property
            ## @param value Value to set for the category property.
            ## @return a void
            ## 
            def category=(value)
                @category = value
            end
            ## 
            ## Instantiates a new recommendationBase and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Gets the createdDateTime property value. The date and time when the recommendation was detected as applicable to your directory.
            ## @return a date_time
            ## 
            def created_date_time
                return @created_date_time
            end
            ## 
            ## Sets the createdDateTime property value. The date and time when the recommendation was detected as applicable to your directory.
            ## @param value Value to set for the createdDateTime property.
            ## @return a void
            ## 
            def created_date_time=(value)
                @created_date_time = value
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a recommendation_base
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                mapping_value_node = parse_node.get_child_node("@odata.type")
                unless mapping_value_node.nil? then
                    mapping_value = mapping_value_node.get_string_value
                    case mapping_value
                        when "#microsoft.graph.recommendation"
                            return Recommendation.new
                    end
                end
                return RecommendationBase.new
            end
            ## 
            ## Gets the currentScore property value. The number of points the tenant has attained. Only applies to recommendations with category set to identitySecureScore.
            ## @return a double
            ## 
            def current_score
                return @current_score
            end
            ## 
            ## Sets the currentScore property value. The number of points the tenant has attained. Only applies to recommendations with category set to identitySecureScore.
            ## @param value Value to set for the currentScore property.
            ## @return a void
            ## 
            def current_score=(value)
                @current_score = value
            end
            ## 
            ## Gets the displayName property value. The title of the recommendation.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. The title of the recommendation.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## Gets the featureAreas property value. The directory feature that the recommendation is related to.
            ## @return a recommendation_base_feature_areas
            ## 
            def feature_areas
                return @feature_areas
            end
            ## 
            ## Sets the featureAreas property value. The directory feature that the recommendation is related to.
            ## @param value Value to set for the featureAreas property.
            ## @return a void
            ## 
            def feature_areas=(value)
                @feature_areas = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "actionSteps" => lambda {|n| @action_steps = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ActionStep.create_from_discriminator_value(pn) }) },
                    "benefits" => lambda {|n| @benefits = n.get_string_value() },
                    "category" => lambda {|n| @category = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationCategory) },
                    "createdDateTime" => lambda {|n| @created_date_time = n.get_date_time_value() },
                    "currentScore" => lambda {|n| @current_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "featureAreas" => lambda {|n| @feature_areas = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::RecommendationBaseFeatureAreas.create_from_discriminator_value(pn) }) },
                    "impactStartDateTime" => lambda {|n| @impact_start_date_time = n.get_date_time_value() },
                    "impactType" => lambda {|n| @impact_type = n.get_string_value() },
                    "impactedResources" => lambda {|n| @impacted_resources = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ImpactedResource.create_from_discriminator_value(pn) }) },
                    "insights" => lambda {|n| @insights = n.get_string_value() },
                    "lastCheckedDateTime" => lambda {|n| @last_checked_date_time = n.get_date_time_value() },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "maxScore" => lambda {|n| @max_score = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "postponeUntilDateTime" => lambda {|n| @postpone_until_date_time = n.get_date_time_value() },
                    "priority" => lambda {|n| @priority = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationPriority) },
                    "recommendationType" => lambda {|n| @recommendation_type = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationBaseRecommendationType) },
                    "releaseType" => lambda {|n| @release_type = n.get_string_value() },
                    "remediationImpact" => lambda {|n| @remediation_impact = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::RecommendationStatus) },
                })
            end
            ## 
            ## Gets the impactStartDateTime property value. The future date and time when a recommendation should be completed.
            ## @return a date_time
            ## 
            def impact_start_date_time
                return @impact_start_date_time
            end
            ## 
            ## Sets the impactStartDateTime property value. The future date and time when a recommendation should be completed.
            ## @param value Value to set for the impactStartDateTime property.
            ## @return a void
            ## 
            def impact_start_date_time=(value)
                @impact_start_date_time = value
            end
            ## 
            ## Gets the impactType property value. Indicates the scope of impact of a recommendation. Tenant level indicates that the recommendation impacts the whole tenant. Other possible values include users, applications.
            ## @return a string
            ## 
            def impact_type
                return @impact_type
            end
            ## 
            ## Sets the impactType property value. Indicates the scope of impact of a recommendation. Tenant level indicates that the recommendation impacts the whole tenant. Other possible values include users, applications.
            ## @param value Value to set for the impactType property.
            ## @return a void
            ## 
            def impact_type=(value)
                @impact_type = value
            end
            ## 
            ## Gets the impactedResources property value. The list of directory objects associated with the recommendation.
            ## @return a impacted_resource
            ## 
            def impacted_resources
                return @impacted_resources
            end
            ## 
            ## Sets the impactedResources property value. The list of directory objects associated with the recommendation.
            ## @param value Value to set for the impactedResources property.
            ## @return a void
            ## 
            def impacted_resources=(value)
                @impacted_resources = value
            end
            ## 
            ## Gets the insights property value. Describes why a recommendation uniquely applies to your directory. Corresponds to the Description section of a recommendation shown in the Microsoft Entra admin center.
            ## @return a string
            ## 
            def insights
                return @insights
            end
            ## 
            ## Sets the insights property value. Describes why a recommendation uniquely applies to your directory. Corresponds to the Description section of a recommendation shown in the Microsoft Entra admin center.
            ## @param value Value to set for the insights property.
            ## @return a void
            ## 
            def insights=(value)
                @insights = value
            end
            ## 
            ## Gets the lastCheckedDateTime property value. The most recent date and time a recommendation was deemed applicable to your directory.
            ## @return a date_time
            ## 
            def last_checked_date_time
                return @last_checked_date_time
            end
            ## 
            ## Sets the lastCheckedDateTime property value. The most recent date and time a recommendation was deemed applicable to your directory.
            ## @param value Value to set for the lastCheckedDateTime property.
            ## @return a void
            ## 
            def last_checked_date_time=(value)
                @last_checked_date_time = value
            end
            ## 
            ## Gets the lastModifiedBy property value. Name of the user who last updated the status of the recommendation.
            ## @return a string
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. Name of the user who last updated the status of the recommendation.
            ## @param value Value to set for the lastModifiedBy property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the lastModifiedDateTime property value. The date and time the status of a recommendation was last updated.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. The date and time the status of a recommendation was last updated.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the maxScore property value. The maximum number of points attainable. Only applies to recommendations with category set to identitySecureScore.
            ## @return a double
            ## 
            def max_score
                return @max_score
            end
            ## 
            ## Sets the maxScore property value. The maximum number of points attainable. Only applies to recommendations with category set to identitySecureScore.
            ## @param value Value to set for the maxScore property.
            ## @return a void
            ## 
            def max_score=(value)
                @max_score = value
            end
            ## 
            ## Gets the postponeUntilDateTime property value. The future date and time when the status of a postponed recommendation will be active again.
            ## @return a date_time
            ## 
            def postpone_until_date_time
                return @postpone_until_date_time
            end
            ## 
            ## Sets the postponeUntilDateTime property value. The future date and time when the status of a postponed recommendation will be active again.
            ## @param value Value to set for the postponeUntilDateTime property.
            ## @return a void
            ## 
            def postpone_until_date_time=(value)
                @postpone_until_date_time = value
            end
            ## 
            ## Gets the priority property value. The priority property
            ## @return a recommendation_priority
            ## 
            def priority
                return @priority
            end
            ## 
            ## Sets the priority property value. The priority property
            ## @param value Value to set for the priority property.
            ## @return a void
            ## 
            def priority=(value)
                @priority = value
            end
            ## 
            ## Gets the recommendationType property value. Friendly shortname to identify the recommendation. The possible values are: adfsAppsMigration, enableDesktopSSO, enablePHS, enableProvisioning, switchFromPerUserMFA, tenantMFA, thirdPartyApps, turnOffPerUserMFA, useAuthenticatorApp, useMyApps, staleApps, staleAppCreds, applicationCredentialExpiry, servicePrincipalKeyExpiry, adminMFAV2, blockLegacyAuthentication, integratedApps, mfaRegistrationV2, pwagePolicyNew, passwordHashSync, oneAdmin, roleOverlap, selfServicePasswordReset, signinRiskPolicy, userRiskPolicy, verifyAppPublisher, privateLinkForAAD, appRoleAssignmentsGroups, appRoleAssignmentsUsers, managedIdentity, overprivilegedApps, unknownFutureValue, longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests.
            ## @return a recommendation_base_recommendation_type
            ## 
            def recommendation_type
                return @recommendation_type
            end
            ## 
            ## Sets the recommendationType property value. Friendly shortname to identify the recommendation. The possible values are: adfsAppsMigration, enableDesktopSSO, enablePHS, enableProvisioning, switchFromPerUserMFA, tenantMFA, thirdPartyApps, turnOffPerUserMFA, useAuthenticatorApp, useMyApps, staleApps, staleAppCreds, applicationCredentialExpiry, servicePrincipalKeyExpiry, adminMFAV2, blockLegacyAuthentication, integratedApps, mfaRegistrationV2, pwagePolicyNew, passwordHashSync, oneAdmin, roleOverlap, selfServicePasswordReset, signinRiskPolicy, userRiskPolicy, verifyAppPublisher, privateLinkForAAD, appRoleAssignmentsGroups, appRoleAssignmentsUsers, managedIdentity, overprivilegedApps, unknownFutureValue, longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests. Also, please note that you must use the Prefer: include-unknown-enum-members request header to get the following value(s) in this evolvable enum: longLivedCredentials, aadConnectDeprecated, adalToMsalMigration, ownerlessApps, inactiveGuests.
            ## @param value Value to set for the recommendationType property.
            ## @return a void
            ## 
            def recommendation_type=(value)
                @recommendation_type = value
            end
            ## 
            ## Gets the releaseType property value. The current release type of the recommendation. The possible values are: preview, generallyAvailable, unknownFutureValue.
            ## @return a string
            ## 
            def release_type
                return @release_type
            end
            ## 
            ## Sets the releaseType property value. The current release type of the recommendation. The possible values are: preview, generallyAvailable, unknownFutureValue.
            ## @param value Value to set for the releaseType property.
            ## @return a void
            ## 
            def release_type=(value)
                @release_type = value
            end
            ## 
            ## Gets the remediationImpact property value. Description of the impact on users of the remediation. Only applies to recommendations with category set to identitySecureScore.
            ## @return a string
            ## 
            def remediation_impact
                return @remediation_impact
            end
            ## 
            ## Sets the remediationImpact property value. Description of the impact on users of the remediation. Only applies to recommendations with category set to identitySecureScore.
            ## @param value Value to set for the remediationImpact property.
            ## @return a void
            ## 
            def remediation_impact=(value)
                @remediation_impact = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_object_values("actionSteps", @action_steps)
                writer.write_string_value("benefits", @benefits)
                writer.write_enum_value("category", @category)
                writer.write_date_time_value("createdDateTime", @created_date_time)
                writer.write_object_value("currentScore", @current_score)
                writer.write_string_value("displayName", @display_name)
                writer.write_collection_of_object_values("featureAreas", @feature_areas)
                writer.write_date_time_value("impactStartDateTime", @impact_start_date_time)
                writer.write_string_value("impactType", @impact_type)
                writer.write_collection_of_object_values("impactedResources", @impacted_resources)
                writer.write_string_value("insights", @insights)
                writer.write_date_time_value("lastCheckedDateTime", @last_checked_date_time)
                writer.write_string_value("lastModifiedBy", @last_modified_by)
                writer.write_date_time_value("lastModifiedDateTime", @last_modified_date_time)
                writer.write_object_value("maxScore", @max_score)
                writer.write_date_time_value("postponeUntilDateTime", @postpone_until_date_time)
                writer.write_enum_value("priority", @priority)
                writer.write_enum_value("recommendationType", @recommendation_type)
                writer.write_string_value("releaseType", @release_type)
                writer.write_string_value("remediationImpact", @remediation_impact)
                writer.write_enum_value("status", @status)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a recommendation_status
            ## 
            def status
                return @status
            end
            ## 
            ## Sets the status property value. The status property
            ## @param value Value to set for the status property.
            ## @return a void
            ## 
            def status=(value)
                @status = value
            end
        end
    end
end
