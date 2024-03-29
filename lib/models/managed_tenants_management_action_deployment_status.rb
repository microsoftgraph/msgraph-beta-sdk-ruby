require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph_beta'
require_relative './models'

module MicrosoftGraphBeta
    module Models
        class ManagedTenantsManagementActionDeploymentStatus
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # The identifier for the management action. Required. Read-only.
            @management_action_id
            ## 
            # The management template identifier that was used to generate the management action. Required. Read-only.
            @management_template_id
            ## 
            # The managementTemplateVersion property
            @management_template_version
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The status property
            @status
            ## 
            # The collection of workload action deployment statues for the given management action. Optional.
            @workload_action_deployment_statuses
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
            ## Instantiates a new managedTenantsManagementActionDeploymentStatus and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a managed_tenants_management_action_deployment_status
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return ManagedTenantsManagementActionDeploymentStatus.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "managementActionId" => lambda {|n| @management_action_id = n.get_string_value() },
                    "managementTemplateId" => lambda {|n| @management_template_id = n.get_string_value() },
                    "managementTemplateVersion" => lambda {|n| @management_template_version = n.get_number_value() },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "status" => lambda {|n| @status = n.get_enum_value(MicrosoftGraphBeta::Models::ManagedTenantsManagementActionStatus) },
                    "workloadActionDeploymentStatuses" => lambda {|n| @workload_action_deployment_statuses = n.get_collection_of_object_values(lambda {|pn| MicrosoftGraphBeta::Models::ManagedTenantsWorkloadActionDeploymentStatus.create_from_discriminator_value(pn) }) },
                }
            end
            ## 
            ## Gets the managementActionId property value. The identifier for the management action. Required. Read-only.
            ## @return a string
            ## 
            def management_action_id
                return @management_action_id
            end
            ## 
            ## Sets the managementActionId property value. The identifier for the management action. Required. Read-only.
            ## @param value Value to set for the managementActionId property.
            ## @return a void
            ## 
            def management_action_id=(value)
                @management_action_id = value
            end
            ## 
            ## Gets the managementTemplateId property value. The management template identifier that was used to generate the management action. Required. Read-only.
            ## @return a string
            ## 
            def management_template_id
                return @management_template_id
            end
            ## 
            ## Sets the managementTemplateId property value. The management template identifier that was used to generate the management action. Required. Read-only.
            ## @param value Value to set for the managementTemplateId property.
            ## @return a void
            ## 
            def management_template_id=(value)
                @management_template_id = value
            end
            ## 
            ## Gets the managementTemplateVersion property value. The managementTemplateVersion property
            ## @return a integer
            ## 
            def management_template_version
                return @management_template_version
            end
            ## 
            ## Sets the managementTemplateVersion property value. The managementTemplateVersion property
            ## @param value Value to set for the managementTemplateVersion property.
            ## @return a void
            ## 
            def management_template_version=(value)
                @management_template_version = value
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
                writer.write_string_value("managementActionId", @management_action_id)
                writer.write_string_value("managementTemplateId", @management_template_id)
                writer.write_number_value("managementTemplateVersion", @management_template_version)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_enum_value("status", @status)
                writer.write_collection_of_object_values("workloadActionDeploymentStatuses", @workload_action_deployment_statuses)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the status property value. The status property
            ## @return a managed_tenants_management_action_status
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
            ## 
            ## Gets the workloadActionDeploymentStatuses property value. The collection of workload action deployment statues for the given management action. Optional.
            ## @return a managed_tenants_workload_action_deployment_status
            ## 
            def workload_action_deployment_statuses
                return @workload_action_deployment_statuses
            end
            ## 
            ## Sets the workloadActionDeploymentStatuses property value. The collection of workload action deployment statues for the given management action. Optional.
            ## @param value Value to set for the workloadActionDeploymentStatuses property.
            ## @return a void
            ## 
            def workload_action_deployment_statuses=(value)
                @workload_action_deployment_statuses = value
            end
        end
    end
end
