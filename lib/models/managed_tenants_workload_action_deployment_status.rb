require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsWorkloadActionDeploymentStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # The unique identifier for the workload action. Required. Read-only.
            @action_id
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifier of any policy that was created by applying the workload action. Optional. Read-only.
            @deployed_policy_id
            ## 
            # The detailed information for exceptions that occur when deploying the workload action. Optional. Required.
            @error
            ## 
            # The excludeGroups property
            @exclude_groups
            ## 
            # The includeAllUsers property
            @include_all_users
            ## 
            # The includeGroups property
            @include_groups
            ## 
            # The date and time the workload action was last deployed. Optional.
            @last_deployment_date_time
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
            ## 
            ## Gets the actionId property value. The unique identifier for the workload action. Required. Read-only.
            ## @return a string
            ## 
            def action_id
                return @action_id
            end
            ## 
            ## Sets the actionId property value. The unique identifier for the workload action. Required. Read-only.
            ## @param value Value to set for the actionId property.
            ## @return a void
            ## 
            def action_id=(value)
                @action_id = value
            end
            ## 
            ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @return a i_dictionary
            ## 
            def additional_data
                return @additional_data
            end
            ## 
            ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            ## @param value Value to set for the additionalData property.
            ## @return a void
            ## 
            def additional_data=(value)
                @additional_data = value
            end
            ## 
            ## Instantiates a new managedTenantsWorkloadActionDeploymentStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_workload_action_deployment_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsWorkloadActionDeploymentStatus.new
            end
            ## 
            ## Gets the deployedPolicyId property value. The identifier of any policy that was created by applying the workload action. Optional. Read-only.
            ## @return a string
            ## 
            def deployed_policy_id
                return @deployed_policy_id
            end
            ## 
            ## Sets the deployedPolicyId property value. The identifier of any policy that was created by applying the workload action. Optional. Read-only.
            ## @param value Value to set for the deployedPolicyId property.
            ## @return a void
            ## 
            def deployed_policy_id=(value)
                @deployed_policy_id = value
            end
            ## 
            ## Gets the error property value. The detailed information for exceptions that occur when deploying the workload action. Optional. Required.
            ## @return a generic_error
            ## 
            def error
                return @error
            end
            ## 
            ## Sets the error property value. The detailed information for exceptions that occur when deploying the workload action. Optional. Required.
            ## @param value Value to set for the error property.
            ## @return a void
            ## 
            def error=(value)
                @error = value
            end
            ## 
            ## Gets the excludeGroups property value. The excludeGroups property
            ## @return a string
            ## 
            def exclude_groups
                return @exclude_groups
            end
            ## 
            ## Sets the excludeGroups property value. The excludeGroups property
            ## @param value Value to set for the excludeGroups property.
            ## @return a void
            ## 
            def exclude_groups=(value)
                @exclude_groups = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "actionId" => lambda {|n| @action_id = n.get_string_value() },
                    "deployedPolicyId" => lambda {|n| @deployed_policy_id = n.get_string_value() },
                    "error" => lambda {|n| @error = n.get_object_value(lambda {|pn| MicrosoftGraphBeta::Models::GenericError.create_from_discriminator_value(pn) }) },
                    "excludeGroups" => lambda {|n| @exclude_groups = n.get_collection_of_primitive_values(String) },
                    "includeAllUsers" => lambda {|n| @include_all_users = n.get_boolean_value() },
                    "includeGroups" => lambda {|n| @include_groups = n.get_collection_of_primitive_values(String) },
                    "lastDeploymentDateTime" => lambda {|n| @last_deployment_date_time = n.get_date_time_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsWorkloadActionStatus) },
                }
            end
            ## 
            ## Gets the includeAllUsers property value. The includeAllUsers property
            ## @return a boolean
            ## 
            def include_all_users
                return @include_all_users
            end
            ## 
            ## Sets the includeAllUsers property value. The includeAllUsers property
            ## @param value Value to set for the includeAllUsers property.
            ## @return a void
            ## 
            def include_all_users=(value)
                @include_all_users = value
            end
            ## 
            ## Gets the includeGroups property value. The includeGroups property
            ## @return a string
            ## 
            def include_groups
                return @include_groups
            end
            ## 
            ## Sets the includeGroups property value. The includeGroups property
            ## @param value Value to set for the includeGroups property.
            ## @return a void
            ## 
            def include_groups=(value)
                @include_groups = value
            end
            ## 
            ## Gets the lastDeploymentDateTime property value. The date and time the workload action was last deployed. Optional.
            ## @return a date_time
            ## 
            def last_deployment_date_time
                return @last_deployment_date_time
            end
            ## 
            ## Sets the lastDeploymentDateTime property value. The date and time the workload action was last deployed. Optional.
            ## @param value Value to set for the lastDeploymentDateTime property.
            ## @return a void
            ## 
            def last_deployment_date_time=(value)
                @last_deployment_date_time = value
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
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_string_value("actionId", @action_id)
                writer.write_string_value("deployedPolicyId", @deployed_policy_id)
                writer.write_object_value("error", @error)
                writer.write_collection_of_primitive_values("excludeGroups", @exclude_groups)
                writer.write_boolean_value("includeAllUsers", @include_all_users)
                writer.write_collection_of_primitive_values("includeGroups", @include_groups)
                writer.write_date_time_value("lastDeploymentDateTime", @last_deployment_date_time)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a managed_tenants_workload_action_status
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
