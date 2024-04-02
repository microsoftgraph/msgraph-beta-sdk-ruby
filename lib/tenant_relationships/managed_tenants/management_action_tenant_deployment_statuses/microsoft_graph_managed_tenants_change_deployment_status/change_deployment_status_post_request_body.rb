require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph_beta'
require_relative '../../../tenant_relationships'
require_relative '../../managed_tenants'
require_relative '../management_action_tenant_deployment_statuses'
require_relative './microsoft_graph_managed_tenants_change_deployment_status'

module MicrosoftGraphBeta
    module TenantRelationships
        module ManagedTenants
            module ManagementActionTenantDeploymentStatuses
                module MicrosoftGraphManagedTenantsChangeDeploymentStatus
                    class ChangeDeploymentStatusPostRequestBody
                        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                        @additional_data
                        ## 
                        # The managementActionId property
                        @management_action_id
                        ## 
                        # The managementTemplateId property
                        @management_template_id
                        ## 
                        # The managementTemplateVersion property
                        @management_template_version
                        ## 
                        # The status property
                        @status
                        ## 
                        # The tenantGroupId property
                        @tenant_group_id
                        ## 
                        # The tenantId property
                        @tenant_id
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
                        ## Instantiates a new ChangeDeploymentStatusPostRequestBody and sets the default values.
                        ## @return a void
                        ## 
                        def initialize()
                            @additional_data = Hash.new
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a change_deployment_status_post_request_body
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return ChangeDeploymentStatusPostRequestBody.new
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
                                "status" => lambda {|n| @status = n.get_string_value() },
                                "tenantGroupId" => lambda {|n| @tenant_group_id = n.get_string_value() },
                                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the managementActionId property value. The managementActionId property
                        ## @return a string
                        ## 
                        def management_action_id
                            return @management_action_id
                        end
                        ## 
                        ## Sets the managementActionId property value. The managementActionId property
                        ## @param value Value to set for the managementActionId property.
                        ## @return a void
                        ## 
                        def management_action_id=(value)
                            @management_action_id = value
                        end
                        ## 
                        ## Gets the managementTemplateId property value. The managementTemplateId property
                        ## @return a string
                        ## 
                        def management_template_id
                            return @management_template_id
                        end
                        ## 
                        ## Sets the managementTemplateId property value. The managementTemplateId property
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
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_string_value("managementActionId", @management_action_id)
                            writer.write_string_value("managementTemplateId", @management_template_id)
                            writer.write_number_value("managementTemplateVersion", @management_template_version)
                            writer.write_string_value("status", @status)
                            writer.write_string_value("tenantGroupId", @tenant_group_id)
                            writer.write_string_value("tenantId", @tenant_id)
                            writer.write_additional_data(@additional_data)
                        end
                        ## 
                        ## Gets the status property value. The status property
                        ## @return a string
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
                        ## Gets the tenantGroupId property value. The tenantGroupId property
                        ## @return a string
                        ## 
                        def tenant_group_id
                            return @tenant_group_id
                        end
                        ## 
                        ## Sets the tenantGroupId property value. The tenantGroupId property
                        ## @param value Value to set for the tenantGroupId property.
                        ## @return a void
                        ## 
                        def tenant_group_id=(value)
                            @tenant_group_id = value
                        end
                        ## 
                        ## Gets the tenantId property value. The tenantId property
                        ## @return a string
                        ## 
                        def tenant_id
                            return @tenant_id
                        end
                        ## 
                        ## Sets the tenantId property value. The tenantId property
                        ## @param value Value to set for the tenantId property.
                        ## @return a void
                        ## 
                        def tenant_id=(value)
                            @tenant_id = value
                        end
                    end
                end
            end
        end
    end
end
