require 'microsoft_kiota_abstractions'
require_relative '../../../../tenant_relationships'
require_relative '../../../managed_tenants'
require_relative '../../management_actions'
require_relative '../item'
require_relative './apply'

module MicrosoftGraphBeta::TenantRelationships::ManagedTenants::ManagementActions::Item::Apply
    class ApplyPostRequestBody
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
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
        # The managementTemplateId property
        @management_template_id
        ## 
        # The tenantGroupId property
        @tenant_group_id
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
        ## Instantiates a new applyPostRequestBody and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a apply_post_request_body
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return ApplyPostRequestBody.new
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
                "excludeGroups" => lambda {|n| @exclude_groups = n.get_collection_of_primitive_values(String) },
                "includeAllUsers" => lambda {|n| @include_all_users = n.get_boolean_value() },
                "includeGroups" => lambda {|n| @include_groups = n.get_collection_of_primitive_values(String) },
                "managementTemplateId" => lambda {|n| @management_template_id = n.get_string_value() },
                "tenantGroupId" => lambda {|n| @tenant_group_id = n.get_string_value() },
                "tenantId" => lambda {|n| @tenant_id = n.get_string_value() },
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
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_collection_of_primitive_values("excludeGroups", @exclude_groups)
            writer.write_boolean_value("includeAllUsers", @include_all_users)
            writer.write_collection_of_primitive_values("includeGroups", @include_groups)
            writer.write_string_value("managementTemplateId", @management_template_id)
            writer.write_string_value("tenantGroupId", @tenant_group_id)
            writer.write_string_value("tenantId", @tenant_id)
            writer.write_additional_data(@additional_data)
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
