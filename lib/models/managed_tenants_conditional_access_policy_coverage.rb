require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './managed_tenants/managed_tenants'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsConditionalAccessPolicyCoverage < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The state for the conditional access policy. Possible values are: enabled, disabled, enabledForReportingButNotEnforced. Required. Read-only.
            @conditional_access_policy_state
            ## 
            # The date and time the conditional access policy was last modified. Required. Read-only.
            @latest_policy_modified_date_time
            ## 
            # A flag indicating whether the conditional access policy requires device compliance. Required. Read-only.
            @requires_device_compliance
            ## 
            # The display name for the managed tenant. Required. Read-only.
            @tenant_display_name
            ## 
            ## Gets the conditionalAccessPolicyState property value. The state for the conditional access policy. Possible values are: enabled, disabled, enabledForReportingButNotEnforced. Required. Read-only.
            ## @return a string
            ## 
            def conditional_access_policy_state
                return @conditional_access_policy_state
            end
            ## 
            ## Sets the conditionalAccessPolicyState property value. The state for the conditional access policy. Possible values are: enabled, disabled, enabledForReportingButNotEnforced. Required. Read-only.
            ## @param value Value to set for the conditionalAccessPolicyState property.
            ## @return a void
            ## 
            def conditional_access_policy_state=(value)
                @conditional_access_policy_state = value
            end
            ## 
            ## Instantiates a new conditionalAccessPolicyCoverage and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_conditional_access_policy_coverage
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsConditionalAccessPolicyCoverage.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "conditionalAccessPolicyState" => lambda {|n| @conditional_access_policy_state = n.get_string_value() },
                    "latestPolicyModifiedDateTime" => lambda {|n| @latest_policy_modified_date_time = n.get_date_time_value() },
                    "requiresDeviceCompliance" => lambda {|n| @requires_device_compliance = n.get_boolean_value() },
                    "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                })
            end
            ## 
            ## Gets the latestPolicyModifiedDateTime property value. The date and time the conditional access policy was last modified. Required. Read-only.
            ## @return a date_time
            ## 
            def latest_policy_modified_date_time
                return @latest_policy_modified_date_time
            end
            ## 
            ## Sets the latestPolicyModifiedDateTime property value. The date and time the conditional access policy was last modified. Required. Read-only.
            ## @param value Value to set for the latestPolicyModifiedDateTime property.
            ## @return a void
            ## 
            def latest_policy_modified_date_time=(value)
                @latest_policy_modified_date_time = value
            end
            ## 
            ## Gets the requiresDeviceCompliance property value. A flag indicating whether the conditional access policy requires device compliance. Required. Read-only.
            ## @return a boolean
            ## 
            def requires_device_compliance
                return @requires_device_compliance
            end
            ## 
            ## Sets the requiresDeviceCompliance property value. A flag indicating whether the conditional access policy requires device compliance. Required. Read-only.
            ## @param value Value to set for the requiresDeviceCompliance property.
            ## @return a void
            ## 
            def requires_device_compliance=(value)
                @requires_device_compliance = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_string_value("conditionalAccessPolicyState", @conditional_access_policy_state)
                writer.write_date_time_value("latestPolicyModifiedDateTime", @latest_policy_modified_date_time)
                writer.write_boolean_value("requiresDeviceCompliance", @requires_device_compliance)
                writer.write_string_value("tenantDisplayName", @tenant_display_name)
            end
            ## 
            ## Gets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
            ## @return a string
            ## 
            def tenant_display_name
                return @tenant_display_name
            end
            ## 
            ## Sets the tenantDisplayName property value. The display name for the managed tenant. Required. Read-only.
            ## @param value Value to set for the tenantDisplayName property.
            ## @return a void
            ## 
            def tenant_display_name=(value)
                @tenant_display_name = value
            end
        end
    end
end
