require 'microsoft_kiota_abstractions'
require_relative '../../../../../../tenant_relationships'
require_relative '../../../../../managed_tenants'
require_relative '../../../../management_template_step_versions'
require_relative '../../../item'
require_relative '../../deployments'
require_relative '../item'
require_relative './change_deployment_status'

module MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementTemplateStepVersions::Item::Deployments::Item::ChangeDeploymentStatus
    class ChangeDeploymentStatusPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # The managementTemplateStepId property
        @management_template_step_id
        ## 
        # The status property
        @status
        ## 
        # The tenantId property
        @tenant_id
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new changeDeploymentStatusPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
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
                "managementTemplateStepId" => lambda {|n| @management_template_step_id = n.get_string_value() },
                "status" => lambda {|n| @status = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
            }
        end
        ## 
        ## Gets the managementTemplateStepId property value. The managementTemplateStepId property
        ## @return a string
        ## 
        def management_template_step_id
            return @management_template_step_id
        end
        ## 
        ## Sets the managementTemplateStepId property value. The managementTemplateStepId property
        ## @param value Value to set for the managementTemplateStepId property.
        ## @return a void
        ## 
        def management_template_step_id=(value)
            @management_template_step_id = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("managementTemplateStepId", @management_template_step_id)
            writer.write_string_value("status", @status)
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
