require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        ## 
        # The OperationApprovalPolicy entity allows an administrator to configure which operations require admin approval and the set of admins who can perform that approval. Creating a policy enables the multiple admin approval service to catch requests which are targeted by the specific policy type defined.
        class OperationApprovalPolicy < MicrosoftGraphBeta::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # The Microsoft Entra ID (Azure AD) security group IDs for the approvers for the policy. This property is required when the policy is created, and is defined by the user to define the possible approvers for the policy.
            @approver_group_ids
            ## 
            # Indicates the description of the policy. Maximum length of the description is 1024 characters. This property is not required, but can be used by the user to describe the policy.
            @description
            ## 
            # Indicates the display name of the policy. Maximum length of the display name is 128 characters. This property is required when the policy is created, and is defined by the user to identify the policy.
            @display_name
            ## 
            # Indicates the last DateTime that the policy was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'policyType' property changes from `apps` to `scripts`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            @last_modified_date_time
            ## 
            # The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            @policy_platform
            ## 
            # Indicates areas of the Intune UX that could support MAA UX for the current logged in user. This property is required, and is defined by the user in order to correctly show the expected experience.
            @policy_set
            ## 
            # The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            @policy_type
            ## 
            ## Gets the approverGroupIds property value. The Microsoft Entra ID (Azure AD) security group IDs for the approvers for the policy. This property is required when the policy is created, and is defined by the user to define the possible approvers for the policy.
            ## @return a string
            ## 
            def approver_group_ids
                return @approver_group_ids
            end
            ## 
            ## Sets the approverGroupIds property value. The Microsoft Entra ID (Azure AD) security group IDs for the approvers for the policy. This property is required when the policy is created, and is defined by the user to define the possible approvers for the policy.
            ## @param value Value to set for the approverGroupIds property.
            ## @return a void
            ## 
            def approver_group_ids=(value)
                @approver_group_ids = value
            end
            ## 
            ## Instantiates a new OperationApprovalPolicy and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a operation_approval_policy
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return OperationApprovalPolicy.new
            end
            ## 
            ## Gets the description property value. Indicates the description of the policy. Maximum length of the description is 1024 characters. This property is not required, but can be used by the user to describe the policy.
            ## @return a string
            ## 
            def description
                return @description
            end
            ## 
            ## Sets the description property value. Indicates the description of the policy. Maximum length of the description is 1024 characters. This property is not required, but can be used by the user to describe the policy.
            ## @param value Value to set for the description property.
            ## @return a void
            ## 
            def description=(value)
                @description = value
            end
            ## 
            ## Gets the displayName property value. Indicates the display name of the policy. Maximum length of the display name is 128 characters. This property is required when the policy is created, and is defined by the user to identify the policy.
            ## @return a string
            ## 
            def display_name
                return @display_name
            end
            ## 
            ## Sets the displayName property value. Indicates the display name of the policy. Maximum length of the display name is 128 characters. This property is required when the policy is created, and is defined by the user to identify the policy.
            ## @param value Value to set for the displayName property.
            ## @return a void
            ## 
            def display_name=(value)
                @display_name = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "approverGroupIds" => lambda {|n| @approver_group_ids = n.get_collection_of_primitive_values(String) },
                    "description" => lambda {|n| @description = n.get_string_value() },
                    "displayName" => lambda {|n| @display_name = n.get_string_value() },
                    "lastModifiedDateTime" => lambda {|n| @last_modified_date_time = n.get_date_time_value() },
                    "policyPlatform" => lambda {|n| @policy_platform = n.get_enum_values(MicrosoftGraphBeta::Models::OperationApprovalPolicyPlatform) },
                    "policySet" => lambda {|n| @policy_set = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::OperationApprovalPolicySet.create_from_discriminator_value(pn) }) },
                    "policyType" => lambda {|n| @policy_type = n.get_enum_value(MicrosoftGraphBeta::Models::OperationApprovalPolicyType) },
                })
            end
            ## 
            ## Gets the lastModifiedDateTime property value. Indicates the last DateTime that the policy was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'policyType' property changes from `apps` to `scripts`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @return a date_time
            ## 
            def last_modified_date_time
                return @last_modified_date_time
            end
            ## 
            ## Sets the lastModifiedDateTime property value. Indicates the last DateTime that the policy was modified. The value cannot be modified and is automatically populated whenever values in the request are updated. For example, when the 'policyType' property changes from `apps` to `scripts`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default. Read-only. This property is read-only.
            ## @param value Value to set for the lastModifiedDateTime property.
            ## @return a void
            ## 
            def last_modified_date_time=(value)
                @last_modified_date_time = value
            end
            ## 
            ## Gets the policyPlatform property value. The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            ## @return a operation_approval_policy_platform
            ## 
            def policy_platform
                return @policy_platform
            end
            ## 
            ## Sets the policyPlatform property value. The set of available platforms for the OperationApprovalPolicy. Allows configuration of a policy to specific platform(s) for approval. If no specific platform is required or applicable, the platform is `notApplicable`.
            ## @param value Value to set for the policyPlatform property.
            ## @return a void
            ## 
            def policy_platform=(value)
                @policy_platform = value
            end
            ## 
            ## Gets the policySet property value. Indicates areas of the Intune UX that could support MAA UX for the current logged in user. This property is required, and is defined by the user in order to correctly show the expected experience.
            ## @return a operation_approval_policy_set
            ## 
            def policy_set
                return @policy_set
            end
            ## 
            ## Sets the policySet property value. Indicates areas of the Intune UX that could support MAA UX for the current logged in user. This property is required, and is defined by the user in order to correctly show the expected experience.
            ## @param value Value to set for the policySet property.
            ## @return a void
            ## 
            def policy_set=(value)
                @policy_set = value
            end
            ## 
            ## Gets the policyType property value. The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            ## @return a operation_approval_policy_type
            ## 
            def policy_type
                return @policy_type
            end
            ## 
            ## Sets the policyType property value. The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.
            ## @param value Value to set for the policyType property.
            ## @return a void
            ## 
            def policy_type=(value)
                @policy_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_collection_of_primitive_values("approverGroupIds", @approver_group_ids)
                writer.write_string_value("description", @description)
                writer.write_string_value("displayName", @display_name)
                writer.write_enum_value("policyPlatform", @policy_platform)
                writer.write_object_value("policySet", @policy_set)
                writer.write_enum_value("policyType", @policy_type)
            end
        end
    end
end
