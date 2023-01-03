require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../models'
require_relative './managed_tenants'

module MicrosoftGraphBeta::Models::ManagedTenants
    ## 
    # Provides operations to manage the collection of accessReview entities.
    class AggregatedPolicyCompliance < MicrosoftGraphBeta::Models::Entity
        include MicrosoftKiotaAbstractions::Parsable
        ## 
        # Identifier for the device compliance policy. Optional. Read-only.
        @compliance_policy_id
        ## 
        # Name of the device compliance policy. Optional. Read-only.
        @compliance_policy_name
        ## 
        # Platform for the device compliance policy. Possible values are: android, androidForWork, iOS, macOS, windowsPhone81, windows81AndLater, windows10AndLater, androidWorkProfile, androidAOSP, all. Optional. Read-only.
        @compliance_policy_platform
        ## 
        # The type of compliance policy. Optional. Read-only.
        @compliance_policy_type
        ## 
        # Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        @last_refreshed_date_time
        ## 
        # The number of devices that are in a compliant status. Optional. Read-only.
        @number_of_compliant_devices
        ## 
        # The number of devices that are in an error status. Optional. Read-only.
        @number_of_error_devices
        ## 
        # The number of device that are in a non-compliant status. Optional. Read-only.
        @number_of_non_compliant_devices
        ## 
        # The date and time the device policy was last modified. Optional. Read-only.
        @policy_modified_date_time
        ## 
        # The display name for the managed tenant. Optional. Read-only.
        @tenant_display_name
        ## 
        # The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        @tenant_id
        ## 
        ## Gets the compliancePolicyId property value. Identifier for the device compliance policy. Optional. Read-only.
        ## @return a string
        ## 
        def compliance_policy_id
            return @compliance_policy_id
        end
        ## 
        ## Sets the compliancePolicyId property value. Identifier for the device compliance policy. Optional. Read-only.
        ## @param value Value to set for the compliancePolicyId property.
        ## @return a void
        ## 
        def compliance_policy_id=(value)
            @compliance_policy_id = value
        end
        ## 
        ## Gets the compliancePolicyName property value. Name of the device compliance policy. Optional. Read-only.
        ## @return a string
        ## 
        def compliance_policy_name
            return @compliance_policy_name
        end
        ## 
        ## Sets the compliancePolicyName property value. Name of the device compliance policy. Optional. Read-only.
        ## @param value Value to set for the compliancePolicyName property.
        ## @return a void
        ## 
        def compliance_policy_name=(value)
            @compliance_policy_name = value
        end
        ## 
        ## Gets the compliancePolicyPlatform property value. Platform for the device compliance policy. Possible values are: android, androidForWork, iOS, macOS, windowsPhone81, windows81AndLater, windows10AndLater, androidWorkProfile, androidAOSP, all. Optional. Read-only.
        ## @return a string
        ## 
        def compliance_policy_platform
            return @compliance_policy_platform
        end
        ## 
        ## Sets the compliancePolicyPlatform property value. Platform for the device compliance policy. Possible values are: android, androidForWork, iOS, macOS, windowsPhone81, windows81AndLater, windows10AndLater, androidWorkProfile, androidAOSP, all. Optional. Read-only.
        ## @param value Value to set for the compliancePolicyPlatform property.
        ## @return a void
        ## 
        def compliance_policy_platform=(value)
            @compliance_policy_platform = value
        end
        ## 
        ## Gets the compliancePolicyType property value. The type of compliance policy. Optional. Read-only.
        ## @return a string
        ## 
        def compliance_policy_type
            return @compliance_policy_type
        end
        ## 
        ## Sets the compliancePolicyType property value. The type of compliance policy. Optional. Read-only.
        ## @param value Value to set for the compliancePolicyType property.
        ## @return a void
        ## 
        def compliance_policy_type=(value)
            @compliance_policy_type = value
        end
        ## 
        ## Instantiates a new aggregatedPolicyCompliance and sets the default values.
        ## @return a void
        ## 
        def initialize()
            super
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a aggregated_policy_compliance
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return AggregatedPolicyCompliance.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return super.merge({
                "compliancePolicyId" => lambda {|n| @compliance_policy_id = n.get_string_value() },
                "compliancePolicyName" => lambda {|n| @compliance_policy_name = n.get_string_value() },
                "compliancePolicyPlatform" => lambda {|n| @compliance_policy_platform = n.get_string_value() },
                "compliancePolicyType" => lambda {|n| @compliance_policy_type = n.get_string_value() },
                "lastRefreshedDateTime" => lambda {|n| @last_refreshed_date_time = n.get_date_time_value() },
                "numberOfCompliantDevices" => lambda {|n| @number_of_compliant_devices = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "numberOfErrorDevices" => lambda {|n| @number_of_error_devices = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "numberOfNonCompliantDevices" => lambda {|n| @number_of_non_compliant_devices = n.get_object_value(lambda {|pn| Int64.create_from_discriminator_value(pn) }) },
                "policyModifiedDateTime" => lambda {|n| @policy_modified_date_time = n.get_date_time_value() },
                "tenantDisplayName" => lambda {|n| @tenant_display_name = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
            })
        end
        ## 
        ## Gets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        ## @return a date_time
        ## 
        def last_refreshed_date_time
            return @last_refreshed_date_time
        end
        ## 
        ## Sets the lastRefreshedDateTime property value. Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.
        ## @param value Value to set for the lastRefreshedDateTime property.
        ## @return a void
        ## 
        def last_refreshed_date_time=(value)
            @last_refreshed_date_time = value
        end
        ## 
        ## Gets the numberOfCompliantDevices property value. The number of devices that are in a compliant status. Optional. Read-only.
        ## @return a int64
        ## 
        def number_of_compliant_devices
            return @number_of_compliant_devices
        end
        ## 
        ## Sets the numberOfCompliantDevices property value. The number of devices that are in a compliant status. Optional. Read-only.
        ## @param value Value to set for the numberOfCompliantDevices property.
        ## @return a void
        ## 
        def number_of_compliant_devices=(value)
            @number_of_compliant_devices = value
        end
        ## 
        ## Gets the numberOfErrorDevices property value. The number of devices that are in an error status. Optional. Read-only.
        ## @return a int64
        ## 
        def number_of_error_devices
            return @number_of_error_devices
        end
        ## 
        ## Sets the numberOfErrorDevices property value. The number of devices that are in an error status. Optional. Read-only.
        ## @param value Value to set for the numberOfErrorDevices property.
        ## @return a void
        ## 
        def number_of_error_devices=(value)
            @number_of_error_devices = value
        end
        ## 
        ## Gets the numberOfNonCompliantDevices property value. The number of device that are in a non-compliant status. Optional. Read-only.
        ## @return a int64
        ## 
        def number_of_non_compliant_devices
            return @number_of_non_compliant_devices
        end
        ## 
        ## Sets the numberOfNonCompliantDevices property value. The number of device that are in a non-compliant status. Optional. Read-only.
        ## @param value Value to set for the numberOfNonCompliantDevices property.
        ## @return a void
        ## 
        def number_of_non_compliant_devices=(value)
            @number_of_non_compliant_devices = value
        end
        ## 
        ## Gets the policyModifiedDateTime property value. The date and time the device policy was last modified. Optional. Read-only.
        ## @return a date_time
        ## 
        def policy_modified_date_time
            return @policy_modified_date_time
        end
        ## 
        ## Sets the policyModifiedDateTime property value. The date and time the device policy was last modified. Optional. Read-only.
        ## @param value Value to set for the policyModifiedDateTime property.
        ## @return a void
        ## 
        def policy_modified_date_time=(value)
            @policy_modified_date_time = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            super
            writer.write_string_value("compliancePolicyId", @compliance_policy_id)
            writer.write_string_value("compliancePolicyName", @compliance_policy_name)
            writer.write_string_value("compliancePolicyPlatform", @compliance_policy_platform)
            writer.write_string_value("compliancePolicyType", @compliance_policy_type)
            writer.write_date_time_value("lastRefreshedDateTime", @last_refreshed_date_time)
            writer.write_object_value("numberOfCompliantDevices", @number_of_compliant_devices)
            writer.write_object_value("numberOfErrorDevices", @number_of_error_devices)
            writer.write_object_value("numberOfNonCompliantDevices", @number_of_non_compliant_devices)
            writer.write_date_time_value("policyModifiedDateTime", @policy_modified_date_time)
            writer.write_string_value("tenantDisplayName", @tenant_display_name)
            writer.write_string_value("tenantId", @tenant_id)
        end
        ## 
        ## Gets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
        ## @return a string
        ## 
        def tenant_display_name
            return @tenant_display_name
        end
        ## 
        ## Sets the tenantDisplayName property value. The display name for the managed tenant. Optional. Read-only.
        ## @param value Value to set for the tenantDisplayName property.
        ## @return a void
        ## 
        def tenant_display_name=(value)
            @tenant_display_name = value
        end
        ## 
        ## Gets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @return a string
        ## 
        def tenant_id
            return @tenant_id
        end
        ## 
        ## Sets the tenantId property value. The Azure Active Directory tenant identifier for the managed tenant. Optional. Read-only.
        ## @param value Value to set for the tenantId property.
        ## @return a void
        ## 
        def tenant_id=(value)
            @tenant_id = value
        end
    end
end
