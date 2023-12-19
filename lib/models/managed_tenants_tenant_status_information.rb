require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsTenantStatusInformation
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The status of the delegated admin privilege relationship between the managing entity and the managed tenant. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges. Optional. Read-only.
            @delegated_privilege_status
            ## 
            # The date and time the delegated admin privileges status was updated. Optional. Read-only.
            @last_delegated_privilege_refresh_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The identifier for the account that offboarded the managed tenant. Optional. Read-only.
            @offboarded_by_user_id
            ## 
            # The date and time when the managed tenant was offboarded. Optional. Read-only.
            @offboarded_date_time
            ## 
            # The identifier for the account that onboarded the managed tenant. Optional. Read-only.
            @onboarded_by_user_id
            ## 
            # The date and time when the managed tenant was onboarded. Optional. Read-only.
            @onboarded_date_time
            ## 
            # The onboarding status for the managed tenant.. Possible values are: ineligible, inProcess, active, inactive, unknownFutureValue. Optional. Read-only.
            @onboarding_status
            ## 
            # Organization's onboarding eligibility reason in Microsoft 365 Lighthouse.. Possible values are: none, contractType, delegatedAdminPrivileges,usersCount,license and unknownFutureValue. Optional. Read-only.
            @tenant_onboarding_eligibility_reason
            ## 
            # The collection of workload statues for the managed tenant. Optional. Read-only.
            @workload_statuses
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
            ## Instantiates a new managedTenantsTenantStatusInformation and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_tenant_status_information
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsTenantStatusInformation.new
            end
            ## 
            ## Gets the delegatedPrivilegeStatus property value. The status of the delegated admin privilege relationship between the managing entity and the managed tenant. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges. Optional. Read-only.
            ## @return a managed_tenants_tenant_status_information_delegated_privilege_status
            ## 
            def delegated_privilege_status
                return @delegated_privilege_status
            end
            ## 
            ## Sets the delegatedPrivilegeStatus property value. The status of the delegated admin privilege relationship between the managing entity and the managed tenant. Possible values are: none, delegatedAdminPrivileges, unknownFutureValue, granularDelegatedAdminPrivileges, delegatedAndGranularDelegetedAdminPrivileges. You must use the Prefer: include-unknown-enum-members request header to get the following values from this evolvable enum: granularDelegatedAdminPrivileges , delegatedAndGranularDelegetedAdminPrivileges. Optional. Read-only.
            ## @param value Value to set for the delegatedPrivilegeStatus property.
            ## @return a void
            ## 
            def delegated_privilege_status=(value)
                @delegated_privilege_status = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "delegatedPrivilegeStatus" => lambda {|n| @delegated_privilege_status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsTenantStatusInformationDelegatedPrivilegeStatus) },
                    "lastDelegatedPrivilegeRefreshDateTime" => lambda {|n| @last_delegated_privilege_refresh_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "offboardedByUserId" => lambda {|n| @offboarded_by_user_id = n.get_string_value() },
                    "offboardedDateTime" => lambda {|n| @offboarded_date_time = n.get_date_time_value() },
                    "onboardedByUserId" => lambda {|n| @onboarded_by_user_id = n.get_string_value() },
                    "onboardedDateTime" => lambda {|n| @onboarded_date_time = n.get_date_time_value() },
                    "onboardingStatus" => lambda {|n| @onboarding_status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsTenantStatusInformationOnboardingStatus) },
                    "tenantOnboardingEligibilityReason" => lambda {|n| @tenant_onboarding_eligibility_reason = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsTenantStatusInformationTenantOnboardingEligibilityReason) },
                    "workloadStatuses" => lambda {|n| @workload_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWorkloadStatus.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the lastDelegatedPrivilegeRefreshDateTime property value. The date and time the delegated admin privileges status was updated. Optional. Read-only.
            ## @return a date_time
            ## 
            def last_delegated_privilege_refresh_date_time
                return @last_delegated_privilege_refresh_date_time
            end
            ## 
            ## Sets the lastDelegatedPrivilegeRefreshDateTime property value. The date and time the delegated admin privileges status was updated. Optional. Read-only.
            ## @param value Value to set for the lastDelegatedPrivilegeRefreshDateTime property.
            ## @return a void
            ## 
            def last_delegated_privilege_refresh_date_time=(value)
                @last_delegated_privilege_refresh_date_time = value
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
            ## Gets the offboardedByUserId property value. The identifier for the account that offboarded the managed tenant. Optional. Read-only.
            ## @return a string
            ## 
            def offboarded_by_user_id
                return @offboarded_by_user_id
            end
            ## 
            ## Sets the offboardedByUserId property value. The identifier for the account that offboarded the managed tenant. Optional. Read-only.
            ## @param value Value to set for the offboardedByUserId property.
            ## @return a void
            ## 
            def offboarded_by_user_id=(value)
                @offboarded_by_user_id = value
            end
            ## 
            ## Gets the offboardedDateTime property value. The date and time when the managed tenant was offboarded. Optional. Read-only.
            ## @return a date_time
            ## 
            def offboarded_date_time
                return @offboarded_date_time
            end
            ## 
            ## Sets the offboardedDateTime property value. The date and time when the managed tenant was offboarded. Optional. Read-only.
            ## @param value Value to set for the offboardedDateTime property.
            ## @return a void
            ## 
            def offboarded_date_time=(value)
                @offboarded_date_time = value
            end
            ## 
            ## Gets the onboardedByUserId property value. The identifier for the account that onboarded the managed tenant. Optional. Read-only.
            ## @return a string
            ## 
            def onboarded_by_user_id
                return @onboarded_by_user_id
            end
            ## 
            ## Sets the onboardedByUserId property value. The identifier for the account that onboarded the managed tenant. Optional. Read-only.
            ## @param value Value to set for the onboardedByUserId property.
            ## @return a void
            ## 
            def onboarded_by_user_id=(value)
                @onboarded_by_user_id = value
            end
            ## 
            ## Gets the onboardedDateTime property value. The date and time when the managed tenant was onboarded. Optional. Read-only.
            ## @return a date_time
            ## 
            def onboarded_date_time
                return @onboarded_date_time
            end
            ## 
            ## Sets the onboardedDateTime property value. The date and time when the managed tenant was onboarded. Optional. Read-only.
            ## @param value Value to set for the onboardedDateTime property.
            ## @return a void
            ## 
            def onboarded_date_time=(value)
                @onboarded_date_time = value
            end
            ## 
            ## Gets the onboardingStatus property value. The onboarding status for the managed tenant.. Possible values are: ineligible, inProcess, active, inactive, unknownFutureValue. Optional. Read-only.
            ## @return a managed_tenants_tenant_status_information_onboarding_status
            ## 
            def onboarding_status
                return @onboarding_status
            end
            ## 
            ## Sets the onboardingStatus property value. The onboarding status for the managed tenant.. Possible values are: ineligible, inProcess, active, inactive, unknownFutureValue. Optional. Read-only.
            ## @param value Value to set for the onboardingStatus property.
            ## @return a void
            ## 
            def onboarding_status=(value)
                @onboarding_status = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_enum_value("delegatedPrivilegeStatus", @delegated_privilege_status)
                writer.write_date_time_value("lastDelegatedPrivilegeRefreshDateTime", @last_delegated_privilege_refresh_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_string_value("offboardedByUserId", @offboarded_by_user_id)
                writer.write_date_time_value("offboardedDateTime", @offboarded_date_time)
                writer.write_string_value("onboardedByUserId", @onboarded_by_user_id)
                writer.write_date_time_value("onboardedDateTime", @onboarded_date_time)
                writer.write_enum_value("onboardingStatus", @onboarding_status)
                writer.write_enum_value("tenantOnboardingEligibilityReason", @tenant_onboarding_eligibility_reason)
                writer.write_collection_of_object_values("workloadStatuses", @workload_statuses)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the tenantOnboardingEligibilityReason property value. Organization's onboarding eligibility reason in Microsoft 365 Lighthouse.. Possible values are: none, contractType, delegatedAdminPrivileges,usersCount,license and unknownFutureValue. Optional. Read-only.
            ## @return a managed_tenants_tenant_status_information_tenant_onboarding_eligibility_reason
            ## 
            def tenant_onboarding_eligibility_reason
                return @tenant_onboarding_eligibility_reason
            end
            ## 
            ## Sets the tenantOnboardingEligibilityReason property value. Organization's onboarding eligibility reason in Microsoft 365 Lighthouse.. Possible values are: none, contractType, delegatedAdminPrivileges,usersCount,license and unknownFutureValue. Optional. Read-only.
            ## @param value Value to set for the tenantOnboardingEligibilityReason property.
            ## @return a void
            ## 
            def tenant_onboarding_eligibility_reason=(value)
                @tenant_onboarding_eligibility_reason = value
            end
            ## 
            ## Gets the workloadStatuses property value. The collection of workload statues for the managed tenant. Optional. Read-only.
            ## @return a managed_tenants_workload_status
            ## 
            def workload_statuses
                return @workload_statuses
            end
            ## 
            ## Sets the workloadStatuses property value. The collection of workload statues for the managed tenant. Optional. Read-only.
            ## @param value Value to set for the workloadStatuses property.
            ## @return a void
            ## 
            def workload_statuses=(value)
                @workload_statuses = value
            end
        end
    end
end
